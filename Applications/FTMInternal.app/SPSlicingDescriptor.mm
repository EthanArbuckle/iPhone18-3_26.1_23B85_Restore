@interface SPSlicingDescriptor
+ (id)_coreTelephonyContainer:(id)container;
+ (id)_coreTelephonyDescriptor:(id)descriptor;
+ (id)_coreTelephonyDescritorList:(id)list;
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

+ (id)_coreTelephonyDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_alloc_init(SPSlicingDescriptor);
  address = [descriptorCopy address];
  [(SPSlicingDescriptor *)v4 setAddress:address];

  host = [descriptorCopy host];
  [(SPSlicingDescriptor *)v4 setHost:host];

  port = [descriptorCopy port];
  [(SPSlicingDescriptor *)v4 setPort:port];

  appCategory = [descriptorCopy appCategory];
  [(SPSlicingDescriptor *)v4 setAppCategory:appCategory];

  bundleId = [descriptorCopy bundleId];
  [(SPSlicingDescriptor *)v4 setBundleId:bundleId];

  v10 = [descriptorCopy dnn];
  [(SPSlicingDescriptor *)v4 setDnn:v10];

  ipProtocol = [descriptorCopy ipProtocol];
  [(SPSlicingDescriptor *)v4 setIpProtocol:ipProtocol];

  portRangeLow = [descriptorCopy portRangeLow];
  [(SPSlicingDescriptor *)v4 setPortRangeLow:portRangeLow];

  portRangeUpper = [descriptorCopy portRangeUpper];
  [(SPSlicingDescriptor *)v4 setPortRangeUpper:portRangeUpper];

  trafficClass = [descriptorCopy trafficClass];

  [(SPSlicingDescriptor *)v4 setTrafficClass:trafficClass];

  return v4;
}

+ (id)_coreTelephonyDescritorList:(id)list
{
  listCopy = list;
  v4 = objc_opt_new();
  if (listCopy && [listCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = listCopy;
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

+ (id)_coreTelephonyContainer:(id)container
{
  containerCopy = container;
  v4 = objc_opt_new();
  trafficDescriptors = [containerCopy trafficDescriptors];

  v6 = [SPSlicingDescriptor _coreTelephonyDescritorList:trafficDescriptors];

  return v6;
}

- (id)description
{
  v15 = [objc_opt_class() description];
  address = [(SPSlicingDescriptor *)self address];
  host = [(SPSlicingDescriptor *)self host];
  port = [(SPSlicingDescriptor *)self port];
  appCategory = [(SPSlicingDescriptor *)self appCategory];
  bundleId = [(SPSlicingDescriptor *)self bundleId];
  v8 = [(SPSlicingDescriptor *)self dnn];
  ipProtocol = [(SPSlicingDescriptor *)self ipProtocol];
  portRangeLow = [(SPSlicingDescriptor *)self portRangeLow];
  portRangeUpper = [(SPSlicingDescriptor *)self portRangeUpper];
  trafficClass = [(SPSlicingDescriptor *)self trafficClass];
  v14 = [NSString stringWithFormat:@"<%@: address=%@ %@:%@ category=%@ bundleId=%@ dnn=%@ ip=%@ prl=%@ pru=%@ tclass=%@>", v15, address, host, port, appCategory, bundleId, v8, ipProtocol, portRangeLow, portRangeUpper, trafficClass];

  return v14;
}

@end