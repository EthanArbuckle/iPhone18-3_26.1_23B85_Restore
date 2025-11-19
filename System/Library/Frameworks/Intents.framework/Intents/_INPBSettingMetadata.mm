@interface _INPBSettingMetadata
- (BOOL)isEqual:(id)a3;
- (_INPBSettingMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSettingId:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSettingMetadata

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_settingId)
  {
    v4 = [(_INPBSettingMetadata *)self settingId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"settingId"];
  }

  v6 = [(_INPBSettingMetadata *)self targetApp];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"targetApp"];

  v8 = [(_INPBSettingMetadata *)self targetDevice];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"targetDevice"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_settingId hash];
  v4 = [(_INPBAppIdentifier *)self->_targetApp hash]^ v3;
  return v4 ^ [(_INPBDevice *)self->_targetDevice hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBSettingMetadata *)self settingId];
  v6 = [v4 settingId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBSettingMetadata *)self settingId];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSettingMetadata *)self settingId];
    v10 = [v4 settingId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSettingMetadata *)self targetApp];
  v6 = [v4 targetApp];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBSettingMetadata *)self targetApp];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSettingMetadata *)self targetApp];
    v15 = [v4 targetApp];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSettingMetadata *)self targetDevice];
  v6 = [v4 targetDevice];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBSettingMetadata *)self targetDevice];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBSettingMetadata *)self targetDevice];
    v20 = [v4 targetDevice];
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
  v5 = [+[_INPBSettingMetadata allocWithZone:](_INPBSettingMetadata init];
  v6 = [(NSString *)self->_settingId copyWithZone:a3];
  [(_INPBSettingMetadata *)v5 setSettingId:v6];

  v7 = [(_INPBAppIdentifier *)self->_targetApp copyWithZone:a3];
  [(_INPBSettingMetadata *)v5 setTargetApp:v7];

  v8 = [(_INPBDevice *)self->_targetDevice copyWithZone:a3];
  [(_INPBSettingMetadata *)v5 setTargetDevice:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSettingMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSettingMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSettingMetadata *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBSettingMetadata *)self settingId];

  if (v4)
  {
    settingId = self->_settingId;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBSettingMetadata *)self targetApp];

  if (v6)
  {
    v7 = [(_INPBSettingMetadata *)self targetApp];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSettingMetadata *)self targetDevice];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBSettingMetadata *)self targetDevice];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)setSettingId:(id)a3
{
  v4 = [a3 copy];
  settingId = self->_settingId;
  self->_settingId = v4;

  MEMORY[0x1EEE66BB8](v4, settingId);
}

@end