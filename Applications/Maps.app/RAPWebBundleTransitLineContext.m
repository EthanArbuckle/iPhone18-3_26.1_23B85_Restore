@interface RAPWebBundleTransitLineContext
- (NSDictionary)context;
@end

@implementation RAPWebBundleTransitLineContext

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(RAPWebBundleTransitLineContext *)self name];

  if (v4)
  {
    v5 = [(RAPWebBundleTransitLineContext *)self name];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  v6 = [(RAPWebBundleTransitLineContext *)self identifier];

  if (v6)
  {
    v7 = [(RAPWebBundleTransitLineContext *)self identifier];
    [v3 setObject:v7 forKeyedSubscript:@"muid"];
  }

  v8 = [(RAPWebBundleTransitLineContext *)self imageContext];

  if (v8)
  {
    v9 = [(RAPWebBundleTransitLineContext *)self imageContext];
    v10 = [v9 identifier];
    [v3 setObject:v10 forKeyedSubscript:@"artworkURL"];
  }

  v11 = [v3 copy];

  return v11;
}

@end