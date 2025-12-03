@interface _UIScreenRoute
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalDevice;
- (_UIScreenRoute)initWithDevice:(id)device;
- (id)description;
- (id)displayTitleForTraits:(id)traits;
- (id)imageForTraits:(id)traits;
- (unint64_t)hash;
@end

@implementation _UIScreenRoute

- (_UIScreenRoute)initWithDevice:(id)device
{
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = _UIScreenRoute;
  v6 = [(_UIScreenRoute *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = +[AVOutputDevice sharedLocalDevice];
    v7->_isLocalDevice = [deviceCopy isEqual:v8];

    v7->_isThirdPartyTV = [deviceCopy deviceSubType] == 11;
    name = [deviceCopy name];
    displayName = v7->_displayName;
    v7->_displayName = name;

    isLocalDevice = v7->_isLocalDevice;
    v12 = [deviceCopy ID];
    v13 = v12;
    if (isLocalDevice)
    {
      if (v12)
      {
        v14 = v12;
        deviceID = v7->_deviceID;
        v7->_deviceID = v14;
      }

      else
      {
        deviceID = +[UIDevice currentDevice];
        identifierForVendor = [deviceID identifierForVendor];
        uUIDString = [identifierForVendor UUIDString];
        v21 = v7->_deviceID;
        v7->_deviceID = uUIDString;
      }

      sortTitle = v7->_sortTitle;
      v7->_sortTitle = @"local";
    }

    else
    {
      v16 = v7->_deviceID;
      v7->_deviceID = v12;

      v17 = v7->_displayName;
      sortTitle = v7->_sortTitle;
      v7->_sortTitle = v17;
    }
  }

  return v7;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIScreenRoute;
  v3 = [(_UIScreenRoute *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@, name = %@, ID = %@", v3, self->_displayName, self->_deviceID];

  return v4;
}

- (BOOL)isLocalDevice
{
  device = self->_device;
  v3 = +[AVOutputDevice sharedLocalDevice];
  LOBYTE(device) = [(AVOutputDevice *)device isEqual:v3];

  return device;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    deviceID = [equalCopy deviceID];
    deviceID2 = [(_UIScreenRoute *)self deviceID];
    if (deviceID == deviceID2)
    {
      v9 = 1;
    }

    else
    {
      deviceID3 = [equalCopy deviceID];
      deviceID4 = [(_UIScreenRoute *)self deviceID];
      v9 = [deviceID3 isEqualToString:deviceID4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  deviceID = [(_UIScreenRoute *)self deviceID];
  v3 = [deviceID hash];

  return v3;
}

- (id)displayTitleForTraits:(id)traits
{
  if (self->_isLocalDevice || (displayName = self->_displayName) == 0)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"AIRPLAY_LOCAL_FALLBACK" value:@"Turn off AirPlay" table:@"Localizable"];
  }

  else
  {
    v4 = displayName;
  }

  return v4;
}

- (id)imageForTraits:(id)traits
{
  if (self->_isLocalDevice)
  {
    v4 = @"Airplay-Local";
  }

  else if (self->_isThirdPartyTV)
  {
    v4 = @"Generic-TV";
  }

  else
  {
    v4 = @"Airplay-TV";
  }

  return [UIImage _kitImageNamed:v4 withTrait:traits];
}

@end