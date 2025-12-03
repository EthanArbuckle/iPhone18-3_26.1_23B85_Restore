@interface AXDataPoint
- (AXDataPoint)initWithX:(AXDataPointValue *)xValue y:(AXDataPointValue *)yValue additionalValues:(NSArray *)additionalValues label:(NSString *)label;
- (NSString)label;
- (id)_additionalCategoricalValue;
- (id)_additionalNumericValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setLabel:(NSString *)label;
@end

@implementation AXDataPoint

- (AXDataPoint)initWithX:(AXDataPointValue *)xValue y:(AXDataPointValue *)yValue additionalValues:(NSArray *)additionalValues label:(NSString *)label
{
  v11 = xValue;
  v12 = yValue;
  v13 = additionalValues;
  v14 = label;
  v20.receiver = self;
  v20.super_class = AXDataPoint;
  v15 = [(AXDataPoint *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xValue, xValue);
    objc_storeStrong(&v16->_yValue, yValue);
    v17 = [(NSArray *)v13 copy];
    v18 = v16->_additionalValues;
    v16->_additionalValues = v17;

    [(AXDataPoint *)v16 setLabel:v14];
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AXDataPoint allocWithZone:zone];
  xValue = [(AXDataPoint *)self xValue];
  yValue = [(AXDataPoint *)self yValue];
  additionalValues = [(AXDataPoint *)self additionalValues];
  label = [(AXDataPoint *)self label];
  v9 = [(AXDataPoint *)v4 initWithX:xValue y:yValue additionalValues:additionalValues label:label];

  return v9;
}

- (void)setLabel:(NSString *)label
{
  v4 = label;
  v6 = v4;
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
  }

  attributedLabel = self->_attributedLabel;
  self->_attributedLabel = v4;
}

- (NSString)label
{
  attributedLabel = [(AXDataPoint *)self attributedLabel];
  string = [attributedLabel string];

  return string;
}

- (id)description
{
  xValue = [(AXDataPoint *)self xValue];
  category = [xValue category];
  if (category)
  {
    xValue2 = [(AXDataPoint *)self xValue];
    [xValue2 category];
  }

  else
  {
    v6 = MEMORY[0x1E696AD98];
    xValue2 = [(AXDataPoint *)self xValue];
    [xValue2 number];
    [v6 numberWithDouble:?];
  }
  v30 = ;

  additionalValues = [(AXDataPoint *)self additionalValues];
  v8 = [additionalValues count];

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      additionalValues2 = [(AXDataPoint *)self additionalValues];
      v13 = [additionalValues2 objectAtIndexedSubscript:v9];
      category2 = [v13 category];

      if (category2)
      {
        additionalValues3 = [(AXDataPoint *)self additionalValues];
        v16 = [additionalValues3 objectAtIndexedSubscript:v9];
        [v16 category];
        v10 = v17 = v10;
      }

      else
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = MEMORY[0x1E696AD98];
        additionalValues3 = [(AXDataPoint *)self additionalValues];
        v16 = [additionalValues3 objectAtIndexedSubscript:v9];
        [v16 number];
        v17 = [v19 numberWithDouble:?];
        v20 = [v18 stringWithFormat:@"%@", v17];

        v11 = v20;
      }

      ++v9;
      additionalValues4 = [(AXDataPoint *)self additionalValues];
      v22 = [additionalValues4 count];
    }

    while (v9 < v22);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v23 = MEMORY[0x1E696AEC0];
  v24 = MEMORY[0x1E696AD98];
  yValue = [(AXDataPoint *)self yValue];
  [yValue number];
  v26 = [v24 numberWithDouble:?];
  label = [(AXDataPoint *)self label];
  v28 = [v23 stringWithFormat:@"(x=%@\ty=%@\tz=%@\tcategory=%@\tlabel=%@)", v30, v26, v11, v10, label];

  return v28;
}

- (id)_additionalCategoricalValue
{
  v16 = *MEMORY[0x1E69E9840];
  [(AXDataPoint *)self additionalValues];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  category2 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (category2)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != category2; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        category = [v6 category];
        v8 = [category length];

        if (v8)
        {
          category2 = [v6 category];
          goto LABEL_11;
        }
      }

      category2 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (category2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return category2;
}

- (id)_additionalNumericValue
{
  v17 = *MEMORY[0x1E69E9840];
  [(AXDataPoint *)self additionalValues];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        category = [v6 category];
        v8 = [category length];

        if (!v8)
        {
          v9 = MEMORY[0x1E696AD98];
          [v6 number];
          v3 = [v9 numberWithDouble:?];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

@end