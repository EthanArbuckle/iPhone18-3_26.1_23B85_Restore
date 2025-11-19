@interface BSMutableKeyedSettings
- (void)applySettings:(id)a3;
- (void)setFlag:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation BSMutableKeyedSettings

- (void)setFlag:(int64_t)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = [(BSKeyedSettings *)self _settingForKey:v8 saveKey:a3 != 0x7FFFFFFFFFFFFFFFLL];
  [(BSSettings *)self _setFlag:a3 forSetting:v6];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(BSKeyedSettings *)self objectForKey:v8];

    if (!v7)
    {
      [(BSMutableIntegerMap *)self->super._keyMap removeObjectForKey:v6];
      [(NSMutableSet *)self->super._keys removeObject:v8];
    }
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(BSKeyedSettings *)self _settingForKey:v6 saveKey:v8 != 0];
  [(BSSettings *)self _setObject:v8 forSetting:v7];
  if (!v8 && [(BSKeyedSettings *)self flagForKey:v6]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BSMutableIntegerMap *)self->super._keyMap removeObjectForKey:v7];
    [(NSMutableSet *)self->super._keys removeObject:v6];
  }
}

- (void)applySettings:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  v13 = v5;
  if (v5)
  {
    v7 = [v5 isKeyedSettings];
    v6 = v13;
    if ((v7 & 1) == 0)
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
        v19 = self;
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