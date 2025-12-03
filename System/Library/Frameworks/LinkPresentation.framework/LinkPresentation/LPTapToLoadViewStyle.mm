@interface LPTapToLoadViewStyle
- (LPTapToLoadViewStyle)initWithPlatform:(int64_t)platform sizeClass:(unint64_t)class fontScalingFactor:(double)factor;
@end

@implementation LPTapToLoadViewStyle

- (LPTapToLoadViewStyle)initWithPlatform:(int64_t)platform sizeClass:(unint64_t)class fontScalingFactor:(double)factor
{
  v27.receiver = self;
  v27.super_class = LPTapToLoadViewStyle;
  v8 = [(LPTapToLoadViewStyle *)&v27 init];
  if (v8)
  {
    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = tertiarySystemFillColor;

    v11 = +[LPResources tapToLoadHighlightColor];
    tapHighlightColor = v8->_tapHighlightColor;
    v8->_tapHighlightColor = v11;

    v13 = [[LPTextViewStyle alloc] initWithPlatform:platform fontScalingFactor:factor];
    caption = v8->_caption;
    v8->_caption = v13;

    v15 = bottomCaptionFont(platform, class);
    [(LPTextViewStyle *)v8->_caption setFont:v15];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(LPTextViewStyle *)v8->_caption setColor:labelColor];

    [(LPTextViewStyle *)v8->_caption setMaximumLines:0];
    [(LPTextViewStyle *)v8->_caption setTextAlignment:2];
    v17 = [[LPPointUnit alloc] initWithValue:12.0];
    padding = [(LPTextViewStyle *)v8->_caption padding];
    [padding setLeading:v17];

    v19 = [[LPPointUnit alloc] initWithValue:12.0];
    padding2 = [(LPTextViewStyle *)v8->_caption padding];
    [padding2 setTrailing:v19];

    v21 = [[LPPointUnit alloc] initWithValue:factor * 160.0];
    width = v8->_width;
    v8->_width = v21;

    v23 = [[LPPointUnit alloc] initWithValue:factor * 80.0];
    height = v8->_height;
    v8->_height = v23;

    v25 = v8;
  }

  return v8;
}

@end