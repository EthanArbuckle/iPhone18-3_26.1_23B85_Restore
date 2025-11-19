@interface MapsExternalDeviceState
+ (id)allKeys;
- (MapsExternalDeviceState)initWithExternalDevice:(id)a3;
- (id)descriptionForKey:(id)a3;
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MapsExternalDeviceState;
  [(MapsExternalDeviceState *)&v4 dealloc];
}

- (MapsExternalDeviceState)initWithExternalDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([v4 transportType] || !GEOConfigGetBOOL())
    {
      v20.receiver = self;
      v20.super_class = MapsExternalDeviceState;
      v12 = [(MapsExternalDeviceState *)&v20 init];
      v13 = sub_100895D34();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134349314;
        v22 = v12;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with external device: %@", buf, 0x16u);
      }

      if (v12)
      {
        v12->_lowLightLevel = [v5 nightMode];
        v12->_rightHandDrive = [v5 rightHandDrive];
        v14 = [v5 limitedUI];
        v12->_hasLimitedUI = v14;
        if (v14)
        {
          v15 = [v5 limitedUIElements];
          v12->_limitLongLists = [v15 containsObject:AVExternalDeviceLimitedUIElementNonMusicLists];
        }

        else
        {
          v12->_limitLongLists = 0;
        }

        if (v12->_hasLimitedUI)
        {
          v17 = [v5 limitedUIElements];
          v12->_disableSoftwareKeyboard = [v17 containsObject:AVExternalDeviceLimitedUIElementSoftKeyboard];
        }

        else
        {
          v12->_disableSoftwareKeyboard = 0;
        }

        v12->_ownsScreen = [v5 ownsScreen];
        v12->_supportsNavigationAidedDriving = ([v5 navigationAidedDriving] & 0xFFFFFFFFFFFFFFFELL) == 2;
        v12->_navigationAidedDrivingEnabled = [v5 navigationAidedDriving] == 2;
        v18 = [v5 transportType];
        if (v18 <= 3)
        {
          v12->_connectionType = qword_1012136F0[v18];
        }
      }

      self = v12;
      v16 = self;
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
          v10 = [v7 name];
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p> (ID: %@, name: %@, transportType: %ld)", v8, v7, v9, v10, [v7 transportType]);
        }

        else
        {
          v11 = [v7 description];
        }

        *buf = 134349314;
        v22 = self;
        v23 = 2114;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] Trying to create state for AVExternalDevice with bad transport type, treating as nil: %{public}@", buf, 0x16u);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)descriptionForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"connectionType"])
  {
    v10.receiver = self;
    v10.super_class = MapsExternalDeviceState;
    v5 = [(MapsExternalState *)&v10 descriptionForKey:v4];
  }

  else
  {
    v6 = [(MapsExternalDeviceState *)self valueForKey:v4];

    v7 = [v6 BOOLValue];
    v8 = @"NO";
    if (v7)
    {
      v8 = @"YES";
    }

    v5 = v8;
  }

  return v5;
}

@end