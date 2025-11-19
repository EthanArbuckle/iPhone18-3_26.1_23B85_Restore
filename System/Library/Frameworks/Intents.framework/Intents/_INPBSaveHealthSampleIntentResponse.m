@interface _INPBSaveHealthSampleIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSaveHealthSampleIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSampleUuids:(id)a3;
- (void)addValuesDefaultUnit:(id)a3;
- (void)addValuesUserProvidedUnit:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSampleUuids:(id)a3;
- (void)setValuesDefaultUnits:(id)a3;
- (void)setValuesUserProvidedUnits:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSaveHealthSampleIntentResponse

- (id)dictionaryRepresentation
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"defaultUnit"];

  v6 = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"punchoutUrl"];

  v8 = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"recordDate"];

  if ([(NSArray *)self->_sampleUuids count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = self->_sampleUuids;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"sampleUuids"];
  }

  v17 = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"userProvidedUnit"];

  if ([(NSArray *)self->_valuesDefaultUnits count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = self->_valuesDefaultUnits;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"valuesDefaultUnit"];
  }

  if ([(NSArray *)self->_valuesUserProvidedUnits count])
  {
    v26 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = self->_valuesUserProvidedUnits;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v36;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v35 + 1) + 8 * k) dictionaryRepresentation];
          [v26 addObject:v32];
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v29);
    }

    [v3 setObject:v26 forKeyedSubscript:@"valuesUserProvidedUnit"];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_defaultUnit hash];
  v4 = [(_INPBString *)self->_punchoutUrl hash]^ v3;
  v5 = [(_INPBDateTimeRange *)self->_recordDate hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_sampleUuids hash];
  v7 = [(_INPBString *)self->_userProvidedUnit hash];
  v8 = v7 ^ [(NSArray *)self->_valuesDefaultUnits hash];
  return v6 ^ v8 ^ [(NSArray *)self->_valuesUserProvidedUnits hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
  v6 = [v4 defaultUnit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
    v10 = [v4 defaultUnit];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
  v6 = [v4 punchoutUrl];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
    v15 = [v4 punchoutUrl];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
  v6 = [v4 recordDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
    v20 = [v4 recordDate];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntentResponse *)self sampleUuids];
  v6 = [v4 sampleUuids];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(_INPBSaveHealthSampleIntentResponse *)self sampleUuids];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBSaveHealthSampleIntentResponse *)self sampleUuids];
    v25 = [v4 sampleUuids];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
  v6 = [v4 userProvidedUnit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
    v30 = [v4 userProvidedUnit];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntentResponse *)self valuesDefaultUnits];
  v6 = [v4 valuesDefaultUnits];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(_INPBSaveHealthSampleIntentResponse *)self valuesDefaultUnits];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBSaveHealthSampleIntentResponse *)self valuesDefaultUnits];
    v35 = [v4 valuesDefaultUnits];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveHealthSampleIntentResponse *)self valuesUserProvidedUnits];
  v6 = [v4 valuesUserProvidedUnits];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(_INPBSaveHealthSampleIntentResponse *)self valuesUserProvidedUnits];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(_INPBSaveHealthSampleIntentResponse *)self valuesUserProvidedUnits];
    v40 = [v4 valuesUserProvidedUnits];
    v41 = [v39 isEqual:v40];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSaveHealthSampleIntentResponse allocWithZone:](_INPBSaveHealthSampleIntentResponse init];
  v6 = [(_INPBString *)self->_defaultUnit copyWithZone:a3];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setDefaultUnit:v6];

  v7 = [(_INPBString *)self->_punchoutUrl copyWithZone:a3];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setPunchoutUrl:v7];

  v8 = [(_INPBDateTimeRange *)self->_recordDate copyWithZone:a3];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setRecordDate:v8];

  v9 = [(NSArray *)self->_sampleUuids copyWithZone:a3];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setSampleUuids:v9];

  v10 = [(_INPBString *)self->_userProvidedUnit copyWithZone:a3];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setUserProvidedUnit:v10];

  v11 = [(NSArray *)self->_valuesDefaultUnits copyWithZone:a3];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setValuesDefaultUnits:v11];

  v12 = [(NSArray *)self->_valuesUserProvidedUnits copyWithZone:a3];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setValuesUserProvidedUnits:v12];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSaveHealthSampleIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSaveHealthSampleIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSaveHealthSampleIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];

  if (v5)
  {
    v6 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];

  if (v7)
  {
    v8 = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];

  if (v9)
  {
    v10 = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
    PBDataWriterWriteSubmessage();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = self->_sampleUuids;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      v15 = 0;
      do
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v13);
  }

  v17 = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];

  if (v17)
  {
    v18 = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
    PBDataWriterWriteSubmessage();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = self->_valuesDefaultUnits;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      v23 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v36 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v21);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_valuesUserProvidedUnits;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      v29 = 0;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v32 + 1) + 8 * v29);
        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)addValuesUserProvidedUnit:(id)a3
{
  v4 = a3;
  valuesUserProvidedUnits = self->_valuesUserProvidedUnits;
  v8 = v4;
  if (!valuesUserProvidedUnits)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_valuesUserProvidedUnits;
    self->_valuesUserProvidedUnits = v6;

    v4 = v8;
    valuesUserProvidedUnits = self->_valuesUserProvidedUnits;
  }

  [(NSArray *)valuesUserProvidedUnits addObject:v4];
}

- (void)setValuesUserProvidedUnits:(id)a3
{
  v4 = [a3 mutableCopy];
  valuesUserProvidedUnits = self->_valuesUserProvidedUnits;
  self->_valuesUserProvidedUnits = v4;

  MEMORY[0x1EEE66BB8](v4, valuesUserProvidedUnits);
}

- (void)addValuesDefaultUnit:(id)a3
{
  v4 = a3;
  valuesDefaultUnits = self->_valuesDefaultUnits;
  v8 = v4;
  if (!valuesDefaultUnits)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_valuesDefaultUnits;
    self->_valuesDefaultUnits = v6;

    v4 = v8;
    valuesDefaultUnits = self->_valuesDefaultUnits;
  }

  [(NSArray *)valuesDefaultUnits addObject:v4];
}

- (void)setValuesDefaultUnits:(id)a3
{
  v4 = [a3 mutableCopy];
  valuesDefaultUnits = self->_valuesDefaultUnits;
  self->_valuesDefaultUnits = v4;

  MEMORY[0x1EEE66BB8](v4, valuesDefaultUnits);
}

- (void)addSampleUuids:(id)a3
{
  v4 = a3;
  sampleUuids = self->_sampleUuids;
  v8 = v4;
  if (!sampleUuids)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_sampleUuids;
    self->_sampleUuids = v6;

    v4 = v8;
    sampleUuids = self->_sampleUuids;
  }

  [(NSArray *)sampleUuids addObject:v4];
}

- (void)setSampleUuids:(id)a3
{
  v4 = [a3 mutableCopy];
  sampleUuids = self->_sampleUuids;
  self->_sampleUuids = v4;

  MEMORY[0x1EEE66BB8](v4, sampleUuids);
}

@end