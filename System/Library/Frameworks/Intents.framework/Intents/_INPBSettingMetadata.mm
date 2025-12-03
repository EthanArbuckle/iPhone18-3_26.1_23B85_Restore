@interface _INPBSettingMetadata
- (BOOL)isEqual:(id)equal;
- (_INPBSettingMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSettingId:(id)id;
- (void)writeTo:(id)to;
@end

@implementation _INPBSettingMetadata

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_settingId)
  {
    settingId = [(_INPBSettingMetadata *)self settingId];
    v5 = [settingId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"settingId"];
  }

  targetApp = [(_INPBSettingMetadata *)self targetApp];
  dictionaryRepresentation = [targetApp dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"targetApp"];

  targetDevice = [(_INPBSettingMetadata *)self targetDevice];
  dictionaryRepresentation2 = [targetDevice dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"targetDevice"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_settingId hash];
  v4 = [(_INPBAppIdentifier *)self->_targetApp hash]^ v3;
  return v4 ^ [(_INPBDevice *)self->_targetDevice hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  settingId = [(_INPBSettingMetadata *)self settingId];
  settingId2 = [equalCopy settingId];
  if ((settingId != 0) == (settingId2 == 0))
  {
    goto LABEL_16;
  }

  settingId3 = [(_INPBSettingMetadata *)self settingId];
  if (settingId3)
  {
    v8 = settingId3;
    settingId4 = [(_INPBSettingMetadata *)self settingId];
    settingId5 = [equalCopy settingId];
    v11 = [settingId4 isEqual:settingId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  settingId = [(_INPBSettingMetadata *)self targetApp];
  settingId2 = [equalCopy targetApp];
  if ((settingId != 0) == (settingId2 == 0))
  {
    goto LABEL_16;
  }

  targetApp = [(_INPBSettingMetadata *)self targetApp];
  if (targetApp)
  {
    v13 = targetApp;
    targetApp2 = [(_INPBSettingMetadata *)self targetApp];
    targetApp3 = [equalCopy targetApp];
    v16 = [targetApp2 isEqual:targetApp3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  settingId = [(_INPBSettingMetadata *)self targetDevice];
  settingId2 = [equalCopy targetDevice];
  if ((settingId != 0) != (settingId2 == 0))
  {
    targetDevice = [(_INPBSettingMetadata *)self targetDevice];
    if (!targetDevice)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = targetDevice;
    targetDevice2 = [(_INPBSettingMetadata *)self targetDevice];
    targetDevice3 = [equalCopy targetDevice];
    v21 = [targetDevice2 isEqual:targetDevice3];

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
  v5 = [+[_INPBSettingMetadata allocWithZone:](_INPBSettingMetadata init];
  v6 = [(NSString *)self->_settingId copyWithZone:zone];
  [(_INPBSettingMetadata *)v5 setSettingId:v6];

  v7 = [(_INPBAppIdentifier *)self->_targetApp copyWithZone:zone];
  [(_INPBSettingMetadata *)v5 setTargetApp:v7];

  v8 = [(_INPBDevice *)self->_targetDevice copyWithZone:zone];
  [(_INPBSettingMetadata *)v5 setTargetDevice:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSettingMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSettingMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSettingMetadata *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  settingId = [(_INPBSettingMetadata *)self settingId];

  if (settingId)
  {
    settingId = self->_settingId;
    PBDataWriterWriteStringField();
  }

  targetApp = [(_INPBSettingMetadata *)self targetApp];

  if (targetApp)
  {
    targetApp2 = [(_INPBSettingMetadata *)self targetApp];
    PBDataWriterWriteSubmessage();
  }

  targetDevice = [(_INPBSettingMetadata *)self targetDevice];

  v9 = toCopy;
  if (targetDevice)
  {
    targetDevice2 = [(_INPBSettingMetadata *)self targetDevice];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)setSettingId:(id)id
{
  v4 = [id copy];
  settingId = self->_settingId;
  self->_settingId = v4;

  MEMORY[0x1EEE66BB8](v4, settingId);
}

@end