@interface _INPBSetLabeledSettingIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSetLabeledSettingIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)setOldValue:(id)a3;
- (void)setUpdatedValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetLabeledSettingIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    v4 = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  if (self->_oldValue)
  {
    v6 = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"oldValue"];
  }

  if (self->_updatedValue)
  {
    v8 = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"updatedValue"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDetail hash];
  v4 = [(NSString *)self->_oldValue hash]^ v3;
  return v4 ^ [(NSString *)self->_updatedValue hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];
  v6 = [v4 errorDetail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];
    v10 = [v4 errorDetail];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];
  v6 = [v4 oldValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];
    v15 = [v4 oldValue];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];
  v6 = [v4 updatedValue];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];
    v20 = [v4 updatedValue];
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
  v5 = [+[_INPBSetLabeledSettingIntentResponse allocWithZone:](_INPBSetLabeledSettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:a3];
  [(_INPBSetLabeledSettingIntentResponse *)v5 setErrorDetail:v6];

  v7 = [(NSString *)self->_oldValue copyWithZone:a3];
  [(_INPBSetLabeledSettingIntentResponse *)v5 setOldValue:v7];

  v8 = [(NSString *)self->_updatedValue copyWithZone:a3];
  [(_INPBSetLabeledSettingIntentResponse *)v5 setUpdatedValue:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetLabeledSettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetLabeledSettingIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetLabeledSettingIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];

  if (v4)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];

  if (v6)
  {
    oldValue = self->_oldValue;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];

  v9 = v11;
  if (v8)
  {
    updatedValue = self->_updatedValue;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setUpdatedValue:(id)a3
{
  v4 = [a3 copy];
  updatedValue = self->_updatedValue;
  self->_updatedValue = v4;

  MEMORY[0x1EEE66BB8](v4, updatedValue);
}

- (void)setOldValue:(id)a3
{
  v4 = [a3 copy];
  oldValue = self->_oldValue;
  self->_oldValue = v4;

  MEMORY[0x1EEE66BB8](v4, oldValue);
}

- (void)setErrorDetail:(id)a3
{
  v4 = [a3 copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end