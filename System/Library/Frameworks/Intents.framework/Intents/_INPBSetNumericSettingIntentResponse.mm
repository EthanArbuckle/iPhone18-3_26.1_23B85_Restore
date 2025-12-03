@interface _INPBSetNumericSettingIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSetNumericSettingIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setErrorDetail:(id)detail;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetNumericSettingIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    errorDetail = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];
    v5 = [errorDetail copy];
    [dictionary setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  maxValue = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
  dictionaryRepresentation = [maxValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"maxValue"];

  minValue = [(_INPBSetNumericSettingIntentResponse *)self minValue];
  dictionaryRepresentation2 = [minValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"minValue"];

  oldValue = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
  dictionaryRepresentation3 = [oldValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"oldValue"];

  updatedValue = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
  dictionaryRepresentation4 = [updatedValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"updatedValue"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDetail hash];
  v4 = [(_INPBNumericSettingValue *)self->_maxValue hash]^ v3;
  v5 = [(_INPBNumericSettingValue *)self->_minValue hash];
  v6 = v4 ^ v5 ^ [(_INPBNumericSettingValue *)self->_oldValue hash];
  return v6 ^ [(_INPBNumericSettingValue *)self->_updatedValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  errorDetail = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];
  errorDetail2 = [equalCopy errorDetail];
  if ((errorDetail != 0) == (errorDetail2 == 0))
  {
    goto LABEL_26;
  }

  errorDetail3 = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];
  if (errorDetail3)
  {
    v8 = errorDetail3;
    errorDetail4 = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];
    errorDetail5 = [equalCopy errorDetail];
    v11 = [errorDetail4 isEqual:errorDetail5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  errorDetail = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
  errorDetail2 = [equalCopy maxValue];
  if ((errorDetail != 0) == (errorDetail2 == 0))
  {
    goto LABEL_26;
  }

  maxValue = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
  if (maxValue)
  {
    v13 = maxValue;
    maxValue2 = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
    maxValue3 = [equalCopy maxValue];
    v16 = [maxValue2 isEqual:maxValue3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  errorDetail = [(_INPBSetNumericSettingIntentResponse *)self minValue];
  errorDetail2 = [equalCopy minValue];
  if ((errorDetail != 0) == (errorDetail2 == 0))
  {
    goto LABEL_26;
  }

  minValue = [(_INPBSetNumericSettingIntentResponse *)self minValue];
  if (minValue)
  {
    v18 = minValue;
    minValue2 = [(_INPBSetNumericSettingIntentResponse *)self minValue];
    minValue3 = [equalCopy minValue];
    v21 = [minValue2 isEqual:minValue3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  errorDetail = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
  errorDetail2 = [equalCopy oldValue];
  if ((errorDetail != 0) == (errorDetail2 == 0))
  {
    goto LABEL_26;
  }

  oldValue = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
  if (oldValue)
  {
    v23 = oldValue;
    oldValue2 = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
    oldValue3 = [equalCopy oldValue];
    v26 = [oldValue2 isEqual:oldValue3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  errorDetail = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
  errorDetail2 = [equalCopy updatedValue];
  if ((errorDetail != 0) != (errorDetail2 == 0))
  {
    updatedValue = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
    if (!updatedValue)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = updatedValue;
    updatedValue2 = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
    updatedValue3 = [equalCopy updatedValue];
    v31 = [updatedValue2 isEqual:updatedValue3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetNumericSettingIntentResponse allocWithZone:](_INPBSetNumericSettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:zone];
  [(_INPBSetNumericSettingIntentResponse *)v5 setErrorDetail:v6];

  v7 = [(_INPBNumericSettingValue *)self->_maxValue copyWithZone:zone];
  [(_INPBSetNumericSettingIntentResponse *)v5 setMaxValue:v7];

  v8 = [(_INPBNumericSettingValue *)self->_minValue copyWithZone:zone];
  [(_INPBSetNumericSettingIntentResponse *)v5 setMinValue:v8];

  v9 = [(_INPBNumericSettingValue *)self->_oldValue copyWithZone:zone];
  [(_INPBSetNumericSettingIntentResponse *)v5 setOldValue:v9];

  v10 = [(_INPBNumericSettingValue *)self->_updatedValue copyWithZone:zone];
  [(_INPBSetNumericSettingIntentResponse *)v5 setUpdatedValue:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetNumericSettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetNumericSettingIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetNumericSettingIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  errorDetail = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];

  if (errorDetail)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  maxValue = [(_INPBSetNumericSettingIntentResponse *)self maxValue];

  if (maxValue)
  {
    maxValue2 = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
    PBDataWriterWriteSubmessage();
  }

  minValue = [(_INPBSetNumericSettingIntentResponse *)self minValue];

  if (minValue)
  {
    minValue2 = [(_INPBSetNumericSettingIntentResponse *)self minValue];
    PBDataWriterWriteSubmessage();
  }

  oldValue = [(_INPBSetNumericSettingIntentResponse *)self oldValue];

  if (oldValue)
  {
    oldValue2 = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
    PBDataWriterWriteSubmessage();
  }

  updatedValue = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];

  v13 = toCopy;
  if (updatedValue)
  {
    updatedValue2 = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)setErrorDetail:(id)detail
{
  v4 = [detail copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end