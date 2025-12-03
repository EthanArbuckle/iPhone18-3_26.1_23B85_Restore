@interface MXAnimationMetric
- (MXAnimationMetric)initWithCoder:(id)coder;
- (MXAnimationMetric)initWithGlitchTimeRatio:(id)ratio;
- (MXAnimationMetric)initWithHitchTimeRatio:(id)ratio perceivedHitchTimeRatio:(id)timeRatio;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXAnimationMetric

- (MXAnimationMetric)initWithGlitchTimeRatio:(id)ratio
{
  ratioCopy = ratio;
  v10.receiver = self;
  v10.super_class = MXAnimationMetric;
  v6 = [(MXMetric *)&v10 init];
  if (v6)
  {
    [ratioCopy doubleValue];
    if (v7 <= 0.0)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_scrollHitchTimeRatio, ratio);
  }

  v8 = v6;
LABEL_6:

  return v8;
}

- (MXAnimationMetric)initWithHitchTimeRatio:(id)ratio perceivedHitchTimeRatio:(id)timeRatio
{
  ratioCopy = ratio;
  timeRatioCopy = timeRatio;
  v14.receiver = self;
  v14.super_class = MXAnimationMetric;
  v9 = [(MXMetric *)&v14 init];
  if (v9)
  {
    [ratioCopy doubleValue];
    if (v10 <= 0.0)
    {
      [timeRatioCopy doubleValue];
      if (v11 <= 0.0)
      {
        v12 = 0;
        goto LABEL_6;
      }
    }

    objc_storeStrong(&v9->_scrollHitchTimeRatio, ratio);
    objc_storeStrong(&v9->_hitchTimeRatio, timeRatio);
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  scrollHitchTimeRatio = self->_scrollHitchTimeRatio;
  coderCopy = coder;
  [coderCopy encodeObject:scrollHitchTimeRatio forKey:@"scrollHitchTimeRatio"];
  [coderCopy encodeObject:self->_hitchTimeRatio forKey:@"hitchTimeRatio"];
}

- (MXAnimationMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXAnimationMetric;
  v5 = [(MXMetric *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scrollHitchTimeRatio"];
    scrollHitchTimeRatio = v5->_scrollHitchTimeRatio;
    v5->_scrollHitchTimeRatio = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hitchTimeRatio"];
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
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    v5 = [measurementFormatter stringFromMeasurement:self->_scrollHitchTimeRatio];
    [v3 setObject:v5 forKey:@"scrollHitchTimeRatio"];
  }

  if (self->_hitchTimeRatio)
  {
    measurementFormatter2 = [(MXMetric *)self measurementFormatter];
    v7 = [measurementFormatter2 stringFromMeasurement:self->_hitchTimeRatio];
    [v3 setObject:v7 forKey:@"hitchTimeRatio"];
  }

  return v3;
}

@end