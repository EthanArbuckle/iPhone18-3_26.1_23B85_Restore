@interface RAPWebBundlePlaceSummaryContext
- (NSDictionary)context;
@end

@implementation RAPWebBundlePlaceSummaryContext

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  identifier = [(RAPWebBundlePlaceSummaryContext *)self identifier];

  if (identifier)
  {
    identifier2 = [(RAPWebBundlePlaceSummaryContext *)self identifier];
    [v3 setObject:identifier2 forKeyedSubscript:@"id"];
  }

  title = [(RAPWebBundlePlaceSummaryContext *)self title];

  if (title)
  {
    title2 = [(RAPWebBundlePlaceSummaryContext *)self title];
    [v3 setObject:title2 forKeyedSubscript:@"title"];
  }

  subtitle = [(RAPWebBundlePlaceSummaryContext *)self subtitle];

  if (subtitle)
  {
    subtitle2 = [(RAPWebBundlePlaceSummaryContext *)self subtitle];
    [v3 setObject:subtitle2 forKeyedSubscript:@"subtitle"];
  }

  address = [(RAPWebBundlePlaceSummaryContext *)self address];

  if (address)
  {
    address2 = [(RAPWebBundlePlaceSummaryContext *)self address];
    [v3 setObject:address2 forKeyedSubscript:@"formattedAddress"];
  }

  imageContext = [(RAPWebBundlePlaceSummaryContext *)self imageContext];

  if (imageContext)
  {
    imageContext2 = [(RAPWebBundlePlaceSummaryContext *)self imageContext];
    context = [imageContext2 context];
    [v3 addEntriesFromDictionary:context];
  }

  v15 = [v3 copy];

  return v15;
}

@end