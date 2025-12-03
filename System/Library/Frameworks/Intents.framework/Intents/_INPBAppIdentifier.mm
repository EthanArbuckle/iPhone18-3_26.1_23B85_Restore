@interface _INPBAppIdentifier
- (BOOL)isEqual:(id)equal;
- (_INPBAppIdentifier)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAppName:(id)name;
- (void)setBundleIdentifier:(id)identifier;
- (void)setBundleVersion:(id)version;
- (void)writeTo:(id)to;
@end

@implementation _INPBAppIdentifier

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appName)
  {
    appName = [(_INPBAppIdentifier *)self appName];
    v5 = [appName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appName"];
  }

  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(_INPBAppIdentifier *)self bundleIdentifier];
    v7 = [bundleIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_bundleVersion)
  {
    bundleVersion = [(_INPBAppIdentifier *)self bundleVersion];
    v9 = [bundleVersion copy];
    [dictionary setObject:v9 forKeyedSubscript:@"bundleVersion"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appName hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_bundleVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  appName = [(_INPBAppIdentifier *)self appName];
  appName2 = [equalCopy appName];
  if ((appName != 0) == (appName2 == 0))
  {
    goto LABEL_16;
  }

  appName3 = [(_INPBAppIdentifier *)self appName];
  if (appName3)
  {
    v8 = appName3;
    appName4 = [(_INPBAppIdentifier *)self appName];
    appName5 = [equalCopy appName];
    v11 = [appName4 isEqual:appName5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  appName = [(_INPBAppIdentifier *)self bundleIdentifier];
  appName2 = [equalCopy bundleIdentifier];
  if ((appName != 0) == (appName2 == 0))
  {
    goto LABEL_16;
  }

  bundleIdentifier = [(_INPBAppIdentifier *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v13 = bundleIdentifier;
    bundleIdentifier2 = [(_INPBAppIdentifier *)self bundleIdentifier];
    bundleIdentifier3 = [equalCopy bundleIdentifier];
    v16 = [bundleIdentifier2 isEqual:bundleIdentifier3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  appName = [(_INPBAppIdentifier *)self bundleVersion];
  appName2 = [equalCopy bundleVersion];
  if ((appName != 0) != (appName2 == 0))
  {
    bundleVersion = [(_INPBAppIdentifier *)self bundleVersion];
    if (!bundleVersion)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = bundleVersion;
    bundleVersion2 = [(_INPBAppIdentifier *)self bundleVersion];
    bundleVersion3 = [equalCopy bundleVersion];
    v21 = [bundleVersion2 isEqual:bundleVersion3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAppIdentifier allocWithZone:](_INPBAppIdentifier init];
  v6 = [(NSString *)self->_appName copyWithZone:zone];
  [(_INPBAppIdentifier *)v5 setAppName:v6];

  v7 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  [(_INPBAppIdentifier *)v5 setBundleIdentifier:v7];

  v8 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  [(_INPBAppIdentifier *)v5 setBundleVersion:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAppIdentifier *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAppIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAppIdentifier *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appName = [(_INPBAppIdentifier *)self appName];

  if (appName)
  {
    appName = self->_appName;
    PBDataWriterWriteStringField();
  }

  bundleIdentifier = [(_INPBAppIdentifier *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier = self->_bundleIdentifier;
    PBDataWriterWriteStringField();
  }

  bundleVersion = [(_INPBAppIdentifier *)self bundleVersion];

  v9 = toCopy;
  if (bundleVersion)
  {
    bundleVersion = self->_bundleVersion;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setBundleVersion:(id)version
{
  v4 = [version copy];
  bundleVersion = self->_bundleVersion;
  self->_bundleVersion = v4;

  MEMORY[0x1EEE66BB8](v4, bundleVersion);
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, bundleIdentifier);
}

- (void)setAppName:(id)name
{
  v4 = [name copy];
  appName = self->_appName;
  self->_appName = v4;

  MEMORY[0x1EEE66BB8](v4, appName);
}

@end