@interface AMAbsorption
- (AMAbsorption)initWithMaterialName:(id)name;
- (AMAbsorption)initWithValues:(id)values error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)validatedWithoutError:(id *)error;
@end

@implementation AMAbsorption

- (AMAbsorption)initWithValues:(id)values error:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v42.receiver = self;
  v42.super_class = AMAbsorption;
  v7 = [(AMAbsorption *)&v42 init];
  v8 = MEMORY[0x277CBEB98];
  allKeys = [valuesCopy allKeys];
  v10 = [v8 setWithArray:allKeys];
  v11 = MEMORY[0x277CBEB98];
  v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"materialName", @"materialDescription", @"frequencyBands", @"absorptionUserData", @"absorptionReferenceData", @"uncertaintyReferenceData", @"numDataPointsReferenceData", @"totalNumDataSetsReferenceData", 0}];
  v13 = [v11 setWithArray:v12];
  v14 = [v10 isSubsetOfSet:v13];

  if ((v14 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v38 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44[0] = @"At least one mandatory key was not found in input dictionary.";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    *error = [v38 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:5 userInfo:v39];

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

  v19 = [valuesCopy objectForKeyedSubscript:@"frequencyBands"];
  v20 = decimalValuesFromCSV(v19);
  frequencyBands = v7->_frequencyBands;
  v7->_frequencyBands = v20;

  v22 = [valuesCopy objectForKeyedSubscript:@"absorptionUserData"];
  v23 = decimalValuesFromCSV(v22);
  v24 = clampArrayValues(v23, &unk_2850169E0, &unk_2850169F8);
  absorptionUserData = v7->_absorptionUserData;
  v7->_absorptionUserData = v24;

  v26 = [valuesCopy objectForKeyedSubscript:@"absorptionReferenceData"];
  v27 = decimalValuesFromCSV(v26);
  v28 = clampArrayValues(v27, &unk_2850169E0, &unk_2850169F8);
  absorptionReferenceData = v7->_absorptionReferenceData;
  v7->_absorptionReferenceData = v28;

  v30 = [valuesCopy objectForKeyedSubscript:@"uncertaintyReferenceData"];
  v31 = decimalValuesFromCSV(v30);
  v32 = clampArrayValues(v31, &unk_2850169E0, &unk_2850169F8);
  uncertaintyReferenceData = v7->_uncertaintyReferenceData;
  v7->_uncertaintyReferenceData = v32;

  v34 = [valuesCopy objectForKeyedSubscript:@"numDataPointsReferenceData"];
  v35 = integerValuesFromCSV(v34);
  numDataPointsReferenceData = v7->_numDataPointsReferenceData;
  v7->_numDataPointsReferenceData = v35;

  v37 = [valuesCopy objectForKeyedSubscript:@"totalNumDataSetsReferenceData"];
  v7->_totalNumDataSetsReferenceData = [v37 intValue];

  if (![(AMAbsorption *)v7 validatedWithoutError:error])
  {
    goto LABEL_6;
  }

  error = v7;
LABEL_7:

  v40 = *MEMORY[0x277D85DE8];
  return error;
}

- (AMAbsorption)initWithMaterialName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = AMAbsorption;
  v5 = [(AMAbsorption *)&v15 init];
  materialName = v5->_materialName;
  v5->_materialName = nameCopy;
  v7 = nameCopy;

  materialDescription = v5->_materialDescription;
  v5->_materialDescription = 0;

  frequencyBands = v5->_frequencyBands;
  v5->_frequencyBands = 0;

  absorptionUserData = v5->_absorptionUserData;
  v5->_absorptionUserData = 0;

  absorptionReferenceData = v5->_absorptionReferenceData;
  v5->_absorptionReferenceData = 0;

  uncertaintyReferenceData = v5->_uncertaintyReferenceData;
  v5->_uncertaintyReferenceData = 0;

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
    v22 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    materialName = self->_materialName;
    materialName = [(AMAbsorption *)v6 materialName];
    LODWORD(materialName) = [(NSString *)materialName isEqualToString:materialName];

    if (!materialName)
    {
      goto LABEL_14;
    }

    materialDescription = self->_materialDescription;
    materialDescription = [(AMAbsorption *)v6 materialDescription];
    LODWORD(materialDescription) = [(NSString *)materialDescription isEqualToString:materialDescription];

    if (!materialDescription)
    {
      goto LABEL_14;
    }

    frequencyBands = self->_frequencyBands;
    frequencyBands = [(AMAbsorption *)v6 frequencyBands];
    LODWORD(frequencyBands) = [(NSArray *)frequencyBands isEqualToArray:frequencyBands];

    if (!frequencyBands)
    {
      goto LABEL_14;
    }

    absorptionUserData = self->_absorptionUserData;
    absorptionUserData = [(AMAbsorption *)v6 absorptionUserData];
    LODWORD(absorptionUserData) = [(NSArray *)absorptionUserData isEqualToArray:absorptionUserData];

    if (!absorptionUserData)
    {
      goto LABEL_14;
    }

    absorptionReferenceData = self->_absorptionReferenceData;
    absorptionReferenceData = [(AMAbsorption *)v6 absorptionReferenceData];
    LODWORD(absorptionReferenceData) = [(NSArray *)absorptionReferenceData isEqualToArray:absorptionReferenceData];

    if (!absorptionReferenceData)
    {
      goto LABEL_14;
    }

    uncertaintyReferenceData = self->_uncertaintyReferenceData;
    uncertaintyReferenceData = [(AMAbsorption *)v6 uncertaintyReferenceData];
    LODWORD(uncertaintyReferenceData) = [(NSArray *)uncertaintyReferenceData isEqualToArray:uncertaintyReferenceData];

    if (!uncertaintyReferenceData)
    {
      goto LABEL_14;
    }

    numDataPointsReferenceData = self->_numDataPointsReferenceData;
    numDataPointsReferenceData = [(AMAbsorption *)v6 numDataPointsReferenceData];
    LODWORD(numDataPointsReferenceData) = [(NSArray *)numDataPointsReferenceData isEqualToArray:numDataPointsReferenceData];

    if (numDataPointsReferenceData)
    {
      totalNumDataSetsReferenceData = self->_totalNumDataSetsReferenceData;
      v22 = totalNumDataSetsReferenceData == [(AMAbsorption *)v6 totalNumDataSetsReferenceData];
    }

    else
    {
LABEL_14:
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)validatedWithoutError:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_frequencyBands count];
  if ([(NSArray *)self->_absorptionUserData count]== v5 && [(NSArray *)self->_absorptionReferenceData count]== v5 && [(NSArray *)self->_uncertaintyReferenceData count]== v5 && [(NSArray *)self->_numDataPointsReferenceData count]== v5)
  {
    if (([(NSString *)self->_materialName isEqual:&stru_285015AD0]& 1) != 0 || [(NSString *)self->_materialDescription isEqual:&stru_285015AD0])
    {
      if (error)
      {
        v6 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA450];
        v32 = @"Name and/or description is empty.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v8 = v6;
        v9 = 2;
LABEL_11:
        *error = [v8 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:v9 userInfo:{v7, v26}];
      }
    }

    else
    {
      if (self->_totalNumDataSetsReferenceData < 0)
      {
        if (!error)
        {
          goto LABEL_12;
        }

        v24 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA450];
        v30 = @"The value of totalNumDataSetsReferenceData is negative.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v8 = v24;
        v9 = 4;
        goto LABEL_11;
      }

      if (!v5)
      {
        result = 1;
        goto LABEL_13;
      }

      v13 = 0;
      v14 = 1;
      v15 = &unk_2850169E0;
      while (1)
      {
        v16 = [(NSArray *)self->_absorptionUserData objectAtIndexedSubscript:v13, v26];
        if (!valueIsBetween(v16, v15, &unk_2850169F8))
        {
          break;
        }

        v17 = [(NSArray *)self->_absorptionReferenceData objectAtIndexedSubscript:v13];
        if (!valueIsBetween(v17, v15, &unk_2850169F8))
        {
          goto LABEL_27;
        }

        v18 = [(NSArray *)self->_uncertaintyReferenceData objectAtIndexedSubscript:v13];
        if (!valueIsBetween(v18, v15, &unk_2850169F8))
        {

LABEL_27:
          break;
        }

        v19 = v14;
        v20 = [(NSArray *)self->_numDataPointsReferenceData objectAtIndexedSubscript:v13];
        v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalNumDataSetsReferenceData];
        v26 = v16;
        v22 = v15;
        IsBetween = valueIsBetween(v20, v15, v21);

        if (!IsBetween)
        {
          goto LABEL_29;
        }

        v13 = v19;
        v14 = v19 + 1;
        result = 1;
        v15 = v22;
        if (v5 <= v19)
        {
          goto LABEL_13;
        }
      }

LABEL_29:
      if (error)
      {
        v25 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28 = @"At least one value in one of the data sets lies outside the permitted value ranges.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v8 = v25;
        v9 = 5;
        goto LABEL_11;
      }
    }
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Data arrays have different lengths.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
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