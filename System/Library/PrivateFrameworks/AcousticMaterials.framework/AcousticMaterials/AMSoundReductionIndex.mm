@interface AMSoundReductionIndex
- (AMSoundReductionIndex)initWithMaterialName:(id)name;
- (AMSoundReductionIndex)initWithValues:(id)values error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)validatedWithoutError:(id *)error;
@end

@implementation AMSoundReductionIndex

- (AMSoundReductionIndex)initWithValues:(id)values error:(id *)error
{
  v50[1] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v48.receiver = self;
  v48.super_class = AMSoundReductionIndex;
  v7 = [(AMSoundReductionIndex *)&v48 init];
  v8 = MEMORY[0x277CBEB98];
  allKeys = [valuesCopy allKeys];
  v10 = [v8 setWithArray:allKeys];
  v11 = MEMORY[0x277CBEB98];
  v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"materialName", @"materialDescription", @"materialDepth", @"uncertaintyMaterialDepth", @"frequencyBands", @"soundReductionIndexUserData", @"soundReductionIndexReferenceData", @"uncertaintyReferenceData", @"averageSoundReductionIndex", @"numDataPointsReferenceData", @"totalNumDataSetsReferenceData", 0}];
  v13 = [v11 setWithArray:v12];
  v14 = [v10 isSubsetOfSet:v13];

  if ((v14 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v44 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v50[0] = @"At least one mandatory key was not found in input dictionary.";
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    *error = [v44 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:5 userInfo:v45];

LABEL_6:
    error = 0;
    goto LABEL_7;
  }

  v15 = [valuesCopy objectForKeyedSubscript:@"materialName"];
  materialName = v7->_materialName;
  v7->_materialName = v15;

  v17 = [valuesCopy objectForKeyedSubscript:@"materialDescription"];
  materialDescription = v7->_materialDescription;
  v7->_materialDescription = v17;

  v19 = [valuesCopy objectForKeyedSubscript:@"materialDepth"];
  materialDepth = v7->_materialDepth;
  v7->_materialDepth = v19;

  v21 = [valuesCopy objectForKeyedSubscript:@"uncertaintyMaterialDepth"];
  uncertaintyMaterialDepth = v7->_uncertaintyMaterialDepth;
  v7->_uncertaintyMaterialDepth = v21;

  v23 = [valuesCopy objectForKeyedSubscript:@"frequencyBands"];
  v24 = decimalValuesFromCSV(v23);
  frequencyBands = v7->_frequencyBands;
  v7->_frequencyBands = v24;

  v26 = [valuesCopy objectForKeyedSubscript:@"soundReductionIndexUserData"];
  v27 = decimalValuesFromCSV(v26);
  v28 = clampArrayValues(v27, &unk_285016A10, &unk_285016A28);
  soundReductionIndexUserData = v7->_soundReductionIndexUserData;
  v7->_soundReductionIndexUserData = v28;

  v30 = [valuesCopy objectForKeyedSubscript:@"soundReductionIndexReferenceData"];
  v31 = decimalValuesFromCSV(v30);
  v32 = clampArrayValues(v31, &unk_285016A10, &unk_285016A28);
  soundReductionIndexReferenceData = v7->_soundReductionIndexReferenceData;
  v7->_soundReductionIndexReferenceData = v32;

  v34 = [valuesCopy objectForKeyedSubscript:@"uncertaintyReferenceData"];
  v35 = decimalValuesFromCSV(v34);
  v36 = clampArrayValues(v35, &unk_285016A10, &unk_285016A28);
  uncertaintyReferenceData = v7->_uncertaintyReferenceData;
  v7->_uncertaintyReferenceData = v36;

  v38 = [valuesCopy objectForKeyedSubscript:@"averageSoundReductionIndex"];
  averageSoundReductionIndex = v7->_averageSoundReductionIndex;
  v7->_averageSoundReductionIndex = v38;

  v40 = [valuesCopy objectForKeyedSubscript:@"numDataPointsReferenceData"];
  v41 = integerValuesFromCSV(v40);
  numDataPointsReferenceData = v7->_numDataPointsReferenceData;
  v7->_numDataPointsReferenceData = v41;

  v43 = [valuesCopy objectForKeyedSubscript:@"totalNumDataSetsReferenceData"];
  v7->_totalNumDataSetsReferenceData = [v43 intValue];

  if (![(AMSoundReductionIndex *)v7 validatedWithoutError:error])
  {
    goto LABEL_6;
  }

  error = v7;
LABEL_7:

  v46 = *MEMORY[0x277D85DE8];
  return error;
}

- (AMSoundReductionIndex)initWithMaterialName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = AMSoundReductionIndex;
  v5 = [(AMSoundReductionIndex *)&v18 init];
  materialName = v5->_materialName;
  v5->_materialName = nameCopy;
  v7 = nameCopy;

  materialDescription = v5->_materialDescription;
  v5->_materialDescription = 0;

  frequencyBands = v5->_frequencyBands;
  v5->_frequencyBands = 0;

  materialDepth = v5->_materialDepth;
  v5->_materialDepth = 0;

  uncertaintyMaterialDepth = v5->_uncertaintyMaterialDepth;
  v5->_uncertaintyMaterialDepth = 0;

  soundReductionIndexUserData = v5->_soundReductionIndexUserData;
  v5->_soundReductionIndexUserData = 0;

  soundReductionIndexReferenceData = v5->_soundReductionIndexReferenceData;
  v5->_soundReductionIndexReferenceData = 0;

  uncertaintyReferenceData = v5->_uncertaintyReferenceData;
  v5->_uncertaintyReferenceData = 0;

  averageSoundReductionIndex = v5->_averageSoundReductionIndex;
  v5->_averageSoundReductionIndex = 0;

  numDataPointsReferenceData = v5->_numDataPointsReferenceData;
  v5->_numDataPointsReferenceData = 0;

  v5->_totalNumDataSetsReferenceData = 0;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v28 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    materialName = self->_materialName;
    materialName = [(AMSoundReductionIndex *)v6 materialName];
    LODWORD(materialName) = [(NSString *)materialName isEqualToString:materialName];

    if (!materialName)
    {
      goto LABEL_17;
    }

    materialDescription = self->_materialDescription;
    materialDescription = [(AMSoundReductionIndex *)v6 materialDescription];
    LODWORD(materialDescription) = [(NSString *)materialDescription isEqualToString:materialDescription];

    if (!materialDescription)
    {
      goto LABEL_17;
    }

    materialDepth = self->_materialDepth;
    materialDepth = [(AMSoundReductionIndex *)v6 materialDepth];
    LODWORD(materialDepth) = [(NSNumber *)materialDepth isEqualToNumber:materialDepth];

    if (!materialDepth)
    {
      goto LABEL_17;
    }

    uncertaintyMaterialDepth = self->_uncertaintyMaterialDepth;
    uncertaintyMaterialDepth = [(AMSoundReductionIndex *)v6 uncertaintyMaterialDepth];
    LODWORD(uncertaintyMaterialDepth) = [(NSNumber *)uncertaintyMaterialDepth isEqualToNumber:uncertaintyMaterialDepth];

    if (!uncertaintyMaterialDepth)
    {
      goto LABEL_17;
    }

    frequencyBands = self->_frequencyBands;
    frequencyBands = [(AMSoundReductionIndex *)v6 frequencyBands];
    LODWORD(frequencyBands) = [(NSArray *)frequencyBands isEqualToArray:frequencyBands];

    if (!frequencyBands)
    {
      goto LABEL_17;
    }

    soundReductionIndexUserData = self->_soundReductionIndexUserData;
    soundReductionIndexUserData = [(AMSoundReductionIndex *)v6 soundReductionIndexUserData];
    LODWORD(soundReductionIndexUserData) = [(NSArray *)soundReductionIndexUserData isEqualToArray:soundReductionIndexUserData];

    if (!soundReductionIndexUserData)
    {
      goto LABEL_17;
    }

    soundReductionIndexReferenceData = self->_soundReductionIndexReferenceData;
    soundReductionIndexReferenceData = [(AMSoundReductionIndex *)v6 soundReductionIndexReferenceData];
    LODWORD(soundReductionIndexReferenceData) = [(NSArray *)soundReductionIndexReferenceData isEqualToArray:soundReductionIndexReferenceData];

    if (!soundReductionIndexReferenceData)
    {
      goto LABEL_17;
    }

    uncertaintyReferenceData = self->_uncertaintyReferenceData;
    uncertaintyReferenceData = [(AMSoundReductionIndex *)v6 uncertaintyReferenceData];
    LODWORD(uncertaintyReferenceData) = [(NSArray *)uncertaintyReferenceData isEqualToArray:uncertaintyReferenceData];

    if (!uncertaintyReferenceData)
    {
      goto LABEL_17;
    }

    averageSoundReductionIndex = self->_averageSoundReductionIndex;
    averageSoundReductionIndex = [(AMSoundReductionIndex *)v6 averageSoundReductionIndex];
    LODWORD(averageSoundReductionIndex) = [(NSNumber *)averageSoundReductionIndex isEqualToNumber:averageSoundReductionIndex];

    if (!averageSoundReductionIndex)
    {
      goto LABEL_17;
    }

    numDataPointsReferenceData = self->_numDataPointsReferenceData;
    numDataPointsReferenceData = [(AMSoundReductionIndex *)v6 numDataPointsReferenceData];
    LODWORD(numDataPointsReferenceData) = [(NSArray *)numDataPointsReferenceData isEqualToArray:numDataPointsReferenceData];

    if (numDataPointsReferenceData)
    {
      totalNumDataSetsReferenceData = self->_totalNumDataSetsReferenceData;
      v28 = totalNumDataSetsReferenceData == [(AMSoundReductionIndex *)v6 totalNumDataSetsReferenceData];
    }

    else
    {
LABEL_17:
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)validatedWithoutError:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_frequencyBands count];
  if ([(NSArray *)self->_soundReductionIndexUserData count]== v5 && [(NSArray *)self->_soundReductionIndexReferenceData count]== v5 && [(NSArray *)self->_uncertaintyReferenceData count]== v5 && [(NSArray *)self->_numDataPointsReferenceData count]== v5)
  {
    if (([(NSString *)self->_materialName isEqual:&stru_285015AD0]& 1) != 0 || [(NSString *)self->_materialDescription isEqual:&stru_285015AD0])
    {
      if (error)
      {
        v6 = MEMORY[0x277CCA9B8];
        v37 = *MEMORY[0x277CCA450];
        v38 = @"Name and or description is empty or corrupted.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v8 = v6;
        v9 = 2;
LABEL_11:
        *error = [v8 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:v9 userInfo:{v7, v30}];
      }
    }

    else
    {
      [(NSNumber *)self->_materialDepth floatValue];
      if (v13 < 0.0 || ([(NSNumber *)self->_uncertaintyMaterialDepth floatValue], v14 < 0.0) || ([(NSNumber *)self->_averageSoundReductionIndex floatValue], v15 < 0.0))
      {
        if (!error)
        {
          goto LABEL_12;
        }

        v16 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277CCA450];
        v36 = @"The value of materialDepth, uncertainityMaterialDepth or averageSoundReductionIndex is negative.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v8 = v16;
        v9 = 3;
        goto LABEL_11;
      }

      if (self->_totalNumDataSetsReferenceData < 0)
      {
        if (!error)
        {
          goto LABEL_12;
        }

        v28 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA450];
        v34 = @"The value of totalNumDataSetsReferenceData is negative.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v8 = v28;
        v9 = 4;
        goto LABEL_11;
      }

      if (!v5)
      {
        result = 1;
        goto LABEL_13;
      }

      v17 = 0;
      v18 = 1;
      v19 = &unk_285016A10;
      while (1)
      {
        v20 = [(NSArray *)self->_soundReductionIndexUserData objectAtIndexedSubscript:v17, v30];
        if (!valueIsBetween(v20, v19, &unk_285016A28))
        {
          break;
        }

        v21 = [(NSArray *)self->_soundReductionIndexReferenceData objectAtIndexedSubscript:v17];
        if (!valueIsBetween(v21, v19, &unk_285016A28))
        {
          goto LABEL_33;
        }

        v22 = [(NSArray *)self->_uncertaintyReferenceData objectAtIndexedSubscript:v17];
        if (!valueIsBetween(v22, v19, &unk_285016A28) || !valueIsBetween(self->_averageSoundReductionIndex, v19, &unk_285016A28))
        {

LABEL_33:
          break;
        }

        v23 = v18;
        v24 = [(NSArray *)self->_numDataPointsReferenceData objectAtIndexedSubscript:v17];
        v25 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalNumDataSetsReferenceData];
        v30 = v20;
        v26 = v19;
        IsBetween = valueIsBetween(v24, v19, v25);

        if (!IsBetween)
        {
          goto LABEL_35;
        }

        v17 = v23;
        v18 = v23 + 1;
        result = 1;
        v19 = v26;
        if (v5 <= v23)
        {
          goto LABEL_13;
        }
      }

LABEL_35:
      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA450];
        v32 = @"At least one value in one of the data sets lies outside the permitted value ranges.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v8 = v29;
        v9 = 5;
        goto LABEL_11;
      }
    }
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"Data arrays have different lengths.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v8 = v10;
    v9 = 1;
    goto LABEL_11;
  }

LABEL_12:
  result = 0;
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end