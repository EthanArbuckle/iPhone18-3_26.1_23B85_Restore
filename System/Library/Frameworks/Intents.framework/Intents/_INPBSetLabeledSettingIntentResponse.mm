@interface _INPBSetLabeledSettingIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSetLabeledSettingIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setErrorDetail:(id)detail;
- (void)setOldValue:(id)value;
- (void)setUpdatedValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetLabeledSettingIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    errorDetail = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];
    v5 = [errorDetail copy];
    [dictionary setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  if (self->_oldValue)
  {
    oldValue = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];
    v7 = [oldValue copy];
    [dictionary setObject:v7 forKeyedSubscript:@"oldValue"];
  }

  if (self->_updatedValue)
  {
    updatedValue = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];
    v9 = [updatedValue copy];
    [dictionary setObject:v9 forKeyedSubscript:@"updatedValue"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDetail hash];
  v4 = [(NSString *)self->_oldValue hash]^ v3;
  return v4 ^ [(NSString *)self->_updatedValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  errorDetail = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];
  errorDetail2 = [equalCopy errorDetail];
  if ((errorDetail != 0) == (errorDetail2 == 0))
  {
    goto LABEL_16;
  }

  errorDetail3 = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];
  if (errorDetail3)
  {
    v8 = errorDetail3;
    errorDetail4 = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];
    errorDetail5 = [equalCopy errorDetail];
    v11 = [errorDetail4 isEqual:errorDetail5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  errorDetail = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];
  errorDetail2 = [equalCopy oldValue];
  if ((errorDetail != 0) == (errorDetail2 == 0))
  {
    goto LABEL_16;
  }

  oldValue = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];
  if (oldValue)
  {
    v13 = oldValue;
    oldValue2 = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];
    oldValue3 = [equalCopy oldValue];
    v16 = [oldValue2 isEqual:oldValue3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  errorDetail = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];
  errorDetail2 = [equalCopy updatedValue];
  if ((errorDetail != 0) != (errorDetail2 == 0))
  {
    updatedValue = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];
    if (!updatedValue)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = updatedValue;
    updatedValue2 = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];
    updatedValue3 = [equalCopy updatedValue];
    v21 = [updatedValue2 isEqual:updatedValue3];

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
  v5 = [+[_INPBSetLabeledSettingIntentResponse allocWithZone:](_INPBSetLabeledSettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:zone];
  [(_INPBSetLabeledSettingIntentResponse *)v5 setErrorDetail:v6];

  v7 = [(NSString *)self->_oldValue copyWithZone:zone];
  [(_INPBSetLabeledSettingIntentResponse *)v5 setOldValue:v7];

  v8 = [(NSString *)self->_updatedValue copyWithZone:zone];
  [(_INPBSetLabeledSettingIntentResponse *)v5 setUpdatedValue:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetLabeledSettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetLabeledSettingIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetLabeledSettingIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  errorDetail = [(_INPBSetLabeledSettingIntentResponse *)self errorDetail];

  if (errorDetail)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  oldValue = [(_INPBSetLabeledSettingIntentResponse *)self oldValue];

  if (oldValue)
  {
    oldValue = self->_oldValue;
    PBDataWriterWriteStringField();
  }

  updatedValue = [(_INPBSetLabeledSettingIntentResponse *)self updatedValue];

  v9 = toCopy;
  if (updatedValue)
  {
    updatedValue = self->_updatedValue;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setUpdatedValue:(id)value
{
  v4 = [value copy];
  updatedValue = self->_updatedValue;
  self->_updatedValue = v4;

  MEMORY[0x1EEE66BB8](v4, updatedValue);
}

- (void)setOldValue:(id)value
{
  v4 = [value copy];
  oldValue = self->_oldValue;
  self->_oldValue = v4;

  MEMORY[0x1EEE66BB8](v4, oldValue);
}

- (void)setErrorDetail:(id)detail
{
  v4 = [detail copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end