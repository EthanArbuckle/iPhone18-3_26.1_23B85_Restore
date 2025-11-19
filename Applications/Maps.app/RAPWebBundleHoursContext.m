@interface RAPWebBundleHoursContext
- (NSDictionary)context;
- (id)debugDescription;
@end

@implementation RAPWebBundleHoursContext

- (id)debugDescription
{
  v2 = [(RAPWebBundleHoursContext *)self context];
  v3 = [v2 debugDescription];

  return v3;
}

- (NSDictionary)context
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(RAPWebBundleHoursContext *)self from];
  if (v4)
  {
    v5 = v4;
    v6 = [(RAPWebBundleHoursContext *)self to];

    if (v6)
    {
      v15[0] = @"from";
      v7 = [(RAPWebBundleHoursContext *)self from];
      v15[1] = @"to";
      v16[0] = v7;
      v8 = [(RAPWebBundleHoursContext *)self to];
      v16[1] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v3 setObject:v9 forKeyedSubscript:@"timeRange"];
    }
  }

  v10 = [(RAPWebBundleHoursContext *)self days];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(RAPWebBundleHoursContext *)self days];
    [v3 setObject:v12 forKeyedSubscript:@"days"];
  }

  v13 = [v3 copy];

  return v13;
}

@end