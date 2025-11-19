@interface RAPWebBundleAddToMapContext
- (id)context;
@end

@implementation RAPWebBundleAddToMapContext

- (id)context
{
  v13.receiver = self;
  v13.super_class = RAPWebBundleAddToMapContext;
  v3 = [(RAPWebBundleBaseContext *)&v13 context];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v5 forKeyedSubscript:@"place"];
  v6 = [(RAPWebBundleAddToMapContext *)self address];

  if (v6)
  {
    v7 = [(RAPWebBundleAddToMapContext *)self address];
    v14 = v7;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    [v5 setObject:v8 forKeyedSubscript:@"formattedAddress"];
  }

  v9 = [(RAPWebBundleAddToMapContext *)self entityName];

  if (v9)
  {
    v10 = [(RAPWebBundleAddToMapContext *)self entityName];
    [v5 setObject:v10 forKeyedSubscript:@"entityName"];
  }

  v11 = [v4 copy];

  return v11;
}

@end