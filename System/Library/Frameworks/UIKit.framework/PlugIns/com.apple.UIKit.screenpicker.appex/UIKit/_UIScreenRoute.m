@interface _UIScreenRoute
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocalDevice;
- (_UIScreenRoute)initWithDevice:(id)a3;
- (id)description;
- (id)displayTitleForTraits:(id)a3;
- (id)imageForTraits:(id)a3;
- (unint64_t)hash;
@end

@implementation _UIScreenRoute

- (_UIScreenRoute)initWithDevice:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = _UIScreenRoute;
  v6 = [(_UIScreenRoute *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = +[AVOutputDevice sharedLocalDevice];
    v7->_isLocalDevice = [v5 isEqual:v8];

    v7->_isThirdPartyTV = [v5 deviceSubType] == 11;
    v9 = [v5 name];
    displayName = v7->_displayName;
    v7->_displayName = v9;

    isLocalDevice = v7->_isLocalDevice;
    v12 = [v5 ID];
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
        v19 = [deviceID identifierForVendor];
        v20 = [v19 UUIDString];
        v21 = v7->_deviceID;
        v7->_deviceID = v20;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [v4 deviceID];
    v6 = [(_UIScreenRoute *)self deviceID];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [v4 deviceID];
      v8 = [(_UIScreenRoute *)self deviceID];
      v9 = [v7 isEqualToString:v8];
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
  v2 = [(_UIScreenRoute *)self deviceID];
  v3 = [v2 hash];

  return v3;
}

- (id)displayTitleForTraits:(id)a3
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

- (id)imageForTraits:(id)a3
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

  return [UIImage _kitImageNamed:v4 withTrait:a3];
}

@end