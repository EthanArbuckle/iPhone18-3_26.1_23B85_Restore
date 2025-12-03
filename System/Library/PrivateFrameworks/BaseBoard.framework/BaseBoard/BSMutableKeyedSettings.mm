@interface BSMutableKeyedSettings
- (void)applySettings:(id)settings;
- (void)setFlag:(int64_t)flag forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation BSMutableKeyedSettings

- (void)setFlag:(int64_t)flag forKey:(id)key
{
  keyCopy = key;
  0x7FFFFFFFFFFFFFFFLL = [(BSKeyedSettings *)self _settingForKey:keyCopy saveKey:flag != 0x7FFFFFFFFFFFFFFFLL];
  [(BSSettings *)self _setFlag:flag forSetting:0x7FFFFFFFFFFFFFFFLL];
  if (flag == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(BSKeyedSettings *)self objectForKey:keyCopy];

    if (!v7)
    {
      [(BSMutableIntegerMap *)self->super._keyMap removeObjectForKey:0x7FFFFFFFFFFFFFFFLL];
      [(NSMutableSet *)self->super._keys removeObject:keyCopy];
    }
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [(BSKeyedSettings *)self _settingForKey:keyCopy saveKey:objectCopy != 0];
  [(BSSettings *)self _setObject:objectCopy forSetting:v7];
  if (!objectCopy && [(BSKeyedSettings *)self flagForKey:keyCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BSMutableIntegerMap *)self->super._keyMap removeObjectForKey:v7];
    [(NSMutableSet *)self->super._keys removeObject:keyCopy];
  }
}

- (void)applySettings:(id)settings
{
  v26 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v6 = settingsCopy;
  v13 = settingsCopy;
  if (settingsCopy)
  {
    isKeyedSettings = [settingsCopy isKeyedSettings];
    v6 = v13;
    if ((isKeyedSettings & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!settings || [settings isKeyedSettings]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = @"BSKeyedSettings.m";
        v22 = 1024;
        v23 = 287;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      qword_1EAD33B00 = [v8 UTF8String];
      __break(0);
      JUMPOUT(0x18FF85584);
    }
  }

  [v6 _applyToSettings:self];
}

@end