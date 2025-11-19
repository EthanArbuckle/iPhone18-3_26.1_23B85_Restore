@interface CLKComplicationDescriptor
+ (id)allowedDictionaryClasses;
+ (id)legacyComplicationDescriptor;
+ (id)legacyComplicationDescriptorWithSupportedFamilies:(id)a3;
- (BOOL)hasUserInfo;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForIdNameAndLocale:(id)a3;
- (CLKComplicationDescriptor)initWithCoder:(id)a3;
- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies;
- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies userActivity:(NSUserActivity *)userActivity;
- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies userInfo:(NSDictionary *)userInfo;
- (CLKComplicationDescriptor)initWithJSONObjectRepresentation:(id)a3;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)validate;
@end

@implementation CLKComplicationDescriptor

- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies
{
  v8 = identifier;
  v9 = displayName;
  v10 = supportedFamilies;
  v21.receiver = self;
  v21.super_class = CLKComplicationDescriptor;
  v11 = [(CLKComplicationDescriptor *)&v21 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_identifier;
    v11->_identifier = v12;

    v14 = [(NSString *)v9 copy];
    v15 = v11->_displayName;
    v11->_displayName = v14;

    v16 = [(NSArray *)v10 copy];
    v17 = v11->_supportedFamilies;
    v11->_supportedFamilies = v16;

    v18 = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v11->_locale;
    v11->_locale = v18;
  }

  return v11;
}

- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies userInfo:(NSDictionary *)userInfo
{
  v10 = userInfo;
  v11 = [(CLKComplicationDescriptor *)self initWithIdentifier:identifier displayName:displayName supportedFamilies:supportedFamilies];
  if (v11)
  {
    v12 = [(NSDictionary *)v10 copy];
    v13 = v11->_userInfo;
    v11->_userInfo = v12;
  }

  return v11;
}

- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies userActivity:(NSUserActivity *)userActivity
{
  v10 = userActivity;
  v11 = [(CLKComplicationDescriptor *)self initWithIdentifier:identifier displayName:displayName supportedFamilies:supportedFamilies];
  if (v11)
  {
    v12 = [[CLKUserActivity alloc] initWithUserActivity:v10];
    clkUserActivity = v11->_clkUserActivity;
    v11->_clkUserActivity = v12;
  }

  return v11;
}

+ (id)legacyComplicationDescriptor
{
  v3 = CLKAllComplicationFamilies();
  v4 = [a1 legacyComplicationDescriptorWithSupportedFamilies:v3];

  return v4;
}

+ (id)legacyComplicationDescriptorWithSupportedFamilies:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:@"CLKDefaultComplicationIdentifier" displayName:&stru_284A20458 supportedFamilies:v4];

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[\n_identifier:%@ \n_displayName:%@ \n_supportedFamilies:%@ \n_locale:%@] ", self->_identifier, self->_displayName, self->_supportedFamilies, self->_locale];

  return v2;
}

- (BOOL)hasUserInfo
{
  v3 = [(CLKComplicationDescriptor *)self identifier];
  if (![v3 isEqualToString:@"CLKDefaultComplicationIdentifier"] || self->_userInfo)
  {

    return 1;
  }

  clkUserActivity = self->_clkUserActivity;

  return clkUserActivity != 0;
}

- (void)validate
{
  if (!self->_identifier)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"CLKComplicationDescriptor: identifier cannot be nil"];
  }

  if (!self->_displayName)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"CLKComplicationDescriptor: displayName cannot be nil"];
  }

  supportedFamilies = self->_supportedFamilies;
  if (supportedFamilies)
  {
    v4 = objc_opt_class();
    CLKValidateArray(supportedFamilies, v4);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"CLKComplicationDescriptor: supportedFamilies cannot be nil"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    v6 = +[CLKComplicationDescriptor allowedDictionaryClasses];
    CLKRecursivelyValidateDictionary(userInfo, v6);
  }

  clkUserActivity = self->_clkUserActivity;
  if (clkUserActivity)
  {
    v10 = [(CLKUserActivity *)clkUserActivity userActivity];
    v8 = [v10 userInfo];
    v9 = +[CLKComplicationDescriptor allowedDictionaryClasses];
    CLKRecursivelyValidateDictionary(v8, v9);
  }
}

+ (id)allowedDictionaryClasses
{
  if (allowedDictionaryClasses_onceToken != -1)
  {
    +[CLKComplicationDescriptor allowedDictionaryClasses];
  }

  v3 = allowedDictionaryClasses__allowedDictionaryClasses;

  return v3;
}

uint64_t __53__CLKComplicationDescriptor_allowedDictionaryClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = allowedDictionaryClasses__allowedDictionaryClasses;
  allowedDictionaryClasses__allowedDictionaryClasses = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSArray *)self->_supportedFamilies copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSDictionary *)self->_userInfo copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  objc_storeStrong((v5 + 56), self->_clkUserActivity);
  *(v5 + 8) = self->_needsAppNotify;
  objc_storeStrong((v5 + 48), self->_locale);
  v14 = [(CLKWidgetComplicationDescriptor *)self->_widgetDescriptor copy];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CLKComplicationDescriptor *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualForIdNameAndLocale:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  identifier = self->_identifier;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__CLKComplicationDescriptor_isEqualForIdNameAndLocale___block_invoke;
  v20[3] = &unk_278A1F118;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendString:identifier counterpart:v20];
  displayName = self->_displayName;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__CLKComplicationDescriptor_isEqualForIdNameAndLocale___block_invoke_2;
  v18[3] = &unk_278A1F118;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendString:displayName counterpart:v18];
  locale = self->_locale;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__CLKComplicationDescriptor_isEqualForIdNameAndLocale___block_invoke_3;
  v16[3] = &unk_278A1F140;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendObject:locale counterpart:v16];
  LOBYTE(locale) = [v5 isEqual];

  return locale;
}

- (unint64_t)hash
{
  v2 = [(CLKComplicationDescriptor *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (CLKComplicationDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CLKComplicationDescriptor;
  v5 = [(CLKComplicationDescriptor *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"supportedFamilies"];
    supportedFamilies = v5->_supportedFamilies;
    v5->_supportedFamilies = v13;

    v15 = +[CLKComplicationDescriptor allowedDictionaryClasses];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    v19 = [[CLKUserActivity alloc] initWithEncodedUserActivity:v18];
    clkUserActivity = v5->_clkUserActivity;
    v5->_clkUserActivity = v19;

    v5->_needsAppNotify = [v4 decodeBoolForKey:@"needsAppNotify"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    if (v21)
    {
      v22 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v21];
      locale = v5->_locale;
      v5->_locale = v22;
    }

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetDescriptor"];
    widgetDescriptor = v5->_widgetDescriptor;
    v5->_widgetDescriptor = v24;

    v26 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"identifier"];
  [v7 encodeObject:self->_displayName forKey:@"displayName"];
  [v7 encodeObject:self->_supportedFamilies forKey:@"supportedFamilies"];
  [v7 encodeObject:self->_userInfo forKey:@"userInfo"];
  v5 = [(CLKUserActivity *)self->_clkUserActivity encodedUserActivity];
  [v7 encodeObject:v5 forKey:@"userActivity"];

  [v7 encodeBool:self->_needsAppNotify forKey:@"needsAppNotify"];
  v6 = [(NSLocale *)self->_locale localeIdentifier];
  [v7 encodeObject:v6 forKey:@"locale"];

  [v7 encodeObject:self->_widgetDescriptor forKey:@"widgetDescriptor"];
}

- (id)JSONObjectRepresentation
{
  v16[2] = *MEMORY[0x277D85DE8];
  identifier = self->_identifier;
  if (!identifier)
  {
    identifier = @"CLKDefaultComplicationIdentifier";
  }

  v15[0] = @"identifier";
  v15[1] = @"supportedFamilies";
  supportedFamilies = self->_supportedFamilies;
  if (!supportedFamilies)
  {
    supportedFamilies = MEMORY[0x277CBEBF8];
  }

  v16[0] = identifier;
  v16[1] = supportedFamilies;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v6 = [v5 mutableCopy];

  displayName = self->_displayName;
  if (displayName)
  {
    [v6 setObject:displayName forKeyedSubscript:@"displayName"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v6 setObject:userInfo forKeyedSubscript:@"userInfo"];
  }

  clkUserActivity = self->_clkUserActivity;
  if (clkUserActivity)
  {
    v10 = [(CLKUserActivity *)clkUserActivity encodedUserActivity];
    [v6 setObject:v10 forKeyedSubscript:@"userActivity"];
  }

  if (self->_needsAppNotify)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v6 setObject:v11 forKeyedSubscript:@"needsAppNotify"];
  }

  v12 = [(NSLocale *)self->_locale localeIdentifier];
  [v6 setObject:v12 forKeyedSubscript:@"locale"];

  v13 = [(CLKWidgetComplicationDescriptor *)self->_widgetDescriptor JSONObjectRepresentation];
  [v6 setObject:v13 forKeyedSubscript:@"widgetDescriptor"];

  return v6;
}

- (CLKComplicationDescriptor)initWithJSONObjectRepresentation:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = CLKComplicationDescriptor;
  v5 = [(CLKComplicationDescriptor *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (!v5->_identifier)
    {
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"CLKComplicationDescriptor identifier is disallowed class %@", objc_opt_class()}];
    }

    if (!v5->_identifier)
    {
LABEL_6:
      v8 = [v4 objectForKeyedSubscript:@"type"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v8, "unsignedIntegerValue")];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = @"CLKDefaultComplicationIdentifier";
        }
      }

      v10 = v5->_identifier;
      v5->_identifier = &v9->isa;
    }

    v11 = [v4 objectForKeyedSubscript:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v11;

    if (!v5->_displayName)
    {
      v13 = [v4 objectForKeyedSubscript:@"localizedDisplayName"];
      v14 = v5->_displayName;
      v5->_displayName = v13;
    }

    v15 = [v4 objectForKeyedSubscript:@"supportedFamilies"];
    supportedFamilies = v5->_supportedFamilies;
    v5->_supportedFamilies = v15;

    v17 = [v4 objectForKeyedSubscript:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v17;

    v19 = [v4 objectForKeyedSubscript:@"userActivity"];
    v20 = [[CLKUserActivity alloc] initWithEncodedUserActivity:v19];
    clkUserActivity = v5->_clkUserActivity;
    v5->_clkUserActivity = v20;

    v22 = [v4 objectForKeyedSubscript:@"needsAppNotify"];
    v5->_needsAppNotify = [v22 BOOLValue];

    v23 = [v4 objectForKeyedSubscript:@"locale"];
    if (v23)
    {
      v24 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v23];
      locale = v5->_locale;
      v5->_locale = v24;
    }

    v26 = [v4 objectForKeyedSubscript:@"widgetDescriptor"];

    if (v26)
    {
      v27 = [CLKWidgetComplicationDescriptor alloc];
      v28 = [v4 objectForKeyedSubscript:@"widgetDescriptor"];
      v29 = [(CLKWidgetComplicationDescriptor *)v27 initWithJSONObjectRepresentation:v28];
      widgetDescriptor = v5->_widgetDescriptor;
      v5->_widgetDescriptor = v29;
    }

    v31 = v5;
  }

  return v5;
}

@end