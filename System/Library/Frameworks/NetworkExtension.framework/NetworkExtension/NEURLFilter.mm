@interface NEURLFilter
+ (void)verdictForURL:(id)l completionHandler:(id)handler;
@end

@implementation NEURLFilter

+ (void)verdictForURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  absoluteString = [l absoluteString];
  v7 = absoluteString;
  if (absoluteString && [absoluteString length])
  {
    [v7 UTF8String];
    v8 = handlerCopy;
    ne_url_filter_check();
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

@end