@interface HIDEventServiceTelemetry
- (HIDEventServiceTelemetry)initWithService:(id)a3;
@end

@implementation HIDEventServiceTelemetry

- (HIDEventServiceTelemetry)initWithService:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HIDEventServiceTelemetry;
  v5 = [(HIDEventServiceTelemetry *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v5->_eventCount = 0;
    v7 = objc_alloc_init(NSMutableDictionary);
    properties = v6->_properties;
    v6->_properties = v7;

    v9 = IOHIDServiceGetRegistryID();
    [(NSMutableDictionary *)v6->_properties setObject:v9 forKeyedSubscript:@"serviceid"];
    v10 = [v4 propertyForKey:@"DeviceUsagePairs"];

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = @"None";
    }

    [(NSMutableDictionary *)v6->_properties setObject:v11 forKeyedSubscript:@"usagepairs"];
    v12 = [v4 propertyForKey:@"Transport"];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"None";
    }

    [(NSMutableDictionary *)v6->_properties setObject:v13 forKeyedSubscript:@"transport"];
    v14 = [v4 propertyForKey:@"ProductID"];

    [(NSMutableDictionary *)v6->_properties setObject:v14 forKeyedSubscript:@"productid"];
    v15 = [v4 propertyForKey:@"Product"];

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"None";
    }

    [(NSMutableDictionary *)v6->_properties setObject:v16 forKeyedSubscript:@"productdescription"];
    v17 = [v4 propertyForKey:@"VendorID"];

    [(NSMutableDictionary *)v6->_properties setObject:v17 forKeyedSubscript:@"vendorid"];
    v18 = [v4 propertyForKey:@"Manufacturer"];

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = @"None";
    }

    [(NSMutableDictionary *)v6->_properties setObject:v19 forKeyedSubscript:@"manufacturer"];
    v20 = [v4 propertyForKey:@"Built-In"];

    if ([v20 BOOLValue])
    {
      v21 = &__kCFBooleanTrue;
    }

    else
    {
      v21 = &__kCFBooleanFalse;
    }

    [(NSMutableDictionary *)v6->_properties setObject:v21 forKeyedSubscript:@"builtin"];
    v22 = v6;
  }

  return v6;
}

@end