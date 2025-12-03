@interface CNBadgingAvatarBadgeStyleSettings
+ (id)doNotDisturbBadgeSettings;
+ (id)markedForSyndicationBadgeSettings;
+ (int64_t)cnuiBadgePosition:(int64_t)position;
- (BOOL)isEqual:(id)equal;
- (CNBadgingAvatarBadgeStyleSettings)init;
- (CNBadgingAvatarBadgeStyleSettings)initWithPosition:(int64_t)position color:(id)color backgroundColor:(id)backgroundColor cropStyle:(int64_t)style;
- (int64_t)cnuiBadgePosition;
- (unint64_t)cnuiCropStyle;
@end

@implementation CNBadgingAvatarBadgeStyleSettings

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((color = self->_color, !(color | equalCopy->_color)) || [(UIColor *)color isEqual:?]) && ((backgroundColor = self->_backgroundColor, !(backgroundColor | equalCopy->_backgroundColor)) || [(UIColor *)backgroundColor isEqual:?]) && self->_position == equalCopy->_position && self->_cropStyle == equalCopy->_cropStyle;
  }

  return v7;
}

- (unint64_t)cnuiCropStyle
{
  v3 = objc_opt_class();
  cropStyle = [(CNBadgingAvatarBadgeStyleSettings *)self cropStyle];

  return [v3 cnuiBadgeCropStyle:cropStyle];
}

- (int64_t)cnuiBadgePosition
{
  v3 = objc_opt_class();
  position = [(CNBadgingAvatarBadgeStyleSettings *)self position];

  return [v3 cnuiBadgePosition:position];
}

- (CNBadgingAvatarBadgeStyleSettings)initWithPosition:(int64_t)position color:(id)color backgroundColor:(id)backgroundColor cropStyle:(int64_t)style
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v17.receiver = self;
  v17.super_class = CNBadgingAvatarBadgeStyleSettings;
  v13 = [(CNBadgingAvatarBadgeStyleSettings *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_position = position;
    objc_storeStrong(&v13->_color, color);
    v14->_cropStyle = style;
    objc_storeStrong(&v14->_backgroundColor, backgroundColor);
    v14->_contentMode = 0;
    v15 = v14;
  }

  return v14;
}

- (CNBadgingAvatarBadgeStyleSettings)init
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(CNBadgingAvatarBadgeStyleSettings *)self initWithPosition:0 color:0 backgroundColor:whiteColor cropStyle:0];

  return v4;
}

+ (id)doNotDisturbBadgeSettings
{
  v2 = [CNBadgingAvatarBadgeStyleSettings alloc];
  systemIndigoColor = [MEMORY[0x1E69DC888] systemIndigoColor];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [(CNBadgingAvatarBadgeStyleSettings *)v2 initWithPosition:0 color:systemIndigoColor backgroundColor:whiteColor cropStyle:0];

  [(CNBadgingAvatarBadgeStyleSettings *)v5 setContentMode:4];

  return v5;
}

+ (id)markedForSyndicationBadgeSettings
{
  v2 = [CNBadgingAvatarBadgeStyleSettings alloc];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.945098039 green:0.737254902 blue:0.28627451 alpha:1.0];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [(CNBadgingAvatarBadgeStyleSettings *)v2 initWithPosition:0 color:v3 backgroundColor:whiteColor cropStyle:0];

  return v5;
}

+ (int64_t)cnuiBadgePosition:(int64_t)position
{
  if ((position - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return position;
  }
}

@end