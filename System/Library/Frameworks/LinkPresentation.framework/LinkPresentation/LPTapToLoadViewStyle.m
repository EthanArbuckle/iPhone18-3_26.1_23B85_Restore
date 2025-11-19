@interface LPTapToLoadViewStyle
- (LPTapToLoadViewStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5;
@end

@implementation LPTapToLoadViewStyle

- (LPTapToLoadViewStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5
{
  v27.receiver = self;
  v27.super_class = LPTapToLoadViewStyle;
  v8 = [(LPTapToLoadViewStyle *)&v27 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = v9;

    v11 = +[LPResources tapToLoadHighlightColor];
    tapHighlightColor = v8->_tapHighlightColor;
    v8->_tapHighlightColor = v11;

    v13 = [[LPTextViewStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
    caption = v8->_caption;
    v8->_caption = v13;

    v15 = bottomCaptionFont(a3, a4);
    [(LPTextViewStyle *)v8->_caption setFont:v15];

    v16 = [MEMORY[0x1E69DC888] labelColor];
    [(LPTextViewStyle *)v8->_caption setColor:v16];

    [(LPTextViewStyle *)v8->_caption setMaximumLines:0];
    [(LPTextViewStyle *)v8->_caption setTextAlignment:2];
    v17 = [[LPPointUnit alloc] initWithValue:12.0];
    v18 = [(LPTextViewStyle *)v8->_caption padding];
    [v18 setLeading:v17];

    v19 = [[LPPointUnit alloc] initWithValue:12.0];
    v20 = [(LPTextViewStyle *)v8->_caption padding];
    [v20 setTrailing:v19];

    v21 = [[LPPointUnit alloc] initWithValue:a5 * 160.0];
    width = v8->_width;
    v8->_width = v21;

    v23 = [[LPPointUnit alloc] initWithValue:a5 * 80.0];
    height = v8->_height;
    v8->_height = v23;

    v25 = v8;
  }

  return v8;
}

@end