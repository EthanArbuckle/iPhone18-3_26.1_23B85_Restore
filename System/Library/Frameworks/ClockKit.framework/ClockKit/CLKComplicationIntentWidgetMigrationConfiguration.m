@interface CLKComplicationIntentWidgetMigrationConfiguration
+ (CLKComplicationIntentWidgetMigrationConfiguration)intentWidgetMigrationConfigurationWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier intent:(INIntent *)intent localizedDisplayName:(NSString *)localizedDisplayName;
- (BOOL)isEqual:(id)a3;
- (CLKComplicationIntentWidgetMigrationConfiguration)initWithCoder:(id)a3;
- (CLKComplicationIntentWidgetMigrationConfiguration)initWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier intent:(INIntent *)intent localizedDisplayName:(NSString *)localizedDisplayName;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIntent:(id)a3;
@end

@implementation CLKComplicationIntentWidgetMigrationConfiguration

- (CLKComplicationIntentWidgetMigrationConfiguration)initWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier intent:(INIntent *)intent localizedDisplayName:(NSString *)localizedDisplayName
{
  v10 = kind;
  v11 = extensionBundleIdentifier;
  v12 = intent;
  v13 = localizedDisplayName;
  v24.receiver = self;
  v24.super_class = CLKComplicationIntentWidgetMigrationConfiguration;
  v14 = [(CLKComplicationWidgetMigrationConfiguration *)&v24 initPrivate];
  if (v14)
  {
    v15 = [(NSString *)v10 copy];
    v16 = v14->_kind;
    v14->_kind = v15;

    v17 = [(NSString *)v11 copy];
    v18 = v14->_extensionBundleIdentifier;
    v14->_extensionBundleIdentifier = v17;

    v19 = [(INIntent *)v12 copy];
    v20 = v14->_intent;
    v14->_intent = v19;

    v21 = [(NSString *)v13 copy];
    v22 = v14->_localizedDisplayName;
    v14->_localizedDisplayName = v21;
  }

  return v14;
}

- (void)setIntent:(id)a3
{
  v5 = a3;
  if (([(INIntent *)self->_intent isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_intent, a3);
  }
}

+ (CLKComplicationIntentWidgetMigrationConfiguration)intentWidgetMigrationConfigurationWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier intent:(INIntent *)intent localizedDisplayName:(NSString *)localizedDisplayName
{
  v10 = localizedDisplayName;
  v11 = intent;
  v12 = extensionBundleIdentifier;
  v13 = kind;
  v14 = [[a1 alloc] initWithKind:v13 extensionBundleIdentifier:v12 intent:v11 localizedDisplayName:v10];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CLKComplicationIntentWidgetMigrationConfiguration;
  if ([(CLKComplicationWidgetMigrationConfiguration *)&v16 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    kind = self->_kind;
    v7 = [v5 kind];
    if ([(NSString *)kind isEqualToString:v7])
    {
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      v9 = [v5 extensionBundleIdentifier];
      if ([(NSString *)extensionBundleIdentifier isEqualToString:v9])
      {
        intent = self->_intent;
        v11 = [v5 intent];
        if ([(INIntent *)intent isEqual:v11])
        {
          localizedDisplayName = self->_localizedDisplayName;
          v13 = [v5 localizedDisplayName];
          v14 = [(NSString *)localizedDisplayName isEqualToString:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CLKComplicationIntentWidgetMigrationConfiguration;
  v4 = [(CLKComplicationWidgetMigrationConfiguration *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 1, self->_kind);
  objc_storeStrong(v4 + 2, self->_extensionBundleIdentifier);
  objc_storeStrong(v4 + 3, self->_intent);
  objc_storeStrong(v4 + 4, self->_localizedDisplayName);
  return v4;
}

- (CLKComplicationIntentWidgetMigrationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CLKComplicationIntentWidgetMigrationConfiguration;
  v5 = [(CLKComplicationWidgetMigrationConfiguration *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_WidgetMigrationConfigurationKind"];
    kind = v5->_kind;
    v5->_kind = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_WidgetMigrationConfigurationKindExtensionBundleIdentifier"];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v8;

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v10 = getINIntentClass_softClass;
    v22 = getINIntentClass_softClass;
    if (!getINIntentClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __getINIntentClass_block_invoke;
      v18[3] = &unk_278A1E6A0;
      v18[4] = &v19;
      __getINIntentClass_block_invoke(v18);
      v10 = v20[3];
    }

    v11 = v10;
    _Block_object_dispose(&v19, 8);
    v12 = [v4 decodeObjectOfClass:v10 forKey:@"_WidgetMigrationConfigurationKindIntent"];
    intent = v5->_intent;
    v5->_intent = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_WidgetMigrationConfigurationKindLocalizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLKComplicationIntentWidgetMigrationConfiguration;
  [(CLKComplicationWidgetMigrationConfiguration *)&v11 encodeWithCoder:v4];
  [v4 encodeObject:self->_kind forKey:@"_WidgetMigrationConfigurationKind"];
  [v4 encodeObject:self->_extensionBundleIdentifier forKey:@"_WidgetMigrationConfigurationKindExtensionBundleIdentifier"];
  v5 = self->_intent;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v6 = getINIntentWithTypedIntentSymbolLoc_ptr;
  v20 = getINIntentWithTypedIntentSymbolLoc_ptr;
  if (!getINIntentWithTypedIntentSymbolLoc_ptr)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getINIntentWithTypedIntentSymbolLoc_block_invoke;
    v15 = &unk_278A1E6A0;
    v16 = &v17;
    v7 = IntentsLibrary();
    v8 = dlsym(v7, "INIntentWithTypedIntent");
    *(v16[1] + 24) = v8;
    getINIntentWithTypedIntentSymbolLoc_ptr = *(v16[1] + 24);
    v6 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v6)
  {
    v10 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v10);
  }

  v9 = v6(v5);

  [v4 encodeObject:v9 forKey:@"_WidgetMigrationConfigurationKindIntent"];
  [v4 encodeObject:self->_localizedDisplayName forKey:@"_WidgetMigrationConfigurationKindLocalizedDisplayName"];
}

- (uint64_t)encodeWithCoder:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getINIntentClass_block_invoke_cold_1();
}

@end