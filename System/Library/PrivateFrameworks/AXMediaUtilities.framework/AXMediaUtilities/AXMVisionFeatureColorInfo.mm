@interface AXMVisionFeatureColorInfo
- (AXMVisionFeatureColorInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateMainColors:(id)colors;
- (void)setMainColors:(id)colors weights:(id)weights;
@end

@implementation AXMVisionFeatureColorInfo

- (AXMVisionFeatureColorInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AXMVisionFeatureColorInfo;
  v5 = [(AXMVisionFeatureColorInfo *)&v11 init];
  if (v5)
  {
    v6 = AXMSecureCodingClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"mainColors"];

    v8 = AXMSecureCodingClasses();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"mainColorWeights"];

    [(AXMVisionFeatureColorInfo *)v5 setMainColors:v7 weights:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mainColors = [(AXMVisionFeatureColorInfo *)self mainColors];
  [coderCopy encodeObject:mainColors forKey:@"mainColors"];

  mainColorWeights = [(AXMVisionFeatureColorInfo *)self mainColorWeights];
  [coderCopy encodeObject:mainColorWeights forKey:@"mainColorWeights"];
}

- (void)setMainColors:(id)colors weights:(id)weights
{
  colorsCopy = colors;
  weightsCopy = weights;
  v8 = [colorsCopy count];
  if (v8 != [weightsCopy count])
  {
    v9 = AXMediaLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureColorInfo setMainColors:v9 weights:?];
    }
  }

  v10 = [colorsCopy count];
  if (v10 == [weightsCopy count])
  {
    [(AXMVisionFeatureColorInfo *)self setMainColors:colorsCopy];
    [(AXMVisionFeatureColorInfo *)self setMainColorWeights:weightsCopy];
  }
}

- (void)enumerateMainColors:(id)colors
{
  colorsCopy = colors;
  mainColors = [(AXMVisionFeatureColorInfo *)self mainColors];
  v5 = [mainColors count];

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      mainColors2 = [(AXMVisionFeatureColorInfo *)self mainColors];
      v8 = [mainColors2 objectAtIndexedSubscript:i];
      mainColorWeights = [(AXMVisionFeatureColorInfo *)self mainColorWeights];
      v10 = [mainColorWeights objectAtIndexedSubscript:i];
      [v10 floatValue];
      colorsCopy[2](colorsCopy, i, v8, v11);
    }
  }
}

@end