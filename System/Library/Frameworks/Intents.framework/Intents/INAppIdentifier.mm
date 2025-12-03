@interface INAppIdentifier
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INAppIdentifier)initWithBundleIdentifier:(id)identifier bundleVersion:(id)version appName:(id)name;
- (INAppIdentifier)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAppIdentifier

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"bundleIdentifier";
  bundleIdentifier = self->_bundleIdentifier;
  null = bundleIdentifier;
  if (!bundleIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"bundleVersion";
  bundleVersion = self->_bundleVersion;
  null2 = bundleVersion;
  if (!bundleVersion)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"appName";
  appName = self->_appName;
  null3 = appName;
  if (!appName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAppIdentifier;
  v6 = [(INAppIdentifier *)&v11 description];
  _dictionaryRepresentation = [(INAppIdentifier *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_bundleIdentifier];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"bundleIdentifier"];

  v9 = [encoderCopy encodeObject:self->_bundleVersion];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"bundleVersion"];

  v10 = [encoderCopy encodeObject:self->_appName];

  [dictionary if_setObjectIfNonNil:v10 forKey:@"appName"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [coderCopy encodeObject:self->_appName forKey:@"appName"];
}

- (INAppIdentifier)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"bundleIdentifier"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"bundleVersion"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"appName"];

  v17 = [(INAppIdentifier *)self initWithBundleIdentifier:v8 bundleVersion:v12 appName:v16];
  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INAppIdentifier)initWithBundleIdentifier:(id)identifier bundleVersion:(id)version appName:(id)name
{
  identifierCopy = identifier;
  versionCopy = version;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = INAppIdentifier;
  v11 = [(INAppIdentifier *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v14 = [versionCopy copy];
    bundleVersion = v11->_bundleVersion;
    v11->_bundleVersion = v14;

    v16 = [nameCopy copy];
    appName = v11->_appName;
    v11->_appName = v16;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"bundleIdentifier"];
    v8 = [fromCopy objectForKeyedSubscript:@"bundleVersion"];
    v9 = [fromCopy objectForKeyedSubscript:@"appName"];
    v10 = [[self alloc] initWithBundleIdentifier:v7 bundleVersion:v8 appName:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end