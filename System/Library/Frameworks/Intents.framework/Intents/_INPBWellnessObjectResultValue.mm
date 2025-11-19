@interface _INPBWellnessObjectResultValue
- (BOOL)isEqual:(id)a3;
- (_INPBWellnessObjectResultValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsResultType:(id)a3;
- (unint64_t)hash;
- (void)addValues:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setResultType:(int)a3;
- (void)setValues:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBWellnessObjectResultValue

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBWellnessObjectResultValue *)self recordDate];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"recordDate"];

  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    v6 = [(_INPBWellnessObjectResultValue *)self resultType];
    if (v6 >= 0xA)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7283528[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"resultType"];
  }

  v8 = [(_INPBWellnessObjectResultValue *)self unit];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"unit"];

  if ([(NSArray *)self->_values count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"values"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBWellnessObjectResultValue *)self recordDate];
  v6 = [v4 recordDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v7 = [(_INPBWellnessObjectResultValue *)self recordDate];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBWellnessObjectResultValue *)self recordDate];
    v10 = [v4 recordDate];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v12 = [(_INPBWellnessObjectResultValue *)self hasResultType];
  if (v12 != [v4 hasResultType])
  {
    goto LABEL_21;
  }

  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    if ([v4 hasResultType])
    {
      resultType = self->_resultType;
      if (resultType != [v4 resultType])
      {
        goto LABEL_21;
      }
    }
  }

  v5 = [(_INPBWellnessObjectResultValue *)self unit];
  v6 = [v4 unit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBWellnessObjectResultValue *)self unit];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBWellnessObjectResultValue *)self unit];
    v17 = [v4 unit];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v5 = [(_INPBWellnessObjectResultValue *)self values];
  v6 = [v4 values];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(_INPBWellnessObjectResultValue *)self values];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBWellnessObjectResultValue *)self values];
    v22 = [v4 values];
    v23 = [v21 isEqual:v22];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBWellnessObjectResultValue allocWithZone:](_INPBWellnessObjectResultValue init];
  v6 = [(_INPBDateTimeRange *)self->_recordDate copyWithZone:a3];
  [(_INPBWellnessObjectResultValue *)v5 setRecordDate:v6];

  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    [(_INPBWellnessObjectResultValue *)v5 setResultType:[(_INPBWellnessObjectResultValue *)self resultType]];
  }

  v7 = [(_INPBString *)self->_unit copyWithZone:a3];
  [(_INPBWellnessObjectResultValue *)v5 setUnit:v7];

  v8 = [(NSArray *)self->_values copyWithZone:a3];
  [(_INPBWellnessObjectResultValue *)v5 setValues:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBWellnessObjectResultValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBWellnessObjectResultValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBWellnessObjectResultValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBWellnessObjectResultValue *)self recordDate];

  if (v5)
  {
    v6 = [(_INPBWellnessObjectResultValue *)self recordDate];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBWellnessObjectResultValue *)self hasResultType])
  {
    resultType = self->_resultType;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_INPBWellnessObjectResultValue *)self unit];

  if (v8)
  {
    v9 = [(_INPBWellnessObjectResultValue *)self unit];
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

- (void)addValues:(id)a3
{
  v4 = a3;
  values = self->_values;
  v8 = v4;
  if (!values)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_values;
    self->_values = v6;

    v4 = v8;
    values = self->_values;
  }

  [(NSArray *)values addObject:v4];
}

- (void)setValues:(id)a3
{
  v4 = [a3 mutableCopy];
  values = self->_values;
  self->_values = v4;

  MEMORY[0x1EEE66BB8](v4, values);
}

- (int)StringAsResultType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_RESULT_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RAW"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AVERAGE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MINIMUM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MAXIMUM"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SUM"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FIRST"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LAST"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ABOVE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"BELOW"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setResultType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_resultType = a3;
  }
}

@end