@interface AXMDataSeriesDescriptor
- (AXMDataSeriesDescriptor)initWithAttributedName:(id)name isContinuous:(BOOL)continuous dataPoints:(id)points;
- (AXMDataSeriesDescriptor)initWithDictionary:(id)dictionary;
- (AXMDataSeriesDescriptor)initWithName:(id)name isContinuous:(BOOL)continuous dataPoints:(id)points;
- (NSArray)additionalCategoricalValues;
- (NSArray)additionalNumericalValues;
- (NSArray)xValues;
- (NSArray)yValues;
- (NSString)description;
- (NSString)name;
- (double)maximumDataValueOnTimeAxis;
- (double)minimumDataValueOnTimeAxis;
- (id)_mutableArrayOfNSNullWithCount:(int64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)numericalValuesFromDataPointValues:(id)values;
- (void)_commonInitWithContinuous:(BOOL)continuous dataPoints:(id)points;
- (void)setName:(id)name;
@end

@implementation AXMDataSeriesDescriptor

- (AXMDataSeriesDescriptor)initWithName:(id)name isContinuous:(BOOL)continuous dataPoints:(id)points
{
  continuousCopy = continuous;
  nameCopy = name;
  pointsCopy = points;
  v13.receiver = self;
  v13.super_class = AXMDataSeriesDescriptor;
  v10 = [(AXMDataSeriesDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(AXMDataSeriesDescriptor *)v10 setName:nameCopy];
    [(AXMDataSeriesDescriptor *)v11 _commonInitWithContinuous:continuousCopy dataPoints:pointsCopy];
  }

  return v11;
}

- (AXMDataSeriesDescriptor)initWithAttributedName:(id)name isContinuous:(BOOL)continuous dataPoints:(id)points
{
  continuousCopy = continuous;
  nameCopy = name;
  pointsCopy = points;
  v14.receiver = self;
  v14.super_class = AXMDataSeriesDescriptor;
  v11 = [(AXMDataSeriesDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_attributedName, name);
    [(AXMDataSeriesDescriptor *)v12 _commonInitWithContinuous:continuousCopy dataPoints:pointsCopy];
  }

  return v12;
}

- (AXMDataSeriesDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesNameKey"];
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
  v8 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesContinuousKey"];
  bOOLValue = [v8 BOOLValue];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesXDataKey"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesYDataKey"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesZNumericDataKey"];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesZCategoricalDataKey"];
  v55 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesLabelDataKey"];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesValueDescriptionsKey"];
  v14 = [v9 count];
  if (v14 != [v10 count] && v10 || (v15 = objc_msgSend(v9, "count"), v15 != objc_msgSend(v11, "count")) && v11 || (v16 = objc_msgSend(v9, "count"), v16 != objc_msgSend(v12, "count")) && v12)
  {
    selfCopy2 = 0;
    goto LABEL_11;
  }

  v54 = v13;
  v19 = [v9 count];
  if (v19 != [v55 count] && v55)
  {
    selfCopy2 = 0;
    goto LABEL_11;
  }

  v52 = v12;
  v45 = v7;
  selfCopy = self;
  v47 = v5;
  array = [MEMORY[0x1E695DF70] array];
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
      array2 = [MEMORY[0x1E695DF70] array];
      v39 = array2;
      if (v33)
      {
        [array2 addObject:v33];
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
      [array addObject:v41];

      ++v20;
      v9 = v51;
      v11 = v49;
      v10 = v50;
      v21 = 0x1E7A1B000;
    }

    while (v20 < [v51 count]);
  }

  v7 = v45;
  v42 = [(AXMDataSeriesDescriptor *)selfCopy initWithAttributedName:v45 isContinuous:bOOLValue dataPoints:array];
  v13 = v54;
  if (v42)
  {
    v43 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesMeanValueDescriptionKey"];
    meanValueDescription = v42->_meanValueDescription;
    v42->_meanValueDescription = v43;
  }

  self = v42;

  selfCopy2 = self;
  v5 = v47;
  v12 = v52;
LABEL_11:

  return selfCopy2;
}

- (void)_commonInitWithContinuous:(BOOL)continuous dataPoints:(id)points
{
  self->_isContinuous = continuous;
  v5 = [points copy];
  dataPoints = self->_dataPoints;
  self->_dataPoints = v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  attributedName = [(AXMDataSeriesDescriptor *)self attributedName];
  isContinuous = [(AXMDataSeriesDescriptor *)self isContinuous];
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  v8 = [v4 initWithAttributedName:attributedName isContinuous:isContinuous dataPoints:dataPoints];

  return v8;
}

- (void)setName:(id)name
{
  if (name)
  {
    v4 = MEMORY[0x1E696AAB0];
    nameCopy = name;
    v6 = [[v4 alloc] initWithString:nameCopy];

    attributedName = self->_attributedName;
    self->_attributedName = v6;
  }
}

- (NSString)name
{
  attributedName = [(AXMDataSeriesDescriptor *)self attributedName];
  string = [attributedName string];

  return string;
}

- (double)minimumDataValueOnTimeAxis
{
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  v4 = [dataPoints count];

  if (!v4)
  {
    return 0.0;
  }

  dataPoints2 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v6 = [dataPoints2 objectAtIndexedSubscript:0];
  timeEncodingValue = [v6 timeEncodingValue];
  [timeEncodingValue number];
  v9 = v8;

  return v9;
}

- (double)maximumDataValueOnTimeAxis
{
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  v4 = [dataPoints count];

  if (!v4)
  {
    return 0.0;
  }

  dataPoints2 = [(AXMDataSeriesDescriptor *)self dataPoints];
  dataPoints3 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v7 = [dataPoints2 objectAtIndexedSubscript:{objc_msgSend(dataPoints3, "count") - 1}];
  timeEncodingValue = [v7 timeEncodingValue];
  [timeEncodingValue number];
  v10 = v9;

  return v10;
}

- (id)dictionaryRepresentation
{
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  firstObject = [dataPoints firstObject];
  xValue = [firstObject xValue];
  category = [xValue category];

  dataPoints2 = [(AXMDataSeriesDescriptor *)self dataPoints];
  v7 = [dataPoints2 count];

  if (v7)
  {
    v57 = 0;
    v58 = 0;
    selfCopy = self;
    v60 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      dataPoints3 = [(AXMDataSeriesDescriptor *)self dataPoints];
      v13 = [dataPoints3 objectAtIndexedSubscript:v9];

      valueDescription = [v13 valueDescription];
      [array2 addObject:valueDescription];

      if (category)
      {
        xValue2 = [v13 xValue];
        [xValue2 category];
      }

      else
      {
        v16 = MEMORY[0x1E696AD98];
        xValue2 = [v13 xValue];
        [xValue2 number];
        [v16 numberWithDouble:?];
      }
      v17 = ;
      [array addObject:v17];

      yValue = [v13 yValue];

      if (yValue)
      {
        v19 = v58;
        if (!v58)
        {
          v19 = [(AXMDataSeriesDescriptor *)self _mutableArrayOfNSNullWithCount:v9];
        }

        v20 = MEMORY[0x1E696AD98];
        yValue2 = [v13 yValue];
        [yValue2 number];
        v22 = [v20 numberWithDouble:?];
        v58 = v19;
        [v19 addObject:v22];
      }

      additionalValues = [v13 additionalValues];
      v24 = [additionalValues count];

      if (v24)
      {
        break;
      }

LABEL_33:
      label = [v13 label];
      v44 = [label length];

      if (v44)
      {
        self = selfCopy;
        v45 = v57;
        if (!v57)
        {
          v45 = [(AXMDataSeriesDescriptor *)selfCopy _mutableArrayOfNSNullWithCount:v9];
        }

        label2 = [v13 label];
        v57 = v45;
        [v45 addObject:label2];
      }

      else
      {
        self = selfCopy;
      }

      ++v9;
      dataPoints4 = [(AXMDataSeriesDescriptor *)self dataPoints];
      v48 = [dataPoints4 count];

      if (v9 >= v48)
      {
        goto LABEL_41;
      }
    }

    v25 = 0;
    while (1)
    {
      additionalValues2 = [v13 additionalValues];
      v27 = [additionalValues2 objectAtIndexedSubscript:v25];
      category2 = [v27 category];

      if (category2)
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
          v8 = [(AXMDataSeriesDescriptor *)selfCopy _mutableArrayOfNSNullWithCount:v9];
        }

        additionalValues3 = [v13 additionalValues];
        v30 = [additionalValues3 objectAtIndexedSubscript:v25];
        category3 = [v30 category];

        if (category3)
        {
          [v8 addObject:category3];
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v8 addObject:null];
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
          v32 = [(AXMDataSeriesDescriptor *)selfCopy _mutableArrayOfNSNullWithCount:v9];
        }

        additionalValues4 = [v13 additionalValues];
        v34 = [additionalValues4 objectAtIndexedSubscript:v25];
        [v34 number];
        v36 = v35;

        v60 = v32;
        if (v36 == 9.22337204e18)
        {
          category3 = [MEMORY[0x1E695DFB0] null];
          [v32 addObject:category3];
        }

        else
        {
          v38 = MEMORY[0x1E696AD98];
          category3 = [v13 additionalValues];
          v39 = [category3 objectAtIndexedSubscript:v25];
          [v39 number];
          v40 = [v38 numberWithDouble:?];
          [v32 addObject:v40];
        }

        v10 = v25;
      }

LABEL_32:
      ++v25;
      additionalValues5 = [v13 additionalValues];
      v42 = [additionalValues5 count];

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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  name = [(AXMDataSeriesDescriptor *)self name];
  [dictionary setObject:name forKeyedSubscript:@"kAXMChartSeriesNameKey"];

  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMDataSeriesDescriptor isContinuous](self, "isContinuous")}];
  [dictionary setObject:v51 forKeyedSubscript:@"kAXMChartSeriesContinuousKey"];

  [dictionary setObject:array forKeyedSubscript:@"kAXMChartSeriesXDataKey"];
  [dictionary setObject:v58 forKeyedSubscript:@"kAXMChartSeriesYDataKey"];
  [dictionary setObject:v60 forKeyedSubscript:@"kAXMChartSeriesZNumericDataKey"];
  [dictionary setObject:v8 forKeyedSubscript:@"kAXMChartSeriesZCategoricalDataKey"];
  [dictionary setObject:array2 forKeyedSubscript:@"kAXMChartSeriesValueDescriptionsKey"];
  meanValueDescription = [(AXMDataSeriesDescriptor *)self meanValueDescription];
  [dictionary setObject:meanValueDescription forKeyedSubscript:@"kAXMChartSeriesMeanValueDescriptionKey"];

  return dictionary;
}

- (id)_mutableArrayOfNSNullWithCount:(int64_t)count
{
  array = [MEMORY[0x1E695DF70] array];
  if (count >= 1)
  {
    do
    {
      null = [MEMORY[0x1E695DFB0] null];
      [array addObject:null];

      --count;
    }

    while (count);
  }

  return array;
}

- (NSArray)xValues
{
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  v3 = [dataPoints ax_mappedArrayUsingBlock:&__block_literal_global_373];

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
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  v3 = [dataPoints ax_mappedArrayUsingBlock:&__block_literal_global_375];

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
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  v3 = [dataPoints ax_mappedArrayUsingBlock:&__block_literal_global_377];

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
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  v3 = [dataPoints ax_mappedArrayUsingBlock:&__block_literal_global_379];

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

- (id)numericalValuesFromDataPointValues:(id)values
{
  valuesCopy = values;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [valuesCopy objectAtIndexedSubscript:0];
  category = [v5 category];

  if (category)
  {
    if ([valuesCopy count])
    {
      v7 = 0;
      do
      {
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
        [array addObject:v8];

        ++v7;
      }

      while (v7 < [valuesCopy count]);
    }

    v9 = [array copy];
  }

  else
  {
    v9 = [valuesCopy ax_mappedArrayUsingBlock:&__block_literal_global_382];
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
  name = [(AXMDataSeriesDescriptor *)self name];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMDataSeriesDescriptor isContinuous](self, "isContinuous")}];
  v7 = MEMORY[0x1E696AD98];
  dataPoints = [(AXMDataSeriesDescriptor *)self dataPoints];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(dataPoints, "count")}];
  v10 = [v3 stringWithFormat:@"<%@ %p name=%@ continuous=%@ points=%@>", v4, self, name, v6, v9];

  return v10;
}

@end