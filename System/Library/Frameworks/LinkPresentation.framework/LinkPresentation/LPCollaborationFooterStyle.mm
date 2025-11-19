@interface LPCollaborationFooterStyle
- (LPCollaborationFooterStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5;
@end

@implementation LPCollaborationFooterStyle

- (LPCollaborationFooterStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5
{
  v34.receiver = self;
  v34.super_class = LPCollaborationFooterStyle;
  v8 = [(LPCollaborationFooterStyle *)&v34 init];
  if (v8)
  {
    v9 = objc_alloc_init(LPPadding);
    margin = v8->_margin;
    v8->_margin = v9;

    v11 = [[LPPointUnit alloc] initWithValue:16.0];
    [(LPPadding *)v8->_margin setBottom:v11];

    v12 = objc_alloc_init(LPPadding);
    separatorMargin = v8->_separatorMargin;
    v8->_separatorMargin = v12;

    v14 = [(LPPadding *)v8->_margin bottom];
    [(LPPadding *)v8->_separatorMargin setBottom:v14];

    v15 = objc_alloc_init(LPPadding);
    padding = v8->_padding;
    v8->_padding = v15;

    *&v8->_showSeparator = 16777473;
    v8->_ignoreSafeAreaInset = 0;
    v17 = [[LPPointUnit alloc] initWithValue:8.0];
    indicatorSpacing = v8->_indicatorSpacing;
    v8->_indicatorSpacing = v17;

    v19 = [[LPTextViewStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
    options = v8->_options;
    v8->_options = v19;

    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v21 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB970]];
    }

    else
    {
      IsCardHeading = sizeClassIsCardHeading(a4);
      v23 = MEMORY[0x1E69DDCF8];
      if (a3 != 5)
      {
        v23 = MEMORY[0x1E69DDD80];
      }

      if (!IsCardHeading)
      {
        v23 = MEMORY[0x1E69DDD28];
      }

      v21 = fontWithTraits(*v23, 0x8000, a4);
    }

    v24 = v21;
    [(LPTextViewStyle *)v8->_options setFont:v21];

    if (a3 == 5)
    {
      [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v25 = ;
    [(LPTextViewStyle *)v8->_options setColor:v25];

    v26 = [[LPTextViewStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
    handle = v8->_handle;
    v8->_handle = v26;

    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v28 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
    }

    else
    {
      v29 = MEMORY[0x1E69DDD28];
      if (a3 != 5)
      {
        v29 = MEMORY[0x1E69DDD10];
      }

      v28 = fontWithTraits(*v29, 0, a4);
    }

    v30 = v28;
    [(LPTextViewStyle *)v8->_handle setFont:v28];

    v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(LPTextViewStyle *)v8->_handle setColor:v31];

    v32 = v8;
  }

  return v8;
}

@end