@interface AXMDataSummary
- (AXMChartDescriptor)chartDescriptor;
- (AXMDataSeriesDescriptor)series;
- (AXMDataSummary)initWithSeries:(id)series chartDescriptor:(id)descriptor;
- (AXMDataSummaryCategoryNameProvider)categoryNameDelegate;
- (NSArray)dataFeatureDescriptions;
- (NSArray)statsDescriptions;
- (NSString)bestFitCurveEquation;
- (NSString)confidenceDescription;
- (NSString)maxValueDescription;
- (NSString)meanValueDescription;
- (NSString)minValueDescription;
- (NSString)modelDescription;
- (NSString)outliersDescription;
- (NSString)slopeDescription;
- (double)getMean:(id)mean;
- (double)getMedian:(id)median;
- (double)getVariance:(id)variance;
- (double)positionForXAxisValue:(double)value;
- (double)positionForYAxisValue:(double)value;
- (id)description;
- (id)stringForComponents:(id)components;
- (void)compute;
- (void)computeCovariance;
- (void)computeLinearRegression;
- (void)computeMeans;
- (void)computeOutliers;
- (void)computeR;
- (void)computeRanges;
- (void)computeRegressionModel:(id)model;
- (void)computeResiduals;
- (void)computeVariances;
- (void)getValues:(double *)values fromNSNumberArray:(id)array;
@end

@implementation AXMDataSummary

- (AXMDataSummary)initWithSeries:(id)series chartDescriptor:(id)descriptor
{
  seriesCopy = series;
  descriptorCopy = descriptor;
  v30.receiver = self;
  v30.super_class = AXMDataSummary;
  v8 = [(AXMDataSummary *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_chartDescriptor, descriptorCopy);
    objc_storeWeak(&v9->_series, seriesCopy);
    xValues = [seriesCopy xValues];
    v11 = [seriesCopy numericalValuesFromDataPointValues:xValues];
    xValues = v9->_xValues;
    v9->_xValues = v11;

    yValues = [seriesCopy yValues];
    v14 = [seriesCopy numericalValuesFromDataPointValues:yValues];
    yValues = v9->_yValues;
    v9->_yValues = v14;

    v9->_numValues = [(NSArray *)v9->_xValues count];
    v28 = MEMORY[0x1E695DEC8];
    xAxis = [descriptorCopy xAxis];
    title = [xAxis title];
    yAxis = [descriptorCopy yAxis];
    title2 = [yAxis title];
    zNumericAxisDescriptor = [descriptorCopy zNumericAxisDescriptor];
    title3 = [zNumericAxisDescriptor title];
    zCategoricalAxisDescriptor = [descriptorCopy zCategoricalAxisDescriptor];
    title4 = [zCategoricalAxisDescriptor title];
    v23 = [v28 axmArrayByIgnoringNilElementsWithCount:{4, title, title2, title3, title4}];
    axisTitles = v9->_axisTitles;
    v9->_axisTitles = v23;

    v25 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    numberFormatter = v9->_numberFormatter;
    v9->_numberFormatter = v25;

    [(NSNumberFormatter *)v9->_numberFormatter setMaximumSignificantDigits:4];
    [(AXMDataSummary *)v9 compute];
  }

  return v9;
}

- (void)computeRegressionModel:(id)model
{
  modelCopy = model;
  xValues = [(AXMDataSummary *)self xValues];
  v6 = [xValues count];
  yValues = [(AXMDataSummary *)self yValues];
  if (v6 == [yValues count])
  {
    xValues2 = [(AXMDataSummary *)self xValues];
    v9 = [xValues2 count];

    if (v9)
    {
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3032000000;
      v15[3] = __Block_byref_object_copy__10;
      v15[4] = __Block_byref_object_dispose__10;
      selfCopy = self;
      v16 = selfCopy;
      v11 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__AXMDataSummary_computeRegressionModel___block_invoke;
      block[3] = &unk_1E7A1E0E8;
      v14 = v15;
      block[4] = selfCopy;
      v13 = modelCopy;
      dispatch_async(v11, block);

      _Block_object_dispose(v15, 8);
    }
  }

  else
  {
  }
}

void __41__AXMDataSummary_computeRegressionModel___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(*(*(a1 + 48) + 8) + 40) numValues];
  MEMORY[0x1EEE9AC00]();
  v3 = &block[-2] - v2;
  [*(*(*(a1 + 48) + 8) + 40) numValues];
  MEMORY[0x1EEE9AC00]();
  v5 = &block[-2] - v4;
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = [*(a1 + 32) xValues];
  [v6 getValues:v3 fromNSNumberArray:v7];

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [*(a1 + 32) yValues];
  [v8 getValues:v5 fromNSNumberArray:v9];

  v10 = +[AXMDataRegressionModel getModelForX:y:n:](AXMDataRegressionModel, "getModelForX:y:n:", v3, v5, [*(*(*(a1 + 48) + 8) + 40) numValues]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AXMDataSummary_computeRegressionModel___block_invoke_2;
  block[3] = &unk_1E7A1E0E8;
  v15 = v10;
  v13 = *(a1 + 40);
  v11 = v13;
  v16 = v13;
  v12 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__AXMDataSummary_computeRegressionModel___block_invoke_2(void *a1)
{
  [*(*(a1[6] + 8) + 40) setRegressionModel:a1[4]];
  v2 = a1[5];
  if (v2)
  {
    v3 = [*(*(a1[6] + 8) + 40) regressionModel];
    (*(v2 + 16))(v2, v3);
  }
}

- (NSArray)dataFeatureDescriptions
{
  dataFeatureDescriptions = self->_dataFeatureDescriptions;
  if (!dataFeatureDescriptions)
  {
    v4 = MEMORY[0x1E695DEC8];
    slopeDescription = [(AXMDataSummary *)self slopeDescription];
    modelDescription = [(AXMDataSummary *)self modelDescription];
    confidenceDescription = [(AXMDataSummary *)self confidenceDescription];
    outliersDescription = [(AXMDataSummary *)self outliersDescription];
    v9 = [v4 axmArrayByIgnoringNilElementsWithCount:{4, slopeDescription, modelDescription, confidenceDescription, outliersDescription}];
    v10 = self->_dataFeatureDescriptions;
    self->_dataFeatureDescriptions = v9;

    dataFeatureDescriptions = self->_dataFeatureDescriptions;
  }

  return dataFeatureDescriptions;
}

- (NSArray)statsDescriptions
{
  statsDescriptions = self->_statsDescriptions;
  if (!statsDescriptions)
  {
    v4 = MEMORY[0x1E695DEC8];
    minValueDescription = [(AXMDataSummary *)self minValueDescription];
    maxValueDescription = [(AXMDataSummary *)self maxValueDescription];
    meanValueDescription = [(AXMDataSummary *)self meanValueDescription];
    medianValueDescription = [(AXMDataSummary *)self medianValueDescription];
    v9 = [v4 axmArrayByIgnoringNilElementsWithCount:{4, minValueDescription, maxValueDescription, meanValueDescription, medianValueDescription}];
    v10 = self->_statsDescriptions;
    self->_statsDescriptions = v9;

    statsDescriptions = self->_statsDescriptions;
  }

  return statsDescriptions;
}

- (NSString)modelDescription
{
  regressionModel = [(AXMDataSummary *)self regressionModel];
  modelDescription = [regressionModel modelDescription];

  return modelDescription;
}

- (NSString)slopeDescription
{
  regressionModel = [(AXMDataSummary *)self regressionModel];
  [regressionModel confidence];
  v5 = v4;

  if (v5 <= 0.2)
  {
    v10 = 0;
  }

  else
  {
    slope = self->_slope;
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v8 = v7;
    if (slope > 0.0)
    {
      v9 = @"chart.series.trend.increasing";
    }

    else
    {
      v9 = @"chart.series.trend.decreasing";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  return v10;
}

- (NSString)confidenceDescription
{
  regressionModel = [(AXMDataSummary *)self regressionModel];
  [regressionModel confidence];
  v4 = v3;

  if (v4 <= 0.9)
  {
    if (v4 <= 0.7)
    {
      if (v4 <= 0.4)
      {
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v6 = v5;
        if (v4 <= 0.2)
        {
          v7 = @"chart.series.trend.none";
        }

        else
        {
          v7 = @"chart.series.trend.weak";
        }
      }

      else
      {
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v6 = v5;
        v7 = @"chart.series.trend.moderate";
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v6 = v5;
      v7 = @"chart.series.trend.strong";
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v6 = v5;
    v7 = @"chart.series.trend.verystrong";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F23EA908 table:@"Accessibility"];

  return v8;
}

- (NSString)minValueDescription
{
  yValues = self->_yValues;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minY];
  v5 = [(NSArray *)yValues indexOfObject:v4];

  series = [(AXMDataSummary *)self series];
  dataPoints = [series dataPoints];
  v8 = [dataPoints objectAtIndexedSubscript:v5];
  valueDescription = [v8 valueDescription];

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v11 = [v10 localizedStringForKey:@"chart.series.minvalue.format" value:&stru_1F23EA908 table:@"Accessibility"];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, valueDescription];

  return v12;
}

- (NSString)maxValueDescription
{
  yValues = self->_yValues;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxY];
  v5 = [(NSArray *)yValues indexOfObject:v4];

  series = [(AXMDataSummary *)self series];
  dataPoints = [series dataPoints];
  v8 = [dataPoints objectAtIndexedSubscript:v5];
  valueDescription = [v8 valueDescription];

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v11 = [v10 localizedStringForKey:@"chart.series.maxvalue.format" value:&stru_1F23EA908 table:@"Accessibility"];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, valueDescription];

  return v12;
}

- (NSString)meanValueDescription
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v4 = [v3 localizedStringForKey:@"chart.series.meanvalue.format" value:&stru_1F23EA908 table:@"Accessibility"];

  series = [(AXMDataSummary *)self series];
  meanValueDescription = [series meanValueDescription];

  if (![meanValueDescription length])
  {
    numberFormatter = [(AXMDataSummary *)self numberFormatter];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_meanY];
    v9 = [numberFormatter stringFromNumber:v8];

    meanValueDescription = v9;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [(NSArray *)self->_axisTitles objectAtIndexedSubscript:1];
  v12 = [v10 stringWithFormat:v4, v11, meanValueDescription];

  return v12;
}

- (NSString)outliersDescription
{
  v28 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  obj = self->_outliers;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = array;
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v23 + 1) + 8 * i) unsignedIntegerValue];
        v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v11 = [v10 localizedStringForKey:@"chart.series.outlier.format" value:&stru_1F23EA908 table:@"Accessibility"];

        v12 = MEMORY[0x1E696AEC0];
        series = [(AXMDataSummary *)selfCopy series];
        dataPoints = [series dataPoints];
        v15 = [dataPoints objectAtIndexedSubscript:unsignedIntegerValue];
        valueDescription = [v15 valueDescription];
        v17 = [v12 localizedStringWithFormat:v11, valueDescription];

        array = v8;
        [v8 addObject:v17];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  if ([array count])
  {
    v18 = [array componentsJoinedByString:@"\n"];
  }

  else
  {
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v18 = [v19 localizedStringForKey:@"chart.series.outliers.none" value:&stru_1F23EA908 table:@"Accessibility"];
  }

  return v18;
}

- (NSString)bestFitCurveEquation
{
  regressionModel = [(AXMDataSummary *)self regressionModel];
  regressionModel2 = [(AXMDataSummary *)self regressionModel];
  v5 = [regressionModel modelFunctionStringForParameters:objc_msgSend(regressionModel2 significantFigures:{"bestFitParameters"), 4}];

  return v5;
}

- (void)compute
{
  [(AXMDataSummary *)self computeRanges];
  [(AXMDataSummary *)self computeMeans];
  [(AXMDataSummary *)self computeCovariance];
  [(AXMDataSummary *)self computeVariances];
  [(AXMDataSummary *)self computeR];
  [(AXMDataSummary *)self computeLinearRegression];
  [(AXMDataSummary *)self computeResiduals];

  [(AXMDataSummary *)self computeOutliers];
}

- (void)computeRanges
{
  if (self->_numValues)
  {
    v3 = 0;
    v4 = -1.79769313e308;
    v5 = 1.79769313e308;
    v6 = -1.79769313e308;
    v7 = 1.79769313e308;
    do
    {
      xValues = [(AXMDataSummary *)self xValues];
      v9 = [xValues objectAtIndexedSubscript:v3];
      [v9 doubleValue];
      v11 = v10;

      yValues = [(AXMDataSummary *)self yValues];
      v13 = [yValues objectAtIndexedSubscript:v3];
      [v13 doubleValue];
      v15 = v14;

      if (v11 < v5)
      {
        v5 = v11;
      }

      if (v11 > v4)
      {
        v4 = v11;
      }

      if (v15 < v7)
      {
        v7 = v15;
      }

      if (v15 > v6)
      {
        v6 = v15;
      }

      ++v3;
    }

    while (v3 < self->_numValues);
  }

  else
  {
    v6 = -1.79769313e308;
    v7 = 1.79769313e308;
    v4 = -1.79769313e308;
    v5 = 1.79769313e308;
  }

  self->_minX = v5;
  self->_maxX = v4;
  self->_minY = v7;
  self->_maxY = v6;
}

- (void)computeMeans
{
  if (self->_numValues)
  {
    v3 = 0;
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      xValues = [(AXMDataSummary *)self xValues];
      v7 = [xValues objectAtIndexedSubscript:v3];
      [v7 doubleValue];
      v9 = v8;

      yValues = [(AXMDataSummary *)self yValues];
      v11 = [yValues objectAtIndexedSubscript:v3];
      [v11 doubleValue];
      v13 = v12;

      v4 = v4 + v9;
      v5 = v5 + v13;
      ++v3;
      numValues = self->_numValues;
    }

    while (v3 < numValues);
    v15 = numValues;
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
    v15 = 0.0;
  }

  self->_meanX = v4 / v15;
  self->_meanY = v5 / v15;
}

- (void)computeCovariance
{
  if (self->_numValues)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      xValues = [(AXMDataSummary *)self xValues];
      v6 = [xValues objectAtIndexedSubscript:v3];
      [v6 doubleValue];
      v8 = v7;

      yValues = [(AXMDataSummary *)self yValues];
      v10 = [yValues objectAtIndexedSubscript:v3];
      [v10 doubleValue];
      v12 = v11;

      v4 = v4 + (v8 - self->_meanX) * (v12 - self->_meanY);
      ++v3;
      numValues = self->_numValues;
    }

    while (v3 < numValues);
    v14 = v4 / (numValues - 1);
  }

  else
  {
    v14 = 0.0;
  }

  self->_covariance = v14;
}

- (void)computeVariances
{
  if (self->_numValues)
  {
    v3 = 0;
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      xValues = [(AXMDataSummary *)self xValues];
      v7 = [xValues objectAtIndexedSubscript:v3];
      [v7 doubleValue];
      v9 = v8;

      yValues = [(AXMDataSummary *)self yValues];
      v11 = [yValues objectAtIndexedSubscript:v3];
      [v11 doubleValue];
      v13 = v12;

      v4 = v4 + (v9 - self->_meanX) * (v9 - self->_meanX);
      v5 = v5 + (v13 - self->_meanY) * (v13 - self->_meanY);
      ++v3;
      numValues = self->_numValues;
    }

    while (v3 < numValues);
    v15 = (numValues - 1);
  }

  else
  {
    v5 = 0.0;
    v15 = 1.84467441e19;
    v4 = 0.0;
  }

  self->_varianceX = v4 / v15;
  self->_varianceY = v5 / v15;
}

- (void)computeR
{
  v2 = self->_covariance / sqrt(self->_varianceX * self->_varianceY);
  self->_r = v2;
  self->_rSquared = v2 * v2;
}

- (void)computeLinearRegression
{
  v2 = self->_r * sqrt(self->_varianceY) / sqrt(self->_varianceX);
  v3 = self->_meanY - v2 * self->_meanX;
  self->_slope = v2;
  self->_intercept = v3;
}

- (void)computeResiduals
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_xValues count])
  {
    v3 = 0;
    do
    {
      xValues = [(AXMDataSummary *)self xValues];
      v5 = [xValues objectAtIndexedSubscript:v3];
      [v5 doubleValue];
      v7 = v6;

      yValues = [(AXMDataSummary *)self yValues];
      v9 = [yValues objectAtIndexedSubscript:v3];
      [v9 doubleValue];
      v11 = v10;

      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11 - (self->_intercept + self->_slope * v7)];
      [array addObject:v12];

      ++v3;
    }

    while (v3 < [(NSArray *)self->_xValues count]);
  }

  v13 = [array copy];
  residuals = self->_residuals;
  self->_residuals = v13;
}

- (void)computeOutliers
{
  array = [MEMORY[0x1E695DF70] array];
  if (self->_numValues >= 8)
  {
    [(AXMDataSummary *)self getMean:self->_residuals];
    v4 = v3;
    [(AXMDataSummary *)self getVariance:self->_residuals];
    v6 = v5;
    if ([(NSArray *)self->_residuals count])
    {
      v7 = 0;
      v8 = sqrt(v6);
      do
      {
        v9 = [(NSArray *)self->_residuals objectAtIndexedSubscript:v7];
        [v9 doubleValue];
        v11 = (v10 - v4) / v8;

        if (fabs(v11) > 3.0)
        {
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
          [array addObject:v12];
        }

        ++v7;
      }

      while (v7 < [(NSArray *)self->_residuals count]);
    }
  }

  v13 = [array copy];
  outliers = self->_outliers;
  self->_outliers = v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v11 = *&self->_minX;
  minY = self->_minY;
  maxY = self->_maxY;
  modelFunction = [(AXMDataRegressionModel *)self->_regressionModel modelFunction];
  v8 = MEMORY[0x1B2700900]();
  v9 = [v3 stringWithFormat:@"<%@ %p x:[%.1f, %.1f] y:[%.1f, %.1f] model=%@ xbar=%.1f ybar=%.1f r=%.4f rSq=%.4f y=%.4fx+%.4f\n\toutliers=%@>", v4, self, v11, *&minY, *&maxY, v8, *&self->_meanX, *&self->_meanY, *&self->_r, *&self->_rSquared, *&self->_slope, *&self->_intercept, self->_outliers];

  return v9;
}

- (id)stringForComponents:(id)components
{
  componentsCopy = components;
  objc_opt_class();
  v4 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F23EA908];
  if (objc_opt_isKindOfClass())
  {
    v5 = componentsCopy;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 length])
  {
    [v4 appendString:v5];
  }

  v10 = &v12;
  while (1)
  {
    v6 = v10++;
    v7 = *v6;
    v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
    if ([v8 length])
    {
      break;
    }

LABEL_15:
  }

  if (([v8 isEqualToString:@"__AXMDataSummaryStringForVariablesSentinel"] & 1) == 0)
  {
    if ([v4 length])
    {
      [v4 appendString:{@", "}];
    }

    [v4 appendString:v8];
    goto LABEL_15;
  }

  return v4;
}

- (double)getMean:(id)mean
{
  v18 = *MEMORY[0x1E69E9840];
  meanCopy = mean;
  if ([meanCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = meanCopy;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * i) doubleValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v8 / [v4 count];
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- (double)getMedian:(id)median
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  medianCopy = median;
  v5 = [v3 sortDescriptorWithKey:@"self" ascending:1];
  v16[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v7 = [medianCopy sortedArrayUsingDescriptors:v6];

  v8 = [v7 count] >> 1;
  v9 = [v7 count];
  v10 = [v7 objectAtIndexedSubscript:v8];
  [v10 doubleValue];
  v12 = v11;
  if ((v9 & 1) == 0)
  {
    v13 = [v7 objectAtIndexedSubscript:v8 + 1];
    [v13 doubleValue];
    v12 = (v12 + v14) * 0.5;
  }

  return v12;
}

- (double)getVariance:(id)variance
{
  v20 = *MEMORY[0x1E69E9840];
  varianceCopy = variance;
  [(AXMDataSummary *)self getMean:varianceCopy];
  v6 = v5;
  v7 = 0.0;
  if ([varianceCopy count] >= 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = varianceCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * v12) doubleValue];
          v7 = v7 + (v13 - v6) * (v13 - v6);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v7 = v7 / ([v8 count] - 1);
  }

  return v7;
}

- (void)getValues:(double *)values fromNSNumberArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [arrayCopy objectAtIndexedSubscript:v5];
      [v6 doubleValue];
      values[v5] = v7;

      ++v5;
    }

    while (v5 < [arrayCopy count]);
  }
}

- (double)positionForXAxisValue:(double)value
{
  [(AXMDataSummary *)self maxX];
  v6 = v5;
  [(AXMDataSummary *)self minX];
  v8 = v6 - v7;
  if (v8 <= 0.0)
  {
    return 1.79769313e308;
  }

  [(AXMDataSummary *)self minX];
  return (value - v9) / v8;
}

- (double)positionForYAxisValue:(double)value
{
  [(AXMDataSummary *)self maxY];
  v6 = v5;
  [(AXMDataSummary *)self minY];
  v8 = v6 - v7;
  if (v8 <= 0.0)
  {
    return 1.79769313e308;
  }

  [(AXMDataSummary *)self minY];
  return (value - v9) / v8;
}

- (AXMDataSeriesDescriptor)series
{
  WeakRetained = objc_loadWeakRetained(&self->_series);

  return WeakRetained;
}

- (AXMChartDescriptor)chartDescriptor
{
  WeakRetained = objc_loadWeakRetained(&self->_chartDescriptor);

  return WeakRetained;
}

- (AXMDataSummaryCategoryNameProvider)categoryNameDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryNameDelegate);

  return WeakRetained;
}

@end