@interface LPQuotedTextViewStyle
- (LPQuotedTextViewStyle)initWithPlatform:(int64_t)platform sizeClass:(unint64_t)class fontScalingFactor:(double)factor;
- (id)adjustedForString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPQuotedTextViewStyle

- (LPQuotedTextViewStyle)initWithPlatform:(int64_t)platform sizeClass:(unint64_t)class fontScalingFactor:(double)factor
{
  v38[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = LPQuotedTextViewStyle;
  v8 = [LPTextViewStyle initWithPlatform:sel_initWithPlatform_fontScalingFactor_ fontScalingFactor:?];
  if (v8)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(LPTextViewStyle *)v8 setColor:labelColor];

    [(LPTextViewStyle *)v8 setMaximumLines:0];
    [(LPTextViewStyle *)v8 setMaximumCharacters:500];
    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v10 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:17.0 weight:*MEMORY[0x1E69DB988]];
    }

    else if (platform <= 6 && ((0x77u >> platform) & 1) != 0)
    {
      v10 = fontWithTraits(**(&unk_1E7A36D18 + platform), dword_1AE9C6790[platform], class);
    }

    else
    {
      v10 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB988]];
    }

    v11 = v10;
    [(LPTextViewStyle *)v8 setFont:v10];

    v12 = [[LPPointUnit alloc] initWithValue:15.0];
    padding = [(LPTextViewStyle *)v8 padding];
    [padding setTop:v12];

    v14 = [[LPPointUnit alloc] initWithValue:12.0];
    padding2 = [(LPTextViewStyle *)v8 padding];
    [padding2 setBottom:v14];

    v16 = outerHorizontalTextMargin(platform);
    padding3 = [(LPTextViewStyle *)v8 padding];
    [padding3 setLeading:v16];

    v18 = outerHorizontalTextMargin(platform);
    padding4 = [(LPTextViewStyle *)v8 padding];
    [padding4 setTrailing:v18];

    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v20 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:13.0 weight:*MEMORY[0x1E69DB988]];
    }

    else if (platform <= 6 && ((0x77u >> platform) & 1) != 0)
    {
      v20 = fontWithTraits(**(&unk_1E7A36D50 + platform), dword_1AE9C6790[platform], class);
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
    v22 = [[LPTextViewStyle alloc] initWithPlatform:platform fontScalingFactor:factor];
    characterLimitIndicatorStyle = v8->_characterLimitIndicatorStyle;
    v8->_characterLimitIndicatorStyle = v22;

    if (+[LPTestingOverrides forceMonospaceFonts])
    {
      v24 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
    }

    else
    {
      if (platform > 6)
      {
        goto LABEL_24;
      }

      if (((1 << platform) & 0x73) != 0)
      {
        v37 = *MEMORY[0x1E69DB8F0];
        v35 = *MEMORY[0x1E69DB990];
        v26 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
        v36 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v38[0] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v25 = fontWithTraitsAndAttributes(*MEMORY[0x1E69DDD28], 0, v28, class);

        goto LABEL_20;
      }

      if (platform == 2)
      {
        v24 = fontWithTraits(*MEMORY[0x1E69DDD38], 0x8000, class);
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

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(LPTextViewStyle *)v8->_characterLimitIndicatorStyle setColor:secondaryLabelColor];

    v30 = [[LPPointUnit alloc] initWithValue:15.0];
    padding5 = [(LPTextViewStyle *)v8->_characterLimitIndicatorStyle padding];
    [padding5 setTop:v30];

    v32 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = LPQuotedTextViewStyle;
  v4 = [(LPTextViewStyle *)&v8 copyWithZone:zone];
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

- (id)adjustedForString:(id)string
{
  stringCopy = string;
  v5 = [(LPQuotedTextViewStyle *)self copyWithZone:0];
  [v5 _adjustForString:stringCopy];

  return v5;
}

@end