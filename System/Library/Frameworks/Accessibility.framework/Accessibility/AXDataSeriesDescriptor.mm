@interface AXDataSeriesDescriptor
- (AXDataSeriesDescriptor)initWithDictionary:(id)a3;
- (NSString)description;
- (NSString)name;
- (double)meanYValue;
- (id)_mutableArrayOfNSNullWithCount:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)_commonInitWithContinuous:(BOOL)a3 dataPoints:(id)a4;
- (void)setName:(NSString *)name;
@end

@implementation AXDataSeriesDescriptor

- (AXDataSeriesDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = getkAXMChartSeriesNameKey();
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = getkAXMChartSeriesContinuousKey();
  v8 = [v4 objectForKeyedSubscript:v7];
  v59 = [v8 BOOLValue];

  v9 = getkAXMChartSeriesXDataKey();
  v10 = [v4 objectForKeyedSubscript:v9];

  v11 = getkAXMChartSeriesYDataKey();
  v12 = [v4 objectForKeyedSubscript:v11];

  v13 = getkAXMChartSeriesZNumericDataKey();
  v14 = [v4 objectForKeyedSubscript:v13];

  v15 = getkAXMChartSeriesZCategoricalDataKey();
  v16 = [v4 objectForKeyedSubscript:v15];

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

  v19 = [v4 objectForKeyedSubscript:*v17];
  v20 = getkAXMChartSeriesValueDescriptionsKey();
  v65 = [v4 objectForKeyedSubscript:v20];

  v21 = [v10 count];
  if (v21 != [v12 count] && v12 || (v22 = objc_msgSend(v10, "count"), v22 != objc_msgSend(v14, "count")) && v14 || (v23 = objc_msgSend(v10, "count"), v23 != objc_msgSend(v16, "count")) && v16 || (v24 = objc_msgSend(v10, "count"), v24 != objc_msgSend(v19, "count")) && v19)
  {
    v25 = AXAudioGraphLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [(AXDataSeriesDescriptor *)v4 initWithDictionary:v25];
    }

    v26 = 0;
    goto LABEL_15;
  }

  v63 = v19;
  v64 = v16;
  v57 = self;
  v58 = v6;
  v62 = [MEMORY[0x1E695DF70] array];
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
      v47 = [MEMORY[0x1E695DF70] array];
      v48 = v47;
      if (v41)
      {
        [v47 addObject:v41];
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
      [v62 addObject:v50];

      ++v28;
      v10 = v61;
      v12 = v42;
      v14 = v60;
      v29 = 0x1E7B2C000;
    }

    while (v28 < [v61 count]);
  }

  v6 = v58;
  v25 = v62;
  v51 = [(AXDataSeriesDescriptor *)v57 initWithAttributedName:v58 isContinuous:v59 dataPoints:v62];
  v4 = v56;
  if (v51)
  {
    v52 = getkAXMChartSeriesMeanValueDescriptionKey();
    v53 = [v56 objectForKeyedSubscript:v52];
    meanValueDescription = v51->_meanValueDescription;
    v51->_meanValueDescription = v53;
  }

  self = v51;
  v26 = self;
  v19 = v63;
  v16 = v64;
LABEL_15:

  return v26;
}

- (void)_commonInitWithContinuous:(BOOL)a3 dataPoints:(id)a4
{
  self->_isContinuous = a3;
  v5 = [a4 copy];
  dataPoints = self->_dataPoints;
  self->_dataPoints = v5;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AXDataSeriesDescriptor *)self attributedName];
  v6 = [(AXDataSeriesDescriptor *)self isContinuous];
  v7 = [(AXDataSeriesDescriptor *)self dataPoints];
  v8 = [v4 initWithAttributedName:v5 isContinuous:v6 dataPoints:v7];

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
  v2 = [(AXDataSeriesDescriptor *)self attributedName];
  v3 = [v2 string];

  return v3;
}

- (double)meanYValue
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(AXDataSeriesDescriptor *)self dataPoints];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) yValue];
        [v9 number];
        v7 = v7 + v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v11 = [(AXDataSeriesDescriptor *)self dataPoints];
  v12 = [v11 count];

  v13 = *MEMORY[0x1E69E9840];
  return v7 / v12;
}

- (id)dictionaryRepresentation
{
  v64 = [MEMORY[0x1E695DF70] array];
  v63 = [MEMORY[0x1E695DF70] array];
  v3 = [(AXDataSeriesDescriptor *)self dataPoints];
  v4 = [v3 firstObject];
  v5 = [v4 xValue];
  v62 = [v5 category];

  v6 = [(AXDataSeriesDescriptor *)self dataPoints];
  v7 = [v6 count];

  if (v7)
  {
    v65 = 0;
    v66 = 0;
    v67 = self;
    v68 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v12 = [(AXDataSeriesDescriptor *)self dataPoints];
      v13 = [v12 objectAtIndexedSubscript:v9];

      v14 = [v13 valueDescription];
      [v63 addObject:v14];

      if (v62)
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
      [v64 addObject:v17];

      v18 = [v13 yValue];

      if (v18)
      {
        v19 = v66;
        if (!v66)
        {
          v19 = [(AXDataSeriesDescriptor *)self _mutableArrayOfNSNullWithCount:v9];
        }

        v20 = MEMORY[0x1E696AD98];
        v21 = [v13 yValue];
        [v21 number];
        v22 = [v20 numberWithDouble:?];
        v66 = v19;
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
        self = v67;
        v45 = v65;
        if (!v65)
        {
          v45 = [(AXDataSeriesDescriptor *)v67 _mutableArrayOfNSNullWithCount:v9];
        }

        v46 = [v13 label];
        v65 = v45;
        [v45 addObject:v46];
      }

      else
      {
        self = v67;
      }

      ++v9;
      v47 = [(AXDataSeriesDescriptor *)self dataPoints];
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
          v8 = [(AXDataSeriesDescriptor *)v67 _mutableArrayOfNSNullWithCount:v9];
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

        v32 = v68;
        if (!v68)
        {
          v32 = [(AXDataSeriesDescriptor *)v67 _mutableArrayOfNSNullWithCount:v9];
        }

        v33 = [v13 additionalValues];
        v34 = [v33 objectAtIndexedSubscript:v25];
        [v34 number];
        v36 = v35;

        v68 = v32;
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

  v65 = 0;
  v66 = 0;
  v8 = 0;
  v68 = 0;
LABEL_41:
  v49 = [MEMORY[0x1E695DF90] dictionary];
  v50 = [(AXDataSeriesDescriptor *)self attributedName];
  v51 = getkAXMChartSeriesNameKey();
  [v49 setObject:v50 forKeyedSubscript:v51];

  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXDataSeriesDescriptor isContinuous](self, "isContinuous")}];
  v53 = getkAXMChartSeriesContinuousKey();
  [v49 setObject:v52 forKeyedSubscript:v53];

  v54 = getkAXMChartSeriesXDataKey();
  [v49 setObject:v64 forKeyedSubscript:v54];

  v55 = getkAXMChartSeriesYDataKey();
  [v49 setObject:v66 forKeyedSubscript:v55];

  v56 = getkAXMChartSeriesZNumericDataKey();
  [v49 setObject:v68 forKeyedSubscript:v56];

  v57 = getkAXMChartSeriesZCategoricalDataKey();
  [v49 setObject:v8 forKeyedSubscript:v57];

  v58 = getkAXMChartSeriesValueDescriptionsKey();
  [v49 setObject:v63 forKeyedSubscript:v58];

  v59 = [(AXDataSeriesDescriptor *)self meanValueDescription];
  v60 = getkAXMChartSeriesMeanValueDescriptionKey();
  [v49 setObject:v59 forKeyedSubscript:v60];

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

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXDataSeriesDescriptor *)self name];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXDataSeriesDescriptor isContinuous](self, "isContinuous")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(AXDataSeriesDescriptor *)self dataPoints];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v10 = [v3 stringWithFormat:@"<%@ %p name=%@ continuous=%@ points=%@>", v4, self, v5, v6, v9];

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