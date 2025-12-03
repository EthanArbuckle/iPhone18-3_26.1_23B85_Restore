@interface RAPWebBundleImageContext
- (NSDictionary)context;
@end

@implementation RAPWebBundleImageContext

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  identifier = [(RAPWebBundleImageContext *)self identifier];

  if (identifier)
  {
    identifier2 = [(RAPWebBundleImageContext *)self identifier];
    [v3 setObject:identifier2 forKeyedSubscript:@"icon"];
  }

  v6 = [v3 copy];

  return v6;
}

@end