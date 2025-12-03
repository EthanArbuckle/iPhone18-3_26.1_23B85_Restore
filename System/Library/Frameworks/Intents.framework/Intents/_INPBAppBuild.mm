@interface _INPBAppBuild
- (BOOL)isEqual:(id)equal;
- (_INPBAppBuild)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBAppBuild

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  appId = [(_INPBAppBuild *)self appId];
  dictionaryRepresentation = [appId dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"app_id"];

  buildId = [(_INPBAppBuild *)self buildId];
  dictionaryRepresentation2 = [buildId dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"build_id"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  appId = [(_INPBAppBuild *)self appId];
  appId2 = [equalCopy appId];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_11;
  }

  appId3 = [(_INPBAppBuild *)self appId];
  if (appId3)
  {
    v8 = appId3;
    appId4 = [(_INPBAppBuild *)self appId];
    appId5 = [equalCopy appId];
    v11 = [appId4 isEqual:appId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  appId = [(_INPBAppBuild *)self buildId];
  appId2 = [equalCopy buildId];
  if ((appId != 0) != (appId2 == 0))
  {
    buildId = [(_INPBAppBuild *)self buildId];
    if (!buildId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = buildId;
    buildId2 = [(_INPBAppBuild *)self buildId];
    buildId3 = [equalCopy buildId];
    v16 = [buildId2 isEqual:buildId3];

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
  v5 = [+[_INPBAppBuild allocWithZone:](_INPBAppBuild init];
  v6 = [(_INPBAppId *)self->_appId copyWithZone:zone];
  [(_INPBAppBuild *)v5 setAppId:v6];

  v7 = [(_INPBBuildId *)self->_buildId copyWithZone:zone];
  [(_INPBAppBuild *)v5 setBuildId:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAppBuild *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAppBuild)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAppBuild *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appId = [(_INPBAppBuild *)self appId];

  if (appId)
  {
    appId2 = [(_INPBAppBuild *)self appId];
    PBDataWriterWriteSubmessage();
  }

  buildId = [(_INPBAppBuild *)self buildId];

  if (buildId)
  {
    buildId2 = [(_INPBAppBuild *)self buildId];
    PBDataWriterWriteSubmessage();
  }
}

@end