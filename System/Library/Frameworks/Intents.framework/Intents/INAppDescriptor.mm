@interface INAppDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstalled;
- (INAppDescriptor)descriptorWithExtensionBundleIdentifier:(id)identifier;
- (INAppDescriptor)descriptorWithRecord:(id)record;
- (INAppDescriptor)initWithApplicationRecord:(id)record;
- (INAppDescriptor)initWithCoder:(id)coder;
- (INAppDescriptor)initWithLocalizedName:(id)name bundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier counterpartIdentifiers:(id)identifiers teamIdentifier:(id)teamIdentifier supportedIntents:(id)intents bundleURL:(id)l documentTypes:(id)self0;
- (LSApplicationRecord)applicationRecord;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAppDescriptor

- (unint64_t)hash
{
  localizedName = [(INAppDescriptor *)self localizedName];
  v4 = [localizedName hash];
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  v6 = [bundleIdentifier hash] ^ v4;
  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  v8 = [extensionBundleIdentifier hash];
  counterpartIdentifiers = [(INAppDescriptor *)self counterpartIdentifiers];
  v10 = v6 ^ v8 ^ [counterpartIdentifiers hash];
  teamIdentifier = [(INAppDescriptor *)self teamIdentifier];
  v12 = [teamIdentifier hash];
  supportedIntents = [(INAppDescriptor *)self supportedIntents];
  v14 = v12 ^ [supportedIntents hash];
  documentTypes = [(INAppDescriptor *)self documentTypes];
  v16 = v14 ^ [documentTypes hash];

  return v10 ^ v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedName = [(INAppDescriptor *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  counterpartIdentifiers = [(INAppDescriptor *)self counterpartIdentifiers];
  [coderCopy encodeObject:counterpartIdentifiers forKey:@"counterpartIdentifiers"];

  teamIdentifier = [(INAppDescriptor *)self teamIdentifier];
  [coderCopy encodeObject:teamIdentifier forKey:@"teamIdentifier"];

  supportedIntents = [(INAppDescriptor *)self supportedIntents];
  [coderCopy encodeObject:supportedIntents forKey:@"supportedIntents"];

  bundleURL = [(INAppDescriptor *)self bundleURL];
  [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];

  documentTypes = [(INAppDescriptor *)self documentTypes];
  [coderCopy encodeObject:documentTypes forKey:@"documentTypes"];

  [coderCopy encodeBool:-[INAppDescriptor requiresUserConfirmation](self forKey:{"requiresUserConfirmation"), @"requiresUserConfirmation"}];
}

- (INAppDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v22 = [coderCopy decodeObjectOfClasses:v7 forKey:@"counterpartIdentifiers"];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"supportedIntents"];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"documentTypes"];

  v16 = v11;
  v17 = [(INAppDescriptor *)self initWithLocalizedName:v25 bundleIdentifier:v24 extensionBundleIdentifier:v23 counterpartIdentifiers:v22 teamIdentifier:v21 supportedIntents:v11 bundleURL:v20 documentTypes:v15];
  v18 = [coderCopy decodeBoolForKey:@"requiresUserConfirmation"];

  [(INAppDescriptor *)v17 setRequiresUserConfirmation:v18];
  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    if ([(INAppDescriptor *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
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

      localizedName = [(INAppDescriptor *)self localizedName];
      localizedName2 = [(INAppDescriptor *)v8 localizedName];
      v11 = localizedName;
      v12 = localizedName2;
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

      bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
      bundleIdentifier2 = [(INAppDescriptor *)v8 bundleIdentifier];
      v15 = bundleIdentifier;
      v19 = bundleIdentifier2;
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

      extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
      extensionBundleIdentifier2 = [(INAppDescriptor *)v8 extensionBundleIdentifier];
      v21 = extensionBundleIdentifier;
      v25 = extensionBundleIdentifier2;
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
      counterpartIdentifiers = [(INAppDescriptor *)self counterpartIdentifiers];
      counterpartIdentifiers2 = [(INAppDescriptor *)v8 counterpartIdentifiers];
      v29 = counterpartIdentifiers;
      v30 = counterpartIdentifiers2;
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

      teamIdentifier = [(INAppDescriptor *)self teamIdentifier];
      teamIdentifier2 = [(INAppDescriptor *)v8 teamIdentifier];
      v29 = teamIdentifier;
      v35 = teamIdentifier2;
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
            supportedIntents = [(INAppDescriptor *)self supportedIntents];
            supportedIntents2 = [(INAppDescriptor *)v8 supportedIntents];
            v40 = supportedIntents;
            v41 = supportedIntents2;
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
            documentTypes = [(INAppDescriptor *)v8 documentTypes];
            v40 = v44;
            v46 = documentTypes;
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
  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];

  if (extensionBundleIdentifier)
  {
    v4 = objc_alloc(MEMORY[0x1E69635D0]);
    extensionBundleIdentifier2 = [(INAppDescriptor *)self extensionBundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:extensionBundleIdentifier2 error:0];

    if (v6)
    {
      return 1;
    }
  }

  applicationRecord = [(INAppDescriptor *)self applicationRecord];
  v9 = applicationRecord;
  if (applicationRecord)
  {
    applicationState = [applicationRecord applicationState];
    isInstalled = [applicationState isInstalled];
  }

  else
  {
    isInstalled = 0;
  }

  return isInstalled;
}

- (LSApplicationRecord)applicationRecord
{
  bundleURL = [(INAppDescriptor *)self bundleURL];

  if (!bundleURL || (v4 = objc_alloc(MEMORY[0x1E69635F8]), -[INAppDescriptor bundleURL](self, "bundleURL"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 initWithURL:v5 allowPlaceholder:0 error:0], v5, !v6))
  {
    v7 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
    v6 = [v7 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = INAppDescriptor;
  v4 = [(INAppDescriptor *)&v15 description];
  localizedName = [(INAppDescriptor *)self localizedName];
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  teamIdentifier = [(INAppDescriptor *)self teamIdentifier];
  supportedIntents = [(INAppDescriptor *)self supportedIntents];
  counterpartIdentifiers = [(INAppDescriptor *)self counterpartIdentifiers];
  bundleURL = [(INAppDescriptor *)self bundleURL];
  documentTypes = [(INAppDescriptor *)self documentTypes];
  v13 = [v3 stringWithFormat:@"%@: localizedName: %@, bundleId: %@, extensionBundleId: %@, teamId: %@, intents: %@, counterpartIds: %@, bundleURL: %@, documentTypes: %@", v4, localizedName, bundleIdentifier, extensionBundleIdentifier, teamIdentifier, supportedIntents, counterpartIdentifiers, bundleURL, documentTypes];

  return v13;
}

- (INAppDescriptor)descriptorWithRecord:(id)record
{
  selfCopy = self;
  recordCopy = record;
  localizedName = [recordCopy localizedName];
  bundleIdentifier = [recordCopy bundleIdentifier];
  extensionBundleIdentifier = [(INAppDescriptor *)selfCopy extensionBundleIdentifier];
  in_counterpartIdentifiers = [recordCopy in_counterpartIdentifiers];
  teamIdentifier = [recordCopy teamIdentifier];
  in_supportedIntents = [recordCopy in_supportedIntents];
  v12 = [recordCopy URL];
  in_documentTypes = [recordCopy in_documentTypes];

  v14 = [(INAppDescriptor *)selfCopy initWithLocalizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:in_supportedIntents bundleURL:v12 documentTypes:in_documentTypes];

  return v14;
}

- (INAppDescriptor)descriptorWithExtensionBundleIdentifier:(id)identifier
{
  selfCopy = self;
  identifierCopy = identifier;
  localizedName = [(INAppDescriptor *)selfCopy localizedName];
  bundleIdentifier = [(INAppDescriptor *)selfCopy bundleIdentifier];
  counterpartIdentifiers = [(INAppDescriptor *)selfCopy counterpartIdentifiers];
  teamIdentifier = [(INAppDescriptor *)selfCopy teamIdentifier];
  supportedIntents = [(INAppDescriptor *)selfCopy supportedIntents];
  bundleURL = [(INAppDescriptor *)selfCopy bundleURL];
  documentTypes = [(INAppDescriptor *)selfCopy documentTypes];
  v13 = [(INAppDescriptor *)selfCopy initWithLocalizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:identifierCopy counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents bundleURL:bundleURL documentTypes:documentTypes];

  return v13;
}

- (INAppDescriptor)initWithLocalizedName:(id)name bundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier counterpartIdentifiers:(id)identifiers teamIdentifier:(id)teamIdentifier supportedIntents:(id)intents bundleURL:(id)l documentTypes:(id)self0
{
  nameCopy = name;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  identifiersCopy = identifiers;
  teamIdentifierCopy = teamIdentifier;
  intentsCopy = intents;
  lCopy = l;
  typesCopy = types;
  v41.receiver = self;
  v41.super_class = INAppDescriptor;
  v24 = [(INAppDescriptor *)&v41 init];
  if (v24)
  {
    v25 = [nameCopy copy];
    localizedName = v24->_localizedName;
    v24->_localizedName = v25;

    v27 = [identifierCopy copy];
    bundleIdentifier = v24->_bundleIdentifier;
    v24->_bundleIdentifier = v27;

    v29 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v24->_extensionBundleIdentifier;
    v24->_extensionBundleIdentifier = v29;

    v31 = [identifiersCopy copy];
    counterpartIdentifiers = v24->_counterpartIdentifiers;
    v24->_counterpartIdentifiers = v31;

    v33 = [teamIdentifierCopy copy];
    teamIdentifier = v24->_teamIdentifier;
    v24->_teamIdentifier = v33;

    v35 = [intentsCopy copy];
    supportedIntents = v24->_supportedIntents;
    v24->_supportedIntents = v35;

    objc_storeStrong(&v24->_bundleURL, l);
    v37 = [typesCopy copy];
    documentTypes = v24->_documentTypes;
    v24->_documentTypes = v37;

    v39 = v24;
  }

  return v24;
}

- (INAppDescriptor)initWithApplicationRecord:(id)record
{
  recordCopy = record;
  localizedName = [recordCopy localizedName];
  bundleIdentifier = [recordCopy bundleIdentifier];
  in_counterpartIdentifiers = [recordCopy in_counterpartIdentifiers];
  teamIdentifier = [recordCopy teamIdentifier];
  in_supportedIntents = [recordCopy in_supportedIntents];
  v10 = [recordCopy URL];
  in_documentTypes = [recordCopy in_documentTypes];

  v12 = [(INAppDescriptor *)self initWithLocalizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:0 counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:in_supportedIntents bundleURL:v10 documentTypes:in_documentTypes];
  return v12;
}

@end