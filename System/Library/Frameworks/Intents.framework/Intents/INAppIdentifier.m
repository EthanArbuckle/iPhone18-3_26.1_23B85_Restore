@interface INAppIdentifier
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INAppIdentifier)initWithBundleIdentifier:(id)a3 bundleVersion:(id)a4 appName:(id)a5;
- (INAppIdentifier)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAppIdentifier

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"bundleIdentifier";
  bundleIdentifier = self->_bundleIdentifier;
  v4 = bundleIdentifier;
  if (!bundleIdentifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"bundleVersion";
  bundleVersion = self->_bundleVersion;
  v6 = bundleVersion;
  if (!bundleVersion)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"appName";
  appName = self->_appName;
  v8 = appName;
  if (!appName)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (appName)
  {
    if (bundleVersion)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (bundleIdentifier)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!bundleVersion)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (bundleIdentifier)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAppIdentifier;
  v6 = [(INAppIdentifier *)&v11 description];
  v7 = [(INAppIdentifier *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_bundleIdentifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"bundleIdentifier"];

  v9 = [v6 encodeObject:self->_bundleVersion];
  [v7 if_setObjectIfNonNil:v9 forKey:@"bundleVersion"];

  v10 = [v6 encodeObject:self->_appName];

  [v7 if_setObjectIfNonNil:v10 forKey:@"appName"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [v5 encodeObject:self->_appName forKey:@"appName"];
}

- (INAppIdentifier)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"bundleIdentifier"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"bundleVersion"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"appName"];

  v17 = [(INAppIdentifier *)self initWithBundleIdentifier:v8 bundleVersion:v12 appName:v16];
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      bundleIdentifier = self->_bundleIdentifier;
      v9 = 0;
      if (bundleIdentifier == v5->_bundleIdentifier || [(NSString *)bundleIdentifier isEqual:?])
      {
        bundleVersion = self->_bundleVersion;
        if (bundleVersion == v5->_bundleVersion || [(NSString *)bundleVersion isEqual:?])
        {
          appName = self->_appName;
          if (appName == v5->_appName || [(NSString *)appName isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(NSString *)self->_bundleVersion hash]^ v3;
  return v4 ^ [(NSString *)self->_appName hash];
}

- (INAppIdentifier)initWithBundleIdentifier:(id)a3 bundleVersion:(id)a4 appName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = INAppIdentifier;
  v11 = [(INAppIdentifier *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v14 = [v9 copy];
    bundleVersion = v11->_bundleVersion;
    v11->_bundleVersion = v14;

    v16 = [v10 copy];
    appName = v11->_appName;
    v11->_appName = v16;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
    v8 = [v6 objectForKeyedSubscript:@"bundleVersion"];
    v9 = [v6 objectForKeyedSubscript:@"appName"];
    v10 = [[a1 alloc] initWithBundleIdentifier:v7 bundleVersion:v8 appName:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end