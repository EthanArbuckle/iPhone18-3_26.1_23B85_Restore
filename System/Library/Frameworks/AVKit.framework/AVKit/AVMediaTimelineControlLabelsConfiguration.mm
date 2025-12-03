@interface AVMediaTimelineControlLabelsConfiguration
+ (id)_defaultFont;
+ (id)belowConfiguration;
+ (id)hiddenConfiguration;
+ (id)inlineConfiguration;
- (UIColor)textColor;
- (UIFont)textFont;
- (id)copyWithZone:(_NSZone *)zone;
- (id)textCompositingFilter;
- (void)setTextColor:(id)color;
- (void)setTextCompositingFilter:(id)filter;
- (void)setTextFont:(id)font;
@end

@implementation AVMediaTimelineControlLabelsConfiguration

- (id)copyWithZone:(_NSZone *)zone
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

- (void)setTextFont:(id)font
{
  if (self->_textFont != font)
  {
    v5 = [font copy];
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

- (void)setTextColor:(id)color
{
  if (self->_textColor != color)
  {
    v5 = [color copy];
    textColor = self->_textColor;
    self->_textColor = v5;

    MEMORY[0x1EEE66BB8](v5, textColor);
  }
}

- (void)setTextCompositingFilter:(id)filter
{
  if (self->_textCompositingFilter != filter)
  {
    v5 = [filter copy];
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