@interface MetalHUDNumberPreferences
+ (id)opacity;
+ (id)scale;
- (id)init:(id)init key:(id)key defaultValue:(id)value;
- (void)_updatePreferences;
- (void)setToDefault;
- (void)setValue:(id)value;
@end

@implementation MetalHUDNumberPreferences

+ (id)opacity
{
  v2 = [MetalHUDNumberPreferences alloc];
  v3 = +[MetalHUDPreferences preferences];
  v4 = [(MetalHUDNumberPreferences *)v2 init:v3 key:@"MTL_HUD_OPACITY" defaultValue:&off_415B8];

  return v4;
}

+ (id)scale
{
  v2 = [MetalHUDNumberPreferences alloc];
  v3 = +[MetalHUDPreferences preferences];
  v4 = [(MetalHUDNumberPreferences *)v2 init:v3 key:@"MTL_HUD_SCALE" defaultValue:&off_415C8];

  return v4;
}

- (id)init:(id)init key:(id)key defaultValue:(id)value
{
  initCopy = init;
  keyCopy = key;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = MetalHUDNumberPreferences;
  v12 = [(MetalHUDNumberPreferences *)&v19 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_preferences, init);
    preferences = [initCopy preferences];
    v15 = [preferences objectForKeyedSubscript:keyCopy];

    if (!v15 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17 = v15, (isKindOfClass & 1) == 0))
    {
      v17 = valueCopy;
    }

    objc_storeStrong(p_isa + 3, v17);
    objc_storeStrong(p_isa + 2, key);
    objc_storeStrong(p_isa + 4, value);
  }

  return p_isa;
}

- (void)_updatePreferences
{
  value = self->_value;
  if (!value)
  {
    value = self->_defaultValue;
  }

  preferences = [(MetalHUDPreferences *)self->_preferences preferences];
  [preferences setObject:value forKeyedSubscript:self->_key];

  preferences = self->_preferences;

  [(MetalHUDPreferences *)preferences writePreferences];
}

- (void)setToDefault
{
  objc_storeStrong(&self->_value, self->_defaultValue);

  [(MetalHUDNumberPreferences *)self _updatePreferences];
}

- (void)setValue:(id)value
{
  objc_storeStrong(&self->_value, value);

  [(MetalHUDNumberPreferences *)self _updatePreferences];
}

@end