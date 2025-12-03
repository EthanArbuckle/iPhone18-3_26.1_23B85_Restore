@interface AXChartDescriptor
- (AXChartDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series;
- (AXChartDescriptor)initWithDictionary:(id)dictionary;
- (AXChartDescriptor)initWithTitle:(NSString *)title summary:(NSString *)summary xAxisDescriptor:(id)xAxis yAxisDescriptor:(AXNumericDataAxisDescriptor *)yAxis additionalAxes:(NSArray *)additionalAxes series:(NSArray *)series;
- (CGRect)contentFrame;
- (NSString)description;
- (NSString)title;
- (id)_additionalCategoricalAxis;
- (id)_additionalNumericAxis;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)_commonInitWithSummary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series;
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

- (AXChartDescriptor)initWithDictionary:(id)dictionary
{
  v91 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v3 = getkAXMChartTitleKey();
  v65 = [dictionaryCopy objectForKeyedSubscript:v3];

  v4 = getkAXMChartSummaryKey();
  v64 = [dictionaryCopy objectForKeyedSubscript:v4];

  v5 = getkAXMChartContentDirectionKey();
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];
  integerValue = [v6 integerValue];

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

  v60 = integerValue;
  v10 = [dictionaryCopy objectForKeyedSubscript:*v8];
  [v10 AXMRectValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = getkAXMChartXAxisKey();
  v69 = [dictionaryCopy objectForKeyedSubscript:v19];

  v20 = getkAXMChartYAxisKey();
  v68 = [dictionaryCopy objectForKeyedSubscript:v20];

  v21 = getkAXMChartAdditionalAxesKey();
  v22 = [dictionaryCopy objectForKeyedSubscript:v21];

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
  v41 = [dictionaryCopy objectForKeyedSubscript:v40];

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
  array = [MEMORY[0x1E695DF70] array];
  v50 = array;
  if (v67)
  {
    [array addObject:v67];
  }

  if (v66)
  {
    [v50 addObject:v66];
  }

  array2 = [MEMORY[0x1E695DF70] array];
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
        [array2 addObject:v56];
      }

      v53 = [v52 countByEnumeratingWithState:&v72 objects:v89 count:16];
    }

    while (v53);
  }

  v57 = [(AXChartDescriptor *)self initWithAttributedTitle:v65 summary:v64 xAxisDescriptor:v63 yAxisDescriptor:v62 additionalAxes:v50 series:array2];
  [(AXChartDescriptor *)v57 setContentDirection:v60];
  [(AXChartDescriptor *)v57 setContentFrame:v12, v14, v16, v18];

  v58 = *MEMORY[0x1E69E9840];
  return v57;
}

- (void)_commonInitWithSummary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series
{
  v41 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  descriptorCopy = descriptor;
  axisDescriptorCopy = axisDescriptor;
  axesCopy = axes;
  seriesCopy = series;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  identifier = self->_identifier;
  self->_identifier = uUID;

  v19 = [summaryCopy copy];
  summary = self->_summary;
  self->_summary = v19;

  objc_storeStrong(&self->_xAxis, descriptor);
  objc_storeStrong(&self->_yAxis, axisDescriptor);
  v21 = [axesCopy copy];
  additionalAxes = self->_additionalAxes;
  self->_additionalAxes = v21;

  v23 = [seriesCopy copy];
  series = self->_series;
  self->_series = v23;

  if (axisDescriptorCopy)
  {
    v34 = descriptorCopy;
    v35 = summaryCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = seriesCopy;
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
          valueDescriptionProvider = [axisDescriptorCopy valueDescriptionProvider];
          [v30 meanYValue];
          v32 = valueDescriptionProvider[2](valueDescriptionProvider);

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

    descriptorCopy = v34;
    summaryCopy = v35;
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AXChartDescriptor allocWithZone:zone];
  attributedTitle = [(AXChartDescriptor *)self attributedTitle];
  summary = [(AXChartDescriptor *)self summary];
  xAxis = [(AXChartDescriptor *)self xAxis];
  yAxis = [(AXChartDescriptor *)self yAxis];
  additionalAxes = [(AXChartDescriptor *)self additionalAxes];
  series = [(AXChartDescriptor *)self series];
  v11 = [(AXChartDescriptor *)v4 initWithAttributedTitle:attributedTitle summary:summary xAxisDescriptor:xAxis yAxisDescriptor:yAxis additionalAxes:additionalAxes series:series];

  return v11;
}

- (NSString)title
{
  attributedTitle = [(AXChartDescriptor *)self attributedTitle];
  string = [attributedTitle string];

  return string;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  xAxis = [(AXChartDescriptor *)self xAxis];
  dictionaryRepresentation = [xAxis dictionaryRepresentation];

  yAxis = [(AXChartDescriptor *)self yAxis];
  dictionaryRepresentation2 = [yAxis dictionaryRepresentation];

  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  additionalAxes = [(AXChartDescriptor *)self additionalAxes];
  v9 = [additionalAxes countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(additionalAxes);
        }

        dictionaryRepresentation3 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation3];
      }

      v10 = [additionalAxes countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  series = [(AXChartDescriptor *)self series];
  v16 = [series countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(series);
        }

        dictionaryRepresentation4 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
        [array2 addObject:dictionaryRepresentation4];
      }

      v17 = [series countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v17);
  }

  attributedTitle = [(AXChartDescriptor *)self attributedTitle];
  v22 = getkAXMChartTitleKey();
  [dictionary setObject:attributedTitle forKeyedSubscript:v22];

  summary = [(AXChartDescriptor *)self summary];
  v24 = getkAXMChartSummaryKey();
  [dictionary setObject:summary forKeyedSubscript:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXChartDescriptor contentDirection](self, "contentDirection")}];
  v26 = getkAXMChartContentDirectionKey();
  [dictionary setObject:v25 forKeyedSubscript:v26];

  v27 = getkAXMChartXAxisKey();
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:v27];

  v28 = getkAXMChartYAxisKey();
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:v28];

  v29 = getkAXMChartAdditionalAxesKey();
  [dictionary setObject:array forKeyedSubscript:v29];

  v30 = getkAXMChartSeriesKey();
  [dictionary setObject:array2 forKeyedSubscript:v30];

  v31 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)computeValueDescriptionsIfNeeded
{
  selfCopy = self;
  v53 = *MEMORY[0x1E69E9840];
  series = [(AXChartDescriptor *)self series];
  firstObject = [series firstObject];
  dataPoints = [firstObject dataPoints];
  firstObject2 = [dataPoints firstObject];
  valueDescription = [firstObject2 valueDescription];

  if (!valueDescription)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [(AXChartDescriptor *)selfCopy series];
    v34 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v34)
    {
      v33 = *v48;
      v37 = selfCopy;
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
          dataPoints2 = [*(*(&v47 + 1) + 8 * v8) dataPoints];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v36 = dataPoints2;
          v39 = [dataPoints2 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
                xAxis = [(AXChartDescriptor *)selfCopy xAxis];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  xAxis2 = [(AXChartDescriptor *)selfCopy xAxis];
                }

                else
                {
                  xAxis2 = 0;
                }

                yAxis = [(AXChartDescriptor *)selfCopy yAxis];
                _additionalNumericAxis = [(AXChartDescriptor *)selfCopy _additionalNumericAxis];
                v42 = xAxis2;
                if (xAxis2)
                {
                  valueDescriptionProvider = [xAxis2 valueDescriptionProvider];
                  xValue = [v11 xValue];
                  [xValue number];
                  category = valueDescriptionProvider[2](valueDescriptionProvider);
                }

                else
                {
                  valueDescriptionProvider = [v11 xValue];
                  category = [valueDescriptionProvider category];
                }

                valueDescriptionProvider2 = [yAxis valueDescriptionProvider];

                v41 = yAxis;
                if (valueDescriptionProvider2)
                {
                  valueDescriptionProvider3 = [yAxis valueDescriptionProvider];
                  yValue = [v11 yValue];
                  [yValue number];
                  v22 = valueDescriptionProvider3[2](valueDescriptionProvider3);
                }

                else
                {
                  v22 = 0;
                }

                _additionalNumericValue = [v11 _additionalNumericValue];
                v40 = _additionalNumericAxis;
                if (_additionalNumericValue)
                {
                  valueDescriptionProvider4 = [_additionalNumericAxis valueDescriptionProvider];
                  [_additionalNumericValue doubleValue];
                  v25 = valueDescriptionProvider4[2](valueDescriptionProvider4);
                }

                else
                {
                  v25 = 0;
                }

                _additionalCategoricalValue = [v11 _additionalCategoricalValue];
                label = [v11 label];
                array = [MEMORY[0x1E695DF70] array];
                v29 = array;
                if (label)
                {
                  [array addObject:label];
                }

                if (category)
                {
                  [v29 addObject:category];
                }

                if (v22)
                {
                  [v29 addObject:v22];
                }

                if (v25)
                {
                  [v29 addObject:v25];
                }

                if (_additionalCategoricalValue)
                {
                  [v29 addObject:_additionalCategoricalValue];
                }

                v30 = [v29 componentsJoinedByString:{@", "}];
                [v11 setValueDescription:v30];

                selfCopy = v37;
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
  array = [MEMORY[0x1E695DF70] array];
  xAxis = [(AXChartDescriptor *)self xAxis];
  [array addObject:xAxis];

  yAxis = [(AXChartDescriptor *)self yAxis];

  if (yAxis)
  {
    yAxis2 = [(AXChartDescriptor *)self yAxis];
    [array addObject:yAxis2];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  additionalAxes = [(AXChartDescriptor *)self additionalAxes];
  v8 = [additionalAxes countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(additionalAxes);
        }

        [array addObject:*(*(&v20 + 1) + 8 * i)];
      }

      v9 = [additionalAxes countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  title = [(AXChartDescriptor *)self title];
  summary = [(AXChartDescriptor *)self summary];
  series = [(AXChartDescriptor *)self series];
  v17 = [v12 stringWithFormat:@"<%@ %p\n\ttitle=%@\n\tsummary=%@\n\tAxes:\n\t%@Series:\n\t%@>", v13, self, title, summary, array, series];

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