@interface LPIndeterminateProgressSpinnerStyle
- (LPIndeterminateProgressSpinnerStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5;
@end

@implementation LPIndeterminateProgressSpinnerStyle

- (LPIndeterminateProgressSpinnerStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5
{
  v26.receiver = self;
  v26.super_class = LPIndeterminateProgressSpinnerStyle;
  v8 = [(LPIndeterminateProgressSpinnerStyle *)&v26 init];
  if (v8)
  {
    if (a3 == 5)
    {
      [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v9 = ;
    indicatorColor = v8->_indicatorColor;
    v8->_indicatorColor = v9;

    v8->_useLargeIndicatorStyle = 1;
    v11 = [[LPTextViewStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
    [(LPTextViewStyle *)v11 setTextAlignment:2];
    if (a3 == 5)
    {
      [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v12 = ;
    [(LPTextViewStyle *)v11 setColor:v12];

    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB970]];
    }

    else
    {
      fontWithTraits(*MEMORY[0x1E69DDD28], 0x8000, a4);
    }
    v13 = ;
    [(LPTextViewStyle *)v11 setFont:v13];

    objc_storeStrong(&v8->_label, v11);
    v14 = objc_alloc_init(LPPadding);
    padding = v8->_padding;
    v8->_padding = v14;

    v16 = [[LPPointUnit alloc] initWithValue:25.0];
    [(LPPadding *)v8->_padding setTop:v16];

    v17 = [[LPPointUnit alloc] initWithValue:25.0];
    [(LPPadding *)v8->_padding setBottom:v17];

    v18 = [[LPPointUnit alloc] initWithValue:25.0];
    [(LPPadding *)v8->_padding setLeading:v18];

    v19 = [[LPPointUnit alloc] initWithValue:25.0];
    [(LPPadding *)v8->_padding setTrailing:v19];

    v20 = [[LPPointUnit alloc] initWithValue:8.0];
    spacing = v8->_spacing;
    v8->_spacing = v20;

    v22 = [[LPPointUnit alloc] initWithValue:2.0];
    verticalOffset = v8->_verticalOffset;
    v8->_verticalOffset = v22;

    v24 = v8;
  }

  return v8;
}

@end