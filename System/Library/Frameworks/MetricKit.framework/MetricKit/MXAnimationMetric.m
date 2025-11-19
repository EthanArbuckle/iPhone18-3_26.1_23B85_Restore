@interface MXAnimationMetric
- (MXAnimationMetric)initWithCoder:(id)a3;
- (MXAnimationMetric)initWithGlitchTimeRatio:(id)a3;
- (MXAnimationMetric)initWithHitchTimeRatio:(id)a3 perceivedHitchTimeRatio:(id)a4;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXAnimationMetric

- (MXAnimationMetric)initWithGlitchTimeRatio:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MXAnimationMetric;
  v6 = [(MXMetric *)&v10 init];
  if (v6)
  {
    [v5 doubleValue];
    if (v7 <= 0.0)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_scrollHitchTimeRatio, a3);
  }

  v8 = v6;
LABEL_6:

  return v8;
}

- (MXAnimationMetric)initWithHitchTimeRatio:(id)a3 perceivedHitchTimeRatio:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MXAnimationMetric;
  v9 = [(MXMetric *)&v14 init];
  if (v9)
  {
    [v7 doubleValue];
    if (v10 <= 0.0)
    {
      [v8 doubleValue];
      if (v11 <= 0.0)
      {
        v12 = 0;
        goto LABEL_6;
      }
    }

    objc_storeStrong(&v9->_scrollHitchTimeRatio, a3);
    objc_storeStrong(&v9->_hitchTimeRatio, a4);
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  scrollHitchTimeRatio = self->_scrollHitchTimeRatio;
  v5 = a3;
  [v5 encodeObject:scrollHitchTimeRatio forKey:@"scrollHitchTimeRatio"];
  [v5 encodeObject:self->_hitchTimeRatio forKey:@"hitchTimeRatio"];
}

- (MXAnimationMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXAnimationMetric;
  v5 = [(MXMetric *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scrollHitchTimeRatio"];
    scrollHitchTimeRatio = v5->_scrollHitchTimeRatio;
    v5->_scrollHitchTimeRatio = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hitchTimeRatio"];
    hitchTimeRatio = v5->_hitchTimeRatio;
    v5->_hitchTimeRatio = v8;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_scrollHitchTimeRatio)
  {
    v4 = [(MXMetric *)self measurementFormatter];
    v5 = [v4 stringFromMeasurement:self->_scrollHitchTimeRatio];
    [v3 setObject:v5 forKey:@"scrollHitchTimeRatio"];
  }

  if (self->_hitchTimeRatio)
  {
    v6 = [(MXMetric *)self measurementFormatter];
    v7 = [v6 stringFromMeasurement:self->_hitchTimeRatio];
    [v3 setObject:v7 forKey:@"hitchTimeRatio"];
  }

  return v3;
}

@end