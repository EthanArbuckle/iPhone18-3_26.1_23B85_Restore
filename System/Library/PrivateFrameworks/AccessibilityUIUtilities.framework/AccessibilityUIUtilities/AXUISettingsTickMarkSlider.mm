@interface AXUISettingsTickMarkSlider
- (AXUISettingsTickMarkSlider)initWithFrame:(CGRect)frame;
- (void)_setUpSliderConfiguration;
- (void)setPostTickColor:(id)color;
- (void)setSnappingDistance:(double)distance;
- (void)setTicks:(id)ticks;
- (void)setTrackFillColor:(id)color;
@end

@implementation AXUISettingsTickMarkSlider

- (AXUISettingsTickMarkSlider)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AXUISettingsTickMarkSlider;
  v3 = [(PSSegmentableSlider *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AXUISettingsTickMarkSlider *)v3 setContentMode:3];
    [(AXUISettingsTickMarkSlider *)v4 setSemanticContentAttribute:2];
    v4->_snappingDistance = 0.05;
  }

  return v4;
}

- (void)setTicks:(id)ticks
{
  objc_storeStrong(&self->_ticks, ticks);

  [(AXUISettingsTickMarkSlider *)self _setUpSliderConfiguration];
}

- (void)setTrackFillColor:(id)color
{
  colorCopy = color;
  if (self->_trackFillColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_trackFillColor, color);
    [(AXUISettingsTickMarkSlider *)self setMaximumTrackTintColor:self->_trackFillColor];
    colorCopy = v6;
  }
}

- (void)setPostTickColor:(id)color
{
  colorCopy = color;
  if (self->_postTickColor != colorCopy)
  {
    objc_storeStrong(&self->_postTickColor, color);
    if (self->_postTickColor)
    {
      ticks = [(AXUISettingsTickMarkSlider *)self ticks];
      firstObject = [ticks firstObject];

      if (firstObject)
      {
        [(AXUISettingsTickMarkSlider *)self _setUpSliderConfiguration];
      }
    }
  }
}

- (void)setSnappingDistance:(double)distance
{
  if (self->_snappingDistance != distance)
  {
    self->_snappingDistance = distance;
    ticks = [(AXUISettingsTickMarkSlider *)self ticks];
    firstObject = [ticks firstObject];

    if (firstObject)
    {

      [(AXUISettingsTickMarkSlider *)self _setUpSliderConfiguration];
    }
  }
}

- (void)_setUpSliderConfiguration
{
  v23 = *MEMORY[0x1E69E9840];
  firstObject = [(NSArray *)self->_ticks firstObject];

  if (firstObject)
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
    postTickColor = [(AXUISettingsTickMarkSlider *)self postTickColor];

    if (postTickColor)
    {
      firstObject2 = [(NSArray *)self->_ticks firstObject];
      [firstObject2 floatValue];
      [v12 setNeutralPosition:v16];

      postTickColor2 = [(AXUISettingsTickMarkSlider *)self postTickColor];
      [(AXUISettingsTickMarkSlider *)self setMinimumTrackTintColor:postTickColor2];
    }
  }

  else
  {
    v12 = 0;
  }

  [(AXUISettingsTickMarkSlider *)self _setSliderConfiguration:v12, v18];
}

@end