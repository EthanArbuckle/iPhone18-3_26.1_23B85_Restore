@interface THWAdornmentWPStyleProvider
- (THWAdornmentWPStyleProvider)initWithStorage:(id)a3;
- (id)modifiedCharacterStyle:(id)a3 atCharIndex:(unint64_t)a4;
- (id)p_textColor;
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (void)dealloc;
@end

@implementation THWAdornmentWPStyleProvider

- (THWAdornmentWPStyleProvider)initWithStorage:(id)a3
{
  v6.receiver = self;
  v6.super_class = THWAdornmentWPStyleProvider;
  v4 = [(THWAdornmentWPStyleProvider *)&v6 init];
  if (v4)
  {
    v4->_storage = a3;
    v4->_fontSize = 10.0;
    v4->_textAlignment = 0;
    v4->_fontName = 0;
    v4->_leftIndent = 0.0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWAdornmentWPStyleProvider;
  [(THWAdornmentWPStyleProvider *)&v3 dealloc];
}

- (id)p_textColor
{
  if (self->_useDarkAppearance)
  {
    return +[TSUColor whiteColor];
  }

  else
  {
    return [TSUColor colorWithWhite:0.203921571 alpha:1.0];
  }
}

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v7 = +[TSSPropertyMap propertyMap];
  fontSize = self->_fontSize;
  *&fontSize = fontSize;
  [v7 setFloatValue:17 forProperty:fontSize];
  fontName = self->_fontName;
  if (fontName)
  {
    [v7 setObject:fontName forProperty:16];
  }

  [v7 setObject:-[THWAdornmentWPStyleProvider p_textColor](self forProperty:{"p_textColor"), 18}];
  textAlignment = self->_textAlignment;
  if (textAlignment != 4)
  {
    [v7 setIntValue:textAlignment forProperty:86];
  }

  leftIndent = self->_leftIndent;
  *&leftIndent = leftIndent;
  [v7 setFloatValue:80 forProperty:leftIndent];
  v12 = self->_leftIndent;
  *&v12 = v12;
  [v7 setFloatValue:81 forProperty:v12];
  [v7 setFloatValue:82 forProperty:0.0];
  [v7 setIntValue:0 forProperty:102];
  v13 = [[TSWPLineSpacing alloc] initWithMode:0 amount:1.1];
  [v7 setObject:v13 forProperty:85];

  v14 = [+[TSWPStorageStyleProvider styleProviderForStorage:](TSWPStorageStyleProvider styleProviderForStorage:{self->_storage), "paragraphStyleAtParIndex:effectiveRange:", a3, a4}];
  v15 = [v14 stylesheet];

  return [v15 variationOfStyle:v14 propertyMap:v7];
}

- (id)modifiedCharacterStyle:(id)a3 atCharIndex:(unint64_t)a4
{
  v6 = [TSSPropertyMap propertyMap:a3];
  [v6 setObject:-[THWAdornmentWPStyleProvider p_textColor](self forProperty:{"p_textColor"), 18}];
  fontSize = self->_fontSize;
  *&fontSize = fontSize;
  [v6 setFloatValue:17 forProperty:fontSize];
  fontName = self->_fontName;
  if (fontName)
  {
    [v6 setObject:fontName forProperty:16];
  }

  v9 = [a3 stylesheet];

  return [v9 variationOfStyle:a3 propertyMap:v6];
}

@end