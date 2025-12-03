@interface AMSUserNotificationAuthorizationOptions
- (AMSUserNotificationAuthorizationOptions)initWithCoder:(id)coder;
- (AMSUserNotificationAuthorizationOptions)initWithOptionsDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)optionsDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSUserNotificationAuthorizationOptions

- (AMSUserNotificationAuthorizationOptions)initWithOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = AMSUserNotificationAuthorizationOptions;
  v5 = [(AMSUserNotificationAuthorizationOptions *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AMSUserNotificationAuthorizationOptionsAuthorizationOptions"];
    if (objc_opt_respondsToSelector())
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"AMSUserNotificationAuthorizationOptionsAuthorizationOptions"];
      v5->_authorizationOptions = [v7 unsignedIntegerValue];
    }

    else
    {
      v5->_authorizationOptions = 38;
    }

    metricsOverlay = [dictionaryCopy objectForKeyedSubscript:@"AMSUserNotificationAuthorizationOptionsMetricsOverlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = metricsOverlay;

      if (!v9)
      {
LABEL_10:
        v10 = [dictionaryCopy ams_objectForKey:@"AMSUserNotificationAuthorizationOptionsUserInitiated" defaultValue:MEMORY[0x1E695E110]];
        v5->_userInitiated = [v10 BOOLValue];

        goto LABEL_11;
      }

      v9 = v9;
      metricsOverlay = v5->_metricsOverlay;
      v5->_metricsOverlay = v9;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  optionsDictionary = [(AMSUserNotificationAuthorizationOptions *)self optionsDictionary];
  [coderCopy encodeObject:optionsDictionary forKey:@"kCodingKeyOptionsDictionary"];
}

- (AMSUserNotificationAuthorizationOptions)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  ams_PLISTClasses = [v4 ams_PLISTClasses];
  v7 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"kCodingKeyOptionsDictionary"];

  if (v7)
  {
    self = [(AMSUserNotificationAuthorizationOptions *)self initWithOptionsDictionary:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)optionsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSUserNotificationAuthorizationOptions authorizationOptions](self, "authorizationOptions")}];
  [v3 ams_setNullableObject:v4 forKey:@"AMSUserNotificationAuthorizationOptionsAuthorizationOptions"];

  metricsOverlay = [(AMSUserNotificationAuthorizationOptions *)self metricsOverlay];
  [v3 ams_setNullableObject:metricsOverlay forKey:@"AMSUserNotificationAuthorizationOptionsMetricsOverlay"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotificationAuthorizationOptions userInitiated](self, "userInitiated")}];
  [v3 ams_setNullableObject:v6 forKey:@"AMSUserNotificationAuthorizationOptionsUserInitiated"];

  v7 = [v3 copy];

  return v7;
}

- (id)description
{
  optionsDictionary = [(AMSUserNotificationAuthorizationOptions *)self optionsDictionary];
  v4 = [self ams_generateDescriptionWithSubObjects:optionsDictionary];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;

    if (!v5)
    {
      v8 = 0;
      goto LABEL_6;
    }

    optionsDictionary = [(AMSUserNotificationAuthorizationOptions *)self optionsDictionary];
    optionsDictionary2 = [v5 optionsDictionary];
    v8 = [optionsDictionary isEqualToDictionary:optionsDictionary2];
  }

  else
  {
    v5 = 0;
    v8 = 0;
    optionsDictionary = equalCopy;
  }

LABEL_6:
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  optionsDictionary = [(AMSUserNotificationAuthorizationOptions *)self optionsDictionary];
  v6 = [optionsDictionary copy];
  v7 = [v4 initWithOptionsDictionary:v6];

  return v7;
}

@end