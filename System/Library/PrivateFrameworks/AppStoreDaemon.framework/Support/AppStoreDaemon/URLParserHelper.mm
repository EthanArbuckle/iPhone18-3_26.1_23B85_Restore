@interface URLParserHelper
+ (id)urlTypeForURL:(id)l bag:(id)bag error:(id *)error;
+ (void)urlTypeForURL:(id)l bag:(id)bag completionHandler:(id)handler;
@end

@implementation URLParserHelper

+ (void)urlTypeForURL:(id)l bag:(id)bag completionHandler:(id)handler
{
  handlerCopy = handler;
  bagCopy = bag;
  lCopy = l;
  v11 = [[AMSURLParser alloc] initWithBag:bagCopy];

  v10 = [v11 typeForURL:lCopy];

  [v10 resultWithCompletion:handlerCopy];
}

+ (id)urlTypeForURL:(id)l bag:(id)bag error:(id *)error
{
  bagCopy = bag;
  lCopy = l;
  v9 = [[AMSURLParser alloc] initWithBag:bagCopy];

  v10 = [v9 typeForURL:lCopy];

  v14 = 0;
  v11 = [v10 resultWithError:&v14];
  v12 = v14;
  if (error)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

@end