@interface INWellnessObjectResultValue
- (BOOL)isEqual:(id)a3;
- (INWellnessObjectResultValue)initWithCoder:(id)a3;
- (INWellnessObjectResultValue)initWithRecordDate:(id)a3 unit:(id)a4 values:(id)a5 resultType:(int64_t)a6;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INWellnessObjectResultValue

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"recordDate";
  recordDate = self->_recordDate;
  v4 = recordDate;
  if (!recordDate)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"unit";
  unit = self->_unit;
  v6 = unit;
  if (!unit)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"values";
  values = self->_values;
  v8 = values;
  if (!values)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (values)
  {
    if (unit)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (recordDate)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!unit)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (recordDate)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWellnessObjectResultValue;
  v6 = [(INWellnessObjectResultValue *)&v11 description];
  v7 = [(INWellnessObjectResultValue *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  recordDate = self->_recordDate;
  v5 = a3;
  [v5 encodeObject:recordDate forKey:@"recordDate"];
  [v5 encodeObject:self->_unit forKey:@"unit"];
  [v5 encodeObject:self->_values forKey:@"values"];
  [v5 encodeInteger:self->_resultType forKey:@"resultType"];
}

- (INWellnessObjectResultValue)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unit"];
  v7 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"values"];

  v11 = [v4 decodeIntegerForKey:@"resultType"];
  v12 = [objc_alloc(objc_opt_class()) initWithRecordDate:v5 unit:v6 values:v10 resultType:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    recordDate = self->_recordDate;
    if (recordDate)
    {
      if (v5[1])
      {
        v7 = [(INDateComponentsRange *)recordDate startDateComponents];
        v8 = [v7 date];
        v9 = [v5[1] startDateComponents];
        v10 = [v9 date];
        v11 = [v8 isEqual:v10];

        if (!v11)
        {
          goto LABEL_11;
        }
      }
    }

    if ((unit = self->_unit) != 0 && ![(NSString *)unit isEqualToString:v5[2]]|| (values = self->_values) != 0 && ![(NSArray *)values isEqual:v5[3]])
    {
LABEL_11:
      v14 = 0;
    }

    else
    {
      v14 = self->_resultType == v5[4];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(INDateComponentsRange *)self->_recordDate hash];
  v4 = [(NSString *)self->_unit hash]^ v3;
  return v4 ^ [(NSArray *)self->_values hash]^ self->_resultType;
}

- (INWellnessObjectResultValue)initWithRecordDate:(id)a3 unit:(id)a4 values:(id)a5 resultType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = INWellnessObjectResultValue;
  v14 = [(INWellnessObjectResultValue *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_recordDate, a3);
    objc_storeStrong(&v15->_unit, a4);
    objc_storeStrong(&v15->_values, a5);
    v15->_resultType = a6;
  }

  return v15;
}

@end