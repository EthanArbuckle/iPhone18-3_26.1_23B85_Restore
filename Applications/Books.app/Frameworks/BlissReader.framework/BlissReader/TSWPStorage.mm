@interface TSWPStorage
- (id)initTemporaryWithContext:(id)context storage:(id)storage range:(_NSRange)range;
- (id)initTemporaryWithContext:(id)context string:(id)string;
- (unsigned)wordCountOfRange:(_NSRange)range;
- (void)p_modifyEachCharacterStyleWithBlock:(id)block;
- (void)p_modifyEachListStyleWithBlock:(id)block;
- (void)p_modifyEachParagraphStyleWithBlock:(id)block;
- (void)p_removeBackgroundFillFromStyle:(id)style;
- (void)removeAllCharacterStyles;
- (void)removeSmartFields;
- (void)setFontFamily:(id)family fontSize:(double)size textColor:(id)color;
- (void)setFontFamily:(id)family fontSize:(double)size textColor:(id)color alignment:(unsigned int)alignment removeBackgroundFill:(BOOL)fill removeIndent:(BOOL)indent;
- (void)setFontFamily:(id)family fontSize:(double)size textColor:(id)color underlineColor:(id)underlineColor underlineWidth:(double)width lineSpacing:(id)spacing characterSpacing:(double)characterSpacing alignment:(unsigned int)self0 stripOtherAttributes:(BOOL)self1;
- (void)setFontFamily:(id)family textColor:(id)color;
@end

@implementation TSWPStorage

- (unsigned)wordCountOfRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  string = [(TSWPStorage *)self string];
  v10.location = location;
  v10.length = length;
  v6 = CFStringTokenizerCreate(0, string, v10, 0, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = -1;
  do
  {
    ++v8;
  }

  while (CFStringTokenizerAdvanceToNextToken(v7));
  CFRelease(v7);
  return v8;
}

- (id)initTemporaryWithContext:(id)context storage:(id)storage range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9 = [THTemporaryObjectContext temporaryContextForDocumentContext:context];
  v10 = [storage newSubstorageWithRange:location storageContext:length objectsContext:v9 flags:{v9, 1}];
  if (v10)
  {
    v11 = v10;
    [(TSWPStorage *)self dealloc];
    return v11;
  }

  return self;
}

- (id)initTemporaryWithContext:(id)context string:(id)string
{
  v5 = [THTemporaryObjectContext temporaryContextForDocumentContext:context];
  v6 = [[TSSStylesheet alloc] initWithContext:v5];
  v7 = [objc_alloc(objc_opt_class()) initWithContext:v5 string:string kind:3 stylesheet:v6 paragraphStyle:+[TSWPParagraphStyle defaultStyleWithContext:](TSWPParagraphStyle listStyle:"defaultStyleWithContext:" section:v5) columnStyle:{+[TSWPListStyle defaultStyleWithContext:](TSWPListStyle, "defaultStyleWithContext:", v5), 0, 0}];

  return v7;
}

- (void)setFontFamily:(id)family textColor:(id)color
{
  if (!family)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (color)
    {
      goto LABEL_3;
    }

LABEL_5:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_3;
  }

  if (!color)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1BFBD8;
  v8[3] = &unk_45EB18;
  v8[4] = family;
  v8[5] = color;
  [(TSWPStorage *)self p_modifyEachCharacterStyleWithBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1BFC28;
  v7[3] = &unk_45EB40;
  v7[4] = family;
  v7[5] = color;
  [(TSWPStorage *)self p_modifyEachParagraphStyleWithBlock:v7];
}

- (void)setFontFamily:(id)family fontSize:(double)size textColor:(id)color
{
  if (!family)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (color)
    {
      goto LABEL_3;
    }

LABEL_5:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_3;
  }

  if (!color)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1BFE3C;
  v10[3] = &unk_45EB68;
  *&v10[6] = size;
  v10[4] = family;
  v10[5] = color;
  [(TSWPStorage *)self p_modifyEachCharacterStyleWithBlock:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1BFE9C;
  v9[3] = &unk_45EB90;
  *&v9[6] = size;
  v9[4] = family;
  v9[5] = color;
  [(TSWPStorage *)self p_modifyEachParagraphStyleWithBlock:v9];
}

- (void)setFontFamily:(id)family fontSize:(double)size textColor:(id)color alignment:(unsigned int)alignment removeBackgroundFill:(BOOL)fill removeIndent:(BOOL)indent
{
  if (!family)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (color)
    {
      goto LABEL_3;
    }

LABEL_5:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_3;
  }

  if (!color)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1C00F4;
  v19[3] = &unk_45EBB8;
  *&v19[7] = size;
  v19[4] = family;
  v19[5] = color;
  fillCopy = fill;
  v19[6] = self;
  [(TSWPStorage *)self p_modifyEachCharacterStyleWithBlock:v19];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1C0178;
  v15[3] = &unk_45EBE0;
  *&v15[7] = size;
  v15[4] = family;
  v15[5] = color;
  alignmentCopy = alignment;
  fillCopy2 = fill;
  v15[6] = self;
  indentCopy = indent;
  [(TSWPStorage *)self p_modifyEachParagraphStyleWithBlock:v15];
}

- (void)setFontFamily:(id)family fontSize:(double)size textColor:(id)color underlineColor:(id)underlineColor underlineWidth:(double)width lineSpacing:(id)spacing characterSpacing:(double)characterSpacing alignment:(unsigned int)self0 stripOtherAttributes:(BOOL)self1
{
  v12 = *&alignment;
  if (family)
  {
    if (color)
    {
      goto LABEL_3;
    }

LABEL_22:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (attributes)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!color)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (attributes)
  {
LABEL_4:
    v21 = [TSWPParagraphStyle defaultStyleWithContext:[(TSWPStorage *)self context]];
    v23 = v21;
    if (family)
    {
      [v21 setValue:family forProperty:16];
    }

    if (size != 0.0)
    {
      [v23 setCGFloatValue:17 forProperty:size];
    }

    if (color)
    {
      [v23 setValue:color forProperty:18];
    }

    if (underlineColor)
    {
      [v23 setIntValue:1 forProperty:22];
      [v23 setValue:underlineColor forProperty:24];
    }

    if (width != 0.0)
    {
      *&v22 = width;
      [v23 setFloatValue:23 forProperty:v22];
    }

    if (spacing)
    {
      [v23 setValue:spacing forProperty:85];
    }

    if (characterSpacing != 0.0)
    {
      *&v22 = characterSpacing;
      [v23 setFloatValue:35 forProperty:v22];
    }

    [v23 setIntValue:v12 forProperty:86];
    range = [(TSWPStorage *)self range];
    [(TSWPStorage *)self setParagraphStyle:v23 forCharRange:range undoTransaction:v25, 0];
    range2 = [(TSWPStorage *)self range];

    [(TSWPStorage *)self setCharacterStyle:0 range:range2 undoTransaction:v26, 0];
    return;
  }

LABEL_23:

  [(TSWPStorage *)self setFontFamily:family fontSize:color textColor:size];
}

- (void)removeSmartFields
{
  [(TSWPStorage *)self addDisallowedElementKind:802304];

  [(TSWPStorage *)self filterInvalidContentForStorage:self undoTransaction:0];
}

- (void)removeAllCharacterStyles
{
  range = [(TSWPStorage *)self range];

  [(TSWPStorage *)self setCharacterStyle:0 range:range undoTransaction:v3, 0];
}

- (void)p_modifyEachCharacterStyleWithBlock:(id)block
{
  [(TSWPStorage *)self range];
  TSWPAttributeEnumerator::TSWPAttributeEnumerator();
  while (1)
  {
    v5 = TSWPAttributeEnumerator::nextAttributeIndex(v9, &v8);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = [v6 copyWithContext:{-[TSWPStorage context](self, "context")}];
      (*(block + 2))(block, v7);
      [(TSWPStorage *)self setCharacterStyle:v7 range:v8.location undoTransaction:v8.length, 0];
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v9);
}

- (void)p_modifyEachParagraphStyleWithBlock:(id)block
{
  [(TSWPStorage *)self range];
  TSWPAttributeEnumerator::TSWPAttributeEnumerator();
  while (1)
  {
    v5 = TSWPAttributeEnumerator::nextAttributeIndex(v11, &v10);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = [v6 copyWithContext:{-[TSWPStorage context](self, "context")}];
      (*(block + 2))(block, v7);
      v8 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:v10.location, v10.length];
      [(TSWPStorage *)self applyObject:v7 toParagraphIndexRange:v8 forKind:v9 undoTransaction:0, 0];
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v11);
}

- (void)p_modifyEachListStyleWithBlock:(id)block
{
  [(TSWPStorage *)self range];
  TSWPAttributeEnumerator::TSWPAttributeEnumerator();
  while (1)
  {
    v5 = TSWPAttributeEnumerator::nextAttributeIndex(v11, &v10);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = [v6 copyWithContext:{-[TSWPStorage context](self, "context")}];
      (*(block + 2))(block, v7);
      v8 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:v10.location, v10.length];
      [(TSWPStorage *)self applyObject:v7 toParagraphIndexRange:v8 forKind:v9 undoTransaction:2, 0];
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v11);
}

- (void)p_removeBackgroundFillFromStyle:(id)style
{
  v4 = [style valueForProperty:37];
  if (v4 && v4 != +[NSNull null])
  {
    [style setValue:+[NSNull null](NSNull forProperty:{"null"), 37}];
  }

  v5 = [style valueForProperty:98];
  if (v5 && v5 != +[NSNull null])
  {
    v6 = +[NSNull null];

    [style setValue:v6 forProperty:98];
  }
}

@end