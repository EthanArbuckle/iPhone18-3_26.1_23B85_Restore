@interface _INPBQueryHealthSampleIntent
- (BOOL)isEqual:(id)equal;
- (_INPBQueryHealthSampleIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsExpectedResultType:(id)type;
- (int)StringAsObjectType:(id)type;
- (int)StringAsQuestionType:(id)type;
- (unint64_t)hash;
- (void)addRecordDate:(id)date;
- (void)addThresholdValues:(id)values;
- (void)encodeWithCoder:(id)coder;
- (void)setExpectedResultType:(int)type;
- (void)setHasObjectType:(BOOL)type;
- (void)setHasQuestionType:(BOOL)type;
- (void)setObjectType:(int)type;
- (void)setQuestionType:(int)type;
- (void)setRecordDates:(id)dates;
- (void)setThresholdValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _INPBQueryHealthSampleIntent

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBQueryHealthSampleIntent *)self hasExpectedResultType])
  {
    expectedResultType = [(_INPBQueryHealthSampleIntent *)self expectedResultType];
    if (expectedResultType >= 0xA)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", expectedResultType];
    }

    else
    {
      v5 = off_1E727EAA0[expectedResultType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"expectedResultType"];
  }

  intentMetadata = [(_INPBQueryHealthSampleIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBQueryHealthSampleIntent *)self hasObjectType])
  {
    objectType = [(_INPBQueryHealthSampleIntent *)self objectType];
    if (objectType >= 0x4B)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", objectType];
    }

    else
    {
      v9 = off_1E727EAF0[objectType];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"objectType"];
  }

  if ([(_INPBQueryHealthSampleIntent *)self hasQuestionType])
  {
    questionType = [(_INPBQueryHealthSampleIntent *)self questionType];
    if (questionType >= 8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", questionType];
    }

    else
    {
      v11 = off_1E727ED48[questionType];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"questionType"];
  }

  if ([(NSArray *)self->_recordDates count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = self->_recordDates;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"recordDate"];
  }

  if ([(NSArray *)self->_thresholdValues count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = self->_thresholdValues;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"thresholdValues"];
  }

  unit = [(_INPBQueryHealthSampleIntent *)self unit];
  dictionaryRepresentation4 = [unit dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"unit"];

  v28 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBQueryHealthSampleIntent *)self hasExpectedResultType])
  {
    v3 = 2654435761 * self->_expectedResultType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBQueryHealthSampleIntent *)self hasObjectType])
  {
    v5 = 2654435761 * self->_objectType;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBQueryHealthSampleIntent *)self hasQuestionType])
  {
    v6 = 2654435761 * self->_questionType;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSArray *)self->_recordDates hash];
  v8 = [(NSArray *)self->_thresholdValues hash];
  return v7 ^ v8 ^ [(_INPBWellnessUnitType *)self->_unit hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  hasExpectedResultType = [(_INPBQueryHealthSampleIntent *)self hasExpectedResultType];
  if (hasExpectedResultType != [equalCopy hasExpectedResultType])
  {
    goto LABEL_34;
  }

  if ([(_INPBQueryHealthSampleIntent *)self hasExpectedResultType])
  {
    if ([equalCopy hasExpectedResultType])
    {
      expectedResultType = self->_expectedResultType;
      if (expectedResultType != [equalCopy expectedResultType])
      {
        goto LABEL_34;
      }
    }
  }

  intentMetadata = [(_INPBQueryHealthSampleIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_33;
  }

  intentMetadata3 = [(_INPBQueryHealthSampleIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBQueryHealthSampleIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v13 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v13)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  hasObjectType = [(_INPBQueryHealthSampleIntent *)self hasObjectType];
  if (hasObjectType != [equalCopy hasObjectType])
  {
    goto LABEL_34;
  }

  if ([(_INPBQueryHealthSampleIntent *)self hasObjectType])
  {
    if ([equalCopy hasObjectType])
    {
      objectType = self->_objectType;
      if (objectType != [equalCopy objectType])
      {
        goto LABEL_34;
      }
    }
  }

  hasQuestionType = [(_INPBQueryHealthSampleIntent *)self hasQuestionType];
  if (hasQuestionType != [equalCopy hasQuestionType])
  {
    goto LABEL_34;
  }

  if ([(_INPBQueryHealthSampleIntent *)self hasQuestionType])
  {
    if ([equalCopy hasQuestionType])
    {
      questionType = self->_questionType;
      if (questionType != [equalCopy questionType])
      {
        goto LABEL_34;
      }
    }
  }

  intentMetadata = [(_INPBQueryHealthSampleIntent *)self recordDates];
  intentMetadata2 = [equalCopy recordDates];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_33;
  }

  recordDates = [(_INPBQueryHealthSampleIntent *)self recordDates];
  if (recordDates)
  {
    v19 = recordDates;
    recordDates2 = [(_INPBQueryHealthSampleIntent *)self recordDates];
    recordDates3 = [equalCopy recordDates];
    v22 = [recordDates2 isEqual:recordDates3];

    if (!v22)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBQueryHealthSampleIntent *)self thresholdValues];
  intentMetadata2 = [equalCopy thresholdValues];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_33;
  }

  thresholdValues = [(_INPBQueryHealthSampleIntent *)self thresholdValues];
  if (thresholdValues)
  {
    v24 = thresholdValues;
    thresholdValues2 = [(_INPBQueryHealthSampleIntent *)self thresholdValues];
    thresholdValues3 = [equalCopy thresholdValues];
    v27 = [thresholdValues2 isEqual:thresholdValues3];

    if (!v27)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBQueryHealthSampleIntent *)self unit];
  intentMetadata2 = [equalCopy unit];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    unit = [(_INPBQueryHealthSampleIntent *)self unit];
    if (!unit)
    {

LABEL_37:
      v33 = 1;
      goto LABEL_35;
    }

    v29 = unit;
    unit2 = [(_INPBQueryHealthSampleIntent *)self unit];
    unit3 = [equalCopy unit];
    v32 = [unit2 isEqual:unit3];

    if (v32)
    {
      goto LABEL_37;
    }
  }

  else
  {
LABEL_33:
  }

LABEL_34:
  v33 = 0;
LABEL_35:

  return v33;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBQueryHealthSampleIntent allocWithZone:](_INPBQueryHealthSampleIntent init];
  if ([(_INPBQueryHealthSampleIntent *)self hasExpectedResultType])
  {
    [(_INPBQueryHealthSampleIntent *)v5 setExpectedResultType:[(_INPBQueryHealthSampleIntent *)self expectedResultType]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBQueryHealthSampleIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBQueryHealthSampleIntent *)self hasObjectType])
  {
    [(_INPBQueryHealthSampleIntent *)v5 setObjectType:[(_INPBQueryHealthSampleIntent *)self objectType]];
  }

  if ([(_INPBQueryHealthSampleIntent *)self hasQuestionType])
  {
    [(_INPBQueryHealthSampleIntent *)v5 setQuestionType:[(_INPBQueryHealthSampleIntent *)self questionType]];
  }

  v7 = [(NSArray *)self->_recordDates copyWithZone:zone];
  [(_INPBQueryHealthSampleIntent *)v5 setRecordDates:v7];

  v8 = [(NSArray *)self->_thresholdValues copyWithZone:zone];
  [(_INPBQueryHealthSampleIntent *)v5 setThresholdValues:v8];

  v9 = [(_INPBWellnessUnitType *)self->_unit copyWithZone:zone];
  [(_INPBQueryHealthSampleIntent *)v5 setUnit:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBQueryHealthSampleIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBQueryHealthSampleIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBQueryHealthSampleIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBQueryHealthSampleIntent *)self hasExpectedResultType])
  {
    expectedResultType = self->_expectedResultType;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBQueryHealthSampleIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBQueryHealthSampleIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBQueryHealthSampleIntent *)self hasObjectType])
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBQueryHealthSampleIntent *)self hasQuestionType])
  {
    questionType = self->_questionType;
    PBDataWriterWriteInt32Field();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_recordDates;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = self->_thresholdValues;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  unit = [(_INPBQueryHealthSampleIntent *)self unit];

  if (unit)
  {
    unit2 = [(_INPBQueryHealthSampleIntent *)self unit];
    PBDataWriterWriteSubmessage();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addThresholdValues:(id)values
{
  valuesCopy = values;
  thresholdValues = self->_thresholdValues;
  v8 = valuesCopy;
  if (!thresholdValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_thresholdValues;
    self->_thresholdValues = array;

    valuesCopy = v8;
    thresholdValues = self->_thresholdValues;
  }

  [(NSArray *)thresholdValues addObject:valuesCopy];
}

- (void)setThresholdValues:(id)values
{
  v4 = [values mutableCopy];
  thresholdValues = self->_thresholdValues;
  self->_thresholdValues = v4;

  MEMORY[0x1EEE66BB8](v4, thresholdValues);
}

- (void)addRecordDate:(id)date
{
  dateCopy = date;
  recordDates = self->_recordDates;
  v8 = dateCopy;
  if (!recordDates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_recordDates;
    self->_recordDates = array;

    dateCopy = v8;
    recordDates = self->_recordDates;
  }

  [(NSArray *)recordDates addObject:dateCopy];
}

- (void)setRecordDates:(id)dates
{
  v4 = [dates mutableCopy];
  recordDates = self->_recordDates;
  self->_recordDates = v4;

  MEMORY[0x1EEE66BB8](v4, recordDates);
}

- (int)StringAsQuestionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_QUESTION_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"VERIFICATION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"QUANTIFICATION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"TEMPORAL"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"COMPARISON"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"QUALITY"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"SPEED_RATE"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"INSTANCE_COUNT"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasQuestionType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setQuestionType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_questionType = type;
  }
}

- (int)StringAsObjectType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BASAL_BODY_TEMPERATURE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BIOTIN"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"BLOOD_ALCOHOL_CONTENT"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"BLOOD_GLUCOSE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"BLOOD_PRESSURE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"BLOOD_PRESSURE_DIASTOLIC"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"BLOOD_PRESSURE_SYSTOLIC"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"BLOOD_TYPE"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"BODY_FAT_PERCENTAGE"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"BODY_MASS_INDEX"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"BODY_TEMPERATURE"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"CAFFEINE"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"CALCIUM"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"CARBOHYDRATES"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"CHLORIDE"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"CHROMIUM"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"COPPER"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"DIETARY_CHOLESTEROL"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"DIETARY_SUGAR"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"ELECTRODERMAL_ACTIVITY"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"ENERGY_CONSUMED"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"FAT_MONOUN_SATURATED"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"FAT_POLYUN_SATURATED"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"FAT_SATURATED"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"FAT_TOTAL"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"FIBER"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"FOLATE"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"FORCED_EXPIRATORY_VOLUME"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"FORCED_VITAL_CAPACITY"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"HEART_RATE"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"HEART_RATE_VARIABILITY_SDNN"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"HEIGHT"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"INHALER_USAGE"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"INSULIN_DELIVERY"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"IODINE"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"IRON"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"LEAN_BODY_MASS"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"MAGNESIUM"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"MANGANESE"])
  {
    v4 = 39;
  }

  else if ([typeCopy isEqualToString:@"MOLYBDENUM"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"NIACIN"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"NUMBER_OF_TIMES_FALLEN"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"OXYGEN_SATURATION"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"PANTOTHENIC_ACID"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"PEAK_EXPIRATORY_FLOW_RATE"])
  {
    v4 = 45;
  }

  else if ([typeCopy isEqualToString:@"PERIPHERAL_PERFUSION_INDEX"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"PHOSPHORUS"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"POTASSIUM"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"PROTEIN"])
  {
    v4 = 49;
  }

  else if ([typeCopy isEqualToString:@"RESPIRATORY_RATE"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"RESTINGHEART_RATE"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"RIBOFLAVIN"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"SELENIUM"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"SODIUM"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"THIAMIN"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"UV_INDEX"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"VITAMIN_A"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"VITAMIN_B12"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"VITAMIN_B6"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"VITAMIN_C"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"VITAMIN_D"])
  {
    v4 = 61;
  }

  else if ([typeCopy isEqualToString:@"VITAMIN_E"])
  {
    v4 = 62;
  }

  else if ([typeCopy isEqualToString:@"VITAMIN_K"])
  {
    v4 = 63;
  }

  else if ([typeCopy isEqualToString:@"WAIST_CIRCUMFERENCE"])
  {
    v4 = 64;
  }

  else if ([typeCopy isEqualToString:@"WALKING_HEART_RATE_AVERAGE"])
  {
    v4 = 65;
  }

  else if ([typeCopy isEqualToString:@"WATER"])
  {
    v4 = 66;
  }

  else if ([typeCopy isEqualToString:@"WEIGHT"])
  {
    v4 = 67;
  }

  else if ([typeCopy isEqualToString:@"ZINC"])
  {
    v4 = 68;
  }

  else if ([typeCopy isEqualToString:@"CERVICAL_MUCUS_QUALITY"])
  {
    v4 = 69;
  }

  else if ([typeCopy isEqualToString:@"OVULATION_TEST_RESULT"])
  {
    v4 = 70;
  }

  else if ([typeCopy isEqualToString:@"MENSTRUAL_FLOW"])
  {
    v4 = 71;
  }

  else if ([typeCopy isEqualToString:@"INTERMENSTRUAL_BLEEDING"])
  {
    v4 = 72;
  }

  else if ([typeCopy isEqualToString:@"SEXUAL_ACTIVITY"])
  {
    v4 = 73;
  }

  else if ([typeCopy isEqualToString:@"MINDFUL_SESSION"])
  {
    v4 = 74;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasObjectType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setObjectType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_objectType = type;
  }
}

- (int)StringAsExpectedResultType:(id)type
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

- (void)setExpectedResultType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_expectedResultType = type;
  }
}

@end