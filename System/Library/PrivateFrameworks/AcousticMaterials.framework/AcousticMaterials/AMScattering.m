@interface AMScattering
- (AMScattering)initWithMaterialName:(id)a3;
- (AMScattering)initWithValues:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)validatedWithoutError:(id *)a3;
@end

@implementation AMScattering

- (AMScattering)initWithValues:(id)a3 error:(id *)a4
{
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v42.receiver = self;
  v42.super_class = AMScattering;
  v7 = [(AMScattering *)&v42 init];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v6 allKeys];
  v10 = [v8 setWithArray:v9];
  v11 = MEMORY[0x277CBEB98];
  v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"materialName", @"materialDescription", @"frequencyBands", @"scatteringUserData", @"scatteringReferenceData", @"uncertaintyReferenceData", @"numDataPointsReferenceData", @"totalNumDataSetsReferenceData", 0}];
  v13 = [v11 setWithArray:v12];
  v14 = [v10 isSubsetOfSet:v13];

  if ((v14 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v38 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44[0] = @"At least one mandatory key was not found in input dictionary.";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    *a4 = [v38 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:5 userInfo:v39];

LABEL_6:
    a4 = 0;
    goto LABEL_7;
  }

  v15 = [v6 objectForKeyedSubscript:@"materialName"];
  materialName = v7->_materialName;
  v7->_materialName = v15;

  v17 = [v6 objectForKeyedSubscript:@"materialDescription"];
  materialDescription = v7->_materialDescription;
  v7->_materialDescription = v17;

  v19 = [v6 objectForKeyedSubscript:@"frequencyBands"];
  v20 = decimalValuesFromCSV(v19);
  frequencyBands = v7->_frequencyBands;
  v7->_frequencyBands = v20;

  v22 = [v6 objectForKeyedSubscript:@"scatteringUserData"];
  v23 = decimalValuesFromCSV(v22);
  v24 = clampArrayValues(v23, &unk_285016A40, &unk_285016A58);
  scatteringUserData = v7->_scatteringUserData;
  v7->_scatteringUserData = v24;

  v26 = [v6 objectForKeyedSubscript:@"scatteringReferenceData"];
  v27 = decimalValuesFromCSV(v26);
  v28 = clampArrayValues(v27, &unk_285016A40, &unk_285016A58);
  scatteringReferenceData = v7->_scatteringReferenceData;
  v7->_scatteringReferenceData = v28;

  v30 = [v6 objectForKeyedSubscript:@"uncertaintyReferenceData"];
  v31 = decimalValuesFromCSV(v30);
  v32 = clampArrayValues(v31, &unk_285016A40, &unk_285016A58);
  uncertaintyReferenceData = v7->_uncertaintyReferenceData;
  v7->_uncertaintyReferenceData = v32;

  v34 = [v6 objectForKeyedSubscript:@"numDataPointsReferenceData"];
  v35 = integerValuesFromCSV(v34);
  numDataPointsReferenceData = v7->_numDataPointsReferenceData;
  v7->_numDataPointsReferenceData = v35;

  v37 = [v6 objectForKeyedSubscript:@"totalNumDataSetsReferenceData"];
  v7->_totalNumDataSetsReferenceData = [v37 intValue];

  if (![(AMScattering *)v7 validatedWithoutError:a4])
  {
    goto LABEL_6;
  }

  a4 = v7;
LABEL_7:

  v40 = *MEMORY[0x277D85DE8];
  return a4;
}

- (AMScattering)initWithMaterialName:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AMScattering;
  v5 = [(AMScattering *)&v15 init];
  materialName = v5->_materialName;
  v5->_materialName = v4;
  v7 = v4;

  materialDescription = v5->_materialDescription;
  v5->_materialDescription = 0;

  frequencyBands = v5->_frequencyBands;
  v5->_frequencyBands = 0;

  scatteringUserData = v5->_scatteringUserData;
  v5->_scatteringUserData = 0;

  scatteringReferenceData = v5->_scatteringReferenceData;
  v5->_scatteringReferenceData = 0;

  uncertaintyReferenceData = v5->_uncertaintyReferenceData;
  v5->_uncertaintyReferenceData = 0;

  numDataPointsReferenceData = v5->_numDataPointsReferenceData;
  v5->_numDataPointsReferenceData = 0;

  v5->_totalNumDataSetsReferenceData = 0;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v22 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    materialName = self->_materialName;
    v8 = [(AMScattering *)v6 materialName];
    LODWORD(materialName) = [(NSString *)materialName isEqualToString:v8];

    if (!materialName)
    {
      goto LABEL_14;
    }

    materialDescription = self->_materialDescription;
    v10 = [(AMScattering *)v6 materialDescription];
    LODWORD(materialDescription) = [(NSString *)materialDescription isEqualToString:v10];

    if (!materialDescription)
    {
      goto LABEL_14;
    }

    frequencyBands = self->_frequencyBands;
    v12 = [(AMScattering *)v6 frequencyBands];
    LODWORD(frequencyBands) = [(NSArray *)frequencyBands isEqualToArray:v12];

    if (!frequencyBands)
    {
      goto LABEL_14;
    }

    scatteringUserData = self->_scatteringUserData;
    v14 = [(AMScattering *)v6 scatteringUserData];
    LODWORD(scatteringUserData) = [(NSArray *)scatteringUserData isEqualToArray:v14];

    if (!scatteringUserData)
    {
      goto LABEL_14;
    }

    scatteringReferenceData = self->_scatteringReferenceData;
    v16 = [(AMScattering *)v6 scatteringReferenceData];
    LODWORD(scatteringReferenceData) = [(NSArray *)scatteringReferenceData isEqualToArray:v16];

    if (!scatteringReferenceData)
    {
      goto LABEL_14;
    }

    uncertaintyReferenceData = self->_uncertaintyReferenceData;
    v18 = [(AMScattering *)v6 uncertaintyReferenceData];
    LODWORD(uncertaintyReferenceData) = [(NSArray *)uncertaintyReferenceData isEqualToArray:v18];

    if (!uncertaintyReferenceData)
    {
      goto LABEL_14;
    }

    numDataPointsReferenceData = self->_numDataPointsReferenceData;
    v20 = [(AMScattering *)v6 numDataPointsReferenceData];
    LODWORD(numDataPointsReferenceData) = [(NSArray *)numDataPointsReferenceData isEqualToArray:v20];

    if (numDataPointsReferenceData)
    {
      totalNumDataSetsReferenceData = self->_totalNumDataSetsReferenceData;
      v22 = totalNumDataSetsReferenceData == [(AMScattering *)v6 totalNumDataSetsReferenceData];
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

- (BOOL)validatedWithoutError:(id *)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_frequencyBands count];
  if ([(NSArray *)self->_scatteringUserData count]== v5 && [(NSArray *)self->_scatteringReferenceData count]== v5 && [(NSArray *)self->_uncertaintyReferenceData count]== v5 && [(NSArray *)self->_numDataPointsReferenceData count]== v5)
  {
    if (([(NSString *)self->_materialName isEqual:&stru_285015AD0]& 1) != 0 || [(NSString *)self->_materialDescription isEqual:&stru_285015AD0])
    {
      if (a3)
      {
        v6 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA450];
        v32 = @"Name and/or description is empty.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v8 = v6;
        v9 = 2;
LABEL_11:
        *a3 = [v8 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:v9 userInfo:{v7, v26}];
      }
    }

    else
    {
      if (self->_totalNumDataSetsReferenceData < 0)
      {
        if (!a3)
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
      v15 = &unk_285016A40;
      while (1)
      {
        v16 = [(NSArray *)self->_scatteringUserData objectAtIndexedSubscript:v13, v26];
        if (!valueIsBetween(v16, v15, &unk_285016A58))
        {
          break;
        }

        v17 = [(NSArray *)self->_scatteringReferenceData objectAtIndexedSubscript:v13];
        if (!valueIsBetween(v17, v15, &unk_285016A58))
        {
          goto LABEL_27;
        }

        v18 = [(NSArray *)self->_uncertaintyReferenceData objectAtIndexedSubscript:v13];
        if (!valueIsBetween(v18, v15, &unk_285016A58))
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
      if (a3)
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

  else if (a3)
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