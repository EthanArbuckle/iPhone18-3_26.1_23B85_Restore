@interface AXMDataPoint
- (AXMDataPoint)initWithX:(id)x y:(id)y additionalValues:(id)values label:(id)label;
- (AXMDataPointValue)timeEncodingValue;
- (AXMDataPointValue)zCategoryAxisValue;
- (AXMDataPointValue)zNumericAxisValue;
- (NSNumber)durationEncodingValue;
- (NSNumber)pitchEncodingValue;
- (NSNumber)volumeEncodingValue;
- (NSString)label;
- (NSString)timbreEncodingValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setLabel:(id)label;
@end

@implementation AXMDataPoint

- (AXMDataPoint)initWithX:(id)x y:(id)y additionalValues:(id)values label:(id)label
{
  xCopy = x;
  yCopy = y;
  valuesCopy = values;
  labelCopy = label;
  v20.receiver = self;
  v20.super_class = AXMDataPoint;
  v15 = [(AXMDataPoint *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xValue, x);
    objc_storeStrong(&v16->_yValue, y);
    v17 = [valuesCopy copy];
    additionalValues = v16->_additionalValues;
    v16->_additionalValues = v17;

    [(AXMDataPoint *)v16 setLabel:labelCopy];
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AXMDataPoint allocWithZone:zone];
  xValue = [(AXMDataPoint *)self xValue];
  yValue = [(AXMDataPoint *)self yValue];
  additionalValues = [(AXMDataPoint *)self additionalValues];
  label = [(AXMDataPoint *)self label];
  v9 = [(AXMDataPoint *)v4 initWithX:xValue y:yValue additionalValues:additionalValues label:label];

  return v9;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v6 = labelCopy;
  if (labelCopy)
  {
    labelCopy = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:labelCopy];
  }

  attributedLabel = self->_attributedLabel;
  self->_attributedLabel = labelCopy;
}

- (AXMDataPointValue)zCategoryAxisValue
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  additionalValues = [(AXMDataPoint *)self additionalValues];
  v3 = [additionalValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(additionalValues);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        category = [v6 category];

        if (category)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [additionalValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (AXMDataPointValue)zNumericAxisValue
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  additionalValues = [(AXMDataPoint *)self additionalValues];
  v3 = [additionalValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(additionalValues);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        category = [v6 category];

        if (!category)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [additionalValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (NSString)label
{
  attributedLabel = [(AXMDataPoint *)self attributedLabel];
  string = [attributedLabel string];

  return string;
}

- (id)description
{
  xValue = [(AXMDataPoint *)self xValue];
  category = [xValue category];
  if (category)
  {
    xValue2 = [(AXMDataPoint *)self xValue];
    [xValue2 category];
  }

  else
  {
    v6 = MEMORY[0x1E696AD98];
    xValue2 = [(AXMDataPoint *)self xValue];
    [xValue2 number];
    [v6 numberWithDouble:?];
  }
  v29 = ;

  additionalValues = [(AXMDataPoint *)self additionalValues];
  v8 = [additionalValues count];

  if (v8)
  {
    v9 = 0;
    v10 = &stru_1F23EA908;
    do
    {
      additionalValues2 = [(AXMDataPoint *)self additionalValues];
      v12 = [additionalValues2 objectAtIndexedSubscript:v9];
      category2 = [v12 category];
      if (category2)
      {
        additionalValues3 = [(AXMDataPoint *)self additionalValues];
        v15 = [additionalValues3 objectAtIndexedSubscript:v9];
        [v15 category];
      }

      else
      {
        v16 = MEMORY[0x1E696AD98];
        additionalValues3 = [(AXMDataPoint *)self additionalValues];
        v15 = [additionalValues3 objectAtIndexedSubscript:v9];
        [v15 number];
        [v16 numberWithDouble:?];
      }
      v17 = ;

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@\t", v10, v17];

      ++v9;
      additionalValues4 = [(AXMDataPoint *)self additionalValues];
      v20 = [additionalValues4 count];

      v10 = v18;
    }

    while (v9 < v20);
  }

  else
  {
    v18 = &stru_1F23EA908;
  }

  v21 = MEMORY[0x1E696AEC0];
  v22 = MEMORY[0x1E696AD98];
  yValue = [(AXMDataPoint *)self yValue];
  [yValue number];
  v24 = [v22 numberWithDouble:?];
  label = [(AXMDataPoint *)self label];
  valueDescription = [(AXMDataPoint *)self valueDescription];
  v27 = [v21 stringWithFormat:@"(%@\t%@\t%@\tlabel=%@\tdesc=%@)", v29, v24, v18, label, valueDescription];

  return v27;
}

- (AXMDataPointValue)timeEncodingValue
{
  timeEncodingValue = self->_timeEncodingValue;
  if (timeEncodingValue)
  {
    v3 = timeEncodingValue;
  }

  else
  {
    xValue = [(AXMDataPoint *)self xValue];
    category = [xValue category];
    xValue2 = [(AXMDataPoint *)self xValue];
    v8 = xValue2;
    if (category)
    {
      category2 = [xValue2 category];
      v3 = [AXMDataPointValue valueWithCategory:category2];
    }

    else
    {
      [xValue2 number];
      v3 = [AXMDataPointValue valueWithNumber:?];
    }
  }

  return v3;
}

- (NSNumber)pitchEncodingValue
{
  pitchEncodingValue = self->_pitchEncodingValue;
  if (pitchEncodingValue)
  {
    v3 = pitchEncodingValue;
  }

  else
  {
    v4 = MEMORY[0x1E696AD98];
    yValue = [(AXMDataPoint *)self yValue];
    [yValue number];
    v3 = [v4 numberWithDouble:?];
  }

  return v3;
}

- (NSNumber)durationEncodingValue
{
  durationEncodingValue = self->_durationEncodingValue;
  if (durationEncodingValue)
  {
    v3 = durationEncodingValue;
  }

  else
  {
    v4 = MEMORY[0x1E696AD98];
    zNumericAxisValue = [(AXMDataPoint *)self zNumericAxisValue];
    [zNumericAxisValue number];
    v3 = [v4 numberWithDouble:?];
  }

  return v3;
}

- (NSNumber)volumeEncodingValue
{
  volumeEncodingValue = self->_volumeEncodingValue;
  if (volumeEncodingValue)
  {
    v3 = volumeEncodingValue;
  }

  else
  {
    v4 = MEMORY[0x1E696AD98];
    zNumericAxisValue = [(AXMDataPoint *)self zNumericAxisValue];
    [zNumericAxisValue number];
    v3 = [v4 numberWithDouble:?];
  }

  return v3;
}

- (NSString)timbreEncodingValue
{
  timbreEncodingValue = self->_timbreEncodingValue;
  if (timbreEncodingValue)
  {
    category = timbreEncodingValue;
  }

  else
  {
    zCategoryAxisValue = [(AXMDataPoint *)self zCategoryAxisValue];
    category = [zCategoryAxisValue category];
  }

  return category;
}

@end