@interface AXUISettingsTickMarkSlider
- (AXUISettingsTickMarkSlider)initWithFrame:(CGRect)a3;
- (void)_setUpSliderConfiguration;
- (void)setPostTickColor:(id)a3;
- (void)setSnappingDistance:(double)a3;
- (void)setTicks:(id)a3;
- (void)setTrackFillColor:(id)a3;
@end

@implementation AXUISettingsTickMarkSlider

- (AXUISettingsTickMarkSlider)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AXUISettingsTickMarkSlider;
  v3 = [(PSSegmentableSlider *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AXUISettingsTickMarkSlider *)v3 setContentMode:3];
    [(AXUISettingsTickMarkSlider *)v4 setSemanticContentAttribute:2];
    v4->_snappingDistance = 0.05;
  }

  return v4;
}

- (void)setTicks:(id)a3
{
  objc_storeStrong(&self->_ticks, a3);

  [(AXUISettingsTickMarkSlider *)self _setUpSliderConfiguration];
}

- (void)setTrackFillColor:(id)a3
{
  v5 = a3;
  if (self->_trackFillColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_trackFillColor, a3);
    [(AXUISettingsTickMarkSlider *)self setMaximumTrackTintColor:self->_trackFillColor];
    v5 = v6;
  }
}

- (void)setPostTickColor:(id)a3
{
  v7 = a3;
  if (self->_postTickColor != v7)
  {
    objc_storeStrong(&self->_postTickColor, a3);
    if (self->_postTickColor)
    {
      v5 = [(AXUISettingsTickMarkSlider *)self ticks];
      v6 = [v5 firstObject];

      if (v6)
      {
        [(AXUISettingsTickMarkSlider *)self _setUpSliderConfiguration];
      }
    }
  }
}

- (void)setSnappingDistance:(double)a3
{
  if (self->_snappingDistance != a3)
  {
    self->_snappingDistance = a3;
    v4 = [(AXUISettingsTickMarkSlider *)self ticks];
    v5 = [v4 firstObject];

    if (v5)
    {

      [(AXUISettingsTickMarkSlider *)self _setUpSliderConfiguration];
    }
  }
}

- (void)_setUpSliderConfiguration
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_ticks firstObject];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_ticks;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MEMORY[0x1E69DD728];
          [*(*(&v18 + 1) + 8 * v9) floatValue];
          v11 = [v10 tickWithPosition:0 title:0 image:?];
          [v4 addObject:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v12 = [objc_alloc(MEMORY[0x1E69DD720]) initWithTicks:v4 behavior:2 * (self->_snappingDistance != 0.0)];
    snappingDistance = self->_snappingDistance;
    *&snappingDistance = snappingDistance;
    [v12 setSnappingDistance:snappingDistance];
    v14 = [(AXUISettingsTickMarkSlider *)self postTickColor];

    if (v14)
    {
      v15 = [(NSArray *)self->_ticks firstObject];
      [v15 floatValue];
      [v12 setNeutralPosition:v16];

      v17 = [(AXUISettingsTickMarkSlider *)self postTickColor];
      [(AXUISettingsTickMarkSlider *)self setMinimumTrackTintColor:v17];
    }
  }

  else
  {
    v12 = 0;
  }

  [(AXUISettingsTickMarkSlider *)self _setSliderConfiguration:v12, v18];
}

@end