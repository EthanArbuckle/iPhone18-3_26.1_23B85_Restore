@interface _INPBBuildId
- (BOOL)isEqual:(id)a3;
- (_INPBBuildId)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setBuildNumber:(id)a3;
- (void)setVersionNumber:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBBuildId

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_buildNumber)
  {
    v4 = [(_INPBBuildId *)self buildNumber];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"build_number"];
  }

  if (self->_versionNumber)
  {
    v6 = [(_INPBBuildId *)self versionNumber];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"version_number"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBBuildId *)self buildNumber];
  v6 = [v4 buildNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBBuildId *)self buildNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBBuildId *)self buildNumber];
    v10 = [v4 buildNumber];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBBuildId *)self versionNumber];
  v6 = [v4 versionNumber];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBBuildId *)self versionNumber];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBBuildId *)self versionNumber];
    v15 = [v4 versionNumber];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBBuildId allocWithZone:](_INPBBuildId init];
  v6 = [(NSString *)self->_buildNumber copyWithZone:a3];
  [(_INPBBuildId *)v5 setBuildNumber:v6];

  v7 = [(NSString *)self->_versionNumber copyWithZone:a3];
  [(_INPBBuildId *)v5 setVersionNumber:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBBuildId *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBBuildId)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBBuildId *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBBuildId *)self buildNumber];

  if (v4)
  {
    buildNumber = self->_buildNumber;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBBuildId *)self versionNumber];

  if (v6)
  {
    versionNumber = self->_versionNumber;
    PBDataWriterWriteStringField();
  }
}

- (void)setVersionNumber:(id)a3
{
  v4 = [a3 copy];
  versionNumber = self->_versionNumber;
  self->_versionNumber = v4;

  MEMORY[0x1EEE66BB8](v4, versionNumber);
}

- (void)setBuildNumber:(id)a3
{
  v4 = [a3 copy];
  buildNumber = self->_buildNumber;
  self->_buildNumber = v4;

  MEMORY[0x1EEE66BB8](v4, buildNumber);
}

@end