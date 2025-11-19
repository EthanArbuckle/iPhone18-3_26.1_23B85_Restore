@interface AXChartDescriptor
- (AXChartDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series;
- (AXChartDescriptor)initWithDictionary:(id)a3;
- (AXChartDescriptor)initWithTitle:(NSString *)title summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series;
- (CGRect)contentFrame;
- (NSString)description;
- (NSString)title;
- (id)_additionalCategoricalAxis;
- (id)_additionalNumericAxis;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)_commonInitWithSummary:(id)a3 xAxisDescriptor:(id)a4 yAxisDescriptor:(id)a5 additionalAxes:(id)a6 series:(id)a7;
- (void)computeValueDescriptionsIfNeeded;
- (void)setTitle:(NSString *)title;
@end

@implementation AXChartDescriptor

- (AXChartDescriptor)initWithTitle:(NSString *)title summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series
{
  v14 = title;
  v15 = summary;
  v16 = xAxis;
  v17 = yAxis;
  v18 = additionalAxes;
  v19 = series;
  v23.receiver = self;
  v23.super_class = AXChartDescriptor;
  v20 = [(AXChartDescriptor *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(AXChartDescriptor *)v20 setTitle:v14];
    [(AXChartDescriptor *)v21 _commonInitWithSummary:v15 xAxisDescriptor:v16 yAxisDescriptor:v17 additionalAxes:v18 series:v19];
  }

  return v21;
}

- (AXChartDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series
{
  v15 = attributedTitle;
  v16 = summary;
  v17 = xAxis;
  v18 = yAxis;
  v19 = additionalAxes;
  v20 = series;
  v24.receiver = self;
  v24.super_class = AXChartDescriptor;
  v21 = [(AXChartDescriptor *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_attributedTitle, attributedTitle);
    [(AXChartDescriptor *)v22 _commonInitWithSummary:v16 xAxisDescriptor:v17 yAxisDescriptor:v18 additionalAxes:v19 series:v20];
  }

  return v22;
}

- (AXChartDescriptor)initWithDictionary:(id)a3
{
  v91 = *MEMORY[0x1E69E9840];
  v70 = a3;
  v3 = getkAXMChartTitleKey();
  v65 = [v70 objectForKeyedSubscript:v3];

  v4 = getkAXMChartSummaryKey();
  v64 = [v70 objectForKeyedSubscript:v4];

  v5 = getkAXMChartContentDirectionKey();
  v6 = [v70 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v8 = getkAXMChartContentFrameKeySymbolLoc_ptr;
  v88 = getkAXMChartContentFrameKeySymbolLoc_ptr;
  if (!getkAXMChartContentFrameKeySymbolLoc_ptr)
  {
    v80 = MEMORY[0x1E69E9820];
    v81 = 3221225472;
    v82 = __getkAXMChartContentFrameKeySymbolLoc_block_invoke;
    v83 = &unk_1E7B2CF78;
    v84 = &v85;
    v9 = AXMediaUtilitiesLibrary();
    v86[3] = dlsym(v9, "kAXMChartContentFrameKey");
    getkAXMChartContentFrameKeySymbolLoc_ptr = *(v84[1] + 24);
    v8 = v86[3];
  }

  _Block_object_dispose(&v85, 8);
  if (!v8)
  {
    AXAnimatedImagesEnabled_cold_1();
    __break(1u);
  }

  v60 = v7;
  v10 = [v70 objectForKeyedSubscript:*v8];
  [v10 AXMRectValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = getkAXMChartXAxisKey();
  v69 = [v70 objectForKeyedSubscript:v19];

  v20 = getkAXMChartYAxisKey();
  v68 = [v70 objectForKeyedSubscript:v20];

  v21 = getkAXMChartAdditionalAxesKey();
  v22 = [v70 objectForKeyedSubscript:v21];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v22;
  v23 = 0;
  v24 = 0;
  v25 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v25)
  {
    v26 = *v77;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v77 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v76 + 1) + 8 * i);
        v29 = getkAXMChartAxisTypeKey();
        v30 = [v28 objectForKeyedSubscript:v29];
        v31 = getkAXMChartAxisTypeNumeric();
        v32 = [v30 isEqualToString:v31];

        if (v32)
        {
          v33 = v24;
          v34 = v23;
          v24 = v28;
        }

        else
        {
          v35 = getkAXMChartAxisTypeKey();
          v36 = [v28 objectForKeyedSubscript:v35];
          v37 = getkAXMChartAxisTypeCategorical();
          v38 = [v36 isEqualToString:v37];

          v33 = v23;
          v34 = v28;
          if (!v38)
          {
            continue;
          }
        }

        v39 = v28;

        v23 = v34;
      }

      v25 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v25);
  }

  v40 = getkAXMChartSeriesKey();
  v41 = [v70 objectForKeyedSubscript:v40];

  v42 = getkAXMChartAxisTypeKey();
  v43 = [v69 objectForKeyedSubscript:v42];
  v44 = getkAXMChartAxisTypeCategorical();
  v45 = [v43 isEqualToString:v44];
  v46 = off_1E7B2CD50;
  if (!v45)
  {
    v46 = off_1E7B2CD90;
  }

  v47 = *v46;
  v48 = objc_opt_class();

  v63 = [[v48 alloc] initWithDictionary:v69];
  if (v68)
  {
    v62 = [[AXNumericDataAxisDescriptor alloc] initWithDictionary:v68];
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_22:
    v67 = 0;
    if (v23)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v62 = 0;
  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  v67 = [[AXNumericDataAxisDescriptor alloc] initWithDictionary:v24];
  if (v23)
  {
LABEL_20:
    v66 = [[AXCategoricalDataAxisDescriptor alloc] initWithDictionary:v23];
    goto LABEL_24;
  }

LABEL_23:
  v66 = 0;
LABEL_24:
  v49 = [MEMORY[0x1E695DF70] array];
  v50 = v49;
  if (v67)
  {
    [v49 addObject:v67];
  }

  if (v66)
  {
    [v50 addObject:v66];
  }

  v51 = [MEMORY[0x1E695DF70] array];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v52 = v41;
  v53 = [v52 countByEnumeratingWithState:&v72 objects:v89 count:16];
  if (v53)
  {
    v54 = *v73;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v73 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = [[AXDataSeriesDescriptor alloc] initWithDictionary:*(*(&v72 + 1) + 8 * j)];
        [v51 addObject:v56];
      }

      v53 = [v52 countByEnumeratingWithState:&v72 objects:v89 count:16];
    }

    while (v53);
  }

  v57 = [(AXChartDescriptor *)self initWithAttributedTitle:v65 summary:v64 xAxisDescriptor:v63 yAxisDescriptor:v62 additionalAxes:v50 series:v51];
  [(AXChartDescriptor *)v57 setContentDirection:v60];
  [(AXChartDescriptor *)v57 setContentFrame:v12, v14, v16, v18];

  v58 = *MEMORY[0x1E69E9840];
  return v57;
}

- (void)_commonInitWithSummary:(id)a3 xAxisDescriptor:(id)a4 yAxisDescriptor:(id)a5 additionalAxes:(id)a6 series:(id)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x1E696AFB0] UUID];
  identifier = self->_identifier;
  self->_identifier = v17;

  v19 = [v12 copy];
  summary = self->_summary;
  self->_summary = v19;

  objc_storeStrong(&self->_xAxis, a4);
  objc_storeStrong(&self->_yAxis, a5);
  v21 = [v15 copy];
  additionalAxes = self->_additionalAxes;
  self->_additionalAxes = v21;

  v23 = [v16 copy];
  series = self->_series;
  self->_series = v23;

  if (v14)
  {
    v34 = v13;
    v35 = v12;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v16;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        v29 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v36 + 1) + 8 * v29);
          v31 = [v14 valueDescriptionProvider];
          [v30 meanYValue];
          v32 = v31[2](v31);

          if ([v32 length])
          {
            [v30 setMeanValueDescription:v32];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v27);
    }

    v13 = v34;
    v12 = v35;
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AXChartDescriptor allocWithZone:a3];
  v5 = [(AXChartDescriptor *)self attributedTitle];
  v6 = [(AXChartDescriptor *)self summary];
  v7 = [(AXChartDescriptor *)self xAxis];
  v8 = [(AXChartDescriptor *)self yAxis];
  v9 = [(AXChartDescriptor *)self additionalAxes];
  v10 = [(AXChartDescriptor *)self series];
  v11 = [(AXChartDescriptor *)v4 initWithAttributedTitle:v5 summary:v6 xAxisDescriptor:v7 yAxisDescriptor:v8 additionalAxes:v9 series:v10];

  return v11;
}

- (NSString)title
{
  v2 = [(AXChartDescriptor *)self attributedTitle];
  v3 = [v2 string];

  return v3;
}

- (void)setTitle:(NSString *)title
{
  v4 = title;
  v6 = v4;
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
  }

  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = v4;
}

- (id)dictionaryRepresentation
{
  v44 = *MEMORY[0x1E69E9840];
  [(AXChartDescriptor *)self computeValueDescriptionsIfNeeded];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXChartDescriptor *)self xAxis];
  v33 = [v4 dictionaryRepresentation];

  v5 = [(AXChartDescriptor *)self yAxis];
  v6 = [v5 dictionaryRepresentation];

  v7 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [(AXChartDescriptor *)self additionalAxes];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = [(AXChartDescriptor *)self series];
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v17);
  }

  v21 = [(AXChartDescriptor *)self attributedTitle];
  v22 = getkAXMChartTitleKey();
  [v3 setObject:v21 forKeyedSubscript:v22];

  v23 = [(AXChartDescriptor *)self summary];
  v24 = getkAXMChartSummaryKey();
  [v3 setObject:v23 forKeyedSubscript:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXChartDescriptor contentDirection](self, "contentDirection")}];
  v26 = getkAXMChartContentDirectionKey();
  [v3 setObject:v25 forKeyedSubscript:v26];

  v27 = getkAXMChartXAxisKey();
  [v3 setObject:v33 forKeyedSubscript:v27];

  v28 = getkAXMChartYAxisKey();
  [v3 setObject:v6 forKeyedSubscript:v28];

  v29 = getkAXMChartAdditionalAxesKey();
  [v3 setObject:v7 forKeyedSubscript:v29];

  v30 = getkAXMChartSeriesKey();
  [v3 setObject:v14 forKeyedSubscript:v30];

  v31 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)computeValueDescriptionsIfNeeded
{
  v2 = self;
  v53 = *MEMORY[0x1E69E9840];
  v3 = [(AXChartDescriptor *)self series];
  v4 = [v3 firstObject];
  v5 = [v4 dataPoints];
  v6 = [v5 firstObject];
  v7 = [v6 valueDescription];

  if (!v7)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [(AXChartDescriptor *)v2 series];
    v34 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v34)
    {
      v33 = *v48;
      v37 = v2;
      do
      {
        v8 = 0;
        do
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v8;
          v9 = [*(*(&v47 + 1) + 8 * v8) dataPoints];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v36 = v9;
          v39 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v39)
          {
            v38 = *v44;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v44 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v11 = *(*(&v43 + 1) + 8 * i);
                v12 = [(AXChartDescriptor *)v2 xAxis];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v13 = [(AXChartDescriptor *)v2 xAxis];
                }

                else
                {
                  v13 = 0;
                }

                v14 = [(AXChartDescriptor *)v2 yAxis];
                v15 = [(AXChartDescriptor *)v2 _additionalNumericAxis];
                v42 = v13;
                if (v13)
                {
                  v16 = [v13 valueDescriptionProvider];
                  v17 = [v11 xValue];
                  [v17 number];
                  v18 = v16[2](v16);
                }

                else
                {
                  v16 = [v11 xValue];
                  v18 = [v16 category];
                }

                v19 = [v14 valueDescriptionProvider];

                v41 = v14;
                if (v19)
                {
                  v20 = [v14 valueDescriptionProvider];
                  v21 = [v11 yValue];
                  [v21 number];
                  v22 = v20[2](v20);
                }

                else
                {
                  v22 = 0;
                }

                v23 = [v11 _additionalNumericValue];
                v40 = v15;
                if (v23)
                {
                  v24 = [v15 valueDescriptionProvider];
                  [v23 doubleValue];
                  v25 = v24[2](v24);
                }

                else
                {
                  v25 = 0;
                }

                v26 = [v11 _additionalCategoricalValue];
                v27 = [v11 label];
                v28 = [MEMORY[0x1E695DF70] array];
                v29 = v28;
                if (v27)
                {
                  [v28 addObject:v27];
                }

                if (v18)
                {
                  [v29 addObject:v18];
                }

                if (v22)
                {
                  [v29 addObject:v22];
                }

                if (v25)
                {
                  [v29 addObject:v25];
                }

                if (v26)
                {
                  [v29 addObject:v26];
                }

                v30 = [v29 componentsJoinedByString:{@", "}];
                [v11 setValueDescription:v30];

                v2 = v37;
              }

              v39 = [v36 countByEnumeratingWithState:&v43 objects:v51 count:16];
            }

            while (v39);
          }

          v8 = v35 + 1;
        }

        while (v35 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v34);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)_additionalNumericAxis
{
  v14 = *MEMORY[0x1E69E9840];
  [(AXChartDescriptor *)self additionalAxes];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_additionalCategoricalAxis
{
  v14 = *MEMORY[0x1E69E9840];
  [(AXChartDescriptor *)self additionalAxes];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)description
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AXChartDescriptor *)self xAxis];
  [v3 addObject:v4];

  v5 = [(AXChartDescriptor *)self yAxis];

  if (v5)
  {
    v6 = [(AXChartDescriptor *)self yAxis];
    [v3 addObject:v6];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(AXChartDescriptor *)self additionalAxes];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v3 addObject:*(*(&v20 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = [(AXChartDescriptor *)self title];
  v15 = [(AXChartDescriptor *)self summary];
  v16 = [(AXChartDescriptor *)self series];
  v17 = [v12 stringWithFormat:@"<%@ %p\n\ttitle=%@\n\tsummary=%@\n\tAxes:\n\t%@Series:\n\t%@>", v13, self, v14, v15, v3, v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end