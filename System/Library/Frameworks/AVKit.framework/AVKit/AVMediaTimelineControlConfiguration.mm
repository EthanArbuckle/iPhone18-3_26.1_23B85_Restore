@interface AVMediaTimelineControlConfiguration
+ (id)defaultConfiguration;
- (AVMediaTimelineControlLabelsConfiguration)labelsConfiguration;
- (UIVisualEffect)currentValueVisualEffect;
- (UIVisualEffect)maxValueVisualEffect;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCurrentValueVisualEffect:(id)a3;
- (void)setLabelsConfiguration:(id)a3;
- (void)setMaxValueVisualEffect:(id)a3;
@end

@implementation AVMediaTimelineControlConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVMediaTimelineControlConfiguration);
  [(AVMediaTimelineControlConfiguration *)self extendedDynamicRangeGain];
  [(AVMediaTimelineControlConfiguration *)v4 setExtendedDynamicRangeGain:?];
  v5 = [(AVMediaTimelineControlConfiguration *)self labelsConfiguration];
  [(AVMediaTimelineControlConfiguration *)v4 setLabelsConfiguration:v5];

  v6 = [(AVMediaTimelineControlConfiguration *)self currentValueVisualEffect];
  [(AVMediaTimelineControlConfiguration *)v4 setCurrentValueVisualEffect:v6];

  v7 = [(AVMediaTimelineControlConfiguration *)self maxValueVisualEffect];
  [(AVMediaTimelineControlConfiguration *)v4 setMaxValueVisualEffect:v7];

  return v4;
}

- (UIVisualEffect)maxValueVisualEffect
{
  v2 = [(UIVisualEffect *)self->_maxValueVisualEffect copy];

  return v2;
}

- (void)setMaxValueVisualEffect:(id)a3
{
  v5 = a3;
  maxValueVisualEffect = self->_maxValueVisualEffect;
  p_maxValueVisualEffect = &self->_maxValueVisualEffect;
  if (maxValueVisualEffect != v5)
  {
    v8 = v5;
    objc_storeStrong(p_maxValueVisualEffect, a3);
    v5 = v8;
  }
}

- (UIVisualEffect)currentValueVisualEffect
{
  v2 = [(UIVisualEffect *)self->_currentValueVisualEffect copy];

  return v2;
}

- (void)setCurrentValueVisualEffect:(id)a3
{
  v5 = a3;
  currentValueVisualEffect = self->_currentValueVisualEffect;
  p_currentValueVisualEffect = &self->_currentValueVisualEffect;
  if (currentValueVisualEffect != v5)
  {
    v8 = v5;
    objc_storeStrong(p_currentValueVisualEffect, a3);
    v5 = v8;
  }
}

- (AVMediaTimelineControlLabelsConfiguration)labelsConfiguration
{
  v2 = [(AVMediaTimelineControlLabelsConfiguration *)self->_labelsConfiguration copy];

  return v2;
}

- (void)setLabelsConfiguration:(id)a3
{
  if (self->_labelsConfiguration != a3)
  {
    v5 = [a3 copy];
    labelsConfiguration = self->_labelsConfiguration;
    self->_labelsConfiguration = v5;

    MEMORY[0x1EEE66BB8](v5, labelsConfiguration);
  }
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(AVMediaTimelineControlConfiguration);
  v3 = +[AVMediaTimelineControlLabelsConfiguration inlineConfiguration];
  [(AVMediaTimelineControlConfiguration *)v2 setLabelsConfiguration:v3];
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:11];
  [(AVMediaTimelineControlConfiguration *)v2 setCurrentValueVisualEffect:v4];

  v5 = [MEMORY[0x1E69DC730] effectWithStyle:14];
  [(AVMediaTimelineControlConfiguration *)v2 setMaxValueVisualEffect:v5];

  return v2;
}

@end