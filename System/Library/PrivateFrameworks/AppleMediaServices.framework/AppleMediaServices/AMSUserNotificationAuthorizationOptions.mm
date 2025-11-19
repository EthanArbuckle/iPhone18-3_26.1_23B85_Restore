@interface AMSUserNotificationAuthorizationOptions
- (AMSUserNotificationAuthorizationOptions)initWithCoder:(id)a3;
- (AMSUserNotificationAuthorizationOptions)initWithOptionsDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)optionsDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSUserNotificationAuthorizationOptions

- (AMSUserNotificationAuthorizationOptions)initWithOptionsDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSUserNotificationAuthorizationOptions;
  v5 = [(AMSUserNotificationAuthorizationOptions *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"AMSUserNotificationAuthorizationOptionsAuthorizationOptions"];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 objectForKeyedSubscript:@"AMSUserNotificationAuthorizationOptionsAuthorizationOptions"];
      v5->_authorizationOptions = [v7 unsignedIntegerValue];
    }

    else
    {
      v5->_authorizationOptions = 38;
    }

    metricsOverlay = [v4 objectForKeyedSubscript:@"AMSUserNotificationAuthorizationOptionsMetricsOverlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = metricsOverlay;

      if (!v9)
      {
LABEL_10:
        v10 = [v4 ams_objectForKey:@"AMSUserNotificationAuthorizationOptionsUserInitiated" defaultValue:MEMORY[0x1E695E110]];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSUserNotificationAuthorizationOptions *)self optionsDictionary];
  [v4 encodeObject:v5 forKey:@"kCodingKeyOptionsDictionary"];
}

- (AMSUserNotificationAuthorizationOptions)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 ams_PLISTClasses];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"kCodingKeyOptionsDictionary"];

  if (v7)
  {
    self = [(AMSUserNotificationAuthorizationOptions *)self initWithOptionsDictionary:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)optionsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSUserNotificationAuthorizationOptions authorizationOptions](self, "authorizationOptions")}];
  [v3 ams_setNullableObject:v4 forKey:@"AMSUserNotificationAuthorizationOptionsAuthorizationOptions"];

  v5 = [(AMSUserNotificationAuthorizationOptions *)self metricsOverlay];
  [v3 ams_setNullableObject:v5 forKey:@"AMSUserNotificationAuthorizationOptionsMetricsOverlay"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotificationAuthorizationOptions userInitiated](self, "userInitiated")}];
  [v3 ams_setNullableObject:v6 forKey:@"AMSUserNotificationAuthorizationOptionsUserInitiated"];

  v7 = [v3 copy];

  return v7;
}

- (id)description
{
  v3 = [(AMSUserNotificationAuthorizationOptions *)self optionsDictionary];
  v4 = [self ams_generateDescriptionWithSubObjects:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;

    if (!v5)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [(AMSUserNotificationAuthorizationOptions *)self optionsDictionary];
    v7 = [v5 optionsDictionary];
    v8 = [v6 isEqualToDictionary:v7];
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v6 = v4;
  }

LABEL_6:
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AMSUserNotificationAuthorizationOptions *)self optionsDictionary];
  v6 = [v5 copy];
  v7 = [v4 initWithOptionsDictionary:v6];

  return v7;
}

@end