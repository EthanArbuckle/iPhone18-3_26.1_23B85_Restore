@interface SPSlicingDescriptor
+ (id)_coreTelephonyContainer:(id)a3;
+ (id)_coreTelephonyDescriptor:(id)a3;
+ (id)_coreTelephonyDescritorList:(id)a3;
- (SPSlicingDescriptor)init;
- (id)description;
@end

@implementation SPSlicingDescriptor

- (SPSlicingDescriptor)init
{
  v3.receiver = self;
  v3.super_class = SPSlicingDescriptor;
  return [(SPSlicingDescriptor *)&v3 init];
}

+ (id)_coreTelephonyDescriptor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SPSlicingDescriptor);
  v5 = [v3 address];
  [(SPSlicingDescriptor *)v4 setAddress:v5];

  v6 = [v3 host];
  [(SPSlicingDescriptor *)v4 setHost:v6];

  v7 = [v3 port];
  [(SPSlicingDescriptor *)v4 setPort:v7];

  v8 = [v3 appCategory];
  [(SPSlicingDescriptor *)v4 setAppCategory:v8];

  v9 = [v3 bundleId];
  [(SPSlicingDescriptor *)v4 setBundleId:v9];

  v10 = [v3 dnn];
  [(SPSlicingDescriptor *)v4 setDnn:v10];

  v11 = [v3 ipProtocol];
  [(SPSlicingDescriptor *)v4 setIpProtocol:v11];

  v12 = [v3 portRangeLow];
  [(SPSlicingDescriptor *)v4 setPortRangeLow:v12];

  v13 = [v3 portRangeUpper];
  [(SPSlicingDescriptor *)v4 setPortRangeUpper:v13];

  v14 = [v3 trafficClass];

  [(SPSlicingDescriptor *)v4 setTrafficClass:v14];

  return v4;
}

+ (id)_coreTelephonyDescritorList:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3 && [v3 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [SPSlicingDescriptor _coreTelephonyDescriptor:*(*(&v14 + 1) + 8 * i), v14];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v11 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "slice descriptors %@", buf, 0xCu);
  }

  v12 = [v4 copy];

  return v12;
}

+ (id)_coreTelephonyContainer:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 trafficDescriptors];

  v6 = [SPSlicingDescriptor _coreTelephonyDescritorList:v5];

  return v6;
}

- (id)description
{
  v15 = [objc_opt_class() description];
  v3 = [(SPSlicingDescriptor *)self address];
  v4 = [(SPSlicingDescriptor *)self host];
  v5 = [(SPSlicingDescriptor *)self port];
  v6 = [(SPSlicingDescriptor *)self appCategory];
  v7 = [(SPSlicingDescriptor *)self bundleId];
  v8 = [(SPSlicingDescriptor *)self dnn];
  v9 = [(SPSlicingDescriptor *)self ipProtocol];
  v10 = [(SPSlicingDescriptor *)self portRangeLow];
  v11 = [(SPSlicingDescriptor *)self portRangeUpper];
  v12 = [(SPSlicingDescriptor *)self trafficClass];
  v14 = [NSString stringWithFormat:@"<%@: address=%@ %@:%@ category=%@ bundleId=%@ dnn=%@ ip=%@ prl=%@ pru=%@ tclass=%@>", v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v14;
}

@end