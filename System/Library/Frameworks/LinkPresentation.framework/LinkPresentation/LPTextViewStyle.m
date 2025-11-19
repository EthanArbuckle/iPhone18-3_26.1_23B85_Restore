@interface LPTextViewStyle
- (LPTextViewStyle)initWithPlatform:(int64_t)a3 fontScalingFactor:(double)a4;
- (id)adjustedForString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)maximumLines;
- (void)_adjustForString:(id)a3;
@end

@implementation LPTextViewStyle

- (LPTextViewStyle)initWithPlatform:(int64_t)a3 fontScalingFactor:(double)a4
{
  v22.receiver = self;
  v22.super_class = LPTextViewStyle;
  v6 = [(LPTextViewStyle *)&v22 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E69DC888] labelColor];
    color = v6->_color;
    v6->_color = v7;

    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
    font = v6->_font;
    v6->_font = v9;

    if (a3 == 2)
    {
      v11 = 4;
    }

    else
    {
      v11 = 3;
    }

    v6->_hyphenationFactor = 0.0;
    v6->_maximumLines = v11;
    v6->_maximumLinesWithMedia = 7;
    v6->_textAlignment = 0;
    v12 = +[LPPointUnit zero];
    firstLineLeading = v6->_firstLineLeading;
    v6->_firstLineLeading = v12;

    v14 = +[LPPointUnit zero];
    lastLineDescent = v6->_lastLineDescent;
    v6->_lastLineDescent = v14;

    v16 = objc_alloc_init(LPPadding);
    padding = v6->_padding;
    v6->_padding = v16;

    v18 = +[LPPointUnit zero];
    paragraphSpacing = v6->_paragraphSpacing;
    v6->_paragraphSpacing = v18;

    v6->_maximumLineCountScalingBehavior = 2;
    v6->_fontScalingFactor = a4;
    v20 = v6;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 24), self->_color);
    objc_storeStrong((v5 + 32), self->_font);
    objc_storeStrong((v5 + 40), self->_fallbackFontForTruncatedSingleLine);
    *(v5 + 8) = self->_hyphenationFactor;
    *(v5 + 12) = self->_maximumLines;
    *(v5 + 16) = self->_maximumLinesWithMedia;
    *(v5 + 56) = self->_textAlignment;
    objc_storeStrong((v5 + 64), self->_firstLineLeading);
    objc_storeStrong((v5 + 72), self->_lastLineDescent);
    objc_storeStrong((v5 + 80), self->_leadingGlyph);
    objc_storeStrong((v5 + 88), self->_trailingGlyph);
    v6 = [(LPPadding *)self->_padding copy];
    v7 = *(v5 + 96);
    *(v5 + 96) = v6;

    objc_storeStrong((v5 + 104), self->_paragraphSpacing);
    *(v5 + 120) = self->_maximumLineCountScalingBehavior;
    objc_storeStrong((v5 + 48), self->_compositingFilter);
    *(v5 + 128) = self->_fontScalingFactor;
    objc_storeStrong((v5 + 112), self->_shadow);
    v8 = v5;
  }

  return v5;
}

- (unsigned)maximumLines
{
  maximumLineCountScalingBehavior = self->_maximumLineCountScalingBehavior;
  switch(maximumLineCountScalingBehavior)
  {
    case 2:
      LODWORD(v3) = self->_maximumLines;
      v5 = v3;
      fontScalingFactor = self->_fontScalingFactor;
      return vcvtpd_u64_f64(fmax(fontScalingFactor, 1.0) * v5);
    case 1:
      LODWORD(v3) = self->_maximumLines;
      v5 = v3;
      v6 = self->_fontScalingFactor;
      if (dynamicTypeLeadingScalingFactorLargeToXXXL_onceToken != -1)
      {
        v9 = self->_fontScalingFactor;
        v10 = v5;
        [LPTextViewStyle maximumLines];
        v6 = v9;
        v5 = v10;
      }

      fontScalingFactor = v6 / *&dynamicTypeLeadingScalingFactorLargeToXXXL_scalingFactor;
      return vcvtpd_u64_f64(fmax(fontScalingFactor, 1.0) * v5);
    case 0:
      return self->_maximumLines;
  }

  return v2;
}

- (void)_adjustForString:(id)a3
{
  v5 = a3;
  if ([v5 _lp_stringType] == 1)
  {
    [(LPTextViewStyle *)self setMaximumLines:1];
  }

  if (+[LPSettings showDebugIndicators](LPSettings, "showDebugIndicators") && [v5 _lp_stringType] == 1)
  {
    v4 = [MEMORY[0x1E69DC888] systemPurpleColor];
    [(LPTextViewStyle *)self setColor:v4];
  }
}

- (id)adjustedForString:(id)a3
{
  v4 = a3;
  v5 = [(LPTextViewStyle *)self copyWithZone:0];
  [v5 _adjustForString:v4];

  return v5;
}

@end