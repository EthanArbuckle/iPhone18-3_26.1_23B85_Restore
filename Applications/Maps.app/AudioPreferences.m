@interface AudioPreferences
- (AudioPreferences)initWithCopy:(id)a3;
- (AudioPreferences)initWithDefaults:(id)a3;
- (BOOL)_migratedMutedValue;
- (id)_values;
- (id)writtenDefaults;
- (unint64_t)cyclingVoiceGuidance;
- (unint64_t)drivingVoiceGuidance;
- (unint64_t)guidanceLevelForTransportType:(int)a3;
- (unint64_t)walkingVoiceGuidance;
- (void)_commonInit;
- (void)_migrateVolumeSettings;
- (void)dealloc;
- (void)loadValuesFromDefaults;
- (void)setCyclingVoiceGuidance:(unint64_t)a3;
- (void)setDrivingVoiceGuidance:(unint64_t)a3;
- (void)setGuidanceLevel:(unint64_t)a3 forTransportType:(int)a4;
- (void)setWalkingVoiceGuidance:(unint64_t)a3;
- (void)synchronize;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation AudioPreferences

- (void)loadValuesFromDefaults
{
  v3 = [(WatchSyncedPreferences *)self defaults];
  v4 = [v3 objectForKey:@"NavigationVoiceGuidanceLevelDriving"];
  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v4;

  v6 = [(WatchSyncedPreferences *)self defaults];
  v7 = [v6 objectForKey:@"NavigationVoiceGuidanceLevelWalking"];
  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v7;

  v9 = [(WatchSyncedPreferences *)self defaults];
  v10 = [v9 objectForKey:@"NavigationVoiceGuidanceLevelCycling"];
  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v10;

  [(AudioPreferences *)self synchronize];
  if (_GEOConfigHasValue())
  {
    self->_drivingVoiceGuidance = GEOConfigGetInteger();
  }

  else
  {
    self->_drivingVoiceGuidance = [(NSNumber *)self->_drivingModernPreference integerValue];
    v12 = sub_1000207C4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_drivingVoiceGuidance + 1;
      if (v13 >= 4)
      {
        v14 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_drivingVoiceGuidance];
      }

      else
      {
        v14 = off_10164F5D0[v13];
      }

      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating _drivingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_drivingModernPreference integerValue];
    GEOConfigSetInteger();
  }

  if (_GEOConfigHasValue())
  {
    self->_walkingVoiceGuidance = GEOConfigGetInteger();
  }

  else
  {
    self->_walkingVoiceGuidance = [(NSNumber *)self->_walkingModernPreference integerValue];
    v15 = sub_1000207C4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_walkingVoiceGuidance + 1;
      if (v16 >= 4)
      {
        v17 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_walkingVoiceGuidance];
      }

      else
      {
        v17 = off_10164F5D0[v16];
      }

      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating _walkingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_walkingModernPreference integerValue];
    GEOConfigSetInteger();
  }

  if (_GEOConfigHasValue())
  {
    self->_cyclingVoiceGuidance = GEOConfigGetInteger();
  }

  else
  {
    self->_cyclingVoiceGuidance = [(NSNumber *)self->_cyclingModernPreference integerValue];
    v18 = sub_1000207C4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_cyclingVoiceGuidance + 1;
      if (v19 >= 4)
      {
        v20 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_cyclingVoiceGuidance];
      }

      else
      {
        v20 = off_10164F5D0[v19];
      }

      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating _cyclingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_cyclingModernPreference integerValue];
    GEOConfigSetInteger();
  }

  v21 = sub_1000207C4();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_drivingVoiceGuidance + 1;
    if (v22 >= 4)
    {
      v23 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_drivingVoiceGuidance];
    }

    else
    {
      v23 = off_10164F5D0[v22];
    }

    v24 = v23;
    v25 = self->_walkingVoiceGuidance + 1;
    if (v25 >= 4)
    {
      v26 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_walkingVoiceGuidance];
    }

    else
    {
      v26 = off_10164F5D0[v25];
    }

    v27 = v26;
    v28 = self->_cyclingVoiceGuidance + 1;
    if (v28 >= 4)
    {
      v29 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_cyclingVoiceGuidance];
    }

    else
    {
      v29 = off_10164F5D0[v28];
    }

    *buf = 138412802;
    v31 = v24;
    v32 = 2112;
    v33 = v27;
    v34 = 2112;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Loaded values from defaults:\n\tDriving voice guidance: %@\n\tWalking voice guidance: %@\n\tCycling voice guidance: %@", buf, 0x20u);
  }
}

- (void)synchronize
{
  v3.receiver = self;
  v3.super_class = AudioPreferences;
  [(WatchSyncedPreferences *)&v3 synchronize];
  [(AudioPreferences *)self drivingVoiceGuidance];
  GEOConfigSetInteger();
  [(AudioPreferences *)self walkingVoiceGuidance];
  GEOConfigSetInteger();
  [(AudioPreferences *)self cyclingVoiceGuidance];
  GEOConfigSetInteger();
}

- (id)writtenDefaults
{
  v2 = [(WatchSyncedPreferences *)self defaults];
  v6[0] = v2;
  v3 = +[NSUserDefaults __maps_groupUserDefaults];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)_values
{
  v3 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self drivingVoiceGuidance]];
  v4 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self walkingVoiceGuidance]];
  v8[1] = v4;
  v5 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self cyclingVoiceGuidance]];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (unint64_t)drivingVoiceGuidance
{
  drivingModernPreference = self->_drivingModernPreference;
  if (!drivingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    drivingModernPreference = self->_drivingModernPreference;
  }

  return [(NSNumber *)drivingModernPreference unsignedIntegerValue];
}

- (unint64_t)walkingVoiceGuidance
{
  walkingModernPreference = self->_walkingModernPreference;
  if (!walkingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    walkingModernPreference = self->_walkingModernPreference;
  }

  return [(NSNumber *)walkingModernPreference unsignedIntegerValue];
}

- (unint64_t)cyclingVoiceGuidance
{
  cyclingModernPreference = self->_cyclingModernPreference;
  if (!cyclingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    cyclingModernPreference = self->_cyclingModernPreference;
  }

  return [(NSNumber *)cyclingModernPreference unsignedIntegerValue];
}

- (void)_commonInit
{
  _GEOConfigAddDelegateListenerForKey();
  _GEOConfigAddDelegateListenerForKey();

  _GEOConfigAddDelegateListenerForKey();
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = AudioPreferences;
  [(AudioPreferences *)&v3 dealloc];
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == NavigationConfig_SpokenGuidanceLevel_Driving && a3.var1 == *(&NavigationConfig_SpokenGuidanceLevel_Driving + 1))
  {
    Integer = GEOConfigGetInteger();

    [(AudioPreferences *)self setDrivingVoiceGuidance:Integer];
  }

  else if (a3.var0 == NavigationConfig_SpokenGuidanceLevel_Walking && a3.var1 == *(&NavigationConfig_SpokenGuidanceLevel_Walking + 1))
  {
    v8 = GEOConfigGetInteger();

    [(AudioPreferences *)self setWalkingVoiceGuidance:v8];
  }

  else if (a3.var0 == NavigationConfig_SpokenGuidanceLevel_Cycling && a3.var1 == *(&NavigationConfig_SpokenGuidanceLevel_Cycling + 1))
  {
    v9 = GEOConfigGetInteger();

    [(AudioPreferences *)self setCyclingVoiceGuidance:v9];
  }
}

- (void)setGuidanceLevel:(unint64_t)a3 forTransportType:(int)a4
{
  if (a4 == 2)
  {
    [(AudioPreferences *)self setWalkingVoiceGuidance:a3];
  }

  else if (a4 == 3)
  {
    [(AudioPreferences *)self setCyclingVoiceGuidance:a3];
  }

  else
  {
    [(AudioPreferences *)self setDrivingVoiceGuidance:a3];
  }
}

- (unint64_t)guidanceLevelForTransportType:(int)a3
{
  if (a3 == 2)
  {
    return [(AudioPreferences *)self walkingVoiceGuidance];
  }

  if (a3 == 3)
  {
    return [(AudioPreferences *)self cyclingVoiceGuidance];
  }

  return [(AudioPreferences *)self drivingVoiceGuidance];
}

- (BOOL)_migratedMutedValue
{
  v2 = [(WatchSyncedPreferences *)self defaults];
  v3 = [v2 objectForKey:@"VoiceIsMute"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)_migrateVolumeSettings
{
  v3 = [(AudioPreferences *)self _migratedMutedValue];
  v4 = sub_1000207C4();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Migrating old volume setting to mute", &v12, 2u);
    }

    v6 = &off_1016E94E8;
  }

  else
  {
    if (v5)
    {
      v7 = [(WatchSyncedPreferences *)self defaults];
      v8 = [v7 objectForKey:@"VoiceIsMute"];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Migrating old volume setting to full, isMute: %@", &v12, 0xCu);
    }

    v6 = &off_1016E9500;
  }

  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v6;

  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v6;

  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v6;

  [(AudioPreferences *)self synchronize];
}

- (void)setCyclingVoiceGuidance:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v5;

  if (self->_cyclingVoiceGuidance != a3)
  {
    self->_cyclingVoiceGuidance = a3;

    GEOConfigSetInteger();
  }
}

- (void)setWalkingVoiceGuidance:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v5;

  if (self->_walkingVoiceGuidance != a3)
  {
    self->_walkingVoiceGuidance = a3;

    GEOConfigSetInteger();
  }
}

- (void)setDrivingVoiceGuidance:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v5;

  if (self->_drivingVoiceGuidance != a3)
  {
    self->_drivingVoiceGuidance = a3;

    GEOConfigSetInteger();
  }
}

- (AudioPreferences)initWithCopy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AudioPreferences;
  v5 = [(WatchSyncedPreferences *)&v10 initWithCopy:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4 && (isKindOfClass & 1) != 0)
    {
      objc_storeStrong(&v5->_drivingModernPreference, v4[6]);
      v7 = v4;
      objc_storeStrong(&v5->_walkingModernPreference, v7[7]);
      objc_storeStrong(&v5->_cyclingModernPreference, v7[8]);
      v5->_drivingVoiceGuidance = [v7 drivingVoiceGuidance];
      v5->_walkingVoiceGuidance = [v7 walkingVoiceGuidance];
      v8 = [v7 cyclingVoiceGuidance];

      v5->_cyclingVoiceGuidance = v8;
    }

    [(AudioPreferences *)v5 _commonInit];
  }

  return v5;
}

- (AudioPreferences)initWithDefaults:(id)a3
{
  v6.receiver = self;
  v6.super_class = AudioPreferences;
  v3 = [(WatchSyncedPreferences *)&v6 initWithDefaults:a3];
  v4 = v3;
  if (v3)
  {
    [(AudioPreferences *)v3 _commonInit];
  }

  return v4;
}

@end