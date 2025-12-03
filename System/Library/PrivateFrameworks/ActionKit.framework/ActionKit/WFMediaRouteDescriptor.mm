@interface WFMediaRouteDescriptor
+ (BOOL)routeUID:(id)d isEqualToRouteUID:(id)iD;
- (BOOL)isEqualInRouteUIDs:(id)ds;
- (NSString)displayName;
- (WFMediaRouteDescriptor)initWithRouteUID:(id)d groupUID:(id)iD routeName:(id)name isLocalDevice:(BOOL)device;
- (id)findMatchingRoute:(id)route;
@end

@implementation WFMediaRouteDescriptor

- (id)findMatchingRoute:(id)route
{
  v25 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  routeUID = [(WFMediaRouteDescriptor *)self routeUID];

  if (routeUID)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    routeName2 = routeCopy;
    v7 = [routeName2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(routeName2);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = objc_opt_class();
          routeUID2 = [v11 routeUID];
          routeUID3 = [(WFMediaRouteDescriptor *)self routeUID];
          LOBYTE(v12) = [v12 routeUID:routeUID2 isEqualToRouteUID:routeUID3];

          if (v12)
          {
            v17 = v11;
            goto LABEL_16;
          }
        }

        v8 = [routeName2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  if (!-[WFMediaRouteDescriptor isLocalDevice](self, "isLocalDevice", v20) || ([routeCopy objectMatchingKey:@"isDeviceSpeakerRoute" BOOLValue:1], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    routeName = [(WFMediaRouteDescriptor *)self routeName];

    if (routeName)
    {
      routeName2 = [(WFMediaRouteDescriptor *)self routeName];
      v17 = [routeCopy objectMatchingKey:@"routeName" value:routeName2];
LABEL_16:
      v15 = v17;
    }

    else
    {
      v15 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isEqualInRouteUIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_class();
  routeUID = [(WFMediaRouteDescriptor *)self routeUID];
  routeUID2 = [dsCopy routeUID];

  LOBYTE(dsCopy) = [v5 routeUID:routeUID isEqualToRouteUID:routeUID2];
  return dsCopy;
}

- (NSString)displayName
{
  if ([(WFMediaRouteDescriptor *)self isLocalDevice])
  {
    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    localizedModel = [currentDevice localizedModel];
  }

  else
  {
    localizedModel = [(WFMediaRouteDescriptor *)self routeName];
  }

  return localizedModel;
}

- (WFMediaRouteDescriptor)initWithRouteUID:(id)d groupUID:(id)iD routeName:(id)name isLocalDevice:(BOOL)device
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = WFMediaRouteDescriptor;
  v13 = [(MTLModel *)&v22 init];
  if (v13)
  {
    v14 = [iDCopy copy];
    groupUID = v13->_groupUID;
    v13->_groupUID = v14;

    v16 = [dCopy copy];
    routeUID = v13->_routeUID;
    v13->_routeUID = v16;

    v18 = [nameCopy copy];
    routeName = v13->_routeName;
    v13->_routeName = v18;

    v13->_isLocalDevice = device;
    v20 = v13;
  }

  return v13;
}

+ (BOOL)routeUID:(id)d isEqualToRouteUID:(id)iD
{
  iDCopy = iD;
  v6 = [d componentsSeparatedByString:@"//"];
  v7 = [iDCopy componentsSeparatedByString:@"//"];

  v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") != 1}];
  v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") != 1}];
  if ([v8 containsString:v9])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v9 containsString:v8];
  }

  return v10;
}

@end