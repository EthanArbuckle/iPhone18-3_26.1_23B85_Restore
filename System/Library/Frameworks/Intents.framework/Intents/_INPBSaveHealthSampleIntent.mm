@interface _INPBSaveHealthSampleIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSaveHealthSampleIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsObjectType:(id)a3;
- (unint64_t)hash;
- (void)addSampleMetadata:(id)a3;
- (void)addValues:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setObjectType:(int)a3;
- (void)setSampleMetadatas:(id)a3;
- (void)setValues:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSaveHealthSampleIntent

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    v6 = [(_INPBSaveHealthSampleIntent *)self objectType];
    if (v6 >= 0x4B)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7282C98[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"objectType"];
  }

  v8 = [(_INPBSaveHealthSampleIntent *)self recordDate];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"recordDate"];

  if ([(NSArray *)self->_sampleMetadatas count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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

          v16 = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"sampleMetadata"];
  }

  v17 = [(_INPBSaveHealthSampleIntent *)self unit];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"unit"];

  if ([(NSArray *)self->_values count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
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

          v25 = [*(*(&v28 + 1) + 8 * j) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"values"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v7 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v12 = [(_INPBSaveHealthSampleIntent *)self hasObjectType];
  if (v12 != [v4 hasObjectType])
  {
    goto LABEL_31;
  }

  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    if ([v4 hasObjectType])
    {
      objectType = self->_objectType;
      if (objectType != [v4 objectType])
      {
        goto LABEL_31;
      }
    }
  }

  v5 = [(_INPBSaveHealthSampleIntent *)self recordDate];
  v6 = [v4 recordDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v14 = [(_INPBSaveHealthSampleIntent *)self recordDate];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSaveHealthSampleIntent *)self recordDate];
    v17 = [v4 recordDate];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntent *)self sampleMetadatas];
  v6 = [v4 sampleMetadatas];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v19 = [(_INPBSaveHealthSampleIntent *)self sampleMetadatas];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSaveHealthSampleIntent *)self sampleMetadatas];
    v22 = [v4 sampleMetadatas];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntent *)self unit];
  v6 = [v4 unit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v24 = [(_INPBSaveHealthSampleIntent *)self unit];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBSaveHealthSampleIntent *)self unit];
    v27 = [v4 unit];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntent *)self values];
  v6 = [v4 values];
  if ((v5 != 0) != (v6 == 0))
  {
    v29 = [(_INPBSaveHealthSampleIntent *)self values];
    if (!v29)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = v29;
    v31 = [(_INPBSaveHealthSampleIntent *)self values];
    v32 = [v4 values];
    v33 = [v31 isEqual:v32];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSaveHealthSampleIntent allocWithZone:](_INPBSaveHealthSampleIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSaveHealthSampleIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    [(_INPBSaveHealthSampleIntent *)v5 setObjectType:[(_INPBSaveHealthSampleIntent *)self objectType]];
  }

  v7 = [(_INPBDateTimeRange *)self->_recordDate copyWithZone:a3];
  [(_INPBSaveHealthSampleIntent *)v5 setRecordDate:v7];

  v8 = [(NSArray *)self->_sampleMetadatas copyWithZone:a3];
  [(_INPBSaveHealthSampleIntent *)v5 setSampleMetadatas:v8];

  v9 = [(_INPBWellnessUnitType *)self->_unit copyWithZone:a3];
  [(_INPBSaveHealthSampleIntent *)v5 setUnit:v9];

  v10 = [(NSArray *)self->_values copyWithZone:a3];
  [(_INPBSaveHealthSampleIntent *)v5 setValues:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSaveHealthSampleIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSaveHealthSampleIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSaveHealthSampleIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBSaveHealthSampleIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSaveHealthSampleIntent *)self hasObjectType])
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_INPBSaveHealthSampleIntent *)self recordDate];

  if (v8)
  {
    v9 = [(_INPBSaveHealthSampleIntent *)self recordDate];
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

  v16 = [(_INPBSaveHealthSampleIntent *)self unit];

  if (v16)
  {
    v17 = [(_INPBSaveHealthSampleIntent *)self unit];
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

- (void)addSampleMetadata:(id)a3
{
  v4 = a3;
  sampleMetadatas = self->_sampleMetadatas;
  v8 = v4;
  if (!sampleMetadatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_sampleMetadatas;
    self->_sampleMetadatas = v6;

    v4 = v8;
    sampleMetadatas = self->_sampleMetadatas;
  }

  [(NSArray *)sampleMetadatas addObject:v4];
}

- (void)setSampleMetadatas:(id)a3
{
  v4 = [a3 mutableCopy];
  sampleMetadatas = self->_sampleMetadatas;
  self->_sampleMetadatas = v4;

  MEMORY[0x1EEE66BB8](v4, sampleMetadatas);
}

- (int)StringAsObjectType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BASAL_BODY_TEMPERATURE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"BIOTIN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BLOOD_ALCOHOL_CONTENT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"BLOOD_GLUCOSE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"BLOOD_PRESSURE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"BLOOD_PRESSURE_DIASTOLIC"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"BLOOD_PRESSURE_SYSTOLIC"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"BLOOD_TYPE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"BODY_FAT_PERCENTAGE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"BODY_MASS_INDEX"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BODY_TEMPERATURE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CAFFEINE"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CALCIUM"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"CARBOHYDRATES"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"CHLORIDE"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"CHROMIUM"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"COPPER"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"DIETARY_CHOLESTEROL"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"DIETARY_SUGAR"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"ELECTRODERMAL_ACTIVITY"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"ENERGY_CONSUMED"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"FAT_MONOUN_SATURATED"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"FAT_POLYUN_SATURATED"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"FAT_SATURATED"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"FAT_TOTAL"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"FIBER"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"FOLATE"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"FORCED_EXPIRATORY_VOLUME"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"FORCED_VITAL_CAPACITY"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"HEART_RATE"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"HEART_RATE_VARIABILITY_SDNN"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"HEIGHT"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"INHALER_USAGE"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"INSULIN_DELIVERY"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"IODINE"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"IRON"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"LEAN_BODY_MASS"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"MAGNESIUM"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"MANGANESE"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"MOLYBDENUM"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"NIACIN"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"NUMBER_OF_TIMES_FALLEN"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"OXYGEN_SATURATION"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"PANTOTHENIC_ACID"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"PEAK_EXPIRATORY_FLOW_RATE"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"PERIPHERAL_PERFUSION_INDEX"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"PHOSPHORUS"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"POTASSIUM"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"PROTEIN"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"RESPIRATORY_RATE"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"RESTINGHEART_RATE"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"RIBOFLAVIN"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"SELENIUM"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"SODIUM"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"THIAMIN"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"UV_INDEX"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"VITAMIN_A"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"VITAMIN_B12"])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:@"VITAMIN_B6"])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:@"VITAMIN_C"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"VITAMIN_D"])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:@"VITAMIN_E"])
  {
    v4 = 62;
  }

  else if ([v3 isEqualToString:@"VITAMIN_K"])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:@"WAIST_CIRCUMFERENCE"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"WALKING_HEART_RATE_AVERAGE"])
  {
    v4 = 65;
  }

  else if ([v3 isEqualToString:@"WATER"])
  {
    v4 = 66;
  }

  else if ([v3 isEqualToString:@"WEIGHT"])
  {
    v4 = 67;
  }

  else if ([v3 isEqualToString:@"ZINC"])
  {
    v4 = 68;
  }

  else if ([v3 isEqualToString:@"CERVICAL_MUCUS_QUALITY"])
  {
    v4 = 69;
  }

  else if ([v3 isEqualToString:@"OVULATION_TEST_RESULT"])
  {
    v4 = 70;
  }

  else if ([v3 isEqualToString:@"MENSTRUAL_FLOW"])
  {
    v4 = 71;
  }

  else if ([v3 isEqualToString:@"INTERMENSTRUAL_BLEEDING"])
  {
    v4 = 72;
  }

  else if ([v3 isEqualToString:@"SEXUAL_ACTIVITY"])
  {
    v4 = 73;
  }

  else if ([v3 isEqualToString:@"MINDFUL_SESSION"])
  {
    v4 = 74;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setObjectType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_objectType = a3;
  }
}

@end