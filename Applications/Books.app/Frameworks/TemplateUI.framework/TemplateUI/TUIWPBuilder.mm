@interface TUIWPBuilder
- (TUIWPBuilder)initWithFontSpec:(id)a3 style:(unint64_t)a4 color:(id)a5 alignment:(int64_t)a6 writingDirection:(int64_t)a7 language:(id)a8 shouldHyphenate:(BOOL)a9 service:(id)a10;
- (_NSRange)appendWithBlock:(id)a3;
- (id)finalizeModelsWithParent:(id)a3 box:(id)a4 context:(id)a5;
- (id)finalizeTextModelWithContext:(id)a3;
- (void)_applyParagraphStyleWithStyle:(unint64_t)a3 color:(id)a4 fontSpec:(id)a5;
- (void)_configurePropertyMap:(id)a3 withFontSpec:(id)a4 style:(unint64_t)a5 color:(id)a6;
- (void)_createCharacterStyleWithParentStyle:(id)a3 style:(unint64_t)a4 color:(id)a5 fontSpec:(id)a6;
- (void)addBox:(id)a3;
- (void)appendHyperlinkWithURL:(id)a3 block:(id)a4;
- (void)appendString:(id)a3;
- (void)appendWithStyle:(unint64_t)a3 color:(id)a4 fontSpec:(id)a5 block:(id)a6;
- (void)configureDropCapWithCount:(unint64_t)a3 lines:(unint64_t)a4 raised:(unint64_t)a5 style:(unint64_t)a6 color:(id)a7 fontSpec:(id)a8 backgroundColor:(id)a9 padding:(double)a10;
- (void)configureLineStylingForLines:(int64_t)a3 relativeToDropCapLines:(BOOL)a4 style:(unint64_t)a5 color:(id)a6 fontSpec:(id)a7;
- (void)configureParagraphStyle:(id)a3;
- (void)ensureParagraphBoundary;
@end

@implementation TUIWPBuilder

- (TUIWPBuilder)initWithFontSpec:(id)a3 style:(unint64_t)a4 color:(id)a5 alignment:(int64_t)a6 writingDirection:(int64_t)a7 language:(id)a8 shouldHyphenate:(BOOL)a9 service:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a8;
  v19 = a10;
  v34.receiver = self;
  v34.super_class = TUIWPBuilder;
  v20 = [(TUIWPBuilder *)&v34 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_fontSpec, a3);
    objc_storeStrong(&v21->_color, a5);
    v21->_alignment = a6;
    v21->_writingDirection = a7;
    v22 = [v18 copy];
    language = v21->_language;
    v21->_language = v22;

    v21->_shouldHyphenate = a9;
    v24 = [TUIWPStorage alloc];
    v25 = [v19 context];
    v26 = [v19 stylesheet];
    v27 = [(TUIWPStorage *)v24 initWithContext:v25 string:&stru_264550 stylesheet:v26 kind:3];
    wpStorage = v21->_wpStorage;
    v21->_wpStorage = v27;

    v29 = [(TUIWPStorage *)v21->_wpStorage stylesheet];
    v30 = [v29 defaultCharacterStyle];
    characterStyle = v21->_characterStyle;
    v21->_characterStyle = v30;

    v21->_usedDynamicColor = 0;
    [(TUIWPBuilder *)v21 _applyParagraphStyleWithStyle:a4 color:v17 fontSpec:v16];
  }

  return v21;
}

- (void)_applyParagraphStyleWithStyle:(unint64_t)a3 color:(id)a4 fontSpec:(id)a5
{
  v20 = a4;
  v8 = a5;
  v9 = +[TSSPropertyMap propertyMap];
  [(TUIWPBuilder *)self _configurePropertyMap:v9 withFontSpec:v8 style:a3 color:v20];
  [v8 leading];
  if (v10 != 0.0)
  {
    v11 = [TSWPLineSpacing alloc];
    [v8 leading];
    v12 = [v11 initWithMode:2 amount:?];
    [v9 setObject:v12 forProperty:85];
  }

  [v9 setBoolValue:(a3 >> 2) & 1 forProperty:51];
  alignment = self->_alignment;
  if (alignment < 5)
  {
    [v9 setIntValue:dword_24CA20[alignment] forProperty:86];
  }

  if ((self->_writingDirection + 1) <= 2)
  {
    [v9 setIntValue:LODWORD(self->_writingDirection) forProperty:44];
  }

  [v9 setBoolValue:self->_shouldHyphenate forProperty:93];
  [v9 setObject:self->_language forProperty:39];
  v14 = [(TUIWPStorage *)self->_wpStorage paragraphStyleAtCharIndex:0 effectiveRange:0];
  v15 = [(TUIWPStorage *)self->_wpStorage stylesheet];
  v16 = [v15 variationOfStyle:v14 propertyMap:v9];

  wpStorage = self->_wpStorage;
  v18 = [(TUIWPStorage *)wpStorage range];
  [(TUIWPStorage *)wpStorage setParagraphStyle:v16 forCharRange:v18 undoTransaction:v19, 0];
}

- (void)_createCharacterStyleWithParentStyle:(id)a3 style:(unint64_t)a4 color:(id)a5 fontSpec:(id)a6
{
  v16 = a3;
  v10 = a5;
  v11 = a6;
  v12 = +[TSSPropertyMap propertyMap];
  [(TUIWPBuilder *)self _configurePropertyMap:v12 withFontSpec:v11 style:a4 color:v10];
  v13 = [(TUIWPStorage *)self->_wpStorage stylesheet];
  v14 = [v13 variationOfStyle:v16 propertyMap:v12];
  characterStyle = self->_characterStyle;
  self->_characterStyle = v14;
}

- (void)appendHyperlinkWithURL:(id)a3 block:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [TSWPHyperlinkField alloc];
  v8 = [(TUIWPStorage *)self->_wpStorage context];
  v9 = [v7 initWithContext:v8 url:v12];

  v10 = [(TUIWPStorage *)self->_wpStorage length];
  v6[2](v6);
  v11 = [(TUIWPStorage *)self->_wpStorage length];
  if (v11 > v10)
  {
    [(TUIWPStorage *)self->_wpStorage addSmartField:v9 toRange:v10 dolcContext:v11 - v10 undoTransaction:0, 0];
  }
}

- (void)appendString:(id)a3
{
  v6 = a3;
  v4 = [(TUIWPStorage *)self->_wpStorage length];
  [(TUIWPStorage *)self->_wpStorage replaceCharactersInRange:[(TUIWPStorage *)self->_wpStorage length] withString:0 notifyObservers:v6 undoTransaction:0, 0];
  v5 = [(TUIWPStorage *)self->_wpStorage length];
  if (v5 > v4)
  {
    [(TUIWPStorage *)self->_wpStorage setCharacterStyle:self->_characterStyle range:v4 undoTransaction:v5 - v4, 0];
  }
}

- (void)appendWithStyle:(unint64_t)a3 color:(id)a4 fontSpec:(id)a5 block:(id)a6
{
  v21 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self->_characterStyle;
  v14 = self->_color;
  v20 = self->_fontSpec;
  if (v11)
  {
    objc_storeStrong(&self->_fontSpec, a5);
    goto LABEL_4;
  }

  if (a3)
  {
LABEL_4:
    if (!v21)
    {
LABEL_6:
      [(TUIWPBuilder *)self _createCharacterStyleWithParentStyle:v13 style:a3 color:v21 fontSpec:v11, v20];
      goto LABEL_7;
    }

LABEL_5:
    objc_storeStrong(&self->_color, a4);
    goto LABEL_6;
  }

  if (v21 && ([(UIColor *)self->_color isEqual:v21]& 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v12[2](v12);
  characterStyle = self->_characterStyle;
  self->_characterStyle = v13;
  v16 = v13;

  color = self->_color;
  self->_color = v14;
  v18 = v14;

  fontSpec = self->_fontSpec;
  self->_fontSpec = v20;
}

- (_NSRange)appendWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(TUIWPStorage *)self->_wpStorage length];
  if (v4)
  {
    v4[2](v4);
  }

  v6 = ([(TUIWPStorage *)self->_wpStorage length]- v5);

  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)finalizeTextModelWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_usedDynamicColor)
  {
    [v4 usedDynamicColor];
  }

  wpStorage = self->_wpStorage;
  v7 = wpStorage;

  return wpStorage;
}

- (void)ensureParagraphBoundary
{
  v5 = xmmword_24CA10;
  v3 = [(TUIWPStorage *)self->_wpStorage paragraphStyleAtCharIndex:[(TUIWPStorage *)self->_wpStorage length] effectiveRange:&v5];
  v4 = v5;
  if (v4 != [(TUIWPStorage *)self->_wpStorage length])
  {
    [(TUIWPStorage *)self->_wpStorage insertString:@"\n" atCharIndex:[(TUIWPStorage *)self->_wpStorage length] undoTransaction:0];
  }
}

- (void)_configurePropertyMap:(id)a3 withFontSpec:(id)a4 style:(unint64_t)a5 color:(id)a6
{
  v7 = a5;
  v31 = a3;
  v10 = a4;
  v11 = a6;
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = +[TUIFontSpec defaultFontSpec];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    goto LABEL_17;
  }

  v14 = [v10 postscriptName];

  if (!v14)
  {
    if ([v10 isWeightSpecified])
    {
      [v10 weight];
      *&v16 = v16;
      [v31 setFloatValue:50 forProperty:v16];
    }

    v17 = [v10 fontDesignTrait];

    if (v17)
    {
      v18 = [v10 fontDesignTrait];
      [v31 setObject:v18 forProperty:54];
    }

    else
    {
      v19 = [v10 fontFamilyName];

      if (!v19)
      {
        goto LABEL_12;
      }

      v20 = +[NSNull null];
      [v31 setObject:v20 forProperty:54];

      v18 = [v10 fontFamilyName];
      [v31 setObject:v18 forProperty:55];
    }

LABEL_12:
    if ([v10 isMonospacedDigitsSpecified])
    {
      [v31 setBoolValue:objc_msgSend(v10 forProperty:{"monospacedDigits"), 56}];
    }

    goto LABEL_14;
  }

  v15 = [v10 postscriptName];
  [v31 setObject:v15 forProperty:16];

LABEL_14:
  if ([v10 isPointSizeSpecified])
  {
    [v10 pointSize];
    *&v21 = v21;
    [v31 setFloatValue:17 forProperty:v21];
  }

  [v10 tracking];
  [v10 tracking];
  v23 = v22 / 1000.0;
  *&v23 = v23;
  [v31 setFloatValue:35 forProperty:v23];
LABEL_17:
  if (v7)
  {
    [v31 floatValueForProperty:50];
    if (v24 == -1000.0 || v24 == INFINITY)
    {
      [(TSWPCharacterStyle *)self->_characterStyle floatValueForProperty:50];
    }

    if (v24 == -1000.0 || v24 == INFINITY || UIFontWeightRegular >= v24)
    {
      HIDWORD(v25) = HIDWORD(UIFontWeightBold);
      *&v25 = UIFontWeightBold;
      [v31 setFloatValue:50 forProperty:v25];
    }
  }

  if ((v7 & 2) != 0)
  {
    [v31 setBoolValue:1 forProperty:20];
  }

  if ((v7 & 8) != 0)
  {
    [v31 setIntValue:1 forProperty:26];
  }

  if (v11)
  {
    if (self->_usedDynamicColor)
    {
      self->_usedDynamicColor = 1;
    }

    else
    {
      v26 = +[UITraitCollection currentTraitCollection];
      v27 = [v11 resolvedColorWithTraitCollection:v26];
      self->_usedDynamicColor = v27 != v11;
    }

    v28 = [TSUColor colorWithPlatformColor:v11];
    [v31 setObject:v28 forProperty:18];
  }

  v29 = [v10 caps];
  if (v29 <= 2)
  {
    if (v29 == (&dword_0 + 1))
    {
      v30 = 0;
    }

    else
    {
      if (v29 != (&dword_0 + 2))
      {
        goto LABEL_44;
      }

      v30 = 1;
    }

    goto LABEL_43;
  }

  if (v29 == &dword_4)
  {
    v30 = 3;
LABEL_43:
    [v31 setIntValue:v30 forProperty:21];
    goto LABEL_44;
  }

  if (v29 == (&dword_0 + 3))
  {
    [v31 setIntValue:2 forProperty:21];
    [v31 setBoolValue:1 forProperty:48];
  }

LABEL_44:
}

- (void)configureDropCapWithCount:(unint64_t)a3 lines:(unint64_t)a4 raised:(unint64_t)a5 style:(unint64_t)a6 color:(id)a7 fontSpec:(id)a8 backgroundColor:(id)a9 padding:(double)a10
{
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v29 = xmmword_24CA10;
  v20 = [(TUIWPStorage *)self->_wpStorage paragraphStyleAtCharIndex:[(TUIWPStorage *)self->_wpStorage length] effectiveRange:&v29];
  if (a3)
  {
    v28 = v17;
    v21 = [TSWPDropCapSpacing dropCapSpacingWithLineCount:a4 elevatedLineCount:a5];
    [v21 setPadding:a10];
    [v21 setFollowingLineCount:0];
    v22 = +[TSSPropertyMap propertyMap];
    [(TUIWPBuilder *)self _configurePropertyMap:v22 withFontSpec:v18 style:a6 color:v17];
    if (v19)
    {
      v23 = [TSUColor colorWithPlatformColor:v19];
      [v22 setObject:v23 forProperty:38];
    }

    v24 = [TSWPDropCap dropCapWithCharCount:a3 characterStyleOverridePropertyMap:v22 spacing:v21];
    v25 = +[TSSPropertyMap propertyMap];
    [v25 setObject:v24 forProperty:109];
    v26 = [(TUIWPStorage *)self->_wpStorage stylesheet];
    v27 = [v26 variationOfStyle:v20 propertyMap:v25];

    [(TUIWPStorage *)self->_wpStorage setParagraphStyle:v27 forCharRange:v29 undoTransaction:0];
    v17 = v28;
  }
}

- (void)configureLineStylingForLines:(int64_t)a3 relativeToDropCapLines:(BOOL)a4 style:(unint64_t)a5 color:(id)a6 fontSpec:(id)a7
{
  v9 = a4;
  v12 = a6;
  v13 = a7;
  if (a3 >= 1)
  {
    v21 = xmmword_24CA10;
    v14 = [(TUIWPStorage *)self->_wpStorage paragraphStyleAtCharIndex:[(TUIWPStorage *)self->_wpStorage length] effectiveRange:&v21];
    if (v9)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v16 = +[TSSPropertyMap propertyMap];
    [(TUIWPBuilder *)self _configurePropertyMap:v16 withFontSpec:v13 style:a5 color:v12];
    v17 = [TSWPLineStyling lineStylingWithLineCount:a3 options:v15 additionalCharacterStylePropertyMap:0 overrideCharacterStylePropertyMap:v16];
    v18 = +[TSSPropertyMap propertyMap];
    [v18 setObject:v17 forProperty:111];
    v19 = [(TUIWPStorage *)self->_wpStorage stylesheet];
    v20 = [v19 variationOfStyle:v14 propertyMap:v18];

    [(TUIWPStorage *)self->_wpStorage setParagraphStyle:v20 forCharRange:v21 undoTransaction:0];
  }
}

- (void)configureParagraphStyle:(id)a3
{
  v4 = a3;
  v15 = xmmword_24CA10;
  v5 = [(TUIWPStorage *)self->_wpStorage paragraphStyleAtCharIndex:[(TUIWPStorage *)self->_wpStorage length] effectiveRange:&v15];
  v6 = +[TSSPropertyMap propertyMap];
  v7 = [v4 fontSpec];
  v8 = [v4 style];
  v9 = [v4 color];
  [(TUIWPBuilder *)self _configurePropertyMap:v6 withFontSpec:v7 style:v8 color:v9];

  [v4 indentFirstLine];
  *&v10 = v10;
  [v6 setFloatValue:80 forProperty:v10];
  [v4 indentLeading];
  *&v11 = v11;
  [v6 setFloatValue:81 forProperty:v11];
  [v4 indentTrailing];
  *&v12 = v12;
  [v6 setFloatValue:82 forProperty:v12];
  v13 = [(TUIWPStorage *)self->_wpStorage stylesheet];
  v14 = [v13 variationOfStyle:v5 propertyMap:v6];

  [(TUIWPStorage *)self->_wpStorage setParagraphStyle:v14 forCharRange:v15 undoTransaction:0];
}

- (void)addBox:(id)a3
{
  v4 = a3;
  childBoxes = self->_childBoxes;
  v23 = v4;
  if (!childBoxes)
  {
    v6 = objc_opt_new();
    v7 = self->_childBoxes;
    self->_childBoxes = v6;

    childBoxes = self->_childBoxes;
    v4 = v23;
  }

  [(NSMutableArray *)childBoxes addObject:v4];
  v8 = [_TUIWPInlineDrawable alloc];
  v9 = [(TUIWPStorage *)self->_wpStorage context];
  v10 = [(_TUIWPInlineDrawable *)v8 initWithContext:v9 box:v23 baselineOffset:self->_baselineOffset];

  v11 = [TSWPDrawableAttachment alloc];
  v12 = [(TUIWPStorage *)self->_wpStorage context];
  v13 = [v11 initWithContext:v12 drawable:v10];

  v14 = [(TUIWPStorage *)self->_wpStorage length];
  [(TUIWPStorage *)self->_wpStorage insertAttachmentOrFootnote:v13 range:[(TUIWPStorage *)self->_wpStorage length], 0];
  v15 = [(TUIWPStorage *)self->_wpStorage length];
  v16 = self->_characterStyle;
  v17 = [v23 layoutDirection];
  if (v17)
  {
    v18 = +[TSSPropertyMap propertyMap];
    v19 = v18;
    if (v17 == &dword_0 + 2)
    {
      v20 = 1;
    }

    else
    {
      if (v17 != &dword_0 + 1)
      {
LABEL_9:
        v21 = [(TUIWPStorage *)self->_wpStorage stylesheet];
        v22 = [v21 variationOfStyle:self->_characterStyle propertyMap:v19];

        v16 = v22;
        goto LABEL_10;
      }

      v20 = 0;
    }

    [v18 setIntValue:v20 forProperty:44];
    goto LABEL_9;
  }

LABEL_10:
  if (v15 > v14)
  {
    [(TUIWPStorage *)self->_wpStorage setCharacterStyle:v16 range:v14 undoTransaction:v15 - v14, 0];
  }
}

- (id)finalizeModelsWithParent:(id)a3 box:(id)a4 context:(id)a5
{
  [a3 updateModelChildren:{self->_childBoxes, a4, a5}];
  childBoxes = self->_childBoxes;

  return childBoxes;
}

@end