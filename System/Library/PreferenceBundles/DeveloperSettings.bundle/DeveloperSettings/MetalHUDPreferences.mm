@interface MetalHUDPreferences
+ (id)preferences;
- (MetalHUDPreferences)init;
- (void)readPreferences;
- (void)writePreferences;
@end

@implementation MetalHUDPreferences

+ (id)preferences
{
  if (qword_49E38 != -1)
  {
    sub_26AA0();
  }

  v3 = qword_49E30;

  return v3;
}

- (MetalHUDPreferences)init
{
  v6.receiver = self;
  v6.super_class = MetalHUDPreferences;
  v2 = [(MetalHUDPreferences *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    preferences = v2->_preferences;
    v2->_preferences = v3;
  }

  return v2;
}

- (void)readPreferences
{
  v3 = CFPreferencesCopyValue(@"MTL_HUD_CONFIG", @".GlobalPreferences", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v3)
  {
    v8 = v3;
    v4 = [NSMutableDictionary dictionaryWithDictionary:v3];
    preferences = self->_preferences;
    self->_preferences = v4;

    v6 = [(NSMutableDictionary *)self->_preferences objectForKeyedSubscript:@"MTL_HUD_SYSTEM_CONFIG_VERSION"];
    v7 = v6;
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 unsignedIntValue] <= 1)
      {
        LODWORD(v6) = [v7 unsignedIntValue];
      }

      else
      {
        LODWORD(v6) = 0;
      }
    }

    self->_version = v6;
  }

  else
  {
    self->_version = 1;
  }
}

- (void)writePreferences
{
  self->_version = 1;
  v3 = [NSNumber numberWithUnsignedInt:1];
  [(NSMutableDictionary *)self->_preferences setObject:v3 forKeyedSubscript:@"MTL_HUD_SYSTEM_CONFIG_VERSION"];

  CFPreferencesSetValue(@"MTL_HUD_CONFIG", self->_preferences, @".GlobalPreferences", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  CFPreferencesSynchronize(@".GlobalPreferences", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

@end