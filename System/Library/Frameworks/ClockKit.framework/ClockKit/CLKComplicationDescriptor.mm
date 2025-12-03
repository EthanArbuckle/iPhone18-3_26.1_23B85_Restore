@interface CLKComplicationDescriptor
+ (id)allowedDictionaryClasses;
+ (id)legacyComplicationDescriptor;
+ (id)legacyComplicationDescriptorWithSupportedFamilies:(id)families;
- (BOOL)hasUserInfo;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForIdNameAndLocale:(id)locale;
- (CLKComplicationDescriptor)initWithCoder:(id)coder;
- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies;
- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies userActivity:(NSUserActivity *)userActivity;
- (CLKComplicationDescriptor)initWithIdentifier:(NSString *)identifier displayName:(NSString *)displayName supportedFamilies:(NSArray *)supportedFamilies userInfo:(NSDictionary *)userInfo;
- (CLKComplicationDescriptor)initWithJSONObjectRepresentation:(id)representation;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v11->_locale;
    v11->_locale = currentLocale;
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
  v4 = [self legacyComplicationDescriptorWithSupportedFamilies:v3];

  return v4;
}

+ (id)legacyComplicationDescriptorWithSupportedFamilies:(id)families
{
  familiesCopy = families;
  v5 = [[self alloc] initWithIdentifier:@"CLKDefaultComplicationIdentifier" displayName:&stru_284A20458 supportedFamilies:familiesCopy];

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[\n_identifier:%@ \n_displayName:%@ \n_supportedFamilies:%@ \n_locale:%@] ", self->_identifier, self->_displayName, self->_supportedFamilies, self->_locale];

  return v2;
}

- (BOOL)hasUserInfo
{
  identifier = [(CLKComplicationDescriptor *)self identifier];
  if (![identifier isEqualToString:@"CLKDefaultComplicationIdentifier"] || self->_userInfo)
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
    userActivity = [(CLKUserActivity *)clkUserActivity userActivity];
    userInfo = [userActivity userInfo];
    v9 = +[CLKComplicationDescriptor allowedDictionaryClasses];
    CLKRecursivelyValidateDictionary(userInfo, v9);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSArray *)self->_supportedFamilies copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSDictionary *)self->_userInfo copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(CLKComplicationDescriptor *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualForIdNameAndLocale:(id)locale
{
  localeCopy = locale;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:localeCopy ofExpectedClass:objc_opt_class()];
  identifier = self->_identifier;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__CLKComplicationDescriptor_isEqualForIdNameAndLocale___block_invoke;
  v20[3] = &unk_278A1F118;
  v7 = localeCopy;
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
  identifier = [(CLKComplicationDescriptor *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (CLKComplicationDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = CLKComplicationDescriptor;
  v5 = [(CLKComplicationDescriptor *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"supportedFamilies"];
    supportedFamilies = v5->_supportedFamilies;
    v5->_supportedFamilies = v13;

    v15 = +[CLKComplicationDescriptor allowedDictionaryClasses];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    v19 = [[CLKUserActivity alloc] initWithEncodedUserActivity:v18];
    clkUserActivity = v5->_clkUserActivity;
    v5->_clkUserActivity = v19;

    v5->_needsAppNotify = [coderCopy decodeBoolForKey:@"needsAppNotify"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    if (v21)
    {
      v22 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v21];
      locale = v5->_locale;
      v5->_locale = v22;
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetDescriptor"];
    widgetDescriptor = v5->_widgetDescriptor;
    v5->_widgetDescriptor = v24;

    v26 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_supportedFamilies forKey:@"supportedFamilies"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
  encodedUserActivity = [(CLKUserActivity *)self->_clkUserActivity encodedUserActivity];
  [coderCopy encodeObject:encodedUserActivity forKey:@"userActivity"];

  [coderCopy encodeBool:self->_needsAppNotify forKey:@"needsAppNotify"];
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  [coderCopy encodeObject:localeIdentifier forKey:@"locale"];

  [coderCopy encodeObject:self->_widgetDescriptor forKey:@"widgetDescriptor"];
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
    encodedUserActivity = [(CLKUserActivity *)clkUserActivity encodedUserActivity];
    [v6 setObject:encodedUserActivity forKeyedSubscript:@"userActivity"];
  }

  if (self->_needsAppNotify)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v6 setObject:v11 forKeyedSubscript:@"needsAppNotify"];
  }

  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  [v6 setObject:localeIdentifier forKeyedSubscript:@"locale"];

  jSONObjectRepresentation = [(CLKWidgetComplicationDescriptor *)self->_widgetDescriptor JSONObjectRepresentation];
  [v6 setObject:jSONObjectRepresentation forKeyedSubscript:@"widgetDescriptor"];

  return v6;
}

- (CLKComplicationDescriptor)initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v33.receiver = self;
  v33.super_class = CLKComplicationDescriptor;
  v5 = [(CLKComplicationDescriptor *)&v33 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"identifier"];
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
      v8 = [representationCopy objectForKeyedSubscript:@"type"];
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

    v11 = [representationCopy objectForKeyedSubscript:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v11;

    if (!v5->_displayName)
    {
      v13 = [representationCopy objectForKeyedSubscript:@"localizedDisplayName"];
      v14 = v5->_displayName;
      v5->_displayName = v13;
    }

    v15 = [representationCopy objectForKeyedSubscript:@"supportedFamilies"];
    supportedFamilies = v5->_supportedFamilies;
    v5->_supportedFamilies = v15;

    v17 = [representationCopy objectForKeyedSubscript:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v17;

    v19 = [representationCopy objectForKeyedSubscript:@"userActivity"];
    v20 = [[CLKUserActivity alloc] initWithEncodedUserActivity:v19];
    clkUserActivity = v5->_clkUserActivity;
    v5->_clkUserActivity = v20;

    v22 = [representationCopy objectForKeyedSubscript:@"needsAppNotify"];
    v5->_needsAppNotify = [v22 BOOLValue];

    v23 = [representationCopy objectForKeyedSubscript:@"locale"];
    if (v23)
    {
      v24 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v23];
      locale = v5->_locale;
      v5->_locale = v24;
    }

    v26 = [representationCopy objectForKeyedSubscript:@"widgetDescriptor"];

    if (v26)
    {
      v27 = [CLKWidgetComplicationDescriptor alloc];
      v28 = [representationCopy objectForKeyedSubscript:@"widgetDescriptor"];
      v29 = [(CLKWidgetComplicationDescriptor *)v27 initWithJSONObjectRepresentation:v28];
      widgetDescriptor = v5->_widgetDescriptor;
      v5->_widgetDescriptor = v29;
    }

    v31 = v5;
  }

  return v5;
}

@end