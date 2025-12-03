@interface _INPBGetSettingResponseData
- (BOOL)isEqual:(id)equal;
- (_INPBGetSettingResponseData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsBinaryValue:(id)value;
- (int)StringAsBoundedValue:(id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBinaryValue:(int)value;
- (void)setBoundedValue:(int)value;
- (void)setHasBoundedValue:(BOOL)value;
- (void)setLabeledValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetSettingResponseData

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBGetSettingResponseData *)self hasBinaryValue])
  {
    binaryValue = [(_INPBGetSettingResponseData *)self binaryValue];
    if ((binaryValue - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", binaryValue];
    }

    else
    {
      v5 = *(&off_1E7287C58 + (binaryValue - 1));
    }

    [dictionary setObject:v5 forKeyedSubscript:@"binaryValue"];
  }

  if ([(_INPBGetSettingResponseData *)self hasBoundedValue])
  {
    boundedValue = [(_INPBGetSettingResponseData *)self boundedValue];
    if ((boundedValue - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", boundedValue];
    }

    else
    {
      v7 = *(&off_1E7287C70 + (boundedValue - 1));
    }

    [dictionary setObject:v7 forKeyedSubscript:@"boundedValue"];
  }

  if (self->_labeledValue)
  {
    labeledValue = [(_INPBGetSettingResponseData *)self labeledValue];
    v9 = [labeledValue copy];
    [dictionary setObject:v9 forKeyedSubscript:@"labeledValue"];
  }

  numericValue = [(_INPBGetSettingResponseData *)self numericValue];
  dictionaryRepresentation = [numericValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"numericValue"];

  settingMetadata = [(_INPBGetSettingResponseData *)self settingMetadata];
  dictionaryRepresentation2 = [settingMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"settingMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBGetSettingResponseData *)self hasBinaryValue])
  {
    v3 = 2654435761 * self->_binaryValue;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBGetSettingResponseData *)self hasBoundedValue])
  {
    v4 = 2654435761 * self->_boundedValue;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3 ^ [(NSString *)self->_labeledValue hash];
  v6 = [(_INPBNumericSettingValue *)self->_numericValue hash];
  return v5 ^ v6 ^ [(_INPBSettingMetadata *)self->_settingMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  hasBinaryValue = [(_INPBGetSettingResponseData *)self hasBinaryValue];
  if (hasBinaryValue != [equalCopy hasBinaryValue])
  {
    goto LABEL_25;
  }

  if ([(_INPBGetSettingResponseData *)self hasBinaryValue])
  {
    if ([equalCopy hasBinaryValue])
    {
      binaryValue = self->_binaryValue;
      if (binaryValue != [equalCopy binaryValue])
      {
        goto LABEL_25;
      }
    }
  }

  hasBoundedValue = [(_INPBGetSettingResponseData *)self hasBoundedValue];
  if (hasBoundedValue != [equalCopy hasBoundedValue])
  {
    goto LABEL_25;
  }

  if ([(_INPBGetSettingResponseData *)self hasBoundedValue])
  {
    if ([equalCopy hasBoundedValue])
    {
      boundedValue = self->_boundedValue;
      if (boundedValue != [equalCopy boundedValue])
      {
        goto LABEL_25;
      }
    }
  }

  labeledValue = [(_INPBGetSettingResponseData *)self labeledValue];
  labeledValue2 = [equalCopy labeledValue];
  if ((labeledValue != 0) == (labeledValue2 == 0))
  {
    goto LABEL_24;
  }

  labeledValue3 = [(_INPBGetSettingResponseData *)self labeledValue];
  if (labeledValue3)
  {
    v12 = labeledValue3;
    labeledValue4 = [(_INPBGetSettingResponseData *)self labeledValue];
    labeledValue5 = [equalCopy labeledValue];
    v15 = [labeledValue4 isEqual:labeledValue5];

    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  labeledValue = [(_INPBGetSettingResponseData *)self numericValue];
  labeledValue2 = [equalCopy numericValue];
  if ((labeledValue != 0) == (labeledValue2 == 0))
  {
    goto LABEL_24;
  }

  numericValue = [(_INPBGetSettingResponseData *)self numericValue];
  if (numericValue)
  {
    v17 = numericValue;
    numericValue2 = [(_INPBGetSettingResponseData *)self numericValue];
    numericValue3 = [equalCopy numericValue];
    v20 = [numericValue2 isEqual:numericValue3];

    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  labeledValue = [(_INPBGetSettingResponseData *)self settingMetadata];
  labeledValue2 = [equalCopy settingMetadata];
  if ((labeledValue != 0) != (labeledValue2 == 0))
  {
    settingMetadata = [(_INPBGetSettingResponseData *)self settingMetadata];
    if (!settingMetadata)
    {

LABEL_28:
      v26 = 1;
      goto LABEL_26;
    }

    v22 = settingMetadata;
    settingMetadata2 = [(_INPBGetSettingResponseData *)self settingMetadata];
    settingMetadata3 = [equalCopy settingMetadata];
    v25 = [settingMetadata2 isEqual:settingMetadata3];

    if (v25)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v26 = 0;
LABEL_26:

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetSettingResponseData allocWithZone:](_INPBGetSettingResponseData init];
  if ([(_INPBGetSettingResponseData *)self hasBinaryValue])
  {
    [(_INPBGetSettingResponseData *)v5 setBinaryValue:[(_INPBGetSettingResponseData *)self binaryValue]];
  }

  if ([(_INPBGetSettingResponseData *)self hasBoundedValue])
  {
    [(_INPBGetSettingResponseData *)v5 setBoundedValue:[(_INPBGetSettingResponseData *)self boundedValue]];
  }

  v6 = [(NSString *)self->_labeledValue copyWithZone:zone];
  [(_INPBGetSettingResponseData *)v5 setLabeledValue:v6];

  v7 = [(_INPBNumericSettingValue *)self->_numericValue copyWithZone:zone];
  [(_INPBGetSettingResponseData *)v5 setNumericValue:v7];

  v8 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:zone];
  [(_INPBGetSettingResponseData *)v5 setSettingMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetSettingResponseData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetSettingResponseData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetSettingResponseData *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBGetSettingResponseData *)self hasBinaryValue])
  {
    binaryValue = self->_binaryValue;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBGetSettingResponseData *)self hasBoundedValue])
  {
    boundedValue = self->_boundedValue;
    PBDataWriterWriteInt32Field();
  }

  labeledValue = [(_INPBGetSettingResponseData *)self labeledValue];

  if (labeledValue)
  {
    labeledValue = self->_labeledValue;
    PBDataWriterWriteStringField();
  }

  numericValue = [(_INPBGetSettingResponseData *)self numericValue];

  if (numericValue)
  {
    numericValue2 = [(_INPBGetSettingResponseData *)self numericValue];
    PBDataWriterWriteSubmessage();
  }

  settingMetadata = [(_INPBGetSettingResponseData *)self settingMetadata];

  v11 = toCopy;
  if (settingMetadata)
  {
    settingMetadata2 = [(_INPBGetSettingResponseData *)self settingMetadata];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setLabeledValue:(id)value
{
  v4 = [value copy];
  labeledValue = self->_labeledValue;
  self->_labeledValue = v4;

  MEMORY[0x1EEE66BB8](v4, labeledValue);
}

- (int)StringAsBoundedValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"MIN"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"MEDIAN"])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"MAX"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasBoundedValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setBoundedValue:(int)value
{
  has = self->_has;
  if (value == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_boundedValue = value;
  }
}

- (int)StringAsBinaryValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setBinaryValue:(int)value
{
  has = self->_has;
  if (value == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_binaryValue = value;
  }
}

@end