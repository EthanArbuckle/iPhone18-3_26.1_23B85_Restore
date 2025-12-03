@interface MetalHUDLocationPreferences
+ (id)allLocationCandidates;
- (id)init:(id)init;
- (void)_updatePreferences;
- (void)setLocation:(id)location;
- (void)setToDefault;
@end

@implementation MetalHUDLocationPreferences

+ (id)allLocationCandidates
{
  if (qword_49E58 != -1)
  {
    sub_26AC8();
  }

  v3 = qword_49E50;

  return v3;
}

- (id)init:(id)init
{
  initCopy = init;
  v13.receiver = self;
  v13.super_class = MetalHUDLocationPreferences;
  v6 = [(MetalHUDLocationPreferences *)&v13 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_preferences, init);
    preferences = [p_isa[1] preferences];
    v9 = [preferences objectForKeyedSubscript:@"MTL_HUD_ALIGNMENT"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"topright";
    }

    objc_storeStrong(p_isa + 2, v11);
  }

  return p_isa;
}

- (void)_updatePreferences
{
  location = self->_location;
  preferences = [(MetalHUDPreferences *)self->_preferences preferences];
  [preferences setObject:location forKeyedSubscript:@"MTL_HUD_ALIGNMENT"];

  preferences = self->_preferences;

  [(MetalHUDPreferences *)preferences writePreferences];
}

- (void)setToDefault
{
  location = self->_location;
  self->_location = @"topright";

  [(MetalHUDLocationPreferences *)self _updatePreferences];
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  objc_storeStrong(&self->_location, location);
  v5 = +[MetalHUDLocationPreferences allLocationCandidates];
  v6 = [v5 containsObject:locationCopy];

  if (v6)
  {
    [(MetalHUDLocationPreferences *)self _updatePreferences];
  }

  else
  {
    [(MetalHUDLocationPreferences *)self setToDefault];
  }
}

@end