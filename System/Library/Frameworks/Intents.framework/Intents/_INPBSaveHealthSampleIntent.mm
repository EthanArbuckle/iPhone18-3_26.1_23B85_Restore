@interface _INPBSaveHealthSampleIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSaveHealthSampleIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsObjectType:(id)type;
- (unint64_t)hash;
- (void)addSampleMetadata:(id)metadata;
- (void)addValues:(id)values;
- (void)encodeWithCoder:(id)coder;
- (void)setObjectType:(int)type;
- (void)setSampleMetadatas:(id)metadatas;
- (void)setValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _INPBSaveHealthSampleIntent

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    objectType = [(_INPBSaveHealthSampleIntent *)self objectType];
    if (objectType >= 0x4B)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", objectType];
    }

    else
    {
      v7 = off_1E7282C98[objectType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"objectType"];
  }

  recordDate = [(_INPBSaveHealthSampleIntent *)self recordDate];
  dictionaryRepresentation2 = [recordDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"recordDate"];

  if ([(NSArray *)self->_sampleMetadatas count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = self->_sampleMetadatas;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"sampleMetadata"];
  }

  unit = [(_INPBSaveHealthSampleIntent *)self unit];
  dictionaryRepresentation4 = [unit dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"unit"];

  if ([(NSArray *)self->_values count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = self->_values;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation5 = [*(*(&v28 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation5];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"values"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    v4 = 2654435761 * self->_objectType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(_INPBDateTimeRange *)self->_recordDate hash];
  v7 = v5 ^ v6 ^ [(NSArray *)self->_sampleMetadatas hash];
  v8 = [(_INPBWellnessUnitType *)self->_unit hash];
  return v7 ^ v8 ^ [(NSArray *)self->_values hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  intentMetadata = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_30;
  }

  intentMetadata3 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  hasObjectType = [(_INPBSaveHealthSampleIntent *)self hasObjectType];
  if (hasObjectType != [equalCopy hasObjectType])
  {
    goto LABEL_31;
  }

  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    if ([equalCopy hasObjectType])
    {
      objectType = self->_objectType;
      if (objectType != [equalCopy objectType])
      {
        goto LABEL_31;
      }
    }
  }

  intentMetadata = [(_INPBSaveHealthSampleIntent *)self recordDate];
  intentMetadata2 = [equalCopy recordDate];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_30;
  }

  recordDate = [(_INPBSaveHealthSampleIntent *)self recordDate];
  if (recordDate)
  {
    v15 = recordDate;
    recordDate2 = [(_INPBSaveHealthSampleIntent *)self recordDate];
    recordDate3 = [equalCopy recordDate];
    v18 = [recordDate2 isEqual:recordDate3];

    if (!v18)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSaveHealthSampleIntent *)self sampleMetadatas];
  intentMetadata2 = [equalCopy sampleMetadatas];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_30;
  }

  sampleMetadatas = [(_INPBSaveHealthSampleIntent *)self sampleMetadatas];
  if (sampleMetadatas)
  {
    v20 = sampleMetadatas;
    sampleMetadatas2 = [(_INPBSaveHealthSampleIntent *)self sampleMetadatas];
    sampleMetadatas3 = [equalCopy sampleMetadatas];
    v23 = [sampleMetadatas2 isEqual:sampleMetadatas3];

    if (!v23)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSaveHealthSampleIntent *)self unit];
  intentMetadata2 = [equalCopy unit];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_30;
  }

  unit = [(_INPBSaveHealthSampleIntent *)self unit];
  if (unit)
  {
    v25 = unit;
    unit2 = [(_INPBSaveHealthSampleIntent *)self unit];
    unit3 = [equalCopy unit];
    v28 = [unit2 isEqual:unit3];

    if (!v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSaveHealthSampleIntent *)self values];
  intentMetadata2 = [equalCopy values];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    values = [(_INPBSaveHealthSampleIntent *)self values];
    if (!values)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = values;
    values2 = [(_INPBSaveHealthSampleIntent *)self values];
    values3 = [equalCopy values];
    v33 = [values2 isEqual:values3];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSaveHealthSampleIntent allocWithZone:](_INPBSaveHealthSampleIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSaveHealthSampleIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    [(_INPBSaveHealthSampleIntent *)v5 setObjectType:[(_INPBSaveHealthSampleIntent *)self objectType]];
  }

  v7 = [(_INPBDateTimeRange *)self->_recordDate copyWithZone:zone];
  [(_INPBSaveHealthSampleIntent *)v5 setRecordDate:v7];

  v8 = [(NSArray *)self->_sampleMetadatas copyWithZone:zone];
  [(_INPBSaveHealthSampleIntent *)v5 setSampleMetadatas:v8];

  v9 = [(_INPBWellnessUnitType *)self->_unit copyWithZone:zone];
  [(_INPBSaveHealthSampleIntent *)v5 setUnit:v9];

  v10 = [(NSArray *)self->_values copyWithZone:zone];
  [(_INPBSaveHealthSampleIntent *)v5 setValues:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSaveHealthSampleIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSaveHealthSampleIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSaveHealthSampleIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  intentMetadata = [(_INPBSaveHealthSampleIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt32Field();
  }

  recordDate = [(_INPBSaveHealthSampleIntent *)self recordDate];

  if (recordDate)
  {
    recordDate2 = [(_INPBSaveHealthSampleIntent *)self recordDate];
    PBDataWriterWriteSubmessage();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_sampleMetadatas;
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

  unit = [(_INPBSaveHealthSampleIntent *)self unit];

  if (unit)
  {
    unit2 = [(_INPBSaveHealthSampleIntent *)self unit];
    PBDataWriterWriteSubmessage();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_values;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
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

- (void)addSampleMetadata:(id)metadata
{
  metadataCopy = metadata;
  sampleMetadatas = self->_sampleMetadatas;
  v8 = metadataCopy;
  if (!sampleMetadatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sampleMetadatas;
    self->_sampleMetadatas = array;

    metadataCopy = v8;
    sampleMetadatas = self->_sampleMetadatas;
  }

  [(NSArray *)sampleMetadatas addObject:metadataCopy];
}

- (void)setSampleMetadatas:(id)metadatas
{
  v4 = [metadatas mutableCopy];
  sampleMetadatas = self->_sampleMetadatas;
  self->_sampleMetadatas = v4;

  MEMORY[0x1EEE66BB8](v4, sampleMetadatas);
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

- (void)setObjectType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_objectType = type;
  }
}

@end