@interface FPAppMetadata
+ (BOOL)_isContainerIDPermitted:(id)a3;
+ (id)_entitledCloudDocsContainerIDForAppProxy:(id)a3;
+ (id)_entitledUbiquityContainerIDForAppProxy:(id)a3;
+ (id)_localizedCustomDisplayNameForAppProxy:(id)a3;
+ (id)findBundleIDForCurrentPlatformInSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FPAppMetadata)initWithAppProxy:(id)a3 providerDomainID:(id)a4;
- (FPAppMetadata)initWithBundleID:(id)a3 displayName:(id)a4 documentsURL:(id)a5 providerDomainID:(id)a6 isManaged:(BOOL)a7;
- (FPAppMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPAppMetadata

- (FPAppMetadata)initWithAppProxy:(id)a3 providerDomainID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleIdentifier];
  v9 = [objc_opt_class() _localizedCustomDisplayNameForAppProxy:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v6 localizedName];
  }

  v12 = v11;
  v13 = [v6 dataContainerURL];
  v14 = [v13 URLByAppendingPathComponent:@"Documents"];

  if (v6 && [v8 length])
  {
    v15 = 0;
    if ([v12 length] && v14)
    {
      v22.receiver = self;
      v22.super_class = FPAppMetadata;
      v16 = [(FPAppMetadata *)&v22 init];
      v17 = v16;
      if (v16)
      {
        objc_storeStrong(&v16->_bundleID, v8);
        objc_storeStrong(&v17->_displayName, v12);
        objc_storeStrong(&v17->_documentsURL, v14);
        if (v7)
        {
          objc_storeStrong(&v17->_providerDomainID, a4);
        }

        else
        {
          v18 = [MEMORY[0x1E696AEC0] fp_defaultProviderDomainID];
          providerDomainID = v17->_providerDomainID;
          v17->_providerDomainID = v18;

          v17->_useDefaultProviderDomainID = 1;
        }

        v20 = [MEMORY[0x1E69ADFB8] sharedConnection];
        v17->_isManaged = [v20 isAppManaged:v8];
      }

      self = v17;
      v15 = self;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (FPAppMetadata)initWithBundleID:(id)a3 displayName:(id)a4 documentsURL:(id)a5 providerDomainID:(id)a6 isManaged:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = FPAppMetadata;
  v17 = [(FPAppMetadata *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleID, a3);
    objc_storeStrong(&v18->_displayName, a4);
    objc_storeStrong(&v18->_documentsURL, a5);
    objc_storeStrong(&v18->_providerDomainID, a6);
    v18->_isManaged = a7;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [(FPAppMetadata *)self bundleID];
        v7 = [(FPAppMetadata *)v5 bundleID];
        if (![v6 isEqual:v7])
        {
          LOBYTE(v16) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v8 = [(FPAppMetadata *)self displayName];
        v9 = [(FPAppMetadata *)v5 displayName];
        if (![v8 isEqual:v9])
        {
          LOBYTE(v16) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v10 = [(FPAppMetadata *)self documentsURL];
        v11 = [(FPAppMetadata *)v5 documentsURL];
        if (![v10 isEqual:v11])
        {
          LOBYTE(v16) = 0;
LABEL_24:

          goto LABEL_25;
        }

        v12 = [(FPAppMetadata *)self providerDomainID];
        v13 = [(FPAppMetadata *)v5 providerDomainID];
        v14 = v13;
        if (v12 == v13)
        {
          v23 = v12;
        }

        else
        {
          v21 = v13;
          v15 = [(FPAppMetadata *)self providerDomainID];
          [(FPAppMetadata *)v5 providerDomainID];
          v24 = v22 = v15;
          if (![v15 isEqual:?])
          {
            LOBYTE(v16) = 0;
            v14 = v21;
            v19 = v24;
LABEL_22:

LABEL_23:
            goto LABEL_24;
          }

          v23 = v12;
          v14 = v21;
        }

        v17 = [(FPAppMetadata *)self useDefaultProviderDomainID];
        if (v17 == [(FPAppMetadata *)v5 useDefaultProviderDomainID])
        {
          v18 = [(FPAppMetadata *)self isManaged];
          v16 = v18 ^ [(FPAppMetadata *)v5 isManaged]^ 1;
        }

        else
        {
          LOBYTE(v16) = 0;
        }

        v12 = v23;
        v19 = v24;
        if (v23 == v14)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    LOBYTE(v16) = 0;
  }

LABEL_27:

  return v16;
}

- (FPAppMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FPAppMetadata;
  v5 = [(FPAppMetadata *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_documentsURL"];
    documentsURL = v5->_documentsURL;
    v5->_documentsURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_providerDomainID"];
    providerDomainID = v5->_providerDomainID;
    v5->_providerDomainID = v12;

    v5->_useDefaultProviderDomainID = [v4 decodeBoolForKey:@"_useDefaultProviderDomainID"];
    v5->_isManaged = [v4 decodeBoolForKey:@"_isManaged"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"_bundleID"];
  [v5 encodeObject:self->_displayName forKey:@"_displayName"];
  [v5 encodeObject:self->_documentsURL forKey:@"_documentsURL"];
  [v5 encodeObject:self->_providerDomainID forKey:@"_providerDomainID"];
  [v5 encodeBool:self->_useDefaultProviderDomainID forKey:@"_useDefaultProviderDomainID"];
  [v5 encodeBool:self->_isManaged forKey:@"_isManaged"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(FPAppMetadata *)self bundleID];
  [v4 setValue:v5 forKey:@"bundleID"];

  v6 = [(FPAppMetadata *)self displayName];
  [v4 setValue:v6 forKey:@"displayName"];

  v7 = [(FPAppMetadata *)self documentsURL];
  [v4 setValue:v7 forKey:@"documentsURL"];

  v8 = [(FPAppMetadata *)self providerDomainID];
  [v4 setValue:v8 forKey:@"providerDomainID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPAppMetadata useDefaultProviderDomainID](self, "useDefaultProviderDomainID")}];
  [v4 setValue:v9 forKey:@"useDefaultProviderDomainID"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPAppMetadata isManaged](self, "isManaged")}];
  [v4 setValue:v10 forKey:@"isManaged"];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPAppMetadata *)self bundleID];
  if ([(FPAppMetadata *)self isManaged])
  {
    v6 = @" (managed)";
  }

  else
  {
    v6 = @" ";
  }

  v7 = [(FPAppMetadata *)self displayName];
  v8 = [(FPAppMetadata *)self providerDomainID];
  v9 = [(FPAppMetadata *)self useDefaultProviderDomainID];
  v10 = &stru_1F1F94B20;
  if (v9)
  {
    v10 = @"[default]";
  }

  v11 = [v3 stringWithFormat:@"<%@:%p %@%@n:'%@' p:'%@'%@>", v4, self, v5, v6, v7, v8, v10];

  return v11;
}

+ (id)findBundleIDForCurrentPlatformInSet:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 anyObject];
    }

    else
    {
      v5 = [MEMORY[0x1E695DFA8] set];
      v6 = [MEMORY[0x1E695DFA8] set];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = v3;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v28;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v27 + 1) + 8 * i);
            [v12 rangeOfString:@"mobile" options:1];
            v13 = v5;
            if (v14)
            {
              goto LABEL_18;
            }

            [v12 rangeOfString:@"ios" options:1];
            v13 = v5;
            if (v15)
            {
              goto LABEL_18;
            }

            [v12 rangeOfString:@"ipad" options:1];
            v13 = v5;
            if (v16)
            {
              goto LABEL_18;
            }

            [v12 rangeOfString:@"touch" options:1];
            v13 = v5;
            if (v17)
            {
              goto LABEL_18;
            }

            v18 = [v12 containsString:@".iWork."];
            v13 = v6;
            if ((v18 & 1) == 0)
            {
              v19 = [v12 containsString:@".iMovieApp"];
              v13 = v6;
              if ((v19 & 1) == 0)
              {
                [v12 rangeOfString:@"mac" options:1];
                v13 = v6;
                if (!v20)
                {
                  [v12 rangeOfString:@"osx" options:1];
                  v13 = v6;
                  if (!v21)
                  {
                    continue;
                  }
                }
              }
            }

LABEL_18:
            [v13 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v9);
      }

      if ([v5 count])
      {
        v4 = [v5 anyObject];
      }

      else
      {
        v22 = [v7 mutableCopy];
        [v22 minusSet:v6];
        if ([v22 count])
        {
          v23 = v22;
        }

        else
        {
          v23 = v7;
        }

        v4 = [v23 anyObject];
      }

      v3 = v26;
    }
  }

  else
  {
    v4 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_localizedCustomDisplayNameForAppProxy:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [v4 objectForInfoDictionaryKey:@"NSUbiquitousContainers" ofClass:objc_opt_class()];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (([a1 _entitledCloudDocsContainerIDForAppProxy:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(a1, "_entitledUbiquityContainerIDForAppProxy:", v4), (v6 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      v7 = v6;
      v8 = [v5 objectForKeyedSubscript:v6];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = [v8 objectForKeyedSubscript:@"NSUbiquitousContainerName"];
        if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v10 = [MEMORY[0x1E695DFD8] setWithObject:@"NSUbiquitousContainerName"];
          v11 = [v4 localizedValuesForKeys:v10 fromTable:@"InfoPlist"];
          v12 = [v11 stringForKey:@"NSUbiquitousContainerName"];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = v9;
          }

          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)_isContainerIDPermitted:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (_isContainerIDPermitted__onceToken != -1)
  {
    +[FPAppMetadata _isContainerIDPermitted:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    LOBYTE(v5) = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [_isContainerIDPermitted__prohibitedContainerIDs containsObject:v4] ^ 1;
LABEL_6:

  return v5;
}

uint64_t __41__FPAppMetadata__isContainerIDPermitted___block_invoke()
{
  _isContainerIDPermitted__prohibitedContainerIDs = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.CloudDocs", @"com.apple.Desktop", @"com.apple.Documents", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_entitledCloudDocsContainerIDForAppProxy:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 entitlementValueForKey:@"com.apple.developer.icloud-services" ofClass:v5 valuesOfClass:objc_opt_class()];
  v7 = v6;
  if (!v6 || ![v6 containsObject:@"CloudDocuments"])
  {
    v14 = 0;
    goto LABEL_15;
  }

  v8 = objc_opt_class();
  v9 = [v4 entitlementValueForKey:@"com.apple.developer.icloud-container-identifiers" ofClass:v8 valuesOfClass:objc_opt_class()];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 firstObject];
    if (v11)
    {
      if ([a1 _isContainerIDPermitted:v11])
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      goto LABEL_12;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v11 = [v4 entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
  if (!v11)
  {
    goto LABEL_13;
  }

  v13 = [@"iCloud." stringByAppendingString:v11];
LABEL_12:
  v14 = v13;
LABEL_14:

LABEL_15:

  return v14;
}

+ (id)_entitledUbiquityContainerIDForAppProxy:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 entitlementValueForKey:@"com.apple.developer.ubiquity-container-identifiers" ofClass:v5 valuesOfClass:objc_opt_class()];

  if (v6)
  {
    v7 = [v6 firstObject];
    if (v7)
    {
      if ([a1 _isContainerIDPermitted:v7])
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end