@interface NEURLFilter
+ (void)verdictForURL:(id)a3 completionHandler:(id)a4;
@end

@implementation NEURLFilter

+ (void)verdictForURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [a3 absoluteString];
  v7 = v6;
  if (v6 && [v6 length])
  {
    [v7 UTF8String];
    v8 = v5;
    ne_url_filter_check();
  }

  else
  {
    (*(v5 + 2))(v5, 1);
  }
}

@end