@interface INAppDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstalled;
- (INAppDescriptor)descriptorWithExtensionBundleIdentifier:(id)a3;
- (INAppDescriptor)descriptorWithRecord:(id)a3;
- (INAppDescriptor)initWithApplicationRecord:(id)a3;
- (INAppDescriptor)initWithCoder:(id)a3;
- (INAppDescriptor)initWithLocalizedName:(id)a3 bundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 counterpartIdentifiers:(id)a6 teamIdentifier:(id)a7 supportedIntents:(id)a8 bundleURL:(id)a9 documentTypes:(id)a10;
- (LSApplicationRecord)applicationRecord;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAppDescriptor

- (unint64_t)hash
{
  v3 = [(INAppDescriptor *)self localizedName];
  v4 = [v3 hash];
  v5 = [(INAppDescriptor *)self bundleIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(INAppDescriptor *)self extensionBundleIdentifier];
  v8 = [v7 hash];
  v9 = [(INAppDescriptor *)self counterpartIdentifiers];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(INAppDescriptor *)self teamIdentifier];
  v12 = [v11 hash];
  v13 = [(INAppDescriptor *)self supportedIntents];
  v14 = v12 ^ [v13 hash];
  v15 = [(INAppDescriptor *)self documentTypes];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(INAppDescriptor *)self localizedName];
  [v12 encodeObject:v4 forKey:@"localizedName"];

  v5 = [(INAppDescriptor *)self bundleIdentifier];
  [v12 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(INAppDescriptor *)self extensionBundleIdentifier];
  [v12 encodeObject:v6 forKey:@"extensionBundleIdentifier"];

  v7 = [(INAppDescriptor *)self counterpartIdentifiers];
  [v12 encodeObject:v7 forKey:@"counterpartIdentifiers"];

  v8 = [(INAppDescriptor *)self teamIdentifier];
  [v12 encodeObject:v8 forKey:@"teamIdentifier"];

  v9 = [(INAppDescriptor *)self supportedIntents];
  [v12 encodeObject:v9 forKey:@"supportedIntents"];

  v10 = [(INAppDescriptor *)self bundleURL];
  [v12 encodeObject:v10 forKey:@"bundleURL"];

  v11 = [(INAppDescriptor *)self documentTypes];
  [v12 encodeObject:v11 forKey:@"documentTypes"];

  [v12 encodeBool:-[INAppDescriptor requiresUserConfirmation](self forKey:{"requiresUserConfirmation"), @"requiresUserConfirmation"}];
}

- (INAppDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v22 = [v4 decodeObjectOfClasses:v7 forKey:@"counterpartIdentifiers"];

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"supportedIntents"];

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"documentTypes"];

  v16 = v11;
  v17 = [(INAppDescriptor *)self initWithLocalizedName:v25 bundleIdentifier:v24 extensionBundleIdentifier:v23 counterpartIdentifiers:v22 teamIdentifier:v21 supportedIntents:v11 bundleURL:v20 documentTypes:v15];
  v18 = [v4 decodeBoolForKey:@"requiresUserConfirmation"];

  [(INAppDescriptor *)v17 setRequiresUserConfirmation:v18];
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    if ([(INAppDescriptor *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v8 = v6;

      v9 = [(INAppDescriptor *)self localizedName];
      v10 = [(INAppDescriptor *)v8 localizedName];
      v11 = v9;
      v12 = v10;
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        v14 = v12;
        v15 = v11;
        if (!v11 || !v12)
        {
          goto LABEL_63;
        }

        v16 = [v11 isEqualToString:v12];

        if (!v16)
        {
          LOBYTE(v7) = 0;
LABEL_64:

          goto LABEL_65;
        }
      }

      v17 = [(INAppDescriptor *)self bundleIdentifier];
      v18 = [(INAppDescriptor *)v8 bundleIdentifier];
      v15 = v17;
      v19 = v18;
      v14 = v19;
      if (v15 == v19)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        v20 = v19;
        v21 = v15;
        if (!v15 || !v19)
        {
          goto LABEL_62;
        }

        v22 = [v15 isEqualToString:v19];

        if (!v22)
        {
          LOBYTE(v7) = 0;
LABEL_63:

          goto LABEL_64;
        }
      }

      v23 = [(INAppDescriptor *)self extensionBundleIdentifier];
      v24 = [(INAppDescriptor *)v8 extensionBundleIdentifier];
      v21 = v23;
      v25 = v24;
      v20 = v25;
      v56 = v21;
      if (v21 == v25)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        v26 = v25;
        if (!v21 || !v25)
        {
          goto LABEL_61;
        }

        v7 = [v21 isEqualToString:v25];

        if (!v7)
        {
          goto LABEL_62;
        }
      }

      v55 = v20;
      v27 = [(INAppDescriptor *)self counterpartIdentifiers];
      v28 = [(INAppDescriptor *)v8 counterpartIdentifiers];
      v29 = v27;
      v30 = v28;
      v53 = v30;
      v54 = v29;
      if (v29 == v30)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        if (!v29)
        {
          v31 = v30;
          v20 = v55;
          goto LABEL_59;
        }

        v31 = v30;
        v20 = v55;
        if (!v30)
        {
LABEL_59:

          goto LABEL_60;
        }

        v32 = [v29 isEqualToSet:v30];

        if (!v32)
        {
          LOBYTE(v7) = 0;
          v20 = v55;
LABEL_60:
          v26 = v53;
          v21 = v54;
LABEL_61:

          v21 = v56;
LABEL_62:

          goto LABEL_63;
        }
      }

      v33 = [(INAppDescriptor *)self teamIdentifier];
      v34 = [(INAppDescriptor *)v8 teamIdentifier];
      v29 = v33;
      v35 = v34;
      v51 = v29;
      v52 = v35;
      if (v29 != v35)
      {
        LOBYTE(v7) = 0;
        if (v29)
        {
          v36 = v35;
          v20 = v55;
          if (v35)
          {
            v37 = [v29 isEqualToString:v35];

            if (!v37)
            {
              LOBYTE(v7) = 0;
              v20 = v55;
              v31 = v52;
              goto LABEL_59;
            }

LABEL_40:
            v38 = [(INAppDescriptor *)self supportedIntents];
            v39 = [(INAppDescriptor *)v8 supportedIntents];
            v40 = v38;
            v41 = v39;
            v49 = v41;
            v50 = v40;
            if (v40 == v41)
            {
            }

            else
            {
              LOBYTE(v7) = 0;
              if (!v40)
              {
                v42 = v41;
                v20 = v55;
                goto LABEL_56;
              }

              v42 = v41;
              v20 = v55;
              if (!v41)
              {
LABEL_56:

                goto LABEL_57;
              }

              v43 = [v40 isEqual:v41];

              if (!v43)
              {
                LOBYTE(v7) = 0;
                v20 = v55;
LABEL_57:
                v36 = v49;
                v29 = v50;
                goto LABEL_58;
              }
            }

            v44 = [(INAppDescriptor *)self documentTypes:v49];
            v45 = [(INAppDescriptor *)v8 documentTypes];
            v40 = v44;
            v46 = v45;
            v47 = v46;
            if (v40 == v46)
            {
              LOBYTE(v7) = 1;
            }

            else
            {
              LOBYTE(v7) = 0;
              if (v40)
              {
                v20 = v55;
                if (v46)
                {
                  LOBYTE(v7) = [v40 isEqualToSet:v46];
                }

                goto LABEL_54;
              }
            }

            v20 = v55;
LABEL_54:

            v42 = v47;
            goto LABEL_56;
          }
        }

        else
        {
          v36 = v35;
          v20 = v55;
        }

LABEL_58:

        v29 = v51;
        v31 = v52;
        goto LABEL_59;
      }

      goto LABEL_40;
    }

    LOBYTE(v7) = 0;
  }

LABEL_65:

  return v7;
}

- (BOOL)isInstalled
{
  v3 = [(INAppDescriptor *)self extensionBundleIdentifier];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69635D0]);
    v5 = [(INAppDescriptor *)self extensionBundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:v5 error:0];

    if (v6)
    {
      return 1;
    }
  }

  v8 = [(INAppDescriptor *)self applicationRecord];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 applicationState];
    v7 = [v10 isInstalled];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (LSApplicationRecord)applicationRecord
{
  v3 = [(INAppDescriptor *)self bundleURL];

  if (!v3 || (v4 = objc_alloc(MEMORY[0x1E69635F8]), -[INAppDescriptor bundleURL](self, "bundleURL"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 initWithURL:v5 allowPlaceholder:0 error:0], v5, !v6))
  {
    v7 = objc_alloc(MEMORY[0x1E69635F8]);
    v8 = [(INAppDescriptor *)self bundleIdentifier];
    v6 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = INAppDescriptor;
  v4 = [(INAppDescriptor *)&v15 description];
  v5 = [(INAppDescriptor *)self localizedName];
  v6 = [(INAppDescriptor *)self bundleIdentifier];
  v7 = [(INAppDescriptor *)self extensionBundleIdentifier];
  v8 = [(INAppDescriptor *)self teamIdentifier];
  v9 = [(INAppDescriptor *)self supportedIntents];
  v10 = [(INAppDescriptor *)self counterpartIdentifiers];
  v11 = [(INAppDescriptor *)self bundleURL];
  v12 = [(INAppDescriptor *)self documentTypes];
  v13 = [v3 stringWithFormat:@"%@: localizedName: %@, bundleId: %@, extensionBundleId: %@, teamId: %@, intents: %@, counterpartIds: %@, bundleURL: %@, documentTypes: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (INAppDescriptor)descriptorWithRecord:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [v5 localizedName];
  v7 = [v5 bundleIdentifier];
  v8 = [(INAppDescriptor *)v4 extensionBundleIdentifier];
  v9 = [v5 in_counterpartIdentifiers];
  v10 = [v5 teamIdentifier];
  v11 = [v5 in_supportedIntents];
  v12 = [v5 URL];
  v13 = [v5 in_documentTypes];

  v14 = [(INAppDescriptor *)v4 initWithLocalizedName:v6 bundleIdentifier:v7 extensionBundleIdentifier:v8 counterpartIdentifiers:v9 teamIdentifier:v10 supportedIntents:v11 bundleURL:v12 documentTypes:v13];

  return v14;
}

- (INAppDescriptor)descriptorWithExtensionBundleIdentifier:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(INAppDescriptor *)v4 localizedName];
  v7 = [(INAppDescriptor *)v4 bundleIdentifier];
  v8 = [(INAppDescriptor *)v4 counterpartIdentifiers];
  v9 = [(INAppDescriptor *)v4 teamIdentifier];
  v10 = [(INAppDescriptor *)v4 supportedIntents];
  v11 = [(INAppDescriptor *)v4 bundleURL];
  v12 = [(INAppDescriptor *)v4 documentTypes];
  v13 = [(INAppDescriptor *)v4 initWithLocalizedName:v6 bundleIdentifier:v7 extensionBundleIdentifier:v5 counterpartIdentifiers:v8 teamIdentifier:v9 supportedIntents:v10 bundleURL:v11 documentTypes:v12];

  return v13;
}

- (INAppDescriptor)initWithLocalizedName:(id)a3 bundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 counterpartIdentifiers:(id)a6 teamIdentifier:(id)a7 supportedIntents:(id)a8 bundleURL:(id)a9 documentTypes:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v41.receiver = self;
  v41.super_class = INAppDescriptor;
  v24 = [(INAppDescriptor *)&v41 init];
  if (v24)
  {
    v25 = [v16 copy];
    localizedName = v24->_localizedName;
    v24->_localizedName = v25;

    v27 = [v17 copy];
    bundleIdentifier = v24->_bundleIdentifier;
    v24->_bundleIdentifier = v27;

    v29 = [v18 copy];
    extensionBundleIdentifier = v24->_extensionBundleIdentifier;
    v24->_extensionBundleIdentifier = v29;

    v31 = [v19 copy];
    counterpartIdentifiers = v24->_counterpartIdentifiers;
    v24->_counterpartIdentifiers = v31;

    v33 = [v20 copy];
    teamIdentifier = v24->_teamIdentifier;
    v24->_teamIdentifier = v33;

    v35 = [v21 copy];
    supportedIntents = v24->_supportedIntents;
    v24->_supportedIntents = v35;

    objc_storeStrong(&v24->_bundleURL, a9);
    v37 = [v23 copy];
    documentTypes = v24->_documentTypes;
    v24->_documentTypes = v37;

    v39 = v24;
  }

  return v24;
}

- (INAppDescriptor)initWithApplicationRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedName];
  v6 = [v4 bundleIdentifier];
  v7 = [v4 in_counterpartIdentifiers];
  v8 = [v4 teamIdentifier];
  v9 = [v4 in_supportedIntents];
  v10 = [v4 URL];
  v11 = [v4 in_documentTypes];

  v12 = [(INAppDescriptor *)self initWithLocalizedName:v5 bundleIdentifier:v6 extensionBundleIdentifier:0 counterpartIdentifiers:v7 teamIdentifier:v8 supportedIntents:v9 bundleURL:v10 documentTypes:v11];
  return v12;
}

@end