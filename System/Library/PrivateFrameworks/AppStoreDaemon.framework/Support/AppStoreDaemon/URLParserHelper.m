@interface URLParserHelper
+ (id)urlTypeForURL:(id)a3 bag:(id)a4 error:(id *)a5;
+ (void)urlTypeForURL:(id)a3 bag:(id)a4 completionHandler:(id)a5;
@end

@implementation URLParserHelper

+ (void)urlTypeForURL:(id)a3 bag:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = [[AMSURLParser alloc] initWithBag:v8];

  v10 = [v11 typeForURL:v9];

  [v10 resultWithCompletion:v7];
}

+ (id)urlTypeForURL:(id)a3 bag:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[AMSURLParser alloc] initWithBag:v7];

  v10 = [v9 typeForURL:v8];

  v14 = 0;
  v11 = [v10 resultWithError:&v14];
  v12 = v14;
  if (a5)
  {
    v12 = v12;
    *a5 = v12;
  }

  return v11;
}

@end