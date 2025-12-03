@interface AXDataSeriesDescriptor
- (AXDataSeriesDescriptor)initWithDictionary:(id)dictionary;
- (NSString)description;
- (NSString)name;
- (double)meanYValue;
- (id)_mutableArrayOfNSNullWithCount:(int64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)_commonInitWithContinuous:(BOOL)continuous dataPoints:(id)points;
- (void)setName:(NSString *)name;
@end

@implementation AXDataSeriesDescriptor

- (AXDataSeriesDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = getkAXMChartSeriesNameKey();
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];

  v7 = getkAXMChartSeriesContinuousKey();
  v8 = [dictionaryCopy objectForKeyedSubscript:v7];
  bOOLValue = [v8 BOOLValue];

  v9 = getkAXMChartSeriesXDataKey();
  v10 = [dictionaryCopy objectForKeyedSubscript:v9];

  v11 = getkAXMChartSeriesYDataKey();
  v12 = [dictionaryCopy objectForKeyedSubscript:v11];

  v13 = getkAXMChartSeriesZNumericDataKey();
  v14 = [dictionaryCopy objectForKeyedSubscript:v13];

  v15 = getkAXMChartSeriesZCategoricalDataKey();
  v16 = [dictionaryCopy objectForKeyedSubscript:v15];

  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v17 = getkAXMChartSeriesLabelDataKeySymbolLoc_ptr;
  v69 = getkAXMChartSeriesLabelDataKeySymbolLoc_ptr;
  if (!getkAXMChartSeriesLabelDataKeySymbolLoc_ptr)
  {
    v18 = AXMediaUtilitiesLibrary();
    v67[3] = dlsym(v18, "kAXMChartSeriesLabelDataKey");
    getkAXMChartSeriesLabelDataKeySymbolLoc_ptr = v67[3];
    v17 = v67[3];
  }

  _Block_object_dispose(&v66, 8);
  if (!v17)
  {
    v55 = AXAnimatedImagesEnabled_cold_1();
    _Block_object_dispose(&v66, 8);
    _Unwind_Resume(v55);
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:*v17];
  v20 = getkAXMChartSeriesValueDescriptionsKey();
  v65 = [dictionaryCopy objectForKeyedSubscript:v20];

  v21 = [v10 count];
  if (v21 != [v12 count] && v12 || (v22 = objc_msgSend(v10, "count"), v22 != objc_msgSend(v14, "count")) && v14 || (v23 = objc_msgSend(v10, "count"), v23 != objc_msgSend(v16, "count")) && v16 || (v24 = objc_msgSend(v10, "count"), v24 != objc_msgSend(v19, "count")) && v19)
  {
    v25 = AXAudioGraphLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [(AXDataSeriesDescriptor *)dictionaryCopy initWithDictionary:v25];
    }

    selfCopy2 = 0;
    goto LABEL_15;
  }

  v63 = v19;
  v64 = v16;
  selfCopy = self;
  v58 = v6;
  array = [MEMORY[0x1E695DF70] array];
  if ([v10 count])
  {
    v28 = 0;
    v29 = 0x1E7B2C000uLL;
    v60 = v14;
    v61 = v10;
    do
    {
      v30 = [v10 objectAtIndexedSubscript:v28];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v32 = *(v29 + 3440);
      v33 = [v10 objectAtIndexedSubscript:v28];
      v34 = v33;
      if (isKindOfClass)
      {
        [v32 valueWithCategory:v33];
      }

      else
      {
        [v33 doubleValue];
        [v32 valueWithNumber:?];
      }
      v35 = ;

      if (v12)
      {
        v36 = *(v29 + 3440);
        v37 = [v12 objectAtIndexedSubscript:v28];
        [v37 doubleValue];
        v38 = [v36 valueWithNumber:?];

        if (!v14)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v38 = 0;
        if (!v14)
        {
LABEL_25:
          v41 = 0;
          goto LABEL_26;
        }
      }

      v39 = *(v29 + 3440);
      v40 = [v14 objectAtIndexedSubscript:v28];
      [v40 doubleValue];
      v41 = [v39 valueWithNumber:?];

LABEL_26:
      v42 = v12;
      if (v64)
      {
        v43 = *(v29 + 3440);
        v44 = [v64 objectAtIndexedSubscript:v28];
        v45 = [v43 valueWithCategory:v44];
      }

      else
      {
        v45 = 0;
      }

      v46 = [v65 objectAtIndexedSubscript:v28];
      array2 = [MEMORY[0x1E695DF70] array];
      v48 = array2;
      if (v41)
      {
        [array2 addObject:v41];
      }

      if (v45)
      {
        [v48 addObject:v45];
      }

      if (v63)
      {
        v49 = [v63 objectAtIndexedSubscript:v28];
      }

      else
      {
        v49 = 0;
      }

      v50 = [[AXDataPoint alloc] initWithX:v35 y:v38 additionalValues:v48 label:v49];
      [(AXDataPoint *)v50 setValueDescription:v46];
      [array addObject:v50];

      ++v28;
      v10 = v61;
      v12 = v42;
      v14 = v60;
      v29 = 0x1E7B2C000;
    }

    while (v28 < [v61 count]);
  }

  v6 = v58;
  v25 = array;
  v51 = [(AXDataSeriesDescriptor *)selfCopy initWithAttributedName:v58 isContinuous:bOOLValue dataPoints:array];
  dictionaryCopy = v56;
  if (v51)
  {
    v52 = getkAXMChartSeriesMeanValueDescriptionKey();
    v53 = [v56 objectForKeyedSubscript:v52];
    meanValueDescription = v51->_meanValueDescription;
    v51->_meanValueDescription = v53;
  }

  self = v51;
  selfCopy2 = self;
  v19 = v63;
  v16 = v64;
LABEL_15:

  return selfCopy2;
}

- (void)_commonInitWithContinuous:(BOOL)continuous dataPoints:(id)points
{
  self->_isContinuous = continuous;
  v5 = [points copy];
  dataPoints = self->_dataPoints;
  self->_dataPoints = v5;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  attributedName = [(AXDataSeriesDescriptor *)self attributedName];
  isContinuous = [(AXDataSeriesDescriptor *)self isContinuous];
  dataPoints = [(AXDataSeriesDescriptor *)self dataPoints];
  v8 = [v4 initWithAttributedName:attributedName isContinuous:isContinuous dataPoints:dataPoints];

  return v8;
}

- (void)setName:(NSString *)name
{
  v4 = name;
  v6 = v4;
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
  }

  attributedName = self->_attributedName;
  self->_attributedName = v4;
}

- (NSString)name
{
  attributedName = [(AXDataSeriesDescriptor *)self attributedName];
  string = [attributedName string];

  return string;
}

- (double)meanYValue
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dataPoints = [(AXDataSeriesDescriptor *)self dataPoints];
  v4 = [dataPoints countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(dataPoints);
        }

        yValue = [*(*(&v15 + 1) + 8 * i) yValue];
        [yValue number];
        v7 = v7 + v10;
      }

      v5 = [dataPoints countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  dataPoints2 = [(AXDataSeriesDescriptor *)self dataPoints];
  v12 = [dataPoints2 count];

  v13 = *MEMORY[0x1E69E9840];
  return v7 / v12;
}

- (id)dictionaryRepresentation
{
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  dataPoints = [(AXDataSeriesDescriptor *)self dataPoints];
  firstObject = [dataPoints firstObject];
  xValue = [firstObject xValue];
  category = [xValue category];

  dataPoints2 = [(AXDataSeriesDescriptor *)self dataPoints];
  v7 = [dataPoints2 count];

  if (v7)
  {
    v65 = 0;
    v66 = 0;
    selfCopy = self;
    v68 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      dataPoints3 = [(AXDataSeriesDescriptor *)self dataPoints];
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
        v19 = v66;
        if (!v66)
        {
          v19 = [(AXDataSeriesDescriptor *)self _mutableArrayOfNSNullWithCount:v9];
        }

        v20 = MEMORY[0x1E696AD98];
        yValue2 = [v13 yValue];
        [yValue2 number];
        v22 = [v20 numberWithDouble:?];
        v66 = v19;
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
        v45 = v65;
        if (!v65)
        {
          v45 = [(AXDataSeriesDescriptor *)selfCopy _mutableArrayOfNSNullWithCount:v9];
        }

        label2 = [v13 label];
        v65 = v45;
        [v45 addObject:label2];
      }

      else
      {
        self = selfCopy;
      }

      ++v9;
      dataPoints4 = [(AXDataSeriesDescriptor *)self dataPoints];
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
          v8 = [(AXDataSeriesDescriptor *)selfCopy _mutableArrayOfNSNullWithCount:v9];
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

        v32 = v68;
        if (!v68)
        {
          v32 = [(AXDataSeriesDescriptor *)selfCopy _mutableArrayOfNSNullWithCount:v9];
        }

        additionalValues4 = [v13 additionalValues];
        v34 = [additionalValues4 objectAtIndexedSubscript:v25];
        [v34 number];
        v36 = v35;

        v68 = v32;
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

  v65 = 0;
  v66 = 0;
  v8 = 0;
  v68 = 0;
LABEL_41:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  attributedName = [(AXDataSeriesDescriptor *)self attributedName];
  v51 = getkAXMChartSeriesNameKey();
  [dictionary setObject:attributedName forKeyedSubscript:v51];

  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXDataSeriesDescriptor isContinuous](self, "isContinuous")}];
  v53 = getkAXMChartSeriesContinuousKey();
  [dictionary setObject:v52 forKeyedSubscript:v53];

  v54 = getkAXMChartSeriesXDataKey();
  [dictionary setObject:array forKeyedSubscript:v54];

  v55 = getkAXMChartSeriesYDataKey();
  [dictionary setObject:v66 forKeyedSubscript:v55];

  v56 = getkAXMChartSeriesZNumericDataKey();
  [dictionary setObject:v68 forKeyedSubscript:v56];

  v57 = getkAXMChartSeriesZCategoricalDataKey();
  [dictionary setObject:v8 forKeyedSubscript:v57];

  v58 = getkAXMChartSeriesValueDescriptionsKey();
  [dictionary setObject:array2 forKeyedSubscript:v58];

  meanValueDescription = [(AXDataSeriesDescriptor *)self meanValueDescription];
  v60 = getkAXMChartSeriesMeanValueDescriptionKey();
  [dictionary setObject:meanValueDescription forKeyedSubscript:v60];

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

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(AXDataSeriesDescriptor *)self name];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXDataSeriesDescriptor isContinuous](self, "isContinuous")}];
  v7 = MEMORY[0x1E696AD98];
  dataPoints = [(AXDataSeriesDescriptor *)self dataPoints];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(dataPoints, "count")}];
  v10 = [v3 stringWithFormat:@"<%@ %p name=%@ continuous=%@ points=%@>", v4, self, name, v6, v9];

  return v10;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1B25D2000, a2, OS_LOG_TYPE_FAULT, "Data is not aligned: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end