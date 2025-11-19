@interface WFMediaRouteDescriptor
+ (BOOL)routeUID:(id)a3 isEqualToRouteUID:(id)a4;
- (BOOL)isEqualInRouteUIDs:(id)a3;
- (NSString)displayName;
- (WFMediaRouteDescriptor)initWithRouteUID:(id)a3 groupUID:(id)a4 routeName:(id)a5 isLocalDevice:(BOOL)a6;
- (id)findMatchingRoute:(id)a3;
@end

@implementation WFMediaRouteDescriptor

- (id)findMatchingRoute:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFMediaRouteDescriptor *)self routeUID];

  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = objc_opt_class();
          v13 = [v11 routeUID];
          v14 = [(WFMediaRouteDescriptor *)self routeUID];
          LOBYTE(v12) = [v12 routeUID:v13 isEqualToRouteUID:v14];

          if (v12)
          {
            v17 = v11;
            goto LABEL_16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  if (!-[WFMediaRouteDescriptor isLocalDevice](self, "isLocalDevice", v20) || ([v4 objectMatchingKey:@"isDeviceSpeakerRoute" BOOLValue:1], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = [(WFMediaRouteDescriptor *)self routeName];

    if (v16)
    {
      v6 = [(WFMediaRouteDescriptor *)self routeName];
      v17 = [v4 objectMatchingKey:@"routeName" value:v6];
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

- (BOOL)isEqualInRouteUIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(WFMediaRouteDescriptor *)self routeUID];
  v7 = [v4 routeUID];

  LOBYTE(v4) = [v5 routeUID:v6 isEqualToRouteUID:v7];
  return v4;
}

- (NSString)displayName
{
  if ([(WFMediaRouteDescriptor *)self isLocalDevice])
  {
    v3 = [MEMORY[0x277D79F18] currentDevice];
    v4 = [v3 localizedModel];
  }

  else
  {
    v4 = [(WFMediaRouteDescriptor *)self routeName];
  }

  return v4;
}

- (WFMediaRouteDescriptor)initWithRouteUID:(id)a3 groupUID:(id)a4 routeName:(id)a5 isLocalDevice:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = WFMediaRouteDescriptor;
  v13 = [(MTLModel *)&v22 init];
  if (v13)
  {
    v14 = [v11 copy];
    groupUID = v13->_groupUID;
    v13->_groupUID = v14;

    v16 = [v10 copy];
    routeUID = v13->_routeUID;
    v13->_routeUID = v16;

    v18 = [v12 copy];
    routeName = v13->_routeName;
    v13->_routeName = v18;

    v13->_isLocalDevice = a6;
    v20 = v13;
  }

  return v13;
}

+ (BOOL)routeUID:(id)a3 isEqualToRouteUID:(id)a4
{
  v5 = a4;
  v6 = [a3 componentsSeparatedByString:@"//"];
  v7 = [v5 componentsSeparatedByString:@"//"];

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