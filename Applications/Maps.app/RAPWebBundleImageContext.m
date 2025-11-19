@interface RAPWebBundleImageContext
- (NSDictionary)context;
@end

@implementation RAPWebBundleImageContext

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(RAPWebBundleImageContext *)self identifier];

  if (v4)
  {
    v5 = [(RAPWebBundleImageContext *)self identifier];
    [v3 setObject:v5 forKeyedSubscript:@"icon"];
  }

  v6 = [v3 copy];

  return v6;
}

@end