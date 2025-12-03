@interface SPSlicingApplicationInfo
+ (id)_coreTelephonyAppInfoList:(id)list;
+ (id)_coreTelephonyApplicationInfo:(id)info;
- (id)description;
@end

@implementation SPSlicingApplicationInfo

+ (id)_coreTelephonyApplicationInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v4 = objc_opt_new();
    bundleId = [infoCopy bundleId];
    [v4 setBundleId:bundleId];

    foreground = [infoCopy foreground];
    [v4 setForeground:foreground];

    interfaces = [infoCopy interfaces];

    v8 = [SPSlicingInterfaceInfo _coreTelephonyInterfaceList:interfaces];
    [v4 setInterfaces:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_coreTelephonyAppInfoList:(id)list
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

          v10 = [SPSlicingApplicationInfo _coreTelephonyApplicationInfo:*(*(&v13 + 1) + 8 * i), v13];
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
  bundleId = [(SPSlicingApplicationInfo *)self bundleId];
  foreground = [(SPSlicingApplicationInfo *)self foreground];
  interfaces = [(SPSlicingApplicationInfo *)self interfaces];
  v7 = [NSString stringWithFormat:@"<%@: bundleId=%@ foreground=%@ interfaces=%@>", v3, bundleId, foreground, interfaces];

  return v7;
}

@end