@interface AVMediaTimelineControlLabelsConfiguration
+ (id)_defaultFont;
+ (id)belowConfiguration;
+ (id)hiddenConfiguration;
+ (id)inlineConfiguration;
- (UIColor)textColor;
- (UIFont)textFont;
- (id)copyWithZone:(_NSZone *)a3;
- (id)textCompositingFilter;
- (void)setTextColor:(id)a3;
- (void)setTextCompositingFilter:(id)a3;
- (void)setTextFont:(id)a3;
@end

@implementation AVMediaTimelineControlLabelsConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVMediaTimelineControlLabelsConfiguration);
  [(AVMediaTimelineControlLabelsConfiguration *)v4 setExtendedDynamicRangeGain:self->_extendedDynamicRangeGain];
  [(AVMediaTimelineControlLabelsConfiguration *)v4 setTextFont:self->_textFont];
  [(AVMediaTimelineControlLabelsConfiguration *)v4 setTextColor:self->_textColor];
  [(AVMediaTimelineControlLabelsConfiguration *)v4 setTextCompositingFilter:self->_textCompositingFilter];
  [(AVMediaTimelineControlLabelsConfiguration *)v4 setLabelsStyle:[(AVMediaTimelineControlLabelsConfiguration *)self labelsStyle]];
  return v4;
}

- (UIFont)textFont
{
  v2 = [(UIFont *)self->_textFont copy];

  return v2;
}

- (void)setTextFont:(id)a3
{
  if (self->_textFont != a3)
  {
    v5 = [a3 copy];
    textFont = self->_textFont;
    self->_textFont = v5;

    MEMORY[0x1EEE66BB8](v5, textFont);
  }
}

- (UIColor)textColor
{
  v2 = [(UIColor *)self->_textColor copy];

  return v2;
}

- (void)setTextColor:(id)a3
{
  if (self->_textColor != a3)
  {
    v5 = [a3 copy];
    textColor = self->_textColor;
    self->_textColor = v5;

    MEMORY[0x1EEE66BB8](v5, textColor);
  }
}

- (void)setTextCompositingFilter:(id)a3
{
  if (self->_textCompositingFilter != a3)
  {
    v5 = [a3 copy];
    textCompositingFilter = self->_textCompositingFilter;
    self->_textCompositingFilter = v5;

    MEMORY[0x1EEE66BB8](v5, textCompositingFilter);
  }
}

- (id)textCompositingFilter
{
  v2 = [(NSString *)self->_textCompositingFilter copy];

  return v2;
}

+ (id)_defaultFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v4 = [v2 timeFontWithFont:v3];

  return v4;
}

+ (id)inlineConfiguration
{
  v2 = objc_alloc_init(AVMediaTimelineControlLabelsConfiguration);
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setLabelsStyle:0];
  v3 = +[AVMediaTimelineControlLabelsConfiguration _defaultFont];
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setTextFont:v3];

  v4 = +[AVMediaTimelineControlLabelsConfiguration _defaultTextColor];
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setTextColor:v4];

  return v2;
}

+ (id)belowConfiguration
{
  v2 = objc_alloc_init(AVMediaTimelineControlLabelsConfiguration);
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setLabelsStyle:1];
  v3 = +[AVMediaTimelineControlLabelsConfiguration _defaultFont];
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setTextFont:v3];

  v4 = +[AVMediaTimelineControlLabelsConfiguration _defaultTextColor];
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setTextColor:v4];

  return v2;
}

+ (id)hiddenConfiguration
{
  v2 = objc_alloc_init(AVMediaTimelineControlLabelsConfiguration);
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setLabelsStyle:2];
  v3 = +[AVMediaTimelineControlLabelsConfiguration _defaultFont];
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setTextFont:v3];

  v4 = +[AVMediaTimelineControlLabelsConfiguration _defaultTextColor];
  [(AVMediaTimelineControlLabelsConfiguration *)v2 setTextColor:v4];

  return v2;
}

@end