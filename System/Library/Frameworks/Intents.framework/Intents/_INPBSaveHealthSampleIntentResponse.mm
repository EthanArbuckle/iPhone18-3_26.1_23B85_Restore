@interface _INPBSaveHealthSampleIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSaveHealthSampleIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSampleUuids:(id)uuids;
- (void)addValuesDefaultUnit:(id)unit;
- (void)addValuesUserProvidedUnit:(id)unit;
- (void)encodeWithCoder:(id)coder;
- (void)setSampleUuids:(id)uuids;
- (void)setValuesDefaultUnits:(id)units;
- (void)setValuesUserProvidedUnits:(id)units;
- (void)writeTo:(id)to;
@end

@implementation _INPBSaveHealthSampleIntentResponse

- (id)dictionaryRepresentation
{
  v50 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
  dictionaryRepresentation = [defaultUnit dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"defaultUnit"];

  punchoutUrl = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
  dictionaryRepresentation2 = [punchoutUrl dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"punchoutUrl"];

  recordDate = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
  dictionaryRepresentation3 = [recordDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"recordDate"];

  if ([(NSArray *)self->_sampleUuids count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation4];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"sampleUuids"];
  }

  userProvidedUnit = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
  dictionaryRepresentation5 = [userProvidedUnit dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"userProvidedUnit"];

  if ([(NSArray *)self->_valuesDefaultUnits count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation6 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation6];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"valuesDefaultUnit"];
  }

  if ([(NSArray *)self->_valuesUserProvidedUnits count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation7 = [*(*(&v35 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation7];
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v29);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"valuesUserProvidedUnit"];
  }

  v33 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
  defaultUnit2 = [equalCopy defaultUnit];
  if ((defaultUnit != 0) == (defaultUnit2 == 0))
  {
    goto LABEL_36;
  }

  defaultUnit3 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
  if (defaultUnit3)
  {
    v8 = defaultUnit3;
    defaultUnit4 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
    defaultUnit5 = [equalCopy defaultUnit];
    v11 = [defaultUnit4 isEqual:defaultUnit5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
  defaultUnit2 = [equalCopy punchoutUrl];
  if ((defaultUnit != 0) == (defaultUnit2 == 0))
  {
    goto LABEL_36;
  }

  punchoutUrl = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
  if (punchoutUrl)
  {
    v13 = punchoutUrl;
    punchoutUrl2 = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
    punchoutUrl3 = [equalCopy punchoutUrl];
    v16 = [punchoutUrl2 isEqual:punchoutUrl3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
  defaultUnit2 = [equalCopy recordDate];
  if ((defaultUnit != 0) == (defaultUnit2 == 0))
  {
    goto LABEL_36;
  }

  recordDate = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
  if (recordDate)
  {
    v18 = recordDate;
    recordDate2 = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
    recordDate3 = [equalCopy recordDate];
    v21 = [recordDate2 isEqual:recordDate3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self sampleUuids];
  defaultUnit2 = [equalCopy sampleUuids];
  if ((defaultUnit != 0) == (defaultUnit2 == 0))
  {
    goto LABEL_36;
  }

  sampleUuids = [(_INPBSaveHealthSampleIntentResponse *)self sampleUuids];
  if (sampleUuids)
  {
    v23 = sampleUuids;
    sampleUuids2 = [(_INPBSaveHealthSampleIntentResponse *)self sampleUuids];
    sampleUuids3 = [equalCopy sampleUuids];
    v26 = [sampleUuids2 isEqual:sampleUuids3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
  defaultUnit2 = [equalCopy userProvidedUnit];
  if ((defaultUnit != 0) == (defaultUnit2 == 0))
  {
    goto LABEL_36;
  }

  userProvidedUnit = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
  if (userProvidedUnit)
  {
    v28 = userProvidedUnit;
    userProvidedUnit2 = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
    userProvidedUnit3 = [equalCopy userProvidedUnit];
    v31 = [userProvidedUnit2 isEqual:userProvidedUnit3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self valuesDefaultUnits];
  defaultUnit2 = [equalCopy valuesDefaultUnits];
  if ((defaultUnit != 0) == (defaultUnit2 == 0))
  {
    goto LABEL_36;
  }

  valuesDefaultUnits = [(_INPBSaveHealthSampleIntentResponse *)self valuesDefaultUnits];
  if (valuesDefaultUnits)
  {
    v33 = valuesDefaultUnits;
    valuesDefaultUnits2 = [(_INPBSaveHealthSampleIntentResponse *)self valuesDefaultUnits];
    valuesDefaultUnits3 = [equalCopy valuesDefaultUnits];
    v36 = [valuesDefaultUnits2 isEqual:valuesDefaultUnits3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self valuesUserProvidedUnits];
  defaultUnit2 = [equalCopy valuesUserProvidedUnits];
  if ((defaultUnit != 0) != (defaultUnit2 == 0))
  {
    valuesUserProvidedUnits = [(_INPBSaveHealthSampleIntentResponse *)self valuesUserProvidedUnits];
    if (!valuesUserProvidedUnits)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = valuesUserProvidedUnits;
    valuesUserProvidedUnits2 = [(_INPBSaveHealthSampleIntentResponse *)self valuesUserProvidedUnits];
    valuesUserProvidedUnits3 = [equalCopy valuesUserProvidedUnits];
    v41 = [valuesUserProvidedUnits2 isEqual:valuesUserProvidedUnits3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSaveHealthSampleIntentResponse allocWithZone:](_INPBSaveHealthSampleIntentResponse init];
  v6 = [(_INPBString *)self->_defaultUnit copyWithZone:zone];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setDefaultUnit:v6];

  v7 = [(_INPBString *)self->_punchoutUrl copyWithZone:zone];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setPunchoutUrl:v7];

  v8 = [(_INPBDateTimeRange *)self->_recordDate copyWithZone:zone];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setRecordDate:v8];

  v9 = [(NSArray *)self->_sampleUuids copyWithZone:zone];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setSampleUuids:v9];

  v10 = [(_INPBString *)self->_userProvidedUnit copyWithZone:zone];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setUserProvidedUnit:v10];

  v11 = [(NSArray *)self->_valuesDefaultUnits copyWithZone:zone];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setValuesDefaultUnits:v11];

  v12 = [(NSArray *)self->_valuesUserProvidedUnits copyWithZone:zone];
  [(_INPBSaveHealthSampleIntentResponse *)v5 setValuesUserProvidedUnits:v12];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSaveHealthSampleIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSaveHealthSampleIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSaveHealthSampleIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v47 = *MEMORY[0x1E69E9840];
  toCopy = to;
  defaultUnit = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];

  if (defaultUnit)
  {
    defaultUnit2 = [(_INPBSaveHealthSampleIntentResponse *)self defaultUnit];
    PBDataWriterWriteSubmessage();
  }

  punchoutUrl = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];

  if (punchoutUrl)
  {
    punchoutUrl2 = [(_INPBSaveHealthSampleIntentResponse *)self punchoutUrl];
    PBDataWriterWriteSubmessage();
  }

  recordDate = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];

  if (recordDate)
  {
    recordDate2 = [(_INPBSaveHealthSampleIntentResponse *)self recordDate];
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

  userProvidedUnit = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];

  if (userProvidedUnit)
  {
    userProvidedUnit2 = [(_INPBSaveHealthSampleIntentResponse *)self userProvidedUnit];
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

- (void)addValuesUserProvidedUnit:(id)unit
{
  unitCopy = unit;
  valuesUserProvidedUnits = self->_valuesUserProvidedUnits;
  v8 = unitCopy;
  if (!valuesUserProvidedUnits)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_valuesUserProvidedUnits;
    self->_valuesUserProvidedUnits = array;

    unitCopy = v8;
    valuesUserProvidedUnits = self->_valuesUserProvidedUnits;
  }

  [(NSArray *)valuesUserProvidedUnits addObject:unitCopy];
}

- (void)setValuesUserProvidedUnits:(id)units
{
  v4 = [units mutableCopy];
  valuesUserProvidedUnits = self->_valuesUserProvidedUnits;
  self->_valuesUserProvidedUnits = v4;

  MEMORY[0x1EEE66BB8](v4, valuesUserProvidedUnits);
}

- (void)addValuesDefaultUnit:(id)unit
{
  unitCopy = unit;
  valuesDefaultUnits = self->_valuesDefaultUnits;
  v8 = unitCopy;
  if (!valuesDefaultUnits)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_valuesDefaultUnits;
    self->_valuesDefaultUnits = array;

    unitCopy = v8;
    valuesDefaultUnits = self->_valuesDefaultUnits;
  }

  [(NSArray *)valuesDefaultUnits addObject:unitCopy];
}

- (void)setValuesDefaultUnits:(id)units
{
  v4 = [units mutableCopy];
  valuesDefaultUnits = self->_valuesDefaultUnits;
  self->_valuesDefaultUnits = v4;

  MEMORY[0x1EEE66BB8](v4, valuesDefaultUnits);
}

- (void)addSampleUuids:(id)uuids
{
  uuidsCopy = uuids;
  sampleUuids = self->_sampleUuids;
  v8 = uuidsCopy;
  if (!sampleUuids)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sampleUuids;
    self->_sampleUuids = array;

    uuidsCopy = v8;
    sampleUuids = self->_sampleUuids;
  }

  [(NSArray *)sampleUuids addObject:uuidsCopy];
}

- (void)setSampleUuids:(id)uuids
{
  v4 = [uuids mutableCopy];
  sampleUuids = self->_sampleUuids;
  self->_sampleUuids = v4;

  MEMORY[0x1EEE66BB8](v4, sampleUuids);
}

@end