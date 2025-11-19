@interface CNBadgingAvatarBadgeStyleSettings
+ (id)doNotDisturbBadgeSettings;
+ (id)markedForSyndicationBadgeSettings;
+ (int64_t)cnuiBadgePosition:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CNBadgingAvatarBadgeStyleSettings)init;
- (CNBadgingAvatarBadgeStyleSettings)initWithPosition:(int64_t)a3 color:(id)a4 backgroundColor:(id)a5 cropStyle:(int64_t)a6;
- (int64_t)cnuiBadgePosition;
- (unint64_t)cnuiCropStyle;
@end

@implementation CNBadgingAvatarBadgeStyleSettings

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((color = self->_color, !(color | v4->_color)) || [(UIColor *)color isEqual:?]) && ((backgroundColor = self->_backgroundColor, !(backgroundColor | v4->_backgroundColor)) || [(UIColor *)backgroundColor isEqual:?]) && self->_position == v4->_position && self->_cropStyle == v4->_cropStyle;
  }

  return v7;
}

- (unint64_t)cnuiCropStyle
{
  v3 = objc_opt_class();
  v4 = [(CNBadgingAvatarBadgeStyleSettings *)self cropStyle];

  return [v3 cnuiBadgeCropStyle:v4];
}

- (int64_t)cnuiBadgePosition
{
  v3 = objc_opt_class();
  v4 = [(CNBadgingAvatarBadgeStyleSettings *)self position];

  return [v3 cnuiBadgePosition:v4];
}

- (CNBadgingAvatarBadgeStyleSettings)initWithPosition:(int64_t)a3 color:(id)a4 backgroundColor:(id)a5 cropStyle:(int64_t)a6
{
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = CNBadgingAvatarBadgeStyleSettings;
  v13 = [(CNBadgingAvatarBadgeStyleSettings *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_position = a3;
    objc_storeStrong(&v13->_color, a4);
    v14->_cropStyle = a6;
    objc_storeStrong(&v14->_backgroundColor, a5);
    v14->_contentMode = 0;
    v15 = v14;
  }

  return v14;
}

- (CNBadgingAvatarBadgeStyleSettings)init
{
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(CNBadgingAvatarBadgeStyleSettings *)self initWithPosition:0 color:0 backgroundColor:v3 cropStyle:0];

  return v4;
}

+ (id)doNotDisturbBadgeSettings
{
  v2 = [CNBadgingAvatarBadgeStyleSettings alloc];
  v3 = [MEMORY[0x1E69DC888] systemIndigoColor];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [(CNBadgingAvatarBadgeStyleSettings *)v2 initWithPosition:0 color:v3 backgroundColor:v4 cropStyle:0];

  [(CNBadgingAvatarBadgeStyleSettings *)v5 setContentMode:4];

  return v5;
}

+ (id)markedForSyndicationBadgeSettings
{
  v2 = [CNBadgingAvatarBadgeStyleSettings alloc];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.945098039 green:0.737254902 blue:0.28627451 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [(CNBadgingAvatarBadgeStyleSettings *)v2 initWithPosition:0 color:v3 backgroundColor:v4 cropStyle:0];

  return v5;
}

+ (int64_t)cnuiBadgePosition:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end