@interface AXMDataSeriesDescriptor
- (AXMDataSeriesDescriptor)initWithAttributedName:(id)a3 isContinuous:(BOOL)a4 dataPoints:(id)a5;
- (AXMDataSeriesDescriptor)initWithDictionary:(id)a3;
- (AXMDataSeriesDescriptor)initWithName:(id)a3 isContinuous:(BOOL)a4 dataPoints:(id)a5;
- (NSArray)additionalCategoricalValues;
- (NSArray)additionalNumericalValues;
- (NSArray)xValues;
- (NSArray)yValues;
- (NSString)description;
- (NSString)name;
- (double)maximumDataValueOnTimeAxis;
- (double)minimumDataValueOnTimeAxis;
- (id)_mutableArrayOfNSNullWithCount:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)numericalValuesFromDataPointValues:(id)a3;
- (void)_commonInitWithContinuous:(BOOL)a3 dataPoints:(id)a4;
- (void)setName:(id)a3;
@end

@implementation AXMDataSeriesDescriptor

- (AXMDataSeriesDescriptor)initWithName:(id)a3 isContinuous:(BOOL)a4 dataPoints:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AXMDataSeriesDescriptor;
  v10 = [(AXMDataSeriesDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(AXMDataSeriesDescriptor *)v10 setName:v8];
    [(AXMDataSeriesDescriptor *)v11 _commonInitWithContinuous:v6 dataPoints:v9];
  }

  return v11;
}

- (AXMDataSeriesDescriptor)initWithAttributedName:(id)a3 isContinuous:(BOOL)a4 dataPoints:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AXMDataSeriesDescriptor;
  v11 = [(AXMDataSeriesDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_attributedName, a3);
    [(AXMDataSeriesDescriptor *)v12 _commonInitWithContinuous:v6 dataPoints:v10];
  }

  return v12;
}

- (AXMDataSeriesDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesNameKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
  }

  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesContinuousKey"];
  v48 = [v8 BOOLValue];

  v9 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesXDataKey"];
  v10 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesYDataKey"];
  v11 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesZNumericDataKey"];
  v12 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesZCategoricalDataKey"];
  v55 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesLabelDataKey"];
  v13 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesValueDescriptionsKey"];
  v14 = [v9 count];
  if (v14 != [v10 count] && v10 || (v15 = objc_msgSend(v9, "count"), v15 != objc_msgSend(v11, "count")) && v11 || (v16 = objc_msgSend(v9, "count"), v16 != objc_msgSend(v12, "count")) && v12)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v54 = v13;
  v19 = [v9 count];
  if (v19 != [v55 count] && v55)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v52 = v12;
  v45 = v7;
  v46 = self;
  v47 = v5;
  v53 = [MEMORY[0x1E695DF70] array];
  if ([v9 count])
  {
    v20 = 0;
    v21 = 0x1E7A1B000uLL;
    v50 = v10;
    v51 = v9;
    v49 = v11;
    do
    {
      v22 = [v9 objectAtIndexedSubscript:v20];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v24 = *(v21 + 2240);
      v25 = [v9 objectAtIndexedSubscript:v20];
      v26 = v25;
      if (isKindOfClass)
      {
        [v24 valueWithCategory:v25];
      }

      else
      {
        [v25 doubleValue];
        [v24 valueWithNumber:?];
      }
      v27 = ;

      if (v10)
      {
        v28 = *(v21 + 2240);
        v29 = [v10 objectAtIndexedSubscript:v20];
        [v29 doubleValue];
        v30 = [v28 valueWithNumber:?];

        if (!v11)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v30 = 0;
        if (!v11)
        {
LABEL_24:
          v33 = 0;
          goto LABEL_25;
        }
      }

      v31 = *(v21 + 2240);
      v32 = [v11 objectAtIndexedSubscript:v20];
      [v32 doubleValue];
      v33 = [v31 valueWithNumber:?];

LABEL_25:
      if (v52)
      {
        v34 = *(v21 + 2240);
        v35 = [v52 objectAtIndexedSubscript:v20];
        v36 = [v34 valueWithCategory:v35];
      }

      else
      {
        v36 = 0;
      }

      v37 = [v54 objectAtIndexedSubscript:v20];
      v38 = [MEMORY[0x1E695DF70] array];
      v39 = v38;
      if (v33)
      {
        [v38 addObject:v33];
      }

      if (v36)
      {
        [v39 addObject:v36];
      }

      if (v55)
      {
        v40 = [v55 objectAtIndexedSubscript:v20];
      }

      else
      {
        v40 = 0;
      }

      v41 = [[AXMDataPoint alloc] initWithX:v27 y:v30 additionalValues:v39 label:v40];
      [(AXMDataPoint *)v41 setValueDescription:v37];
      [v53 addObject:v41];

      ++v20;
      v9 = v51;
      v11 = v49;
      v10 = v50;
      v21 = 0x1E7A1B000;
    }

    while (v20 < [v51 count]);
  }

  v7 = v45;
  v42 = [(AXMDataSeriesDescriptor *)v46 initWithAttributedName:v45 isContinuous:v48 dataPoints:v53];
  v13 = v54;
  if (v42)
  {
    v43 = [v4 objectForKeyedSubscript:@"kAXMChartSeriesMeanValueDescriptionKey"];
    meanValueDescription = v42->_meanValueDescription;
    v42->_meanValueDescription = v43;
  }

  self = v42;

  v17 = self;
  v5 = v47;
  v12 = v52;
LABEL_11:

  return v17;
}

- (void)_commonInitWithContinuous:(BOOL)a3 dataPoints:(id)a4
{
  self->_isContinuous = a3;
  v5 = [a4 copy];
  dataPoints = self->_dataPoints;
  self->_dataPoints = v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AXMDataSeriesDescriptor *)self attributedName];
  v6 = [(AXMDataSeriesDescriptor *)self isContinuous];
  v7 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v8 = [v4 initWithAttributedName:v5 isContinuous:v6 dataPoints:v7];

  return v8;
}

- (void)setName:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AAB0];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];

    attributedName = self->_attributedName;
    self->_attributedName = v6;
  }
}

- (NSString)name
{
  v2 = [(AXMDataSeriesDescriptor *)self attributedName];
  v3 = [v2 string];

  return v3;
}

- (double)minimumDataValueOnTimeAxis
{
  v3 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v4 = [v3 count];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 timeEncodingValue];
  [v7 number];
  v9 = v8;

  return v9;
}

- (double)maximumDataValueOnTimeAxis
{
  v3 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v4 = [v3 count];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v6 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];
  v8 = [v7 timeEncodingValue];
  [v8 number];
  v10 = v9;

  return v10;
}

- (id)dictionaryRepresentation
{
  v56 = [MEMORY[0x1E695DF70] array];
  v55 = [MEMORY[0x1E695DF70] array];
  v3 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v4 = [v3 firstObject];
  v5 = [v4 xValue];
  v54 = [v5 category];

  v6 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v7 = [v6 count];

  if (v7)
  {
    v57 = 0;
    v58 = 0;
    v59 = self;
    v60 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v12 = [(AXMDataSeriesDescriptor *)self dataPoints];
      v13 = [v12 objectAtIndexedSubscript:v9];

      v14 = [v13 valueDescription];
      [v55 addObject:v14];

      if (v54)
      {
        v15 = [v13 xValue];
        [v15 category];
      }

      else
      {
        v16 = MEMORY[0x1E696AD98];
        v15 = [v13 xValue];
        [v15 number];
        [v16 numberWithDouble:?];
      }
      v17 = ;
      [v56 addObject:v17];

      v18 = [v13 yValue];

      if (v18)
      {
        v19 = v58;
        if (!v58)
        {
          v19 = [(AXMDataSeriesDescriptor *)self _mutableArrayOfNSNullWithCount:v9];
        }

        v20 = MEMORY[0x1E696AD98];
        v21 = [v13 yValue];
        [v21 number];
        v22 = [v20 numberWithDouble:?];
        v58 = v19;
        [v19 addObject:v22];
      }

      v23 = [v13 additionalValues];
      v24 = [v23 count];

      if (v24)
      {
        break;
      }

LABEL_33:
      v43 = [v13 label];
      v44 = [v43 length];

      if (v44)
      {
        self = v59;
        v45 = v57;
        if (!v57)
        {
          v45 = [(AXMDataSeriesDescriptor *)v59 _mutableArrayOfNSNullWithCount:v9];
        }

        v46 = [v13 label];
        v57 = v45;
        [v45 addObject:v46];
      }

      else
      {
        self = v59;
      }

      ++v9;
      v47 = [(AXMDataSeriesDescriptor *)self dataPoints];
      v48 = [v47 count];

      if (v9 >= v48)
      {
        goto LABEL_41;
      }
    }

    v25 = 0;
    while (1)
    {
      v26 = [v13 additionalValues];
      v27 = [v26 objectAtIndexedSubscript:v25];
      v28 = [v27 category];

      if (v28)
      {
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v25;
        }

        if (v25 != v11)
        {
          goto LABEL_32;
        }

        if (!v8)
        {
          v8 = [(AXMDataSeriesDescriptor *)v59 _mutableArrayOfNSNullWithCount:v9];
        }

        v29 = [v13 additionalValues];
        v30 = [v29 objectAtIndexedSubscript:v25];
        v31 = [v30 category];

        if (v31)
        {
          [v8 addObject:v31];
        }

        else
        {
          v37 = [MEMORY[0x1E695DFB0] null];
          [v8 addObject:v37];
        }

        v11 = v25;
      }

      else
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v25;
        }

        if (v25 != v10)
        {
          goto LABEL_32;
        }

        v32 = v60;
        if (!v60)
        {
          v32 = [(AXMDataSeriesDescriptor *)v59 _mutableArrayOfNSNullWithCount:v9];
        }

        v33 = [v13 additionalValues];
        v34 = [v33 objectAtIndexedSubscript:v25];
        [v34 number];
        v36 = v35;

        v60 = v32;
        if (v36 == 9.22337204e18)
        {
          v31 = [MEMORY[0x1E695DFB0] null];
          [v32 addObject:v31];
        }

        else
        {
          v38 = MEMORY[0x1E696AD98];
          v31 = [v13 additionalValues];
          v39 = [v31 objectAtIndexedSubscript:v25];
          [v39 number];
          v40 = [v38 numberWithDouble:?];
          [v32 addObject:v40];
        }

        v10 = v25;
      }

LABEL_32:
      ++v25;
      v41 = [v13 additionalValues];
      v42 = [v41 count];

      if (v25 >= v42)
      {
        goto LABEL_33;
      }
    }
  }

  v57 = 0;
  v58 = 0;
  v8 = 0;
  v60 = 0;
LABEL_41:
  v49 = [MEMORY[0x1E695DF90] dictionary];
  v50 = [(AXMDataSeriesDescriptor *)self name];
  [v49 setObject:v50 forKeyedSubscript:@"kAXMChartSeriesNameKey"];

  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMDataSeriesDescriptor isContinuous](self, "isContinuous")}];
  [v49 setObject:v51 forKeyedSubscript:@"kAXMChartSeriesContinuousKey"];

  [v49 setObject:v56 forKeyedSubscript:@"kAXMChartSeriesXDataKey"];
  [v49 setObject:v58 forKeyedSubscript:@"kAXMChartSeriesYDataKey"];
  [v49 setObject:v60 forKeyedSubscript:@"kAXMChartSeriesZNumericDataKey"];
  [v49 setObject:v8 forKeyedSubscript:@"kAXMChartSeriesZCategoricalDataKey"];
  [v49 setObject:v55 forKeyedSubscript:@"kAXMChartSeriesValueDescriptionsKey"];
  v52 = [(AXMDataSeriesDescriptor *)self meanValueDescription];
  [v49 setObject:v52 forKeyedSubscript:@"kAXMChartSeriesMeanValueDescriptionKey"];

  return v49;
}

- (id)_mutableArrayOfNSNullWithCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (a3 >= 1)
  {
    do
    {
      v5 = [MEMORY[0x1E695DFB0] null];
      [v4 addObject:v5];

      --a3;
    }

    while (a3);
  }

  return v4;
}

- (NSArray)xValues
{
  v2 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v3 = [v2 ax_mappedArrayUsingBlock:&__block_literal_global_373];

  return v3;
}

id __34__AXMDataSeriesDescriptor_xValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 xValue];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[AXMDataPointValue emptyValue];
  }

  v5 = v4;

  return v5;
}

- (NSArray)yValues
{
  v2 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v3 = [v2 ax_mappedArrayUsingBlock:&__block_literal_global_375];

  return v3;
}

id __34__AXMDataSeriesDescriptor_yValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 yValue];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[AXMDataPointValue emptyValue];
  }

  v5 = v4;

  return v5;
}

- (NSArray)additionalNumericalValues
{
  v2 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v3 = [v2 ax_mappedArrayUsingBlock:&__block_literal_global_377];

  return v3;
}

id __52__AXMDataSeriesDescriptor_additionalNumericalValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 zNumericAxisValue];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[AXMDataPointValue emptyValue];
  }

  v5 = v4;

  return v5;
}

- (NSArray)additionalCategoricalValues
{
  v2 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v3 = [v2 ax_mappedArrayUsingBlock:&__block_literal_global_379];

  return v3;
}

id __54__AXMDataSeriesDescriptor_additionalCategoricalValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 zCategoryAxisValue];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[AXMDataPointValue emptyValue];
  }

  v5 = v4;

  return v5;
}

- (id)numericalValuesFromDataPointValues:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 category];

  if (v6)
  {
    if ([v3 count])
    {
      v7 = 0;
      do
      {
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
        [v4 addObject:v8];

        ++v7;
      }

      while (v7 < [v3 count]);
    }

    v9 = [v4 copy];
  }

  else
  {
    v9 = [v3 ax_mappedArrayUsingBlock:&__block_literal_global_382];
  }

  v10 = v9;

  return v10;
}

uint64_t __62__AXMDataSeriesDescriptor_numericalValuesFromDataPointValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 number];

  return [v2 numberWithDouble:?];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXMDataSeriesDescriptor *)self name];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMDataSeriesDescriptor isContinuous](self, "isContinuous")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v10 = [v3 stringWithFormat:@"<%@ %p name=%@ continuous=%@ points=%@>", v4, self, v5, v6, v9];

  return v10;
}

@end