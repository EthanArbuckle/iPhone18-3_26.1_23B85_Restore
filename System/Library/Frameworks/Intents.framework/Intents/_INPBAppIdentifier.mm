@interface _INPBAppIdentifier
- (BOOL)isEqual:(id)a3;
- (_INPBAppIdentifier)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAppName:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setBundleVersion:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAppIdentifier

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appName)
  {
    v4 = [(_INPBAppIdentifier *)self appName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appName"];
  }

  if (self->_bundleIdentifier)
  {
    v6 = [(_INPBAppIdentifier *)self bundleIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_bundleVersion)
  {
    v8 = [(_INPBAppIdentifier *)self bundleVersion];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"bundleVersion"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appName hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_bundleVersion hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBAppIdentifier *)self appName];
  v6 = [v4 appName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBAppIdentifier *)self appName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAppIdentifier *)self appName];
    v10 = [v4 appName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppIdentifier *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBAppIdentifier *)self bundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAppIdentifier *)self bundleIdentifier];
    v15 = [v4 bundleIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppIdentifier *)self bundleVersion];
  v6 = [v4 bundleVersion];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBAppIdentifier *)self bundleVersion];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBAppIdentifier *)self bundleVersion];
    v20 = [v4 bundleVersion];
    v21 = [v19 isEqual:v20];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAppIdentifier allocWithZone:](_INPBAppIdentifier init];
  v6 = [(NSString *)self->_appName copyWithZone:a3];
  [(_INPBAppIdentifier *)v5 setAppName:v6];

  v7 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  [(_INPBAppIdentifier *)v5 setBundleIdentifier:v7];

  v8 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  [(_INPBAppIdentifier *)v5 setBundleVersion:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAppIdentifier *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAppIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAppIdentifier *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBAppIdentifier *)self appName];

  if (v4)
  {
    appName = self->_appName;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBAppIdentifier *)self bundleIdentifier];

  if (v6)
  {
    bundleIdentifier = self->_bundleIdentifier;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBAppIdentifier *)self bundleVersion];

  v9 = v11;
  if (v8)
  {
    bundleVersion = self->_bundleVersion;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setBundleVersion:(id)a3
{
  v4 = [a3 copy];
  bundleVersion = self->_bundleVersion;
  self->_bundleVersion = v4;

  MEMORY[0x1EEE66BB8](v4, bundleVersion);
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, bundleIdentifier);
}

- (void)setAppName:(id)a3
{
  v4 = [a3 copy];
  appName = self->_appName;
  self->_appName = v4;

  MEMORY[0x1EEE66BB8](v4, appName);
}

@end