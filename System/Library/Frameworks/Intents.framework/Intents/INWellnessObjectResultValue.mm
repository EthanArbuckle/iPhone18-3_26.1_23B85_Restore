@interface INWellnessObjectResultValue
- (BOOL)isEqual:(id)equal;
- (INWellnessObjectResultValue)initWithCoder:(id)coder;
- (INWellnessObjectResultValue)initWithRecordDate:(id)date unit:(id)unit values:(id)values resultType:(int64_t)type;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INWellnessObjectResultValue

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"recordDate";
  recordDate = self->_recordDate;
  null = recordDate;
  if (!recordDate)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"unit";
  unit = self->_unit;
  null2 = unit;
  if (!unit)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"values";
  values = self->_values;
  null3 = values;
  if (!values)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWellnessObjectResultValue;
  v6 = [(INWellnessObjectResultValue *)&v11 description];
  _dictionaryRepresentation = [(INWellnessObjectResultValue *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  recordDate = self->_recordDate;
  coderCopy = coder;
  [coderCopy encodeObject:recordDate forKey:@"recordDate"];
  [coderCopy encodeObject:self->_unit forKey:@"unit"];
  [coderCopy encodeObject:self->_values forKey:@"values"];
  [coderCopy encodeInteger:self->_resultType forKey:@"resultType"];
}

- (INWellnessObjectResultValue)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unit"];
  v7 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"values"];

  v11 = [coderCopy decodeIntegerForKey:@"resultType"];
  v12 = [objc_alloc(objc_opt_class()) initWithRecordDate:v5 unit:v6 values:v10 resultType:v11];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    recordDate = self->_recordDate;
    if (recordDate)
    {
      if (v5[1])
      {
        startDateComponents = [(INDateComponentsRange *)recordDate startDateComponents];
        date = [startDateComponents date];
        startDateComponents2 = [v5[1] startDateComponents];
        date2 = [startDateComponents2 date];
        v11 = [date isEqual:date2];

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

- (INWellnessObjectResultValue)initWithRecordDate:(id)date unit:(id)unit values:(id)values resultType:(int64_t)type
{
  dateCopy = date;
  unitCopy = unit;
  valuesCopy = values;
  v17.receiver = self;
  v17.super_class = INWellnessObjectResultValue;
  v14 = [(INWellnessObjectResultValue *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_recordDate, date);
    objc_storeStrong(&v15->_unit, unit);
    objc_storeStrong(&v15->_values, values);
    v15->_resultType = type;
  }

  return v15;
}

@end