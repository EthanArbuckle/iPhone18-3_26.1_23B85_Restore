@interface BKSKeyboardDefaults
- (void)_bindAndRegisterDefaults;
- (void)migrateIfNeeded;
@end

@implementation BKSKeyboardDefaults

- (void)migrateIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(BKSKeyboardDefaults *)self oldModifierKeyRemapping];
  v4 = BKLogKeyboard();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [MEMORY[0x1E698E688] descriptionForRootObject:v3];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "migrating key modifiers %{public}@", &v9, 0xCu);
    }

    v7 = [v3 copy];
    [(BKSKeyboardDefaults *)self setModifierKeyRemapping:v7];

    [(BKSKeyboardDefaults *)self setOldModifierKeyRemapping:0];
  }

  else
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "nothing to migrate", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"oldModifierKeyRemapping"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"com.apple.keyboard.modifierKeysRemapping" toDefaultValue:0 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"modifierKeyRemapping"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"ModifierKeysRemapping" toDefaultValue:0 options:1];
}

@end