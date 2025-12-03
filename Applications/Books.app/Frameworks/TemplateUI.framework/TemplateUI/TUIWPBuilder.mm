@interface TUIWPBuilder
- (TUIWPBuilder)initWithFontSpec:(id)spec style:(unint64_t)style color:(id)color alignment:(int64_t)alignment writingDirection:(int64_t)direction language:(id)language shouldHyphenate:(BOOL)hyphenate service:(id)self0;
- (_NSRange)appendWithBlock:(id)block;
- (id)finalizeModelsWithParent:(id)parent box:(id)box context:(id)context;
- (id)finalizeTextModelWithContext:(id)context;
- (void)_applyParagraphStyleWithStyle:(unint64_t)style color:(id)color fontSpec:(id)spec;
- (void)_configurePropertyMap:(id)map withFontSpec:(id)spec style:(unint64_t)style color:(id)color;
- (void)_createCharacterStyleWithParentStyle:(id)style style:(unint64_t)a4 color:(id)color fontSpec:(id)spec;
- (void)addBox:(id)box;
- (void)appendHyperlinkWithURL:(id)l block:(id)block;
- (void)appendString:(id)string;
- (void)appendWithStyle:(unint64_t)style color:(id)color fontSpec:(id)spec block:(id)block;
- (void)configureDropCapWithCount:(unint64_t)count lines:(unint64_t)lines raised:(unint64_t)raised style:(unint64_t)style color:(id)color fontSpec:(id)spec backgroundColor:(id)backgroundColor padding:(double)self0;
- (void)configureLineStylingForLines:(int64_t)lines relativeToDropCapLines:(BOOL)capLines style:(unint64_t)style color:(id)color fontSpec:(id)spec;
- (void)configureParagraphStyle:(id)style;
- (void)ensureParagraphBoundary;
@end

@implementation TUIWPBuilder

- (TUIWPBuilder)initWithFontSpec:(id)spec style:(unint64_t)style color:(id)color alignment:(int64_t)alignment writingDirection:(int64_t)direction language:(id)language shouldHyphenate:(BOOL)hyphenate service:(id)self0
{
  specCopy = spec;
  colorCopy = color;
  languageCopy = language;
  serviceCopy = service;
  v34.receiver = self;
  v34.super_class = TUIWPBuilder;
  v20 = [(TUIWPBuilder *)&v34 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_fontSpec, spec);
    objc_storeStrong(&v21->_color, color);
    v21->_alignment = alignment;
    v21->_writingDirection = direction;
    v22 = [languageCopy copy];
    language = v21->_language;
    v21->_language = v22;

    v21->_shouldHyphenate = hyphenate;
    v24 = [TUIWPStorage alloc];
    context = [serviceCopy context];
    stylesheet = [serviceCopy stylesheet];
    v27 = [(TUIWPStorage *)v24 initWithContext:context string:&stru_264550 stylesheet:stylesheet kind:3];
    wpStorage = v21->_wpStorage;
    v21->_wpStorage = v27;

    stylesheet2 = [(TUIWPStorage *)v21->_wpStorage stylesheet];
    defaultCharacterStyle = [stylesheet2 defaultCharacterStyle];
    characterStyle = v21->_characterStyle;
    v21->_characterStyle = defaultCharacterStyle;

    v21->_usedDynamicColor = 0;
    [(TUIWPBuilder *)v21 _applyParagraphStyleWithStyle:style color:colorCopy fontSpec:specCopy];
  }

  return v21;
}

- (void)_applyParagraphStyleWithStyle:(unint64_t)style color:(id)color fontSpec:(id)spec
{
  colorCopy = color;
  specCopy = spec;
  v9 = +[TSSPropertyMap propertyMap];
  [(TUIWPBuilder *)self _configurePropertyMap:v9 withFontSpec:specCopy style:style color:colorCopy];
  [specCopy leading];
  if (v10 != 0.0)
  {
    v11 = [TSWPLineSpacing alloc];
    [specCopy leading];
    v12 = [v11 initWithMode:2 amount:?];
    [v9 setObject:v12 forProperty:85];
  }

  [v9 setBoolValue:(style >> 2) & 1 forProperty:51];
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
  stylesheet = [(TUIWPStorage *)self->_wpStorage stylesheet];
  v16 = [stylesheet variationOfStyle:v14 propertyMap:v9];

  wpStorage = self->_wpStorage;
  range = [(TUIWPStorage *)wpStorage range];
  [(TUIWPStorage *)wpStorage setParagraphStyle:v16 forCharRange:range undoTransaction:v19, 0];
}

- (void)_createCharacterStyleWithParentStyle:(id)style style:(unint64_t)a4 color:(id)color fontSpec:(id)spec
{
  styleCopy = style;
  colorCopy = color;
  specCopy = spec;
  v12 = +[TSSPropertyMap propertyMap];
  [(TUIWPBuilder *)self _configurePropertyMap:v12 withFontSpec:specCopy style:a4 color:colorCopy];
  stylesheet = [(TUIWPStorage *)self->_wpStorage stylesheet];
  v14 = [stylesheet variationOfStyle:styleCopy propertyMap:v12];
  characterStyle = self->_characterStyle;
  self->_characterStyle = v14;
}

- (void)appendHyperlinkWithURL:(id)l block:(id)block
{
  lCopy = l;
  blockCopy = block;
  v7 = [TSWPHyperlinkField alloc];
  context = [(TUIWPStorage *)self->_wpStorage context];
  v9 = [v7 initWithContext:context url:lCopy];

  v10 = [(TUIWPStorage *)self->_wpStorage length];
  blockCopy[2](blockCopy);
  v11 = [(TUIWPStorage *)self->_wpStorage length];
  if (v11 > v10)
  {
    [(TUIWPStorage *)self->_wpStorage addSmartField:v9 toRange:v10 dolcContext:v11 - v10 undoTransaction:0, 0];
  }
}

- (void)appendString:(id)string
{
  stringCopy = string;
  v4 = [(TUIWPStorage *)self->_wpStorage length];
  [(TUIWPStorage *)self->_wpStorage replaceCharactersInRange:[(TUIWPStorage *)self->_wpStorage length] withString:0 notifyObservers:stringCopy undoTransaction:0, 0];
  v5 = [(TUIWPStorage *)self->_wpStorage length];
  if (v5 > v4)
  {
    [(TUIWPStorage *)self->_wpStorage setCharacterStyle:self->_characterStyle range:v4 undoTransaction:v5 - v4, 0];
  }
}

- (void)appendWithStyle:(unint64_t)style color:(id)color fontSpec:(id)spec block:(id)block
{
  colorCopy = color;
  specCopy = spec;
  blockCopy = block;
  v13 = self->_characterStyle;
  v14 = self->_color;
  v20 = self->_fontSpec;
  if (specCopy)
  {
    objc_storeStrong(&self->_fontSpec, spec);
    goto LABEL_4;
  }

  if (style)
  {
LABEL_4:
    if (!colorCopy)
    {
LABEL_6:
      [(TUIWPBuilder *)self _createCharacterStyleWithParentStyle:v13 style:style color:colorCopy fontSpec:specCopy, v20];
      goto LABEL_7;
    }

LABEL_5:
    objc_storeStrong(&self->_color, color);
    goto LABEL_6;
  }

  if (colorCopy && ([(UIColor *)self->_color isEqual:colorCopy]& 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  blockCopy[2](blockCopy);
  characterStyle = self->_characterStyle;
  self->_characterStyle = v13;
  v16 = v13;

  color = self->_color;
  self->_color = v14;
  v18 = v14;

  fontSpec = self->_fontSpec;
  self->_fontSpec = v20;
}

- (_NSRange)appendWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(TUIWPStorage *)self->_wpStorage length];
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v6 = ([(TUIWPStorage *)self->_wpStorage length]- v5);

  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)finalizeTextModelWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self->_usedDynamicColor)
  {
    [contextCopy usedDynamicColor];
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

- (void)_configurePropertyMap:(id)map withFontSpec:(id)spec style:(unint64_t)style color:(id)color
{
  styleCopy = style;
  mapCopy = map;
  specCopy = spec;
  colorCopy = color;
  if (!specCopy)
  {
    goto LABEL_17;
  }

  v12 = +[TUIFontSpec defaultFontSpec];
  v13 = [specCopy isEqual:v12];

  if (v13)
  {
    goto LABEL_17;
  }

  postscriptName = [specCopy postscriptName];

  if (!postscriptName)
  {
    if ([specCopy isWeightSpecified])
    {
      [specCopy weight];
      *&v16 = v16;
      [mapCopy setFloatValue:50 forProperty:v16];
    }

    fontDesignTrait = [specCopy fontDesignTrait];

    if (fontDesignTrait)
    {
      fontDesignTrait2 = [specCopy fontDesignTrait];
      [mapCopy setObject:fontDesignTrait2 forProperty:54];
    }

    else
    {
      fontFamilyName = [specCopy fontFamilyName];

      if (!fontFamilyName)
      {
        goto LABEL_12;
      }

      v20 = +[NSNull null];
      [mapCopy setObject:v20 forProperty:54];

      fontDesignTrait2 = [specCopy fontFamilyName];
      [mapCopy setObject:fontDesignTrait2 forProperty:55];
    }

LABEL_12:
    if ([specCopy isMonospacedDigitsSpecified])
    {
      [mapCopy setBoolValue:objc_msgSend(specCopy forProperty:{"monospacedDigits"), 56}];
    }

    goto LABEL_14;
  }

  postscriptName2 = [specCopy postscriptName];
  [mapCopy setObject:postscriptName2 forProperty:16];

LABEL_14:
  if ([specCopy isPointSizeSpecified])
  {
    [specCopy pointSize];
    *&v21 = v21;
    [mapCopy setFloatValue:17 forProperty:v21];
  }

  [specCopy tracking];
  [specCopy tracking];
  v23 = v22 / 1000.0;
  *&v23 = v23;
  [mapCopy setFloatValue:35 forProperty:v23];
LABEL_17:
  if (styleCopy)
  {
    [mapCopy floatValueForProperty:50];
    if (v24 == -1000.0 || v24 == INFINITY)
    {
      [(TSWPCharacterStyle *)self->_characterStyle floatValueForProperty:50];
    }

    if (v24 == -1000.0 || v24 == INFINITY || UIFontWeightRegular >= v24)
    {
      HIDWORD(v25) = HIDWORD(UIFontWeightBold);
      *&v25 = UIFontWeightBold;
      [mapCopy setFloatValue:50 forProperty:v25];
    }
  }

  if ((styleCopy & 2) != 0)
  {
    [mapCopy setBoolValue:1 forProperty:20];
  }

  if ((styleCopy & 8) != 0)
  {
    [mapCopy setIntValue:1 forProperty:26];
  }

  if (colorCopy)
  {
    if (self->_usedDynamicColor)
    {
      self->_usedDynamicColor = 1;
    }

    else
    {
      v26 = +[UITraitCollection currentTraitCollection];
      v27 = [colorCopy resolvedColorWithTraitCollection:v26];
      self->_usedDynamicColor = v27 != colorCopy;
    }

    v28 = [TSUColor colorWithPlatformColor:colorCopy];
    [mapCopy setObject:v28 forProperty:18];
  }

  caps = [specCopy caps];
  if (caps <= 2)
  {
    if (caps == (&dword_0 + 1))
    {
      v30 = 0;
    }

    else
    {
      if (caps != (&dword_0 + 2))
      {
        goto LABEL_44;
      }

      v30 = 1;
    }

    goto LABEL_43;
  }

  if (caps == &dword_4)
  {
    v30 = 3;
LABEL_43:
    [mapCopy setIntValue:v30 forProperty:21];
    goto LABEL_44;
  }

  if (caps == (&dword_0 + 3))
  {
    [mapCopy setIntValue:2 forProperty:21];
    [mapCopy setBoolValue:1 forProperty:48];
  }

LABEL_44:
}

- (void)configureDropCapWithCount:(unint64_t)count lines:(unint64_t)lines raised:(unint64_t)raised style:(unint64_t)style color:(id)color fontSpec:(id)spec backgroundColor:(id)backgroundColor padding:(double)self0
{
  colorCopy = color;
  specCopy = spec;
  backgroundColorCopy = backgroundColor;
  v29 = xmmword_24CA10;
  v20 = [(TUIWPStorage *)self->_wpStorage paragraphStyleAtCharIndex:[(TUIWPStorage *)self->_wpStorage length] effectiveRange:&v29];
  if (count)
  {
    v28 = colorCopy;
    v21 = [TSWPDropCapSpacing dropCapSpacingWithLineCount:lines elevatedLineCount:raised];
    [v21 setPadding:padding];
    [v21 setFollowingLineCount:0];
    v22 = +[TSSPropertyMap propertyMap];
    [(TUIWPBuilder *)self _configurePropertyMap:v22 withFontSpec:specCopy style:style color:colorCopy];
    if (backgroundColorCopy)
    {
      v23 = [TSUColor colorWithPlatformColor:backgroundColorCopy];
      [v22 setObject:v23 forProperty:38];
    }

    v24 = [TSWPDropCap dropCapWithCharCount:count characterStyleOverridePropertyMap:v22 spacing:v21];
    v25 = +[TSSPropertyMap propertyMap];
    [v25 setObject:v24 forProperty:109];
    stylesheet = [(TUIWPStorage *)self->_wpStorage stylesheet];
    v27 = [stylesheet variationOfStyle:v20 propertyMap:v25];

    [(TUIWPStorage *)self->_wpStorage setParagraphStyle:v27 forCharRange:v29 undoTransaction:0];
    colorCopy = v28;
  }
}

- (void)configureLineStylingForLines:(int64_t)lines relativeToDropCapLines:(BOOL)capLines style:(unint64_t)style color:(id)color fontSpec:(id)spec
{
  capLinesCopy = capLines;
  colorCopy = color;
  specCopy = spec;
  if (lines >= 1)
  {
    v21 = xmmword_24CA10;
    v14 = [(TUIWPStorage *)self->_wpStorage paragraphStyleAtCharIndex:[(TUIWPStorage *)self->_wpStorage length] effectiveRange:&v21];
    if (capLinesCopy)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v16 = +[TSSPropertyMap propertyMap];
    [(TUIWPBuilder *)self _configurePropertyMap:v16 withFontSpec:specCopy style:style color:colorCopy];
    v17 = [TSWPLineStyling lineStylingWithLineCount:lines options:v15 additionalCharacterStylePropertyMap:0 overrideCharacterStylePropertyMap:v16];
    v18 = +[TSSPropertyMap propertyMap];
    [v18 setObject:v17 forProperty:111];
    stylesheet = [(TUIWPStorage *)self->_wpStorage stylesheet];
    v20 = [stylesheet variationOfStyle:v14 propertyMap:v18];

    [(TUIWPStorage *)self->_wpStorage setParagraphStyle:v20 forCharRange:v21 undoTransaction:0];
  }
}

- (void)configureParagraphStyle:(id)style
{
  styleCopy = style;
  v15 = xmmword_24CA10;
  v5 = [(TUIWPStorage *)self->_wpStorage paragraphStyleAtCharIndex:[(TUIWPStorage *)self->_wpStorage length] effectiveRange:&v15];
  v6 = +[TSSPropertyMap propertyMap];
  fontSpec = [styleCopy fontSpec];
  style = [styleCopy style];
  color = [styleCopy color];
  [(TUIWPBuilder *)self _configurePropertyMap:v6 withFontSpec:fontSpec style:style color:color];

  [styleCopy indentFirstLine];
  *&v10 = v10;
  [v6 setFloatValue:80 forProperty:v10];
  [styleCopy indentLeading];
  *&v11 = v11;
  [v6 setFloatValue:81 forProperty:v11];
  [styleCopy indentTrailing];
  *&v12 = v12;
  [v6 setFloatValue:82 forProperty:v12];
  stylesheet = [(TUIWPStorage *)self->_wpStorage stylesheet];
  v14 = [stylesheet variationOfStyle:v5 propertyMap:v6];

  [(TUIWPStorage *)self->_wpStorage setParagraphStyle:v14 forCharRange:v15 undoTransaction:0];
}

- (void)addBox:(id)box
{
  boxCopy = box;
  childBoxes = self->_childBoxes;
  v23 = boxCopy;
  if (!childBoxes)
  {
    v6 = objc_opt_new();
    v7 = self->_childBoxes;
    self->_childBoxes = v6;

    childBoxes = self->_childBoxes;
    boxCopy = v23;
  }

  [(NSMutableArray *)childBoxes addObject:boxCopy];
  v8 = [_TUIWPInlineDrawable alloc];
  context = [(TUIWPStorage *)self->_wpStorage context];
  v10 = [(_TUIWPInlineDrawable *)v8 initWithContext:context box:v23 baselineOffset:self->_baselineOffset];

  v11 = [TSWPDrawableAttachment alloc];
  context2 = [(TUIWPStorage *)self->_wpStorage context];
  v13 = [v11 initWithContext:context2 drawable:v10];

  v14 = [(TUIWPStorage *)self->_wpStorage length];
  [(TUIWPStorage *)self->_wpStorage insertAttachmentOrFootnote:v13 range:[(TUIWPStorage *)self->_wpStorage length], 0];
  v15 = [(TUIWPStorage *)self->_wpStorage length];
  v16 = self->_characterStyle;
  layoutDirection = [v23 layoutDirection];
  if (layoutDirection)
  {
    v18 = +[TSSPropertyMap propertyMap];
    v19 = v18;
    if (layoutDirection == &dword_0 + 2)
    {
      v20 = 1;
    }

    else
    {
      if (layoutDirection != &dword_0 + 1)
      {
LABEL_9:
        stylesheet = [(TUIWPStorage *)self->_wpStorage stylesheet];
        v22 = [stylesheet variationOfStyle:self->_characterStyle propertyMap:v19];

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

- (id)finalizeModelsWithParent:(id)parent box:(id)box context:(id)context
{
  [parent updateModelChildren:{self->_childBoxes, box, context}];
  childBoxes = self->_childBoxes;

  return childBoxes;
}

@end