@interface INAppIntentDescriptor
- (BOOL)isEqual:(id)a3;
- (INAppIntentDescriptor)initWithCoder:(id)a3;
- (INAppIntentDescriptor)initWithIntentIdentifier:(id)a3 applicationRecord:(id)a4 supportedAppIntents:(id)a5 supportedEntities:(id)a6;
- (INAppIntentDescriptor)initWithIntentIdentifier:(id)a3 localizedName:(id)a4 bundleIdentifier:(id)a5 extensionBundleIdentifier:(id)a6 counterpartIdentifiers:(id)a7 teamIdentifier:(id)a8 supportedIntents:(id)a9 supportedEntities:(id)a10 bundleURL:(id)a11 documentTypes:(id)a12;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAppIntentDescriptor

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = INAppIntentDescriptor;
  v3 = [(INAppDescriptor *)&v9 hash];
  v4 = [(INAppIntentDescriptor *)self intentIdentifier];
  v5 = [v4 hash];
  v6 = [(INAppIntentDescriptor *)self supportedEntities];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = INAppIntentDescriptor;
  v4 = a3;
  [(INAppDescriptor *)&v7 encodeWithCoder:v4];
  v5 = [(INAppIntentDescriptor *)self intentIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"intentIdentifier"];

  v6 = [(INAppIntentDescriptor *)self supportedEntities];
  [v4 encodeObject:v6 forKey:@"supportedEntities"];
}

- (INAppIntentDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INAppIntentDescriptor;
  v5 = [(INAppDescriptor *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentIdentifier"];
    intentIdentifier = v5->_intentIdentifier;
    v5->_intentIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"supportedEntities"];
    supportedEntities = v5->_supportedEntities;
    v5->_supportedEntities = v11;

    v13 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if ([(INAppIntentDescriptor *)v4 isMemberOfClass:objc_opt_class()])
    {
      v21.receiver = self;
      v21.super_class = INAppIntentDescriptor;
      v5 = [(INAppDescriptor *)&v21 isEqual:v4];
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

      if (!v5)
      {
        LOBYTE(v8) = 0;
LABEL_26:

        goto LABEL_27;
      }

      v10 = [(INAppIntentDescriptor *)self intentIdentifier];
      v11 = [(INAppIntentDescriptor *)v9 intentIdentifier];
      v12 = v10;
      v13 = v11;
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

      v17 = [(INAppIntentDescriptor *)self supportedEntities];
      v18 = [(INAppIntentDescriptor *)v9 supportedEntities];
      v16 = v17;
      v19 = v18;
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
  v5 = [(INAppIntentDescriptor *)self intentIdentifier];
  v6 = [(INAppIntentDescriptor *)self supportedEntities];
  v7 = [v3 stringWithFormat:@"%@, intentIdentifier: %@, supportedEntities: %@", v4, v5, v6];

  return v7;
}

- (INAppIntentDescriptor)initWithIntentIdentifier:(id)a3 localizedName:(id)a4 bundleIdentifier:(id)a5 extensionBundleIdentifier:(id)a6 counterpartIdentifiers:(id)a7 teamIdentifier:(id)a8 supportedIntents:(id)a9 supportedEntities:(id)a10 bundleURL:(id)a11 documentTypes:(id)a12
{
  v17 = a3;
  v18 = a10;
  v27.receiver = self;
  v27.super_class = INAppIntentDescriptor;
  v19 = [(INAppDescriptor *)&v27 initWithLocalizedName:a4 bundleIdentifier:a5 extensionBundleIdentifier:a6 counterpartIdentifiers:a7 teamIdentifier:a8 supportedIntents:a9 bundleURL:a11 documentTypes:a12];
  if (v19)
  {
    v20 = [v17 copy];
    intentIdentifier = v19->_intentIdentifier;
    v19->_intentIdentifier = v20;

    v22 = [v18 copy];
    supportedEntities = v19->_supportedEntities;
    v19->_supportedEntities = v22;

    v24 = v19;
  }

  return v19;
}

- (INAppIntentDescriptor)initWithIntentIdentifier:(id)a3 applicationRecord:(id)a4 supportedAppIntents:(id)a5 supportedEntities:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 localizedName];
  v14 = [v11 bundleIdentifier];
  v15 = [v11 in_counterpartIdentifiers];
  v16 = [v11 teamIdentifier];
  v17 = [v11 URL];
  v18 = [v11 in_documentTypes];

  v19 = [(INAppIntentDescriptor *)self initWithIntentIdentifier:v12 localizedName:v13 bundleIdentifier:v14 extensionBundleIdentifier:0 counterpartIdentifiers:v15 teamIdentifier:v16 supportedIntents:v10 supportedEntities:v9 bundleURL:v17 documentTypes:v18];
  return v19;
}

@end