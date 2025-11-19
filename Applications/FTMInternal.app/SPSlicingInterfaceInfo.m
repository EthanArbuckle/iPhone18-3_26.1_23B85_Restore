@interface SPSlicingInterfaceInfo
+ (id)_coreTelephonyInterface:(id)a3;
+ (id)_coreTelephonyInterfaceList:(id)a3;
- (id)description;
@end

@implementation SPSlicingInterfaceInfo

+ (id)_coreTelephonyInterface:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_new();
    v5 = [v3 interface];
    [v4 setInterface:v5];

    v6 = [v3 trafficDescriptors];

    v7 = [SPSlicingDescriptor _coreTelephonyDescritorList:v6];
    [v4 setTrafficDescriptors:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_coreTelephonyInterfaceList:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [SPSlicingInterfaceInfo _coreTelephonyInterface:*(*(&v13 + 1) + 8 * i), v13];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = [v4 copy];

  return v11;
}

- (id)description
{
  v3 = [objc_opt_class() description];
  v4 = [(SPSlicingInterfaceInfo *)self interface];
  v5 = [(SPSlicingInterfaceInfo *)self trafficDescriptors];
  v6 = [NSString stringWithFormat:@"<%@: interface=%@ descriptors=%@>", v3, v4, v5];

  return v6;
}

@end