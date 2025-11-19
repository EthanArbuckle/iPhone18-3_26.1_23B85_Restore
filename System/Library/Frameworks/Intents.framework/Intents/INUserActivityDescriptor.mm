@interface INUserActivityDescriptor
- (BOOL)isEqual:(id)a3;
- (INUserActivityDescriptor)descriptorWithAppDescriptor:(id)a3;
- (INUserActivityDescriptor)initWithCoder:(id)a3;
- (INUserActivityDescriptor)initWithUserActivityType:(id)a3 localizedName:(id)a4 bundleIdentifier:(id)a5 extensionBundleIdentifier:(id)a6 counterpartIdentifiers:(id)a7 teamIdentifier:(id)a8 supportedIntents:(id)a9 bundleURL:(id)a10;
- (id)appDescriptor;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INUserActivityDescriptor

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = INUserActivityDescriptor;
  v4 = a3;
  [(INAppDescriptor *)&v6 encodeWithCoder:v4];
  v5 = [(INUserActivityDescriptor *)self userActivityType:v6.receiver];
  [v4 encodeObject:v5 forKey:@"userActivityType"];
}

- (INUserActivityDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = INUserActivityDescriptor;
  v5 = [(INAppDescriptor *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivityType"];
    userActivityType = v5->_userActivityType;
    v5->_userActivityType = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(INUserActivityDescriptor *)v4 isMemberOfClass:objc_opt_class()])
  {
    v16.receiver = self;
    v16.super_class = INUserActivityDescriptor;
    v5 = [(INAppDescriptor *)&v16 isEqual:v4];
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v5)
    {
      v10 = [(INUserActivityDescriptor *)self userActivityType];
      v11 = [(INUserActivityDescriptor *)v9 userActivityType];
      v12 = v10;
      v13 = v11;
      v14 = v13;
      if (v12 == v13)
      {
        v8 = 1;
      }

      else
      {
        v8 = 0;
        if (v12 && v13)
        {
          v8 = [v12 isEqualToString:v13];
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = INUserActivityDescriptor;
  v3 = [(INAppDescriptor *)&v7 hash];
  v4 = [(INUserActivityDescriptor *)self userActivityType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (INUserActivityDescriptor)descriptorWithAppDescriptor:(id)a3
{
  v4 = a3;
  v5 = [INUserActivityDescriptor alloc];
  v6 = [(INUserActivityDescriptor *)self userActivityType];
  v7 = [v4 localizedName];
  v8 = [v4 bundleIdentifier];
  v9 = [v4 extensionBundleIdentifier];
  v10 = [v4 counterpartIdentifiers];
  v11 = [v4 teamIdentifier];
  v12 = [v4 supportedIntents];
  v13 = [v4 bundleURL];

  v14 = [(INUserActivityDescriptor *)v5 initWithUserActivityType:v6 localizedName:v7 bundleIdentifier:v8 extensionBundleIdentifier:v9 counterpartIdentifiers:v10 teamIdentifier:v11 supportedIntents:v12 bundleURL:v13];
  [(INAppDescriptor *)v14 setRequiresUserConfirmation:[(INAppDescriptor *)self requiresUserConfirmation]];

  return v14;
}

- (id)appDescriptor
{
  v3 = [INAppDescriptor alloc];
  v4 = [(INAppDescriptor *)self localizedName];
  v5 = [(INAppDescriptor *)self bundleIdentifier];
  v6 = [(INAppDescriptor *)self extensionBundleIdentifier];
  v7 = [(INAppDescriptor *)self counterpartIdentifiers];
  v8 = [(INAppDescriptor *)self teamIdentifier];
  v9 = [(INAppDescriptor *)self supportedIntents];
  v10 = [(INAppDescriptor *)self bundleURL];
  v11 = [(INAppDescriptor *)self documentTypes];
  v12 = [(INAppDescriptor *)v3 initWithLocalizedName:v4 bundleIdentifier:v5 extensionBundleIdentifier:v6 counterpartIdentifiers:v7 teamIdentifier:v8 supportedIntents:v9 bundleURL:v10 documentTypes:v11];

  [(INAppDescriptor *)v12 setRequiresUserConfirmation:[(INAppDescriptor *)self requiresUserConfirmation]];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = INUserActivityDescriptor;
  v4 = [(INAppDescriptor *)&v8 description];
  v5 = [(INUserActivityDescriptor *)self userActivityType];
  v6 = [v3 stringWithFormat:@"%@, userActivityType: %@", v4, v5];

  return v6;
}

- (INUserActivityDescriptor)initWithUserActivityType:(id)a3 localizedName:(id)a4 bundleIdentifier:(id)a5 extensionBundleIdentifier:(id)a6 counterpartIdentifiers:(id)a7 teamIdentifier:(id)a8 supportedIntents:(id)a9 bundleURL:(id)a10
{
  v16 = a3;
  v22.receiver = self;
  v22.super_class = INUserActivityDescriptor;
  v17 = [(INAppDescriptor *)&v22 initWithLocalizedName:a4 bundleIdentifier:a5 extensionBundleIdentifier:a6 counterpartIdentifiers:a7 teamIdentifier:a8 supportedIntents:a9 bundleURL:a10 documentTypes:0];
  if (v17)
  {
    v18 = [v16 copy];
    userActivityType = v17->_userActivityType;
    v17->_userActivityType = v18;

    v20 = v17;
  }

  return v17;
}

@end