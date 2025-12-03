@interface _INPBBuildId
- (BOOL)isEqual:(id)equal;
- (_INPBBuildId)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setBuildNumber:(id)number;
- (void)setVersionNumber:(id)number;
- (void)writeTo:(id)to;
@end

@implementation _INPBBuildId

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_buildNumber)
  {
    buildNumber = [(_INPBBuildId *)self buildNumber];
    v5 = [buildNumber copy];
    [dictionary setObject:v5 forKeyedSubscript:@"build_number"];
  }

  if (self->_versionNumber)
  {
    versionNumber = [(_INPBBuildId *)self versionNumber];
    v7 = [versionNumber copy];
    [dictionary setObject:v7 forKeyedSubscript:@"version_number"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  buildNumber = [(_INPBBuildId *)self buildNumber];
  buildNumber2 = [equalCopy buildNumber];
  if ((buildNumber != 0) == (buildNumber2 == 0))
  {
    goto LABEL_11;
  }

  buildNumber3 = [(_INPBBuildId *)self buildNumber];
  if (buildNumber3)
  {
    v8 = buildNumber3;
    buildNumber4 = [(_INPBBuildId *)self buildNumber];
    buildNumber5 = [equalCopy buildNumber];
    v11 = [buildNumber4 isEqual:buildNumber5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  buildNumber = [(_INPBBuildId *)self versionNumber];
  buildNumber2 = [equalCopy versionNumber];
  if ((buildNumber != 0) != (buildNumber2 == 0))
  {
    versionNumber = [(_INPBBuildId *)self versionNumber];
    if (!versionNumber)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = versionNumber;
    versionNumber2 = [(_INPBBuildId *)self versionNumber];
    versionNumber3 = [equalCopy versionNumber];
    v16 = [versionNumber2 isEqual:versionNumber3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBBuildId allocWithZone:](_INPBBuildId init];
  v6 = [(NSString *)self->_buildNumber copyWithZone:zone];
  [(_INPBBuildId *)v5 setBuildNumber:v6];

  v7 = [(NSString *)self->_versionNumber copyWithZone:zone];
  [(_INPBBuildId *)v5 setVersionNumber:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBBuildId *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBBuildId)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBBuildId *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  buildNumber = [(_INPBBuildId *)self buildNumber];

  if (buildNumber)
  {
    buildNumber = self->_buildNumber;
    PBDataWriterWriteStringField();
  }

  versionNumber = [(_INPBBuildId *)self versionNumber];

  if (versionNumber)
  {
    versionNumber = self->_versionNumber;
    PBDataWriterWriteStringField();
  }
}

- (void)setVersionNumber:(id)number
{
  v4 = [number copy];
  versionNumber = self->_versionNumber;
  self->_versionNumber = v4;

  MEMORY[0x1EEE66BB8](v4, versionNumber);
}

- (void)setBuildNumber:(id)number
{
  v4 = [number copy];
  buildNumber = self->_buildNumber;
  self->_buildNumber = v4;

  MEMORY[0x1EEE66BB8](v4, buildNumber);
}

@end