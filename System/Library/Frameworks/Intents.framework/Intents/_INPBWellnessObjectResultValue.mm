@interface _INPBWellnessObjectResultValue
- (BOOL)isEqual:(id)equal;
- (_INPBWellnessObjectResultValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsResultType:(id)type;
- (unint64_t)hash;
- (void)addValues:(id)values;
- (void)encodeWithCoder:(id)coder;
- (void)setResultType:(int)type;
- (void)setValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _INPBWellnessObjectResultValue

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  recordDate = [(_INPBWellnessObjectResultValue *)self recordDate];
  dictionaryRepresentation = [recordDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"recordDate"];

  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    resultType = [(_INPBWellnessObjectResultValue *)self resultType];
    if (resultType >= 0xA)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", resultType];
    }

    else
    {
      v7 = off_1E7283528[resultType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"resultType"];
  }

  unit = [(_INPBWellnessObjectResultValue *)self unit];
  dictionaryRepresentation2 = [unit dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"unit"];

  if ([(NSArray *)self->_values count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_values;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"values"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDateTimeRange *)self->_recordDate hash];
  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    v4 = 2654435761 * self->_resultType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(_INPBString *)self->_unit hash];
  return v5 ^ v6 ^ [(NSArray *)self->_values hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  recordDate = [(_INPBWellnessObjectResultValue *)self recordDate];
  recordDate2 = [equalCopy recordDate];
  if ((recordDate != 0) == (recordDate2 == 0))
  {
    goto LABEL_20;
  }

  recordDate3 = [(_INPBWellnessObjectResultValue *)self recordDate];
  if (recordDate3)
  {
    v8 = recordDate3;
    recordDate4 = [(_INPBWellnessObjectResultValue *)self recordDate];
    recordDate5 = [equalCopy recordDate];
    v11 = [recordDate4 isEqual:recordDate5];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasResultType = [(_INPBWellnessObjectResultValue *)self hasResultType];
  if (hasResultType != [equalCopy hasResultType])
  {
    goto LABEL_21;
  }

  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    if ([equalCopy hasResultType])
    {
      resultType = self->_resultType;
      if (resultType != [equalCopy resultType])
      {
        goto LABEL_21;
      }
    }
  }

  recordDate = [(_INPBWellnessObjectResultValue *)self unit];
  recordDate2 = [equalCopy unit];
  if ((recordDate != 0) == (recordDate2 == 0))
  {
    goto LABEL_20;
  }

  unit = [(_INPBWellnessObjectResultValue *)self unit];
  if (unit)
  {
    v15 = unit;
    unit2 = [(_INPBWellnessObjectResultValue *)self unit];
    unit3 = [equalCopy unit];
    v18 = [unit2 isEqual:unit3];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  recordDate = [(_INPBWellnessObjectResultValue *)self values];
  recordDate2 = [equalCopy values];
  if ((recordDate != 0) != (recordDate2 == 0))
  {
    values = [(_INPBWellnessObjectResultValue *)self values];
    if (!values)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = values;
    values2 = [(_INPBWellnessObjectResultValue *)self values];
    values3 = [equalCopy values];
    v23 = [values2 isEqual:values3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBWellnessObjectResultValue allocWithZone:](_INPBWellnessObjectResultValue init];
  v6 = [(_INPBDateTimeRange *)self->_recordDate copyWithZone:zone];
  [(_INPBWellnessObjectResultValue *)v5 setRecordDate:v6];

  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    [(_INPBWellnessObjectResultValue *)v5 setResultType:[(_INPBWellnessObjectResultValue *)self resultType]];
  }

  v7 = [(_INPBString *)self->_unit copyWithZone:zone];
  [(_INPBWellnessObjectResultValue *)v5 setUnit:v7];

  v8 = [(NSArray *)self->_values copyWithZone:zone];
  [(_INPBWellnessObjectResultValue *)v5 setValues:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWellnessObjectResultValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWellnessObjectResultValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWellnessObjectResultValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  recordDate = [(_INPBWellnessObjectResultValue *)self recordDate];

  if (recordDate)
  {
    recordDate2 = [(_INPBWellnessObjectResultValue *)self recordDate];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    resultType = self->_resultType;
    PBDataWriterWriteInt32Field();
  }

  unit = [(_INPBWellnessObjectResultValue *)self unit];

  if (unit)
  {
    unit2 = [(_INPBWellnessObjectResultValue *)self unit];
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_values;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addValues:(id)values
{
  valuesCopy = values;
  values = self->_values;
  v8 = valuesCopy;
  if (!values)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_values;
    self->_values = array;

    valuesCopy = v8;
    values = self->_values;
  }

  [(NSArray *)values addObject:valuesCopy];
}

- (void)setValues:(id)values
{
  v4 = [values mutableCopy];
  values = self->_values;
  self->_values = v4;

  MEMORY[0x1EEE66BB8](v4, values);
}

- (int)StringAsResultType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_RESULT_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"RAW"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"AVERAGE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MINIMUM"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"MAXIMUM"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"SUM"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"FIRST"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"LAST"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ABOVE"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"BELOW"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setResultType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_resultType = type;
  }
}

@end