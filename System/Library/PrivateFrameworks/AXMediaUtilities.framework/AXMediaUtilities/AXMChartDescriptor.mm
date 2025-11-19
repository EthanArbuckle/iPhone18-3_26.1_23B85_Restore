@interface AXMChartDescriptor
- (AXMCategoricalDataAxisDescriptor)timbreAxisDescriptor;
- (AXMCategoricalDataAxisDescriptor)timeCategoricalAxisDescriptor;
- (AXMChartDescriptor)initWithAttributedTitle:(id)a3 summary:(id)a4 xAxisDescriptor:(id)a5 yAxisDescriptor:(id)a6 additionalAxes:(id)a7 series:(id)a8;
- (AXMChartDescriptor)initWithDictionary:(id)a3;
- (AXMChartDescriptor)initWithTitle:(id)a3 summary:(id)a4 xAxisDescriptor:(id)a5 yAxisDescriptor:(id)a6 additionalAxes:(id)a7 series:(id)a8;
- (AXMNumericDataAxisDescriptor)durationAxisDescriptor;
- (AXMNumericDataAxisDescriptor)pitchAxisDescriptor;
- (AXMNumericDataAxisDescriptor)timeNumericAxisDescriptor;
- (AXMNumericDataAxisDescriptor)volumeAxisDescriptor;
- (CGRect)contentFrame;
- (NSString)description;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)zCategoricalAxisDescriptor;
- (id)zNumericAxisDescriptor;
- (void)_commonInitWithSummary:(id)a3 xAxisDescriptor:(id)a4 yAxisDescriptor:(id)a5 additionalAxes:(id)a6 series:(id)a7;
- (void)generateDataSummariesWithCompletion:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation AXMChartDescriptor

- (AXMChartDescriptor)initWithTitle:(id)a3 summary:(id)a4 xAxisDescriptor:(id)a5 yAxisDescriptor:(id)a6 additionalAxes:(id)a7 series:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = AXMChartDescriptor;
  v20 = [(AXMChartDescriptor *)&v24 init];
  if (v20)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14];
    attributedTitle = v20->_attributedTitle;
    v20->_attributedTitle = v21;

    [(AXMChartDescriptor *)v20 _commonInitWithSummary:v15 xAxisDescriptor:v16 yAxisDescriptor:v17 additionalAxes:v18 series:v19];
  }

  return v20;
}

- (AXMChartDescriptor)initWithAttributedTitle:(id)a3 summary:(id)a4 xAxisDescriptor:(id)a5 yAxisDescriptor:(id)a6 additionalAxes:(id)a7 series:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v24.receiver = self;
  v24.super_class = AXMChartDescriptor;
  v21 = [(AXMChartDescriptor *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_attributedTitle, a3);
    [(AXMChartDescriptor *)v22 _commonInitWithSummary:v16 xAxisDescriptor:v17 yAxisDescriptor:v18 additionalAxes:v19 series:v20];
  }

  return v22;
}

- (AXMChartDescriptor)initWithDictionary:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v3 = [v55 objectForKeyedSubscript:@"kAXMChartTitleKey"];
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

  v50 = [v55 objectForKeyedSubscript:@"kAXMChartSummaryKey"];
  v6 = [v55 objectForKeyedSubscript:@"kAXMChartContentDirectionKey"];
  v48 = [v6 integerValue];

  v7 = [v55 objectForKeyedSubscript:@"kAXMChartContentFrameKey"];
  [v7 AXMRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v54 = [v55 objectForKeyedSubscript:@"kAXMChartXAxisKey"];
  v53 = [v55 objectForKeyedSubscript:@"kAXMChartYAxisKey"];
  [v55 objectForKeyedSubscript:@"kAXMChartAdditionalAxesKey"];
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
  v29 = [v55 objectForKeyedSubscript:@"kAXMChartSeriesKey"];
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

  v34 = [MEMORY[0x1E695DF70] array];
  v35 = v34;
  if (v32)
  {
    [v34 addObject:v32];
  }

  if (v33)
  {
    [v35 addObject:v33];
  }

  v45 = v32;
  v36 = [MEMORY[0x1E695DF70] array];
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
        [v36 addObject:v42];
      }

      v39 = [v37 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v39);
  }

  v43 = [(AXMChartDescriptor *)self initWithAttributedTitle:v51 summary:v50 xAxisDescriptor:v46 yAxisDescriptor:v47 additionalAxes:v35 series:v36];
  [(AXMChartDescriptor *)v43 setContentDirection:v48];
  [(AXMChartDescriptor *)v43 setContentFrame:v9, v11, v13, v15];

  return v43;
}

- (void)_commonInitWithSummary:(id)a3 xAxisDescriptor:(id)a4 yAxisDescriptor:(id)a5 additionalAxes:(id)a6 series:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = [a3 copy];
  summary = self->_summary;
  self->_summary = v16;

  xAxis = self->_xAxis;
  self->_xAxis = v12;
  v25 = v12;

  yAxis = self->_yAxis;
  self->_yAxis = v13;
  v20 = v13;

  v21 = [v15 copy];
  additionalAxes = self->_additionalAxes;
  self->_additionalAxes = v21;

  v23 = [v14 copy];
  series = self->_series;
  self->_series = v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AXMChartDescriptor allocWithZone:a3];
  v5 = [(AXMChartDescriptor *)self attributedTitle];
  v6 = [(AXMChartDescriptor *)self summary];
  v7 = [(AXMChartDescriptor *)self xAxis];
  v8 = [(AXMChartDescriptor *)self yAxis];
  v9 = [(AXMChartDescriptor *)self additionalAxes];
  v10 = [(AXMChartDescriptor *)self series];
  v11 = [(AXMChartDescriptor *)v4 initWithAttributedTitle:v5 summary:v6 xAxisDescriptor:v7 yAxisDescriptor:v8 additionalAxes:v9 series:v10];

  return v11;
}

- (NSString)title
{
  v2 = [(AXMChartDescriptor *)self attributedTitle];
  v3 = [v2 string];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
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
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXMChartDescriptor *)self xAxis];
  v25 = [v4 dictionaryRepresentation];

  v5 = [(AXMChartDescriptor *)self yAxis];
  v6 = [v5 dictionaryRepresentation];

  v7 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [(AXMChartDescriptor *)self additionalAxes];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [(AXMChartDescriptor *)self series];
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  v21 = [(AXMChartDescriptor *)self title];
  [v3 setObject:v21 forKeyedSubscript:@"kAXMChartTitleKey"];

  v22 = [(AXMChartDescriptor *)self summary];
  [v3 setObject:v22 forKeyedSubscript:@"kAXMChartSummaryKey"];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMChartDescriptor contentDirection](self, "contentDirection")}];
  [v3 setObject:v23 forKeyedSubscript:@"kAXMChartContentDirectionKey"];

  [v3 setObject:v25 forKeyedSubscript:@"kAXMChartXAxisKey"];
  [v3 setObject:v6 forKeyedSubscript:@"kAXMChartYAxisKey"];
  [v3 setObject:v7 forKeyedSubscript:@"kAXMChartAdditionalAxesKey"];
  [v3 setObject:v14 forKeyedSubscript:@"kAXMChartSeriesKey"];

  return v3;
}

- (NSString)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AXMChartDescriptor *)self xAxis];
  [v3 addObject:v4];

  v5 = [(AXMChartDescriptor *)self yAxis];

  if (v5)
  {
    v6 = [(AXMChartDescriptor *)self yAxis];
    [v3 addObject:v6];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(AXMChartDescriptor *)self additionalAxes];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        [v3 addObject:*(*(&v19 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = [(AXMChartDescriptor *)self title];
  v15 = [(AXMChartDescriptor *)self summary];
  v16 = [(AXMChartDescriptor *)self series];
  v17 = [v12 stringWithFormat:@"<%@ %p\n\ttitle=%@\n\tsummary=%@\n\tAxes:\n\t%@Series:\n\t%@>", v13, self, v14, v15, v3, v16];

  return v17;
}

- (void)generateDataSummariesWithCompletion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AXMChartDescriptor *)self series];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [[AXMDataSummary alloc] initWithSeries:v9 chartDescriptor:self];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __58__AXMChartDescriptor_generateDataSummariesWithCompletion___block_invoke;
        v11[3] = &unk_1E7A1E380;
        v13 = v18;
        v11[4] = self;
        v12 = v4;
        [(AXMDataSummary *)v10 computeRegressionModel:v11];
        [v9 setDataSummary:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
  v3 = self->_timeNumericAxisDescriptor;
  if (!v3)
  {
    v4 = [(AXMChartDescriptor *)self xAxis];
    v5 = [v4 isCategoricalAxis];

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = [(AXMChartDescriptor *)self xAxis];
    }
  }

  return v3;
}

- (AXMCategoricalDataAxisDescriptor)timeCategoricalAxisDescriptor
{
  v3 = self->_timeCategoricalAxisDescriptor;
  if (!v3)
  {
    v4 = [(AXMChartDescriptor *)self xAxis];
    v5 = [v4 isCategoricalAxis];

    if (v5)
    {
      v3 = [(AXMChartDescriptor *)self xAxis];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (AXMNumericDataAxisDescriptor)pitchAxisDescriptor
{
  pitchAxisDescriptor = self->_pitchAxisDescriptor;
  if (pitchAxisDescriptor)
  {
    v3 = pitchAxisDescriptor;
  }

  else
  {
    v3 = [(AXMChartDescriptor *)self yAxis];
  }

  return v3;
}

- (AXMNumericDataAxisDescriptor)durationAxisDescriptor
{
  durationAxisDescriptor = self->_durationAxisDescriptor;
  if (durationAxisDescriptor)
  {
    v3 = durationAxisDescriptor;
  }

  else
  {
    v3 = [(AXMChartDescriptor *)self zNumericAxisDescriptor];
  }

  return v3;
}

- (AXMNumericDataAxisDescriptor)volumeAxisDescriptor
{
  volumeAxisDescriptor = self->_volumeAxisDescriptor;
  if (volumeAxisDescriptor)
  {
    v3 = volumeAxisDescriptor;
  }

  else
  {
    v3 = [(AXMChartDescriptor *)self zNumericAxisDescriptor];
  }

  return v3;
}

- (AXMCategoricalDataAxisDescriptor)timbreAxisDescriptor
{
  timbreAxisDescriptor = self->_timbreAxisDescriptor;
  if (timbreAxisDescriptor)
  {
    v3 = timbreAxisDescriptor;
  }

  else
  {
    v3 = [(AXMChartDescriptor *)self zCategoricalAxisDescriptor];
  }

  return v3;
}

- (id)zNumericAxisDescriptor
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(AXMChartDescriptor *)self additionalAxes];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (![v6 isCategoricalAxis])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(AXMChartDescriptor *)self additionalAxes];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isCategoricalAxis])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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