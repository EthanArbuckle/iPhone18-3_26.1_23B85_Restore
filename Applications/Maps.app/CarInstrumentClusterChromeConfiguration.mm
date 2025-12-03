@interface CarInstrumentClusterChromeConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isRenderedInMediaCarousel;
- (CarInstrumentClusterChromeConfiguration)initWithInstrumentClusterSceneSettings:(id)settings;
- (NSString)description;
- (unint64_t)_settingWithValue:(unint64_t)value hybridICOverrideKey:(id)key;
- (void)dealloc;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation CarInstrumentClusterChromeConfiguration

- (unint64_t)_settingWithValue:(unint64_t)value hybridICOverrideKey:(id)key
{
  if (self->_isHybridInstrumentClusterConfiguration && _GEOConfigHasValue())
  {
    UInteger = GEOConfigGetUInteger();
    if (UInteger - 1 >= 3)
    {
      return 0;
    }

    else
    {
      return UInteger;
    }
  }

  return value;
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  v4 = [NSNotificationCenter defaultCenter:*&key.var0];
  [v4 postNotificationName:@"CarInstrumentClusterChromeConfigurationDidUpdateNotification" object:self];
}

- (BOOL)isRenderedInMediaCarousel
{
  if (_GEOConfigHasValue())
  {
    UInteger = GEOConfigGetUInteger();
  }

  else
  {
    UInteger = self->_presentationType;
  }

  return UInteger == 2;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  v6 = self->_showsHeadingIndicator - 1;
  if (v6 > 2)
  {
    v7 = @"Unspecified";
  }

  else
  {
    v7 = *(&off_101657748 + v6);
  }

  v8 = self->_showsSpeedLimit - 1;
  if (v8 > 2)
  {
    v9 = @"Unspecified";
  }

  else
  {
    v9 = *(&off_101657748 + v8);
  }

  v10 = self->_showsETA - 1;
  if (v10 > 2)
  {
    v11 = @"Unspecified";
  }

  else
  {
    v11 = *(&off_101657748 + v10);
  }

  v12 = [NSString stringWithFormat:@"<%@: %p, showsHeadingIndicator: %@, showsSpeedLimit: %@, showsETA: %@>", v4, self, v7, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_showsHeadingIndicator == v5->_showsHeadingIndicator && self->_showsSpeedLimit == v5->_showsSpeedLimit && self->_showsETA == v5->_showsETA;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  if (self->_isHybridInstrumentClusterConfiguration)
  {
    GEOConfigRemoveDelegateListenerForAllKeys();
  }

  v3.receiver = self;
  v3.super_class = CarInstrumentClusterChromeConfiguration;
  [(CarInstrumentClusterChromeConfiguration *)&v3 dealloc];
}

- (CarInstrumentClusterChromeConfiguration)initWithInstrumentClusterSceneSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "[CarInstrumentClusterChromeConfiguration initWithInstrumentClusterSceneSettings:]";
      v24 = 2080;
      v25 = "CarInstrumentClusterChromeConfiguration.m";
      v26 = 1024;
      v27 = 55;
      v28 = 2080;
      v29 = "settings != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v23 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v21.receiver = self;
  v21.super_class = CarInstrumentClusterChromeConfiguration;
  v5 = [(CarInstrumentClusterChromeConfiguration *)&v21 init];
  if (v5)
  {
    showsCompass = [settingsCopy showsCompass];
    if ((showsCompass - 1) >= 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = showsCompass;
    }

    v5->_showsHeadingIndicator = v7;
    showsSpeedLimit = [settingsCopy showsSpeedLimit];
    if ((showsSpeedLimit - 1) >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = showsSpeedLimit;
    }

    v5->_showsSpeedLimit = v9;
    showsETA = [settingsCopy showsETA];
    if ((showsETA - 1) >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = showsETA;
    }

    v5->_showsETA = v11;
    v5->_presentationType = [settingsCopy hostedAltScreenPresentationType];
    layoutJustification = [settingsCopy layoutJustification];
    v13 = 2 * (layoutJustification == 3);
    if (layoutJustification == 2)
    {
      v13 = 1;
    }

    v5->_hybridICAlignment = v13;
    itemType = [settingsCopy itemType];
    v15 = itemType == 1;
    if (itemType == 2)
    {
      v15 = 2;
    }

    v5->_itemType = v15;
    if (v15 && !GEOConfigGetBOOL())
    {
      v5->_isHybridInstrumentClusterConfiguration = 0;
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
      v5->_isHybridInstrumentClusterConfiguration = BOOL;
      if (BOOL)
      {
        _GEOConfigAddDelegateListenerForKey();
        _GEOConfigAddDelegateListenerForKey();

        _GEOConfigAddDelegateListenerForKey();
      }
    }
  }

  return v5;
}

@end