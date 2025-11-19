@interface RAPWebBundlePlaceSummaryContext
- (NSDictionary)context;
@end

@implementation RAPWebBundlePlaceSummaryContext

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(RAPWebBundlePlaceSummaryContext *)self identifier];

  if (v4)
  {
    v5 = [(RAPWebBundlePlaceSummaryContext *)self identifier];
    [v3 setObject:v5 forKeyedSubscript:@"id"];
  }

  v6 = [(RAPWebBundlePlaceSummaryContext *)self title];

  if (v6)
  {
    v7 = [(RAPWebBundlePlaceSummaryContext *)self title];
    [v3 setObject:v7 forKeyedSubscript:@"title"];
  }

  v8 = [(RAPWebBundlePlaceSummaryContext *)self subtitle];

  if (v8)
  {
    v9 = [(RAPWebBundlePlaceSummaryContext *)self subtitle];
    [v3 setObject:v9 forKeyedSubscript:@"subtitle"];
  }

  v10 = [(RAPWebBundlePlaceSummaryContext *)self address];

  if (v10)
  {
    v11 = [(RAPWebBundlePlaceSummaryContext *)self address];
    [v3 setObject:v11 forKeyedSubscript:@"formattedAddress"];
  }

  v12 = [(RAPWebBundlePlaceSummaryContext *)self imageContext];

  if (v12)
  {
    v13 = [(RAPWebBundlePlaceSummaryContext *)self imageContext];
    v14 = [v13 context];
    [v3 addEntriesFromDictionary:v14];
  }

  v15 = [v3 copy];

  return v15;
}

@end