@interface TSWPStorage
- (id)initTemporaryWithContext:(id)a3 storage:(id)a4 range:(_NSRange)a5;
- (id)initTemporaryWithContext:(id)a3 string:(id)a4;
- (unsigned)wordCountOfRange:(_NSRange)a3;
- (void)p_modifyEachCharacterStyleWithBlock:(id)a3;
- (void)p_modifyEachListStyleWithBlock:(id)a3;
- (void)p_modifyEachParagraphStyleWithBlock:(id)a3;
- (void)p_removeBackgroundFillFromStyle:(id)a3;
- (void)removeAllCharacterStyles;
- (void)removeSmartFields;
- (void)setFontFamily:(id)a3 fontSize:(double)a4 textColor:(id)a5;
- (void)setFontFamily:(id)a3 fontSize:(double)a4 textColor:(id)a5 alignment:(unsigned int)a6 removeBackgroundFill:(BOOL)a7 removeIndent:(BOOL)a8;
- (void)setFontFamily:(id)a3 fontSize:(double)a4 textColor:(id)a5 underlineColor:(id)a6 underlineWidth:(double)a7 lineSpacing:(id)a8 characterSpacing:(double)a9 alignment:(unsigned int)a10 stripOtherAttributes:(BOOL)a11;
- (void)setFontFamily:(id)a3 textColor:(id)a4;
@end

@implementation TSWPStorage

- (unsigned)wordCountOfRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSWPStorage *)self string];
  v10.location = location;
  v10.length = length;
  v6 = CFStringTokenizerCreate(0, v5, v10, 0, 0);
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

- (id)initTemporaryWithContext:(id)a3 storage:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = [THTemporaryObjectContext temporaryContextForDocumentContext:a3];
  v10 = [a4 newSubstorageWithRange:location storageContext:length objectsContext:v9 flags:{v9, 1}];
  if (v10)
  {
    v11 = v10;
    [(TSWPStorage *)self dealloc];
    return v11;
  }

  return self;
}

- (id)initTemporaryWithContext:(id)a3 string:(id)a4
{
  v5 = [THTemporaryObjectContext temporaryContextForDocumentContext:a3];
  v6 = [[TSSStylesheet alloc] initWithContext:v5];
  v7 = [objc_alloc(objc_opt_class()) initWithContext:v5 string:a4 kind:3 stylesheet:v6 paragraphStyle:+[TSWPParagraphStyle defaultStyleWithContext:](TSWPParagraphStyle listStyle:"defaultStyleWithContext:" section:v5) columnStyle:{+[TSWPListStyle defaultStyleWithContext:](TSWPListStyle, "defaultStyleWithContext:", v5), 0, 0}];

  return v7;
}

- (void)setFontFamily:(id)a3 textColor:(id)a4
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1BFBD8;
  v8[3] = &unk_45EB18;
  v8[4] = a3;
  v8[5] = a4;
  [(TSWPStorage *)self p_modifyEachCharacterStyleWithBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1BFC28;
  v7[3] = &unk_45EB40;
  v7[4] = a3;
  v7[5] = a4;
  [(TSWPStorage *)self p_modifyEachParagraphStyleWithBlock:v7];
}

- (void)setFontFamily:(id)a3 fontSize:(double)a4 textColor:(id)a5
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_3;
  }

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1BFE3C;
  v10[3] = &unk_45EB68;
  *&v10[6] = a4;
  v10[4] = a3;
  v10[5] = a5;
  [(TSWPStorage *)self p_modifyEachCharacterStyleWithBlock:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1BFE9C;
  v9[3] = &unk_45EB90;
  *&v9[6] = a4;
  v9[4] = a3;
  v9[5] = a5;
  [(TSWPStorage *)self p_modifyEachParagraphStyleWithBlock:v9];
}

- (void)setFontFamily:(id)a3 fontSize:(double)a4 textColor:(id)a5 alignment:(unsigned int)a6 removeBackgroundFill:(BOOL)a7 removeIndent:(BOOL)a8
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_3;
  }

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1C00F4;
  v19[3] = &unk_45EBB8;
  *&v19[7] = a4;
  v19[4] = a3;
  v19[5] = a5;
  v20 = a7;
  v19[6] = self;
  [(TSWPStorage *)self p_modifyEachCharacterStyleWithBlock:v19];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1C0178;
  v15[3] = &unk_45EBE0;
  *&v15[7] = a4;
  v15[4] = a3;
  v15[5] = a5;
  v16 = a6;
  v17 = a7;
  v15[6] = self;
  v18 = a8;
  [(TSWPStorage *)self p_modifyEachParagraphStyleWithBlock:v15];
}

- (void)setFontFamily:(id)a3 fontSize:(double)a4 textColor:(id)a5 underlineColor:(id)a6 underlineWidth:(double)a7 lineSpacing:(id)a8 characterSpacing:(double)a9 alignment:(unsigned int)a10 stripOtherAttributes:(BOOL)a11
{
  v12 = *&a10;
  if (a3)
  {
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_22:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (a11)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!a5)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (a11)
  {
LABEL_4:
    v21 = [TSWPParagraphStyle defaultStyleWithContext:[(TSWPStorage *)self context]];
    v23 = v21;
    if (a3)
    {
      [v21 setValue:a3 forProperty:16];
    }

    if (a4 != 0.0)
    {
      [v23 setCGFloatValue:17 forProperty:a4];
    }

    if (a5)
    {
      [v23 setValue:a5 forProperty:18];
    }

    if (a6)
    {
      [v23 setIntValue:1 forProperty:22];
      [v23 setValue:a6 forProperty:24];
    }

    if (a7 != 0.0)
    {
      *&v22 = a7;
      [v23 setFloatValue:23 forProperty:v22];
    }

    if (a8)
    {
      [v23 setValue:a8 forProperty:85];
    }

    if (a9 != 0.0)
    {
      *&v22 = a9;
      [v23 setFloatValue:35 forProperty:v22];
    }

    [v23 setIntValue:v12 forProperty:86];
    v24 = [(TSWPStorage *)self range];
    [(TSWPStorage *)self setParagraphStyle:v23 forCharRange:v24 undoTransaction:v25, 0];
    v27 = [(TSWPStorage *)self range];

    [(TSWPStorage *)self setCharacterStyle:0 range:v27 undoTransaction:v26, 0];
    return;
  }

LABEL_23:

  [(TSWPStorage *)self setFontFamily:a3 fontSize:a5 textColor:a4];
}

- (void)removeSmartFields
{
  [(TSWPStorage *)self addDisallowedElementKind:802304];

  [(TSWPStorage *)self filterInvalidContentForStorage:self undoTransaction:0];
}

- (void)removeAllCharacterStyles
{
  v4 = [(TSWPStorage *)self range];

  [(TSWPStorage *)self setCharacterStyle:0 range:v4 undoTransaction:v3, 0];
}

- (void)p_modifyEachCharacterStyleWithBlock:(id)a3
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
      (*(a3 + 2))(a3, v7);
      [(TSWPStorage *)self setCharacterStyle:v7 range:v8.location undoTransaction:v8.length, 0];
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v9);
}

- (void)p_modifyEachParagraphStyleWithBlock:(id)a3
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
      (*(a3 + 2))(a3, v7);
      v8 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:v10.location, v10.length];
      [(TSWPStorage *)self applyObject:v7 toParagraphIndexRange:v8 forKind:v9 undoTransaction:0, 0];
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v11);
}

- (void)p_modifyEachListStyleWithBlock:(id)a3
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
      (*(a3 + 2))(a3, v7);
      v8 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:v10.location, v10.length];
      [(TSWPStorage *)self applyObject:v7 toParagraphIndexRange:v8 forKind:v9 undoTransaction:2, 0];
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v11);
}

- (void)p_removeBackgroundFillFromStyle:(id)a3
{
  v4 = [a3 valueForProperty:37];
  if (v4 && v4 != +[NSNull null])
  {
    [a3 setValue:+[NSNull null](NSNull forProperty:{"null"), 37}];
  }

  v5 = [a3 valueForProperty:98];
  if (v5 && v5 != +[NSNull null])
  {
    v6 = +[NSNull null];

    [a3 setValue:v6 forProperty:98];
  }
}

@end