@interface INAppIntentDescriptor
- (BOOL)isEqual:(id)equal;
- (INAppIntentDescriptor)initWithCoder:(id)coder;
- (INAppIntentDescriptor)initWithIntentIdentifier:(id)identifier applicationRecord:(id)record supportedAppIntents:(id)intents supportedEntities:(id)entities;
- (INAppIntentDescriptor)initWithIntentIdentifier:(id)identifier localizedName:(id)name bundleIdentifier:(id)bundleIdentifier extensionBundleIdentifier:(id)extensionBundleIdentifier counterpartIdentifiers:(id)identifiers teamIdentifier:(id)teamIdentifier supportedIntents:(id)intents supportedEntities:(id)self0 bundleURL:(id)self1 documentTypes:(id)self2;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAppIntentDescriptor

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = INAppIntentDescriptor;
  v3 = [(INAppDescriptor *)&v9 hash];
  intentIdentifier = [(INAppIntentDescriptor *)self intentIdentifier];
  v5 = [intentIdentifier hash];
  supportedEntities = [(INAppIntentDescriptor *)self supportedEntities];
  v7 = v5 ^ [supportedEntities hash];

  return v7 ^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = INAppIntentDescriptor;
  coderCopy = coder;
  [(INAppDescriptor *)&v7 encodeWithCoder:coderCopy];
  v5 = [(INAppIntentDescriptor *)self intentIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"intentIdentifier"];

  supportedEntities = [(INAppIntentDescriptor *)self supportedEntities];
  [coderCopy encodeObject:supportedEntities forKey:@"supportedEntities"];
}

- (INAppIntentDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = INAppIntentDescriptor;
  v5 = [(INAppDescriptor *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentIdentifier"];
    intentIdentifier = v5->_intentIdentifier;
    v5->_intentIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"supportedEntities"];
    supportedEntities = v5->_supportedEntities;
    v5->_supportedEntities = v11;

    v13 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if ([(INAppIntentDescriptor *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v21.receiver = self;
      v21.super_class = INAppIntentDescriptor;
      v5 = [(INAppDescriptor *)&v21 isEqual:equalCopy];
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

      if (!v5)
      {
        LOBYTE(v8) = 0;
LABEL_26:

        goto LABEL_27;
      }

      intentIdentifier = [(INAppIntentDescriptor *)self intentIdentifier];
      intentIdentifier2 = [(INAppIntentDescriptor *)v9 intentIdentifier];
      v12 = intentIdentifier;
      v13 = intentIdentifier2;
      v14 = v13;
      if (v12 == v13)
      {
      }

      else
      {
        LOBYTE(v8) = 0;
        v15 = v13;
        v16 = v12;
        if (!v12 || !v13)
        {
LABEL_24:

LABEL_25:
          goto LABEL_26;
        }

        v8 = [v12 isEqualToString:v13];

        if (!v8)
        {
          goto LABEL_25;
        }
      }

      supportedEntities = [(INAppIntentDescriptor *)self supportedEntities];
      supportedEntities2 = [(INAppIntentDescriptor *)v9 supportedEntities];
      v16 = supportedEntities;
      v19 = supportedEntities2;
      v15 = v19;
      if (v16 == v19)
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        LOBYTE(v8) = 0;
        if (v16 && v19)
        {
          LOBYTE(v8) = [v16 isEqualToSet:v19];
        }
      }

      goto LABEL_24;
    }

    LOBYTE(v8) = 0;
  }

LABEL_27:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = INAppIntentDescriptor;
  v4 = [(INAppDescriptor *)&v9 description];
  intentIdentifier = [(INAppIntentDescriptor *)self intentIdentifier];
  supportedEntities = [(INAppIntentDescriptor *)self supportedEntities];
  v7 = [v3 stringWithFormat:@"%@, intentIdentifier: %@, supportedEntities: %@", v4, intentIdentifier, supportedEntities];

  return v7;
}

- (INAppIntentDescriptor)initWithIntentIdentifier:(id)identifier localizedName:(id)name bundleIdentifier:(id)bundleIdentifier extensionBundleIdentifier:(id)extensionBundleIdentifier counterpartIdentifiers:(id)identifiers teamIdentifier:(id)teamIdentifier supportedIntents:(id)intents supportedEntities:(id)self0 bundleURL:(id)self1 documentTypes:(id)self2
{
  identifierCopy = identifier;
  entitiesCopy = entities;
  v27.receiver = self;
  v27.super_class = INAppIntentDescriptor;
  v19 = [(INAppDescriptor *)&v27 initWithLocalizedName:name bundleIdentifier:bundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:identifiers teamIdentifier:teamIdentifier supportedIntents:intents bundleURL:l documentTypes:types];
  if (v19)
  {
    v20 = [identifierCopy copy];
    intentIdentifier = v19->_intentIdentifier;
    v19->_intentIdentifier = v20;

    v22 = [entitiesCopy copy];
    supportedEntities = v19->_supportedEntities;
    v19->_supportedEntities = v22;

    v24 = v19;
  }

  return v19;
}

- (INAppIntentDescriptor)initWithIntentIdentifier:(id)identifier applicationRecord:(id)record supportedAppIntents:(id)intents supportedEntities:(id)entities
{
  entitiesCopy = entities;
  intentsCopy = intents;
  recordCopy = record;
  identifierCopy = identifier;
  localizedName = [recordCopy localizedName];
  bundleIdentifier = [recordCopy bundleIdentifier];
  in_counterpartIdentifiers = [recordCopy in_counterpartIdentifiers];
  teamIdentifier = [recordCopy teamIdentifier];
  v17 = [recordCopy URL];
  in_documentTypes = [recordCopy in_documentTypes];

  v19 = [(INAppIntentDescriptor *)self initWithIntentIdentifier:identifierCopy localizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:0 counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:intentsCopy supportedEntities:entitiesCopy bundleURL:v17 documentTypes:in_documentTypes];
  return v19;
}

@end