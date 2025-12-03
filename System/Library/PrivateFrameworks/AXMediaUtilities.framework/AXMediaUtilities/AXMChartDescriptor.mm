@interface AXMChartDescriptor
- (AXMCategoricalDataAxisDescriptor)timbreAxisDescriptor;
- (AXMCategoricalDataAxisDescriptor)timeCategoricalAxisDescriptor;
- (AXMChartDescriptor)initWithAttributedTitle:(id)title summary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series;
- (AXMChartDescriptor)initWithDictionary:(id)dictionary;
- (AXMChartDescriptor)initWithTitle:(id)title summary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series;
- (AXMNumericDataAxisDescriptor)durationAxisDescriptor;
- (AXMNumericDataAxisDescriptor)pitchAxisDescriptor;
- (AXMNumericDataAxisDescriptor)timeNumericAxisDescriptor;
- (AXMNumericDataAxisDescriptor)volumeAxisDescriptor;
- (CGRect)contentFrame;
- (NSString)description;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)zCategoricalAxisDescriptor;
- (id)zNumericAxisDescriptor;
- (void)_commonInitWithSummary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series;
- (void)generateDataSummariesWithCompletion:(id)completion;
- (void)setTitle:(id)title;
@end

@implementation AXMChartDescriptor

- (AXMChartDescriptor)initWithTitle:(id)title summary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series
{
  titleCopy = title;
  summaryCopy = summary;
  descriptorCopy = descriptor;
  axisDescriptorCopy = axisDescriptor;
  axesCopy = axes;
  seriesCopy = series;
  v24.receiver = self;
  v24.super_class = AXMChartDescriptor;
  v20 = [(AXMChartDescriptor *)&v24 init];
  if (v20)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy];
    attributedTitle = v20->_attributedTitle;
    v20->_attributedTitle = v21;

    [(AXMChartDescriptor *)v20 _commonInitWithSummary:summaryCopy xAxisDescriptor:descriptorCopy yAxisDescriptor:axisDescriptorCopy additionalAxes:axesCopy series:seriesCopy];
  }

  return v20;
}

- (AXMChartDescriptor)initWithAttributedTitle:(id)title summary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series
{
  titleCopy = title;
  summaryCopy = summary;
  descriptorCopy = descriptor;
  axisDescriptorCopy = axisDescriptor;
  axesCopy = axes;
  seriesCopy = series;
  v24.receiver = self;
  v24.super_class = AXMChartDescriptor;
  v21 = [(AXMChartDescriptor *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_attributedTitle, title);
    [(AXMChartDescriptor *)v22 _commonInitWithSummary:summaryCopy xAxisDescriptor:descriptorCopy yAxisDescriptor:axisDescriptorCopy additionalAxes:axesCopy series:seriesCopy];
  }

  return v22;
}

- (AXMChartDescriptor)initWithDictionary:(id)dictionary
{
  v68 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v3 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartTitleKey"];
  v52 = v3;
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
    }

    v51 = v5;
  }

  else
  {
    v51 = 0;
  }

  v50 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSummaryKey"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartContentDirectionKey"];
  integerValue = [v6 integerValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartContentFrameKey"];
  [v7 AXMRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v54 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartXAxisKey"];
  v53 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartYAxisKey"];
  [dictionaryCopy objectForKeyedSubscript:@"kAXMChartAdditionalAxesKey"];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v16 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (!v16)
  {
    v18 = 0;
    v57 = 0;
    goto LABEL_20;
  }

  v17 = v16;
  v18 = 0;
  v57 = 0;
  v19 = *v63;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v63 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v62 + 1) + 8 * i);
      v22 = [(AXMNumericDataAxisDescriptor *)v21 objectForKeyedSubscript:@"kAXMChartAxisType"];
      v23 = [v22 isEqualToString:@"numeric"];

      if (v23)
      {
        v24 = v57;
        v25 = v18;
        v57 = v21;
      }

      else
      {
        v26 = [(AXMNumericDataAxisDescriptor *)v21 objectForKeyedSubscript:@"kAXMChartAxisType"];
        v27 = [v26 isEqualToString:@"categorical"];

        v24 = v18;
        v25 = v21;
        if (!v27)
        {
          continue;
        }
      }

      v28 = v21;

      v18 = v25;
    }

    v17 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  }

  while (v17);
LABEL_20:
  v29 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartSeriesKey"];
  v30 = [v54 objectForKeyedSubscript:@"kAXMChartAxisType"];
  [v30 isEqualToString:@"categorical"];
  v31 = objc_opt_class();

  v46 = [[v31 alloc] initWithDictionary:v54];
  if (v53)
  {
    v47 = [[AXMNumericDataAxisDescriptor alloc] initWithDictionary:v53];
  }

  else
  {
    v47 = 0;
  }

  v32 = v57;
  if (v57)
  {
    v32 = [[AXMNumericDataAxisDescriptor alloc] initWithDictionary:v57];
  }

  if (v18)
  {
    v33 = [[AXMCategoricalDataAxisDescriptor alloc] initWithDictionary:v18];
  }

  else
  {
    v33 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v35 = array;
  if (v32)
  {
    [array addObject:v32];
  }

  if (v33)
  {
    [v35 addObject:v33];
  }

  v45 = v32;
  array2 = [MEMORY[0x1E695DF70] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v37 = v29;
  v38 = [v37 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v59;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [[AXMDataSeriesDescriptor alloc] initWithDictionary:*(*(&v58 + 1) + 8 * j)];
        [array2 addObject:v42];
      }

      v39 = [v37 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v39);
  }

  v43 = [(AXMChartDescriptor *)self initWithAttributedTitle:v51 summary:v50 xAxisDescriptor:v46 yAxisDescriptor:v47 additionalAxes:v35 series:array2];
  [(AXMChartDescriptor *)v43 setContentDirection:integerValue];
  [(AXMChartDescriptor *)v43 setContentFrame:v9, v11, v13, v15];

  return v43;
}

- (void)_commonInitWithSummary:(id)summary xAxisDescriptor:(id)descriptor yAxisDescriptor:(id)axisDescriptor additionalAxes:(id)axes series:(id)series
{
  descriptorCopy = descriptor;
  axisDescriptorCopy = axisDescriptor;
  seriesCopy = series;
  axesCopy = axes;
  v16 = [summary copy];
  summary = self->_summary;
  self->_summary = v16;

  xAxis = self->_xAxis;
  self->_xAxis = descriptorCopy;
  v25 = descriptorCopy;

  yAxis = self->_yAxis;
  self->_yAxis = axisDescriptorCopy;
  v20 = axisDescriptorCopy;

  v21 = [axesCopy copy];
  additionalAxes = self->_additionalAxes;
  self->_additionalAxes = v21;

  v23 = [seriesCopy copy];
  series = self->_series;
  self->_series = v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AXMChartDescriptor allocWithZone:zone];
  attributedTitle = [(AXMChartDescriptor *)self attributedTitle];
  summary = [(AXMChartDescriptor *)self summary];
  xAxis = [(AXMChartDescriptor *)self xAxis];
  yAxis = [(AXMChartDescriptor *)self yAxis];
  additionalAxes = [(AXMChartDescriptor *)self additionalAxes];
  series = [(AXMChartDescriptor *)self series];
  v11 = [(AXMChartDescriptor *)v4 initWithAttributedTitle:attributedTitle summary:summary xAxisDescriptor:xAxis yAxisDescriptor:yAxis additionalAxes:additionalAxes series:series];

  return v11;
}

- (NSString)title
{
  attributedTitle = [(AXMChartDescriptor *)self attributedTitle];
  string = [attributedTitle string];

  return string;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v6 = titleCopy;
  if (titleCopy)
  {
    titleCopy = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy];
  }

  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = titleCopy;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  xAxis = [(AXMChartDescriptor *)self xAxis];
  dictionaryRepresentation = [xAxis dictionaryRepresentation];

  yAxis = [(AXMChartDescriptor *)self yAxis];
  dictionaryRepresentation2 = [yAxis dictionaryRepresentation];

  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  additionalAxes = [(AXMChartDescriptor *)self additionalAxes];
  v9 = [additionalAxes countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(additionalAxes);
        }

        dictionaryRepresentation3 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation3];
      }

      v10 = [additionalAxes countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  series = [(AXMChartDescriptor *)self series];
  v16 = [series countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(series);
        }

        dictionaryRepresentation4 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
        [array2 addObject:dictionaryRepresentation4];
      }

      v17 = [series countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  title = [(AXMChartDescriptor *)self title];
  [dictionary setObject:title forKeyedSubscript:@"kAXMChartTitleKey"];

  summary = [(AXMChartDescriptor *)self summary];
  [dictionary setObject:summary forKeyedSubscript:@"kAXMChartSummaryKey"];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMChartDescriptor contentDirection](self, "contentDirection")}];
  [dictionary setObject:v23 forKeyedSubscript:@"kAXMChartContentDirectionKey"];

  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"kAXMChartXAxisKey"];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"kAXMChartYAxisKey"];
  [dictionary setObject:array forKeyedSubscript:@"kAXMChartAdditionalAxesKey"];
  [dictionary setObject:array2 forKeyedSubscript:@"kAXMChartSeriesKey"];

  return dictionary;
}

- (NSString)description
{
  v24 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  xAxis = [(AXMChartDescriptor *)self xAxis];
  [array addObject:xAxis];

  yAxis = [(AXMChartDescriptor *)self yAxis];

  if (yAxis)
  {
    yAxis2 = [(AXMChartDescriptor *)self yAxis];
    [array addObject:yAxis2];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  additionalAxes = [(AXMChartDescriptor *)self additionalAxes];
  v8 = [additionalAxes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(additionalAxes);
        }

        [array addObject:*(*(&v19 + 1) + 8 * i)];
      }

      v9 = [additionalAxes countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  title = [(AXMChartDescriptor *)self title];
  summary = [(AXMChartDescriptor *)self summary];
  series = [(AXMChartDescriptor *)self series];
  v17 = [v12 stringWithFormat:@"<%@ %p\n\ttitle=%@\n\tsummary=%@\n\tAxes:\n\t%@Series:\n\t%@>", v13, self, title, summary, array, series];

  return v17;
}

- (void)generateDataSummariesWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  series = [(AXMChartDescriptor *)self series];
  v6 = [series countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(series);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [[AXMDataSummary alloc] initWithSeries:v9 chartDescriptor:self];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __58__AXMChartDescriptor_generateDataSummariesWithCompletion___block_invoke;
        v11[3] = &unk_1E7A1E380;
        v13 = v18;
        v11[4] = self;
        v12 = completionCopy;
        [(AXMDataSummary *)v10 computeRegressionModel:v11];
        [v9 setDataSummary:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [series countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(v18, 8);
}

void __58__AXMChartDescriptor_generateDataSummariesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = ++*(*(*(a1 + 48) + 8) + 24);
  v5 = [*(a1 + 32) series];
  if (v2 == [v5 count])
  {
    v3 = *(a1 + 40);

    if (v3)
    {
      v4 = *(*(a1 + 40) + 16);

      v4();
    }
  }

  else
  {
  }
}

- (AXMNumericDataAxisDescriptor)timeNumericAxisDescriptor
{
  xAxis2 = self->_timeNumericAxisDescriptor;
  if (!xAxis2)
  {
    xAxis = [(AXMChartDescriptor *)self xAxis];
    isCategoricalAxis = [xAxis isCategoricalAxis];

    if (isCategoricalAxis)
    {
      xAxis2 = 0;
    }

    else
    {
      xAxis2 = [(AXMChartDescriptor *)self xAxis];
    }
  }

  return xAxis2;
}

- (AXMCategoricalDataAxisDescriptor)timeCategoricalAxisDescriptor
{
  xAxis2 = self->_timeCategoricalAxisDescriptor;
  if (!xAxis2)
  {
    xAxis = [(AXMChartDescriptor *)self xAxis];
    isCategoricalAxis = [xAxis isCategoricalAxis];

    if (isCategoricalAxis)
    {
      xAxis2 = [(AXMChartDescriptor *)self xAxis];
    }

    else
    {
      xAxis2 = 0;
    }
  }

  return xAxis2;
}

- (AXMNumericDataAxisDescriptor)pitchAxisDescriptor
{
  pitchAxisDescriptor = self->_pitchAxisDescriptor;
  if (pitchAxisDescriptor)
  {
    yAxis = pitchAxisDescriptor;
  }

  else
  {
    yAxis = [(AXMChartDescriptor *)self yAxis];
  }

  return yAxis;
}

- (AXMNumericDataAxisDescriptor)durationAxisDescriptor
{
  durationAxisDescriptor = self->_durationAxisDescriptor;
  if (durationAxisDescriptor)
  {
    zNumericAxisDescriptor = durationAxisDescriptor;
  }

  else
  {
    zNumericAxisDescriptor = [(AXMChartDescriptor *)self zNumericAxisDescriptor];
  }

  return zNumericAxisDescriptor;
}

- (AXMNumericDataAxisDescriptor)volumeAxisDescriptor
{
  volumeAxisDescriptor = self->_volumeAxisDescriptor;
  if (volumeAxisDescriptor)
  {
    zNumericAxisDescriptor = volumeAxisDescriptor;
  }

  else
  {
    zNumericAxisDescriptor = [(AXMChartDescriptor *)self zNumericAxisDescriptor];
  }

  return zNumericAxisDescriptor;
}

- (AXMCategoricalDataAxisDescriptor)timbreAxisDescriptor
{
  timbreAxisDescriptor = self->_timbreAxisDescriptor;
  if (timbreAxisDescriptor)
  {
    zCategoricalAxisDescriptor = timbreAxisDescriptor;
  }

  else
  {
    zCategoricalAxisDescriptor = [(AXMChartDescriptor *)self zCategoricalAxisDescriptor];
  }

  return zCategoricalAxisDescriptor;
}

- (id)zNumericAxisDescriptor
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  additionalAxes = [(AXMChartDescriptor *)self additionalAxes];
  v3 = [additionalAxes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(additionalAxes);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (![v6 isCategoricalAxis])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [additionalAxes countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)zCategoricalAxisDescriptor
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  additionalAxes = [(AXMChartDescriptor *)self additionalAxes];
  v3 = [additionalAxes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(additionalAxes);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isCategoricalAxis])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [additionalAxes countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
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