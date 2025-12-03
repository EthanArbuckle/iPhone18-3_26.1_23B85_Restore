@interface INUserActivityDescriptor
- (BOOL)isEqual:(id)equal;
- (INUserActivityDescriptor)descriptorWithAppDescriptor:(id)descriptor;
- (INUserActivityDescriptor)initWithCoder:(id)coder;
- (INUserActivityDescriptor)initWithUserActivityType:(id)type localizedName:(id)name bundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier counterpartIdentifiers:(id)identifiers teamIdentifier:(id)teamIdentifier supportedIntents:(id)intents bundleURL:(id)self0;
- (id)appDescriptor;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INUserActivityDescriptor

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = INUserActivityDescriptor;
  coderCopy = coder;
  [(INAppDescriptor *)&v6 encodeWithCoder:coderCopy];
  v5 = [(INUserActivityDescriptor *)self userActivityType:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"userActivityType"];
}

- (INUserActivityDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = INUserActivityDescriptor;
  v5 = [(INAppDescriptor *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivityType"];
    userActivityType = v5->_userActivityType;
    v5->_userActivityType = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(INUserActivityDescriptor *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v16.receiver = self;
    v16.super_class = INUserActivityDescriptor;
    v5 = [(INAppDescriptor *)&v16 isEqual:equalCopy];
    v6 = equalCopy;
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
      userActivityType = [(INUserActivityDescriptor *)self userActivityType];
      userActivityType2 = [(INUserActivityDescriptor *)v9 userActivityType];
      v12 = userActivityType;
      v13 = userActivityType2;
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
  userActivityType = [(INUserActivityDescriptor *)self userActivityType];
  v5 = [userActivityType hash];

  return v5 ^ v3;
}

- (INUserActivityDescriptor)descriptorWithAppDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [INUserActivityDescriptor alloc];
  userActivityType = [(INUserActivityDescriptor *)self userActivityType];
  localizedName = [descriptorCopy localizedName];
  bundleIdentifier = [descriptorCopy bundleIdentifier];
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  counterpartIdentifiers = [descriptorCopy counterpartIdentifiers];
  teamIdentifier = [descriptorCopy teamIdentifier];
  supportedIntents = [descriptorCopy supportedIntents];
  bundleURL = [descriptorCopy bundleURL];

  v14 = [(INUserActivityDescriptor *)v5 initWithUserActivityType:userActivityType localizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents bundleURL:bundleURL];
  [(INAppDescriptor *)v14 setRequiresUserConfirmation:[(INAppDescriptor *)self requiresUserConfirmation]];

  return v14;
}

- (id)appDescriptor
{
  v3 = [INAppDescriptor alloc];
  localizedName = [(INAppDescriptor *)self localizedName];
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  counterpartIdentifiers = [(INAppDescriptor *)self counterpartIdentifiers];
  teamIdentifier = [(INAppDescriptor *)self teamIdentifier];
  supportedIntents = [(INAppDescriptor *)self supportedIntents];
  bundleURL = [(INAppDescriptor *)self bundleURL];
  documentTypes = [(INAppDescriptor *)self documentTypes];
  v12 = [(INAppDescriptor *)v3 initWithLocalizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents bundleURL:bundleURL documentTypes:documentTypes];

  [(INAppDescriptor *)v12 setRequiresUserConfirmation:[(INAppDescriptor *)self requiresUserConfirmation]];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = INUserActivityDescriptor;
  v4 = [(INAppDescriptor *)&v8 description];
  userActivityType = [(INUserActivityDescriptor *)self userActivityType];
  v6 = [v3 stringWithFormat:@"%@, userActivityType: %@", v4, userActivityType];

  return v6;
}

- (INUserActivityDescriptor)initWithUserActivityType:(id)type localizedName:(id)name bundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier counterpartIdentifiers:(id)identifiers teamIdentifier:(id)teamIdentifier supportedIntents:(id)intents bundleURL:(id)self0
{
  typeCopy = type;
  v22.receiver = self;
  v22.super_class = INUserActivityDescriptor;
  v17 = [(INAppDescriptor *)&v22 initWithLocalizedName:name bundleIdentifier:identifier extensionBundleIdentifier:bundleIdentifier counterpartIdentifiers:identifiers teamIdentifier:teamIdentifier supportedIntents:intents bundleURL:l documentTypes:0];
  if (v17)
  {
    v18 = [typeCopy copy];
    userActivityType = v17->_userActivityType;
    v17->_userActivityType = v18;

    v20 = v17;
  }

  return v17;
}

@end