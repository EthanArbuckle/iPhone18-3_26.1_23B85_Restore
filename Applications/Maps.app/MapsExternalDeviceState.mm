@interface MapsExternalDeviceState
+ (id)allKeys;
- (MapsExternalDeviceState)initWithExternalDevice:(id)device;
- (id)descriptionForKey:(id)key;
- (void)dealloc;
@end

@implementation MapsExternalDeviceState

+ (id)allKeys
{
  if (qword_10195DB20 != -1)
  {
    dispatch_once(&qword_10195DB20, &stru_10162CDE8);
  }

  v3 = qword_10195DB18;

  return v3;
}

- (void)dealloc
{
  v3 = sub_100895D34();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MapsExternalDeviceState;
  [(MapsExternalDeviceState *)&v4 dealloc];
}

- (MapsExternalDeviceState)initWithExternalDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = deviceCopy;
    if ([deviceCopy transportType] || !GEOConfigGetBOOL())
    {
      v20.receiver = self;
      v20.super_class = MapsExternalDeviceState;
      v12 = [(MapsExternalDeviceState *)&v20 init];
      v13 = sub_100895D34();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134349314;
        selfCopy2 = v12;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with external device: %@", buf, 0x16u);
      }

      if (v12)
      {
        v12->_lowLightLevel = [v5 nightMode];
        v12->_rightHandDrive = [v5 rightHandDrive];
        limitedUI = [v5 limitedUI];
        v12->_hasLimitedUI = limitedUI;
        if (limitedUI)
        {
          limitedUIElements = [v5 limitedUIElements];
          v12->_limitLongLists = [limitedUIElements containsObject:AVExternalDeviceLimitedUIElementNonMusicLists];
        }

        else
        {
          v12->_limitLongLists = 0;
        }

        if (v12->_hasLimitedUI)
        {
          limitedUIElements2 = [v5 limitedUIElements];
          v12->_disableSoftwareKeyboard = [limitedUIElements2 containsObject:AVExternalDeviceLimitedUIElementSoftKeyboard];
        }

        else
        {
          v12->_disableSoftwareKeyboard = 0;
        }

        v12->_ownsScreen = [v5 ownsScreen];
        v12->_supportsNavigationAidedDriving = ([v5 navigationAidedDriving] & 0xFFFFFFFFFFFFFFFELL) == 2;
        v12->_navigationAidedDrivingEnabled = [v5 navigationAidedDriving] == 2;
        transportType = [v5 transportType];
        if (transportType <= 3)
        {
          v12->_connectionType = qword_1012136F0[transportType];
        }
      }

      self = v12;
      selfCopy = self;
    }

    else
    {
      v6 = sub_100895D34();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v5;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = objc_opt_class();
          v9 = [v7 ID];
          name = [v7 name];
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p> (ID: %@, name: %@, transportType: %ld)", v8, v7, v9, name, [v7 transportType]);
        }

        else
        {
          v11 = [v7 description];
        }

        *buf = 134349314;
        selfCopy2 = self;
        v23 = 2114;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] Trying to create state for AVExternalDevice with bad transport type, treating as nil: %{public}@", buf, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)descriptionForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"connectionType"])
  {
    v10.receiver = self;
    v10.super_class = MapsExternalDeviceState;
    v5 = [(MapsExternalState *)&v10 descriptionForKey:keyCopy];
  }

  else
  {
    v6 = [(MapsExternalDeviceState *)self valueForKey:keyCopy];

    bOOLValue = [v6 BOOLValue];
    v8 = @"NO";
    if (bOOLValue)
    {
      v8 = @"YES";
    }

    v5 = v8;
  }

  return v5;
}

@end