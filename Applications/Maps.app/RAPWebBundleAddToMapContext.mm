@interface RAPWebBundleAddToMapContext
- (id)context;
@end

@implementation RAPWebBundleAddToMapContext

- (id)context
{
  v13.receiver = self;
  v13.super_class = RAPWebBundleAddToMapContext;
  context = [(RAPWebBundleBaseContext *)&v13 context];
  v4 = [context mutableCopy];

  v5 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v5 forKeyedSubscript:@"place"];
  address = [(RAPWebBundleAddToMapContext *)self address];

  if (address)
  {
    address2 = [(RAPWebBundleAddToMapContext *)self address];
    v14 = address2;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    [v5 setObject:v8 forKeyedSubscript:@"formattedAddress"];
  }

  entityName = [(RAPWebBundleAddToMapContext *)self entityName];

  if (entityName)
  {
    entityName2 = [(RAPWebBundleAddToMapContext *)self entityName];
    [v5 setObject:entityName2 forKeyedSubscript:@"entityName"];
  }

  v11 = [v4 copy];

  return v11;
}

@end