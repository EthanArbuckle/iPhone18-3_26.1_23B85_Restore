@interface AXMVisionFeatureColorInfo
- (AXMVisionFeatureColorInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateMainColors:(id)a3;
- (void)setMainColors:(id)a3 weights:(id)a4;
@end

@implementation AXMVisionFeatureColorInfo

- (AXMVisionFeatureColorInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AXMVisionFeatureColorInfo;
  v5 = [(AXMVisionFeatureColorInfo *)&v11 init];
  if (v5)
  {
    v6 = AXMSecureCodingClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"mainColors"];

    v8 = AXMSecureCodingClasses();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"mainColorWeights"];

    [(AXMVisionFeatureColorInfo *)v5 setMainColors:v7 weights:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionFeatureColorInfo *)self mainColors];
  [v4 encodeObject:v5 forKey:@"mainColors"];

  v6 = [(AXMVisionFeatureColorInfo *)self mainColorWeights];
  [v4 encodeObject:v6 forKey:@"mainColorWeights"];
}

- (void)setMainColors:(id)a3 weights:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 != [v7 count])
  {
    v9 = AXMediaLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureColorInfo setMainColors:v9 weights:?];
    }
  }

  v10 = [v6 count];
  if (v10 == [v7 count])
  {
    [(AXMVisionFeatureColorInfo *)self setMainColors:v6];
    [(AXMVisionFeatureColorInfo *)self setMainColorWeights:v7];
  }
}

- (void)enumerateMainColors:(id)a3
{
  v12 = a3;
  v4 = [(AXMVisionFeatureColorInfo *)self mainColors];
  v5 = [v4 count];

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(AXMVisionFeatureColorInfo *)self mainColors];
      v8 = [v7 objectAtIndexedSubscript:i];
      v9 = [(AXMVisionFeatureColorInfo *)self mainColorWeights];
      v10 = [v9 objectAtIndexedSubscript:i];
      [v10 floatValue];
      v12[2](v12, i, v8, v11);
    }
  }
}

@end