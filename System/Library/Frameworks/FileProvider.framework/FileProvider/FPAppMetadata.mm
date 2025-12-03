@interface FPAppMetadata
+ (BOOL)_isContainerIDPermitted:(id)permitted;
+ (id)_entitledCloudDocsContainerIDForAppProxy:(id)proxy;
+ (id)_entitledUbiquityContainerIDForAppProxy:(id)proxy;
+ (id)_localizedCustomDisplayNameForAppProxy:(id)proxy;
+ (id)findBundleIDForCurrentPlatformInSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (FPAppMetadata)initWithAppProxy:(id)proxy providerDomainID:(id)d;
- (FPAppMetadata)initWithBundleID:(id)d displayName:(id)name documentsURL:(id)l providerDomainID:(id)iD isManaged:(BOOL)managed;
- (FPAppMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPAppMetadata

- (FPAppMetadata)initWithAppProxy:(id)proxy providerDomainID:(id)d
{
  proxyCopy = proxy;
  dCopy = d;
  bundleIdentifier = [proxyCopy bundleIdentifier];
  v9 = [objc_opt_class() _localizedCustomDisplayNameForAppProxy:proxyCopy];
  v10 = v9;
  if (v9)
  {
    localizedName = v9;
  }

  else
  {
    localizedName = [proxyCopy localizedName];
  }

  v12 = localizedName;
  dataContainerURL = [proxyCopy dataContainerURL];
  v14 = [dataContainerURL URLByAppendingPathComponent:@"Documents"];

  if (proxyCopy && [bundleIdentifier length])
  {
    selfCopy = 0;
    if ([v12 length] && v14)
    {
      v22.receiver = self;
      v22.super_class = FPAppMetadata;
      v16 = [(FPAppMetadata *)&v22 init];
      v17 = v16;
      if (v16)
      {
        objc_storeStrong(&v16->_bundleID, bundleIdentifier);
        objc_storeStrong(&v17->_displayName, v12);
        objc_storeStrong(&v17->_documentsURL, v14);
        if (dCopy)
        {
          objc_storeStrong(&v17->_providerDomainID, d);
        }

        else
        {
          fp_defaultProviderDomainID = [MEMORY[0x1E696AEC0] fp_defaultProviderDomainID];
          providerDomainID = v17->_providerDomainID;
          v17->_providerDomainID = fp_defaultProviderDomainID;

          v17->_useDefaultProviderDomainID = 1;
        }

        mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
        v17->_isManaged = [mEMORY[0x1E69ADFB8] isAppManaged:bundleIdentifier];
      }

      self = v17;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FPAppMetadata)initWithBundleID:(id)d displayName:(id)name documentsURL:(id)l providerDomainID:(id)iD isManaged:(BOOL)managed
{
  dCopy = d;
  nameCopy = name;
  lCopy = l;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = FPAppMetadata;
  v17 = [(FPAppMetadata *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleID, d);
    objc_storeStrong(&v18->_displayName, name);
    objc_storeStrong(&v18->_documentsURL, l);
    objc_storeStrong(&v18->_providerDomainID, iD);
    v18->_isManaged = managed;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bundleID = [(FPAppMetadata *)self bundleID];
        bundleID2 = [(FPAppMetadata *)v5 bundleID];
        if (![bundleID isEqual:bundleID2])
        {
          LOBYTE(v16) = 0;
LABEL_26:

          goto LABEL_27;
        }

        displayName = [(FPAppMetadata *)self displayName];
        displayName2 = [(FPAppMetadata *)v5 displayName];
        if (![displayName isEqual:displayName2])
        {
          LOBYTE(v16) = 0;
LABEL_25:

          goto LABEL_26;
        }

        documentsURL = [(FPAppMetadata *)self documentsURL];
        documentsURL2 = [(FPAppMetadata *)v5 documentsURL];
        if (![documentsURL isEqual:documentsURL2])
        {
          LOBYTE(v16) = 0;
LABEL_24:

          goto LABEL_25;
        }

        providerDomainID = [(FPAppMetadata *)self providerDomainID];
        providerDomainID2 = [(FPAppMetadata *)v5 providerDomainID];
        v14 = providerDomainID2;
        if (providerDomainID == providerDomainID2)
        {
          v23 = providerDomainID;
        }

        else
        {
          v21 = providerDomainID2;
          providerDomainID3 = [(FPAppMetadata *)self providerDomainID];
          [(FPAppMetadata *)v5 providerDomainID];
          v24 = v22 = providerDomainID3;
          if (![providerDomainID3 isEqual:?])
          {
            LOBYTE(v16) = 0;
            v14 = v21;
            v19 = v24;
LABEL_22:

LABEL_23:
            goto LABEL_24;
          }

          v23 = providerDomainID;
          v14 = v21;
        }

        useDefaultProviderDomainID = [(FPAppMetadata *)self useDefaultProviderDomainID];
        if (useDefaultProviderDomainID == [(FPAppMetadata *)v5 useDefaultProviderDomainID])
        {
          isManaged = [(FPAppMetadata *)self isManaged];
          v16 = isManaged ^ [(FPAppMetadata *)v5 isManaged]^ 1;
        }

        else
        {
          LOBYTE(v16) = 0;
        }

        providerDomainID = v23;
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

- (FPAppMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = FPAppMetadata;
  v5 = [(FPAppMetadata *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_documentsURL"];
    documentsURL = v5->_documentsURL;
    v5->_documentsURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_providerDomainID"];
    providerDomainID = v5->_providerDomainID;
    v5->_providerDomainID = v12;

    v5->_useDefaultProviderDomainID = [coderCopy decodeBoolForKey:@"_useDefaultProviderDomainID"];
    v5->_isManaged = [coderCopy decodeBoolForKey:@"_isManaged"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"_bundleID"];
  [coderCopy encodeObject:self->_displayName forKey:@"_displayName"];
  [coderCopy encodeObject:self->_documentsURL forKey:@"_documentsURL"];
  [coderCopy encodeObject:self->_providerDomainID forKey:@"_providerDomainID"];
  [coderCopy encodeBool:self->_useDefaultProviderDomainID forKey:@"_useDefaultProviderDomainID"];
  [coderCopy encodeBool:self->_isManaged forKey:@"_isManaged"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  bundleID = [(FPAppMetadata *)self bundleID];
  [v4 setValue:bundleID forKey:@"bundleID"];

  displayName = [(FPAppMetadata *)self displayName];
  [v4 setValue:displayName forKey:@"displayName"];

  documentsURL = [(FPAppMetadata *)self documentsURL];
  [v4 setValue:documentsURL forKey:@"documentsURL"];

  providerDomainID = [(FPAppMetadata *)self providerDomainID];
  [v4 setValue:providerDomainID forKey:@"providerDomainID"];

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
  bundleID = [(FPAppMetadata *)self bundleID];
  if ([(FPAppMetadata *)self isManaged])
  {
    v6 = @" (managed)";
  }

  else
  {
    v6 = @" ";
  }

  displayName = [(FPAppMetadata *)self displayName];
  providerDomainID = [(FPAppMetadata *)self providerDomainID];
  useDefaultProviderDomainID = [(FPAppMetadata *)self useDefaultProviderDomainID];
  v10 = &stru_1F1F94B20;
  if (useDefaultProviderDomainID)
  {
    v10 = @"[default]";
  }

  v11 = [v3 stringWithFormat:@"<%@:%p %@%@n:'%@' p:'%@'%@>", v4, self, bundleID, v6, displayName, providerDomainID, v10];

  return v11;
}

+ (id)findBundleIDForCurrentPlatformInSet:(id)set
{
  v32 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if ([setCopy count])
  {
    if ([setCopy count] == 1)
    {
      anyObject = [setCopy anyObject];
    }

    else
    {
      v5 = [MEMORY[0x1E695DFA8] set];
      v6 = [MEMORY[0x1E695DFA8] set];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = setCopy;
      v7 = setCopy;
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
        anyObject = [v5 anyObject];
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

        anyObject = [v23 anyObject];
      }

      setCopy = v26;
    }
  }

  else
  {
    anyObject = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return anyObject;
}

+ (id)_localizedCustomDisplayNameForAppProxy:(id)proxy
{
  proxyCopy = proxy;
  if (proxyCopy)
  {
    v5 = [proxyCopy objectForInfoDictionaryKey:@"NSUbiquitousContainers" ofClass:objc_opt_class()];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (([self _entitledCloudDocsContainerIDForAppProxy:proxyCopy], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(self, "_entitledUbiquityContainerIDForAppProxy:", proxyCopy), (v6 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      v7 = v6;
      v8 = [v5 objectForKeyedSubscript:v6];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = [v8 objectForKeyedSubscript:@"NSUbiquitousContainerName"];
        if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v10 = [MEMORY[0x1E695DFD8] setWithObject:@"NSUbiquitousContainerName"];
          v11 = [proxyCopy localizedValuesForKeys:v10 fromTable:@"InfoPlist"];
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

+ (BOOL)_isContainerIDPermitted:(id)permitted
{
  permittedCopy = permitted;
  v4 = permittedCopy;
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

  if (!permittedCopy)
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

+ (id)_entitledCloudDocsContainerIDForAppProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = objc_opt_class();
  v6 = [proxyCopy entitlementValueForKey:@"com.apple.developer.icloud-services" ofClass:v5 valuesOfClass:objc_opt_class()];
  v7 = v6;
  if (!v6 || ![v6 containsObject:@"CloudDocuments"])
  {
    v14 = 0;
    goto LABEL_15;
  }

  v8 = objc_opt_class();
  v9 = [proxyCopy entitlementValueForKey:@"com.apple.developer.icloud-container-identifiers" ofClass:v8 valuesOfClass:objc_opt_class()];
  v10 = v9;
  if (v9)
  {
    firstObject = [v9 firstObject];
    if (firstObject)
    {
      if ([self _isContainerIDPermitted:firstObject])
      {
        v12 = firstObject;
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

  firstObject = [proxyCopy entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
  if (!firstObject)
  {
    goto LABEL_13;
  }

  v13 = [@"iCloud." stringByAppendingString:firstObject];
LABEL_12:
  v14 = v13;
LABEL_14:

LABEL_15:

  return v14;
}

+ (id)_entitledUbiquityContainerIDForAppProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = objc_opt_class();
  v6 = [proxyCopy entitlementValueForKey:@"com.apple.developer.ubiquity-container-identifiers" ofClass:v5 valuesOfClass:objc_opt_class()];

  if (v6)
  {
    firstObject = [v6 firstObject];
    if (firstObject)
    {
      if ([self _isContainerIDPermitted:firstObject])
      {
        v8 = firstObject;
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