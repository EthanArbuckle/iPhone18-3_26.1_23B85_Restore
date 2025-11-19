@interface AXMDataPoint
- (AXMDataPoint)initWithX:(id)a3 y:(id)a4 additionalValues:(id)a5 label:(id)a6;
- (AXMDataPointValue)timeEncodingValue;
- (AXMDataPointValue)zCategoryAxisValue;
- (AXMDataPointValue)zNumericAxisValue;
- (NSNumber)durationEncodingValue;
- (NSNumber)pitchEncodingValue;
- (NSNumber)volumeEncodingValue;
- (NSString)label;
- (NSString)timbreEncodingValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setLabel:(id)a3;
@end

@implementation AXMDataPoint

- (AXMDataPoint)initWithX:(id)a3 y:(id)a4 additionalValues:(id)a5 label:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = AXMDataPoint;
  v15 = [(AXMDataPoint *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xValue, a3);
    objc_storeStrong(&v16->_yValue, a4);
    v17 = [v13 copy];
    additionalValues = v16->_additionalValues;
    v16->_additionalValues = v17;

    [(AXMDataPoint *)v16 setLabel:v14];
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AXMDataPoint allocWithZone:a3];
  v5 = [(AXMDataPoint *)self xValue];
  v6 = [(AXMDataPoint *)self yValue];
  v7 = [(AXMDataPoint *)self additionalValues];
  v8 = [(AXMDataPoint *)self label];
  v9 = [(AXMDataPoint *)v4 initWithX:v5 y:v6 additionalValues:v7 label:v8];

  return v9;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
  }

  attributedLabel = self->_attributedLabel;
  self->_attributedLabel = v4;
}

- (AXMDataPointValue)zCategoryAxisValue
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(AXMDataPoint *)self additionalValues];
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
        v7 = [v6 category];

        if (v7)
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

  return v3;
}

- (AXMDataPointValue)zNumericAxisValue
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(AXMDataPoint *)self additionalValues];
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
        v7 = [v6 category];

        if (!v7)
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

  return v3;
}

- (NSString)label
{
  v2 = [(AXMDataPoint *)self attributedLabel];
  v3 = [v2 string];

  return v3;
}

- (id)description
{
  v3 = [(AXMDataPoint *)self xValue];
  v4 = [v3 category];
  if (v4)
  {
    v5 = [(AXMDataPoint *)self xValue];
    [v5 category];
  }

  else
  {
    v6 = MEMORY[0x1E696AD98];
    v5 = [(AXMDataPoint *)self xValue];
    [v5 number];
    [v6 numberWithDouble:?];
  }
  v29 = ;

  v7 = [(AXMDataPoint *)self additionalValues];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    v10 = &stru_1F23EA908;
    do
    {
      v11 = [(AXMDataPoint *)self additionalValues];
      v12 = [v11 objectAtIndexedSubscript:v9];
      v13 = [v12 category];
      if (v13)
      {
        v14 = [(AXMDataPoint *)self additionalValues];
        v15 = [v14 objectAtIndexedSubscript:v9];
        [v15 category];
      }

      else
      {
        v16 = MEMORY[0x1E696AD98];
        v14 = [(AXMDataPoint *)self additionalValues];
        v15 = [v14 objectAtIndexedSubscript:v9];
        [v15 number];
        [v16 numberWithDouble:?];
      }
      v17 = ;

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@\t", v10, v17];

      ++v9;
      v19 = [(AXMDataPoint *)self additionalValues];
      v20 = [v19 count];

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
  v23 = [(AXMDataPoint *)self yValue];
  [v23 number];
  v24 = [v22 numberWithDouble:?];
  v25 = [(AXMDataPoint *)self label];
  v26 = [(AXMDataPoint *)self valueDescription];
  v27 = [v21 stringWithFormat:@"(%@\t%@\t%@\tlabel=%@\tdesc=%@)", v29, v24, v18, v25, v26];

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
    v5 = [(AXMDataPoint *)self xValue];
    v6 = [v5 category];
    v7 = [(AXMDataPoint *)self xValue];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 category];
      v3 = [AXMDataPointValue valueWithCategory:v9];
    }

    else
    {
      [v7 number];
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
    v5 = [(AXMDataPoint *)self yValue];
    [v5 number];
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
    v5 = [(AXMDataPoint *)self zNumericAxisValue];
    [v5 number];
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
    v5 = [(AXMDataPoint *)self zNumericAxisValue];
    [v5 number];
    v3 = [v4 numberWithDouble:?];
  }

  return v3;
}

- (NSString)timbreEncodingValue
{
  timbreEncodingValue = self->_timbreEncodingValue;
  if (timbreEncodingValue)
  {
    v3 = timbreEncodingValue;
  }

  else
  {
    v4 = [(AXMDataPoint *)self zCategoryAxisValue];
    v3 = [v4 category];
  }

  return v3;
}

@end