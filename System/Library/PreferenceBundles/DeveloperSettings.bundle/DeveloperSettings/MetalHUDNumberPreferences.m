@interface MetalHUDNumberPreferences
+ (id)opacity;
+ (id)scale;
- (id)init:(id)a3 key:(id)a4 defaultValue:(id)a5;
- (void)_updatePreferences;
- (void)setToDefault;
- (void)setValue:(id)a3;
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

- (id)init:(id)a3 key:(id)a4 defaultValue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MetalHUDNumberPreferences;
  v12 = [(MetalHUDNumberPreferences *)&v19 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_preferences, a3);
    v14 = [v9 preferences];
    v15 = [v14 objectForKeyedSubscript:v10];

    if (!v15 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17 = v15, (isKindOfClass & 1) == 0))
    {
      v17 = v11;
    }

    objc_storeStrong(p_isa + 3, v17);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 4, a5);
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

  v4 = [(MetalHUDPreferences *)self->_preferences preferences];
  [v4 setObject:value forKeyedSubscript:self->_key];

  preferences = self->_preferences;

  [(MetalHUDPreferences *)preferences writePreferences];
}

- (void)setToDefault
{
  objc_storeStrong(&self->_value, self->_defaultValue);

  [(MetalHUDNumberPreferences *)self _updatePreferences];
}

- (void)setValue:(id)a3
{
  objc_storeStrong(&self->_value, a3);

  [(MetalHUDNumberPreferences *)self _updatePreferences];
}

@end