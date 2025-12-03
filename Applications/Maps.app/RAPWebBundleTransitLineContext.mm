@interface RAPWebBundleTransitLineContext
- (NSDictionary)context;
@end

@implementation RAPWebBundleTransitLineContext

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  name = [(RAPWebBundleTransitLineContext *)self name];

  if (name)
  {
    name2 = [(RAPWebBundleTransitLineContext *)self name];
    [v3 setObject:name2 forKeyedSubscript:@"name"];
  }

  identifier = [(RAPWebBundleTransitLineContext *)self identifier];

  if (identifier)
  {
    identifier2 = [(RAPWebBundleTransitLineContext *)self identifier];
    [v3 setObject:identifier2 forKeyedSubscript:@"muid"];
  }

  imageContext = [(RAPWebBundleTransitLineContext *)self imageContext];

  if (imageContext)
  {
    imageContext2 = [(RAPWebBundleTransitLineContext *)self imageContext];
    identifier3 = [imageContext2 identifier];
    [v3 setObject:identifier3 forKeyedSubscript:@"artworkURL"];
  }

  v11 = [v3 copy];

  return v11;
}

@end