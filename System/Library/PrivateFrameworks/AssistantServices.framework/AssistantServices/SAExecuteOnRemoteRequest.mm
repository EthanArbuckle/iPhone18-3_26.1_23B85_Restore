@interface SAExecuteOnRemoteRequest
- (id)ad_preferredMessagingOption;
- (id)ad_recipientDevicesType;
@end

@implementation SAExecuteOnRemoteRequest

- (id)ad_recipientDevicesType
{
  v2 = [(SAExecuteOnRemoteRequest *)self serializedCommand];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [AceObject aceObjectWithPlistData:v2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"MobileDevices";
      v5 = @"MobileDevices";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ad_preferredMessagingOption
{
  v2 = [(SAExecuteOnRemoteRequest *)self serializedCommand];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [AceObject aceObjectWithPlistData:v2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"IDS";
      v5 = @"IDS";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end