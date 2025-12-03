@interface SPSlicingInterfaceInfo
+ (id)_coreTelephonyInterface:(id)interface;
+ (id)_coreTelephonyInterfaceList:(id)list;
- (id)description;
@end

@implementation SPSlicingInterfaceInfo

+ (id)_coreTelephonyInterface:(id)interface
{
  if (interface)
  {
    interfaceCopy = interface;
    v4 = objc_opt_new();
    interface = [interfaceCopy interface];
    [v4 setInterface:interface];

    trafficDescriptors = [interfaceCopy trafficDescriptors];

    v7 = [SPSlicingDescriptor _coreTelephonyDescritorList:trafficDescriptors];
    [v4 setTrafficDescriptors:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_coreTelephonyInterfaceList:(id)list
{
  listCopy = list;
  v4 = objc_opt_new();
  if (listCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = listCopy;
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
  interface = [(SPSlicingInterfaceInfo *)self interface];
  trafficDescriptors = [(SPSlicingInterfaceInfo *)self trafficDescriptors];
  v6 = [NSString stringWithFormat:@"<%@: interface=%@ descriptors=%@>", v3, interface, trafficDescriptors];

  return v6;
}

@end