@interface RAPWebBundleHoursContext
- (NSDictionary)context;
- (id)debugDescription;
@end

@implementation RAPWebBundleHoursContext

- (id)debugDescription
{
  context = [(RAPWebBundleHoursContext *)self context];
  v3 = [context debugDescription];

  return v3;
}

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  from = [(RAPWebBundleHoursContext *)self from];
  if (from)
  {
    v5 = from;
    v6 = [(RAPWebBundleHoursContext *)self to];

    if (v6)
    {
      v15[0] = @"from";
      from2 = [(RAPWebBundleHoursContext *)self from];
      v15[1] = @"to";
      v16[0] = from2;
      v8 = [(RAPWebBundleHoursContext *)self to];
      v16[1] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v3 setObject:v9 forKeyedSubscript:@"timeRange"];
    }
  }

  days = [(RAPWebBundleHoursContext *)self days];
  v11 = [days count];

  if (v11)
  {
    days2 = [(RAPWebBundleHoursContext *)self days];
    [v3 setObject:days2 forKeyedSubscript:@"days"];
  }

  v13 = [v3 copy];

  return v13;
}

@end