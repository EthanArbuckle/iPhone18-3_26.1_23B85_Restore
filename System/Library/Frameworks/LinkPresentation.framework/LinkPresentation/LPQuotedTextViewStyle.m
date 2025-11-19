@interface LPQuotedTextViewStyle
- (LPQuotedTextViewStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5;
- (id)adjustedForString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation LPQuotedTextViewStyle

- (LPQuotedTextViewStyle)initWithPlatform:(int64_t)a3 sizeClass:(unint64_t)a4 fontScalingFactor:(double)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = LPQuotedTextViewStyle;
  v8 = [LPTextViewStyle initWithPlatform:sel_initWithPlatform_fontScalingFactor_ fontScalingFactor:?];
  if (v8)
  {
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(LPTextViewStyle *)v8 setColor:v9];

    [(LPTextViewStyle *)v8 setMaximumLines:0];
    [(LPTextViewStyle *)v8 setMaximumCharacters:500];
    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v10 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:17.0 weight:*MEMORY[0x1E69DB988]];
    }

    else if (a3 <= 6 && ((0x77u >> a3) & 1) != 0)
    {
      v10 = fontWithTraits(**(&unk_1E7A36D18 + a3), dword_1AE9C6790[a3], a4);
    }

    else
    {
      v10 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB988]];
    }

    v11 = v10;
    [(LPTextViewStyle *)v8 setFont:v10];

    v12 = [[LPPointUnit alloc] initWithValue:15.0];
    v13 = [(LPTextViewStyle *)v8 padding];
    [v13 setTop:v12];

    v14 = [[LPPointUnit alloc] initWithValue:12.0];
    v15 = [(LPTextViewStyle *)v8 padding];
    [v15 setBottom:v14];

    v16 = outerHorizontalTextMargin(a3);
    v17 = [(LPTextViewStyle *)v8 padding];
    [v17 setLeading:v16];

    v18 = outerHorizontalTextMargin(a3);
    v19 = [(LPTextViewStyle *)v8 padding];
    [v19 setTrailing:v18];

    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v20 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:13.0 weight:*MEMORY[0x1E69DB988]];
    }

    else if (a3 <= 6 && ((0x77u >> a3) & 1) != 0)
    {
      v20 = fontWithTraits(**(&unk_1E7A36D50 + a3), dword_1AE9C6790[a3], a4);
    }

    else
    {
      v20 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB988]];
    }

    longPullQuoteFont = v8->_longPullQuoteFont;
    v8->_longPullQuoteFont = v20;

    v8->_maximumLinesToConsiderShort = 3;
    v8->_showQuoteIndicator = 1;
    v8->_showCharacterLimitIndicator = 1;
    v22 = [[LPTextViewStyle alloc] initWithPlatform:a3 fontScalingFactor:a5];
    characterLimitIndicatorStyle = v8->_characterLimitIndicatorStyle;
    v8->_characterLimitIndicatorStyle = v22;

    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v24 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
    }

    else
    {
      if (a3 > 6)
      {
        goto LABEL_24;
      }

      if (((1 << a3) & 0x73) != 0)
      {
        v37 = *MEMORY[0x1E69DB8F0];
        v35 = *MEMORY[0x1E69DB990];
        v26 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
        v36 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v38[0] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v25 = fontWithTraitsAndAttributes(*MEMORY[0x1E69DDD28], 0, v28, a4);

        goto LABEL_20;
      }

      if (a3 == 2)
      {
        v24 = fontWithTraits(*MEMORY[0x1E69DDD38], 0x8000, a4);
      }

      else
      {
LABEL_24:
        v24 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
      }
    }

    v25 = v24;
LABEL_20:
    [(LPTextViewStyle *)v8->_characterLimitIndicatorStyle setFont:v25];

    v29 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(LPTextViewStyle *)v8->_characterLimitIndicatorStyle setColor:v29];

    v30 = [[LPPointUnit alloc] initWithValue:15.0];
    v31 = [(LPTextViewStyle *)v8->_characterLimitIndicatorStyle padding];
    [v31 setTop:v30];

    v32 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = LPQuotedTextViewStyle;
  v4 = [(LPTextViewStyle *)&v8 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 18, self->_longPullQuoteFont);
    *(v5 + 35) = self->_maximumLinesToConsiderShort;
    *(v5 + 136) = self->_showQuoteIndicator;
    *(v5 + 137) = self->_showCharacterLimitIndicator;
    objc_storeStrong(v5 + 19, self->_characterLimitIndicatorStyle);
    v6 = v5;
  }

  return v5;
}

- (id)adjustedForString:(id)a3
{
  v4 = a3;
  v5 = [(LPQuotedTextViewStyle *)self copyWithZone:0];
  [v5 _adjustForString:v4];

  return v5;
}

@end