@interface AVMediaTimelineControlConfiguration
+ (id)defaultConfiguration;
- (AVMediaTimelineControlLabelsConfiguration)labelsConfiguration;
- (UIVisualEffect)currentValueVisualEffect;
- (UIVisualEffect)maxValueVisualEffect;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCurrentValueVisualEffect:(id)effect;
- (void)setLabelsConfiguration:(id)configuration;
- (void)setMaxValueVisualEffect:(id)effect;
@end

@implementation AVMediaTimelineControlConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVMediaTimelineControlConfiguration);
  [(AVMediaTimelineControlConfiguration *)self extendedDynamicRangeGain];
  [(AVMediaTimelineControlConfiguration *)v4 setExtendedDynamicRangeGain:?];
  labelsConfiguration = [(AVMediaTimelineControlConfiguration *)self labelsConfiguration];
  [(AVMediaTimelineControlConfiguration *)v4 setLabelsConfiguration:labelsConfiguration];

  currentValueVisualEffect = [(AVMediaTimelineControlConfiguration *)self currentValueVisualEffect];
  [(AVMediaTimelineControlConfiguration *)v4 setCurrentValueVisualEffect:currentValueVisualEffect];

  maxValueVisualEffect = [(AVMediaTimelineControlConfiguration *)self maxValueVisualEffect];
  [(AVMediaTimelineControlConfiguration *)v4 setMaxValueVisualEffect:maxValueVisualEffect];

  return v4;
}

- (UIVisualEffect)maxValueVisualEffect
{
  v2 = [(UIVisualEffect *)self->_maxValueVisualEffect copy];

  return v2;
}

- (void)setMaxValueVisualEffect:(id)effect
{
  effectCopy = effect;
  maxValueVisualEffect = self->_maxValueVisualEffect;
  p_maxValueVisualEffect = &self->_maxValueVisualEffect;
  if (maxValueVisualEffect != effectCopy)
  {
    v8 = effectCopy;
    objc_storeStrong(p_maxValueVisualEffect, effect);
    effectCopy = v8;
  }
}

- (UIVisualEffect)currentValueVisualEffect
{
  v2 = [(UIVisualEffect *)self->_currentValueVisualEffect copy];

  return v2;
}

- (void)setCurrentValueVisualEffect:(id)effect
{
  effectCopy = effect;
  currentValueVisualEffect = self->_currentValueVisualEffect;
  p_currentValueVisualEffect = &self->_currentValueVisualEffect;
  if (currentValueVisualEffect != effectCopy)
  {
    v8 = effectCopy;
    objc_storeStrong(p_currentValueVisualEffect, effect);
    effectCopy = v8;
  }
}

- (AVMediaTimelineControlLabelsConfiguration)labelsConfiguration
{
  v2 = [(AVMediaTimelineControlLabelsConfiguration *)self->_labelsConfiguration copy];

  return v2;
}

- (void)setLabelsConfiguration:(id)configuration
{
  if (self->_labelsConfiguration != configuration)
  {
    v5 = [configuration copy];
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