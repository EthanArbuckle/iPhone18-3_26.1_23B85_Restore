@interface _MXBundleBlacklistEntry
+ (id)blacklistEntriesFromDefaultsValue:(id)value;
- (BOOL)_isVersionValueAllowed:(id)allowed;
- (BOOL)isBundleRecordAllowed:(id)allowed;
- (BOOL)isExtensionAllowed:(id)allowed;
- (_MXBundleBlacklistEntry)initWithBundleIdentifier:(id)identifier minimumDisallowedVersion:(id)version maximumDisallowedVersion:(id)disallowedVersion;
@end

@implementation _MXBundleBlacklistEntry

- (BOOL)isExtensionAllowed:(id)allowed
{
  allowedCopy = allowed;
  identifier = [allowedCopy identifier];
  v6 = [identifier isEqualToString:self->_bundleIdentifier];

  if (v6)
  {
    version = [allowedCopy version];
    v8 = [(_MXBundleBlacklistEntry *)self _isVersionValueAllowed:version];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isBundleRecordAllowed:(id)allowed
{
  allowedCopy = allowed;
  bundleIdentifier = [allowedCopy bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:self->_bundleIdentifier];

  if (v6)
  {
    bundleVersion = [allowedCopy bundleVersion];
    v8 = [(_MXBundleBlacklistEntry *)self _isVersionValueAllowed:bundleVersion];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_isVersionValueAllowed:(id)allowed
{
  allowedCopy = allowed;
  if (*&self->_minimum != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [(_MXVersion *)allowedCopy stringValue];

      if (stringValue)
      {
        goto LABEL_4;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        stringValue = 0;
        v8 = 0;
        goto LABEL_16;
      }

      stringValue = allowedCopy;
      if (allowedCopy)
      {
LABEL_4:
        allowedCopy = [[_MXVersion alloc] initWithVersionString:stringValue];
        minimum = self->_minimum;
        maximum = self->_maximum;
        if (minimum)
        {
          if (maximum)
          {
            if ([(_MXVersion *)maximum compare:allowedCopy]== -1)
            {
              v8 = 1;
              goto LABEL_16;
            }

            minimum = self->_minimum;
          }

          maximum = allowedCopy;
        }

        else
        {
          minimum = allowedCopy;
        }

        v8 = [(_MXVersion *)maximum compare:minimum]== -1;
LABEL_16:

        allowedCopy = stringValue;
        goto LABEL_17;
      }
    }

    allowedCopy = 0;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

- (_MXBundleBlacklistEntry)initWithBundleIdentifier:(id)identifier minimumDisallowedVersion:(id)version maximumDisallowedVersion:(id)disallowedVersion
{
  identifierCopy = identifier;
  versionCopy = version;
  disallowedVersionCopy = disallowedVersion;
  v15.receiver = self;
  v15.super_class = _MXBundleBlacklistEntry;
  v11 = [(_MXBundleBlacklistEntry *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    objc_storeStrong(&v11->_minimum, version);
    objc_storeStrong(&v11->_maximum, disallowedVersion);
  }

  return v11;
}

+ (id)blacklistEntriesFromDefaultsValue:(id)value
{
  v31 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = valueCopy;
    v6 = valueCopy;
    v25 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v25)
    {
      goto LABEL_27;
    }

    v7 = *v27;
    v8 = MEMORY[0x1E695E118];
    v22 = *v27;
    while (1)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v6 objectForKey:v10];
        if (![v11 isEqual:v8])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          v12 = [v11 objectForKey:@"MinimumVersion"];
          v13 = [v11 objectForKey:@"MaximumVersion"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v12 = 0;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v13 = 0;
          }

          v14 = v5;
          selfCopy = self;
          v16 = [self alloc];
          if (v12)
          {
            v17 = [[_MXVersion alloc] initWithVersionString:v12];
            v24 = v17;
            if (v13)
            {
              goto LABEL_16;
            }

LABEL_18:
            v18 = 0;
          }

          else
          {
            v17 = 0;
            if (!v13)
            {
              goto LABEL_18;
            }

LABEL_16:
            v23 = [[_MXVersion alloc] initWithVersionString:v13];
            v18 = v23;
          }

          v19 = [v16 initWithBundleIdentifier:v10 minimumDisallowedVersion:v17 maximumDisallowedVersion:v18];
          v5 = v14;
          [v14 addObject:v19];

          if (v13)
          {
          }

          self = selfCopy;
          v8 = MEMORY[0x1E695E118];
          if (v12)
          {
          }

          v7 = v22;
          goto LABEL_24;
        }

        v12 = [[self alloc] initWithBundleIdentifier:v10 minimumDisallowedVersion:0 maximumDisallowedVersion:0];
        [v5 addObject:v12];
LABEL_24:

LABEL_25:
      }

      v25 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v25)
      {
LABEL_27:

        valueCopy = v21;
        goto LABEL_29;
      }
    }
  }

  v5 = MEMORY[0x1E695E0F0];
LABEL_29:

  return v5;
}

@end