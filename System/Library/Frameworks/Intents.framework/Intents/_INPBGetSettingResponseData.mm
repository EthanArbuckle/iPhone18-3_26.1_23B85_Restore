@interface _INPBGetSettingResponseData
- (BOOL)isEqual:(id)a3;
- (_INPBGetSettingResponseData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsBinaryValue:(id)a3;
- (int)StringAsBoundedValue:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setBinaryValue:(int)a3;
- (void)setBoundedValue:(int)a3;
- (void)setHasBoundedValue:(BOOL)a3;
- (void)setLabeledValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetSettingResponseData

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBGetSettingResponseData *)self hasBinaryValue])
  {
    v4 = [(_INPBGetSettingResponseData *)self binaryValue];
    if ((v4 - 1) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = *(&off_1E7287C58 + (v4 - 1));
    }

    [v3 setObject:v5 forKeyedSubscript:@"binaryValue"];
  }

  if ([(_INPBGetSettingResponseData *)self hasBoundedValue])
  {
    v6 = [(_INPBGetSettingResponseData *)self boundedValue];
    if ((v6 - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_1E7287C70 + (v6 - 1));
    }

    [v3 setObject:v7 forKeyedSubscript:@"boundedValue"];
  }

  if (self->_labeledValue)
  {
    v8 = [(_INPBGetSettingResponseData *)self labeledValue];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"labeledValue"];
  }

  v10 = [(_INPBGetSettingResponseData *)self numericValue];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"numericValue"];

  v12 = [(_INPBGetSettingResponseData *)self settingMetadata];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"settingMetadata"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(_INPBGetSettingResponseData *)self hasBinaryValue];
  if (v5 != [v4 hasBinaryValue])
  {
    goto LABEL_25;
  }

  if ([(_INPBGetSettingResponseData *)self hasBinaryValue])
  {
    if ([v4 hasBinaryValue])
    {
      binaryValue = self->_binaryValue;
      if (binaryValue != [v4 binaryValue])
      {
        goto LABEL_25;
      }
    }
  }

  v7 = [(_INPBGetSettingResponseData *)self hasBoundedValue];
  if (v7 != [v4 hasBoundedValue])
  {
    goto LABEL_25;
  }

  if ([(_INPBGetSettingResponseData *)self hasBoundedValue])
  {
    if ([v4 hasBoundedValue])
    {
      boundedValue = self->_boundedValue;
      if (boundedValue != [v4 boundedValue])
      {
        goto LABEL_25;
      }
    }
  }

  v9 = [(_INPBGetSettingResponseData *)self labeledValue];
  v10 = [v4 labeledValue];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_24;
  }

  v11 = [(_INPBGetSettingResponseData *)self labeledValue];
  if (v11)
  {
    v12 = v11;
    v13 = [(_INPBGetSettingResponseData *)self labeledValue];
    v14 = [v4 labeledValue];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v9 = [(_INPBGetSettingResponseData *)self numericValue];
  v10 = [v4 numericValue];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_24;
  }

  v16 = [(_INPBGetSettingResponseData *)self numericValue];
  if (v16)
  {
    v17 = v16;
    v18 = [(_INPBGetSettingResponseData *)self numericValue];
    v19 = [v4 numericValue];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v9 = [(_INPBGetSettingResponseData *)self settingMetadata];
  v10 = [v4 settingMetadata];
  if ((v9 != 0) != (v10 == 0))
  {
    v21 = [(_INPBGetSettingResponseData *)self settingMetadata];
    if (!v21)
    {

LABEL_28:
      v26 = 1;
      goto LABEL_26;
    }

    v22 = v21;
    v23 = [(_INPBGetSettingResponseData *)self settingMetadata];
    v24 = [v4 settingMetadata];
    v25 = [v23 isEqual:v24];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(NSString *)self->_labeledValue copyWithZone:a3];
  [(_INPBGetSettingResponseData *)v5 setLabeledValue:v6];

  v7 = [(_INPBNumericSettingValue *)self->_numericValue copyWithZone:a3];
  [(_INPBGetSettingResponseData *)v5 setNumericValue:v7];

  v8 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:a3];
  [(_INPBGetSettingResponseData *)v5 setSettingMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetSettingResponseData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetSettingResponseData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetSettingResponseData *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
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

  v6 = [(_INPBGetSettingResponseData *)self labeledValue];

  if (v6)
  {
    labeledValue = self->_labeledValue;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBGetSettingResponseData *)self numericValue];

  if (v8)
  {
    v9 = [(_INPBGetSettingResponseData *)self numericValue];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBGetSettingResponseData *)self settingMetadata];

  v11 = v13;
  if (v10)
  {
    v12 = [(_INPBGetSettingResponseData *)self settingMetadata];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)setLabeledValue:(id)a3
{
  v4 = [a3 copy];
  labeledValue = self->_labeledValue;
  self->_labeledValue = v4;

  MEMORY[0x1EEE66BB8](v4, labeledValue);
}

- (int)StringAsBoundedValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MIN"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MEDIAN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MAX"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasBoundedValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setBoundedValue:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_boundedValue = a3;
  }
}

- (int)StringAsBinaryValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setBinaryValue:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_binaryValue = a3;
  }
}

@end