@interface CRLPdfTagger
+ (BOOL)isHeadingStyle:(id)a3 headingIndex:(int *)a4;
+ (BOOL)shouldMapDrawableRep:(id)a3;
- (BOOL)currentParagraphHasContents;
- (BOOL)currentParagraphNeedsSpans;
- (BOOL)topOfContextStackIsParagraph;
- (CRLPdfTagger)init;
- (_NSRange)currentParagraphRange;
- (_NSRange)topmostColumnRange;
- (id)regularDrawableRepForObjectRep:(id)a3;
- (id)retrieveHighestInfoAtCharIndex:(unint64_t)a3 returnTagType:(int *)a4;
- (id)state;
- (id)topOfContextStackWithExpectedClass:(Class)a3;
- (id)topmostColumn;
- (id)topmostColumnContext;
- (id)topmostContextOfClass:(Class)a3;
- (id)topmostParagraphContext;
- (id)topmostTextStorage;
- (int)tagTypeAtDepth:(unint64_t)a3;
- (unint64_t)depthOfContext:(id)a3;
- (unint64_t)depthOfTopmostTagOfType:(int)a3;
- (unint64_t)indexOfFirstVisibleCharInParagraphAtOrAfterCharIndex:(unint64_t)a3;
- (void)advanceParagraphEnumeratorToCharIndex:(unint64_t)a3;
- (void)assertCharIndexRelativeToParagraphRange:(BOOL)a3;
- (void)assertTopOfContextStackIsParagraph:(BOOL)a3;
- (void)beginAncillaryTextRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4;
- (void)beginComment;
- (void)beginDrawable:(id)a3;
- (void)beginFreehandDrawing:(id)a3;
- (void)beginLineFragmentBodyWithRange:(_NSRange)a3;
- (void)beginLineFragmentWithRange:(_NSRange)a3;
- (void)beginListLabel;
- (void)beginMultiParagraphEntityWithLineFragmentRange:(_NSRange)a3;
- (void)beginObject:(id)a3;
- (void)beginPage;
- (void)beginParagraphBodyWithLineFragmentRange:(_NSRange)a3;
- (void)beginParagraphWithLineFragmentRange:(_NSRange)a3;
- (void)beginPrimaryTextRunWithRange:(_NSRange)a3 hasActualContents:(BOOL)a4;
- (void)beginTagWithType:(int)a3 tagProperties:(id)a4;
- (void)beginTextColumn:(id)a3 limitSelection:(id)a4;
- (void)beginTextStorageChunk:(id)a3 limitSelection:(id)a4;
- (void)dispatchObject:(id)a3 drawableBlock:(id)a4;
- (void)endAncillaryTextRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4;
- (void)endComment;
- (void)endDrawable:(id)a3;
- (void)endFreehandDrawing:(id)a3;
- (void)endLineFragmentBodyWithRange:(_NSRange)a3;
- (void)endLineFragmentWithRange:(_NSRange)a3;
- (void)endListLabel;
- (void)endMultiParagraphEntityWithLineFragmentRange:(_NSRange)a3;
- (void)endObject:(id)a3;
- (void)endParagraphWithLineFragmentRange:(_NSRange)a3;
- (void)endPrimaryTextRunWithRange:(_NSRange)a3 hasActualContents:(BOOL)a4;
- (void)endTag;
- (void)endTextColumn:(id)a3;
- (void)endTextStorageChunk:(id)a3;
- (void)executeBlock:(id)a3;
- (void)handleObject:(id)a3 drawableBlock:(id)a4;
- (void)popContextWithExpectedClass:(Class)a3;
- (void)popTagStackUntilReachingHeight:(unint64_t)a3;
- (void)pushContext:(id)a3;
- (void)restoreStateFromTopOfContextStackWithExpectedClass:(Class)a3;
- (void)setState:(id)a3;
- (void)setUp;
@end

@implementation CRLPdfTagger

- (CRLPdfTagger)init
{
  v5.receiver = self;
  v5.super_class = CRLPdfTagger;
  v2 = [(CRLPdfTagger *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLPdfTagger *)v2 setUp];
  }

  return v3;
}

- (void)setUp
{
  self->_stateIsValid = 1;
  v3 = objc_opt_new();
  contextStack = self->_contextStack;
  self->_contextStack = v3;

  v5 = objc_opt_new();
  tagStack = self->_tagStack;
  self->_tagStack = v5;

  v10 = [[CRLPdfTagInfo alloc] initWithTagType:0 tagProperties:0];
  [(NSMutableArray *)self->_tagStack crl_push:?];
  v7 = objc_opt_new();
  paragraphLevelResolverStack = self->_paragraphLevelResolverStack;
  self->_paragraphLevelResolverStack = v7;

  v9 = [(CRLPdfTaggerParagraphLevelResolver *)[CRLPdfTaggerListParagraphLevelResolver alloc] initWithTagger:self];
  [(NSMutableArray *)self->_paragraphLevelResolverStack crl_push:v9];
}

- (void)executeBlock:(id)a3
{
  v4 = a3;
  if (self->_stateIsValid)
  {
    v4[2]();
  }
}

- (void)pushContext:(id)a3
{
  v13 = a3;
  v4 = [(NSMutableArray *)self->_contextStack count];
  v5 = [NSString stringWithFormat:@"%@", v13];
  v6 = [v5 UTF8String];
  sub_10052FA0C(v4, "PUSH %s", v7, v8, v9, v10, v11, v12, v6);

  [(NSMutableArray *)self->_contextStack crl_push:v13];
}

- (void)popContextWithExpectedClass:(Class)a3
{
  v21 = [(NSMutableArray *)self->_contextStack crl_peek];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = objc_opt_class();
    sub_10052E5D0(0, "Class mismatch popping rendering context: %@ instead of %@", v5, v6, v7, v8, v9, v10, v4);
  }

  v11 = [(NSMutableArray *)self->_contextStack crl_pop];
  v12 = [(NSMutableArray *)self->_contextStack count];
  v13 = [NSString stringWithFormat:@"%@", v21];
  v14 = [v13 UTF8String];
  sub_10052FA0C(v12, "POP %s", v15, v16, v17, v18, v19, v20, v14);
}

- (void)beginTagWithType:(int)a3 tagProperties:(id)a4
{
  v4 = *&a3;
  tagProperties = a4;
  Name = CGPDFTagTypeGetName(v4);
  v7 = [(NSMutableArray *)self->_tagStack count];
  sub_10052FA0C(v7 - 1, "BEGIN %s", v8, v9, v10, v11, v12, v13, Name);
  v14 = [[CRLPdfTagInfo alloc] initWithTagType:v4 tagProperties:tagProperties];
  [(NSMutableArray *)self->_tagStack crl_push:v14];
  if (![(CRLPdfTagger *)self taggingPreventionDepth])
  {
    CGPDFContextBeginTag(self->_cgContext, v4, tagProperties);
  }
}

- (void)endTag
{
  v20 = [(NSMutableArray *)self->_tagStack crl_peek];
  v3 = [v20 tagType];
  if (![(CRLPdfTagger *)self taggingPreventionDepth])
  {
    CGPDFContextEndTag(self->_cgContext);
  }

  v4 = [(NSMutableArray *)self->_tagStack crl_pop];
  Name = CGPDFTagTypeGetName(v3);
  if ([(NSMutableArray *)self->_tagStack count])
  {
    v12 = [(NSMutableArray *)self->_tagStack count];
    sub_10052FA0C(v12 - 1, "END %s", v13, v14, v15, v16, v17, v18, Name);
  }

  else
  {
    sub_10052E5D0(0, "the tagStack count was 0 and we were trying to endTag", v6, v7, v8, v9, v10, v11, v19);
  }
}

- (void)popTagStackUntilReachingHeight:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_tagStack count]>= a3;
  v6 = [(NSMutableArray *)self->_tagStack count];
  sub_10052E5D0(v5, "Tag stack %d less than desired value %d", v7, v8, v9, v10, v11, v12, v6);
  while ([(NSMutableArray *)self->_tagStack count]> a3)
  {
    [(CRLPdfTagger *)self endTag];
  }
}

- (id)topmostContextOfClass:(Class)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableArray *)self->_contextStack reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (unint64_t)depthOfContext:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_contextStack indexOfObjectIdenticalTo:v4];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSMutableArray *)self->_contextStack count]+ ~v5;
  }

  return v6;
}

- (int)tagTypeAtDepth:(unint64_t)a3
{
  v4 = self;
  v5 = [(NSMutableArray *)self->_tagStack count]> a3;
  [(NSMutableArray *)v4->_tagStack count];
  sub_10052E5D0(v5, "Tag depth %d exceeds tag stack height %d", v6, v7, v8, v9, v10, v11, a3);
  v12 = [(NSMutableArray *)v4->_tagStack objectAtIndexedSubscript:[(NSMutableArray *)v4->_tagStack count]+ ~a3];
  LODWORD(v4) = [v12 tagType];

  return v4;
}

- (unint64_t)depthOfTopmostTagOfType:(int)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableArray *)self->_tagStack reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    v9 = v6;
    v6 += v5;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(*(&v11 + 1) + 8 * v8) tagType] == a3)
      {
        break;
      }

      ++v9;
      if (v5 == ++v8)
      {
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)state
{
  v2 = [[CRLPdfTaggerState alloc] initWithTagStackHeight:[(CRLPdfTagger *)self tagStackHeight]];

  return v2;
}

- (void)setState:(id)a3
{
  v4 = a3;
  -[CRLPdfTagger popTagStackUntilReachingHeight:](self, "popTagStackUntilReachingHeight:", [v4 tagStackHeight]);
}

- (id)topOfContextStackWithExpectedClass:(Class)a3
{
  v4 = [(NSMutableArray *)self->_contextStack crl_peek];
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = NSStringFromClass(a3);
  v7 = objc_opt_class();
  v15 = NSStringFromClass(v7);
  sub_10052E5D0(isKindOfClass & 1, "Incorrect top context class: expected %@, actual %@", v8, v9, v10, v11, v12, v13, v6);

  return v4;
}

- (void)restoreStateFromTopOfContextStackWithExpectedClass:(Class)a3
{
  v5 = [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  sub_10052E5D0(v5, "Unexpected class hierarchy", v6, v7, v8, v9, v10, v11, v13);
  v14 = [(CRLPdfTagger *)self topOfContextStackWithExpectedClass:a3];
  v12 = [v14 taggerState];
  [(CRLPdfTagger *)self setState:v12];

  [(CRLPdfTagger *)self popContextWithExpectedClass:a3];
}

- (id)topmostColumnContext
{
  v3 = objc_opt_class();

  return [(CRLPdfTagger *)self topmostContextOfClass:v3];
}

- (id)topmostParagraphContext
{
  v3 = objc_opt_class();

  return [(CRLPdfTagger *)self topmostContextOfClass:v3];
}

- (id)topmostColumn
{
  v2 = [(CRLPdfTagger *)self topmostColumnContext];
  v3 = [v2 column];

  return v3;
}

- (id)topmostTextStorage
{
  v2 = [(CRLPdfTagger *)self topmostColumn];
  v3 = [v2 storage];

  return v3;
}

- (_NSRange)topmostColumnRange
{
  v2 = [(CRLPdfTagger *)self topmostColumnContext];
  v3 = [v2 range];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)beginPage
{
  if (!self->_stateIsValid)
  {
    [(CRLPdfTagger *)self setUp];
  }
}

- (void)beginTextStorageChunk:(id)a3 limitSelection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100530760;
  v7[3] = &unk_10186D198;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(CRLPdfTagger *)v8 executeBlock:v7];
}

- (void)endTextStorageChunk:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100530AA0;
  v3[3] = &unk_10183F960;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (void)beginTextColumn:(id)a3 limitSelection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100530BC8;
  v7[3] = &unk_10186D198;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(CRLPdfTagger *)v8 executeBlock:v7];
}

- (void)endTextColumn:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100530CB0;
  v3[3] = &unk_10183F960;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (BOOL)topOfContextStackIsParagraph
{
  v2 = [(NSMutableArray *)self->_contextStack crl_peek];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)assertTopOfContextStackIsParagraph:(BOOL)a3
{
  if ([(CRLPdfTagger *)self topOfContextStackIsParagraph]!= a3)
  {

    sub_10052E5D0(0, "Incorrect paragraph rendering context life span", v3, v4, v5, v6, v7, v8, v10);
  }
}

- (void)beginMultiParagraphEntityWithLineFragmentRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CRLPdfTagger *)self topmostParagraphLevelResolver];
  v7 = [(CRLPdfTagger *)self topmostColumnContext];
  v8 = [v7 paragraphEnumerator];
  v16 = sub_100240930(v8);
  v18 = v16 <= location && v16 + v9 >= location + length;
  sub_10052E5D0(v18, "Line fragment not within current paragraph", v10, v11, v12, v13, v14, v15, v31);
  v35 = 0;
  v19 = [v6 levelOfCurrentParagraph:&v35];
  v33 = v35;
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v32 = v7;
  v20 = [(CRLPdfTagger *)self topmostColumnRange];
  v22 = v21;
  v23 = objc_opt_class();
  v24 = [v7 column];
  v25 = [v24 storage];
  v26 = [v23 indexOfFirstVisibleCharInRange:v20 ofStorage:{v22, v25}];

  if (v26 >= v16)
  {
    v28 = 0;
    v27 = -1;
  }

  else
  {
    v34 = 0;
    v27 = [v6 levelOfCurrentParagraph:{&v34, sub_1002407F0(v8)}];
    v28 = v34;
    v29 = sub_100240814(v8);
    if (v19 <= v27)
    {
      if (v19 != v27)
      {

        v7 = v32;
        goto LABEL_17;
      }

      v30 = [v6 paragraphInfo:v28 matchesParagraphInfo:v33 level:{v19, v29}] ^ 1;
      v7 = v32;
      goto LABEL_15;
    }
  }

  v7 = v32;
  v30 = v19 - v27;
LABEL_15:

  if (v30 >= 1)
  {
    do
    {
      -[CRLPdfTagger beginTagWithType:](self, "beginTagWithType:", [v6 tagType]);
      --v30;
    }

    while (v30);
  }

LABEL_17:
}

- (void)endMultiParagraphEntityWithLineFragmentRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CRLPdfTagger *)self topmostParagraphLevelResolver];
  v7 = [(CRLPdfTagger *)self topmostColumnContext];
  v8 = [v7 paragraphEnumerator];
  v9 = sub_100240930(v8);
  v17 = &v9[v16];
  v19 = v9 <= location && v17 >= location + length;
  sub_10052E5D0(v19, "Line fragment not within current paragraph", v10, v11, v12, v13, v14, v15, v32);
  v35 = 0;
  v20 = [v6 levelOfCurrentParagraph:&v35];
  v33 = v35;
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v21 = [(CRLPdfTagger *)self topmostColumnRange];
  v23 = (&v21[v22] - v17);
  if (&v21[v22] <= v17 || (v24 = objc_opt_class(), [v7 column], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "storage"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v24, "indexOfFirstVisibleCharInRange:ofStorage:", v17, v23, v26), v26, v25, v27 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v28 = 0;
    v29 = -1;
  }

  else
  {
    v34 = 0;
    v29 = [v6 levelOfCurrentParagraph:{&v34, sub_100240814(v8)}];
    v28 = v34;
    v31 = sub_1002407F0(v8);
    if (v20 <= v29)
    {
      if (v20 != v29)
      {

        goto LABEL_14;
      }

      v30 = [v6 paragraphInfo:v33 matchesParagraphInfo:v28 level:{v20, v31}] ^ 1;
      goto LABEL_12;
    }
  }

  v30 = v20 - v29;
LABEL_12:

  if (v30 >= 1)
  {
    do
    {
      [(CRLPdfTagger *)self endTag];
      --v30;
    }

    while (v30);
  }

LABEL_14:
}

+ (BOOL)isHeadingStyle:(id)a3 headingIndex:(int *)a4
{
  v5 = [a3 intValueForProperty:41];
  if (a4 && v5 <= 6)
  {
    *a4 = v5;
  }

  return v5 < 7;
}

- (BOOL)currentParagraphNeedsSpans
{
  v2 = [(CRLPdfTagger *)self topmostColumnContext];
  v3 = [v2 column];
  v4 = [v3 storage];
  v5 = sub_100240930([v2 paragraphEnumerator]);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005313D8;
  v9[3] = &unk_10186D1C0;
  v9[4] = &v12;
  v9[5] = v10;
  [v4 enumerateSmartFieldsWithAttributeKind:6 inRange:v5 usingBlock:{v6, v9}];
  v7 = *(v13 + 24);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)currentParagraphHasContents
{
  v2 = [(CRLPdfTagger *)self topmostColumnContext];
  v3 = [v2 column];
  v4 = [v3 storage];
  v5 = sub_100240930([v2 paragraphEnumerator]);
  v7 = v5;
  v8 = v6;
  if (v6)
  {
    v8 = v6 - sub_10027E2F0([v4 characterAtIndex:&v5[v6 - 1]]);
  }

  v9 = [objc_opt_class() indexOfFirstVisibleCharInRange:v7 ofStorage:{v8, v4}];
  v11 = v9 != 0x7FFFFFFFFFFFFFFFLL && v9 < &v7[v8];

  return v11;
}

- (void)beginParagraphWithLineFragmentRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(CRLPdfTagger *)self assertTopOfContextStackIsParagraph:0];
  [(CRLPdfTagger *)self beginMultiParagraphEntityWithLineFragmentRange:location, length];
  v6 = [[CRLPdfTaggerParagraphContext alloc] initWithStateOfTagger:self needsSpans:[(CRLPdfTagger *)self currentParagraphNeedsSpans]];
  [(CRLPdfTagger *)self pushContext:v6];
  v7 = [(CRLPdfTagger *)self topmostColumnContext];
  v8 = [v7 paragraphEnumerator];
  v9 = sub_100240898(v8, 0);
  v10 = sub_1002409FC(v8);
  v11 = [v10 labelTypeForLevel:sub_1002409EC(v8)];
  v16 = 0;
  v12 = [CRLPdfTagger isHeadingStyle:v9 headingIndex:&v16];
  if (v12)
  {
    v13 = dword_101466670[v16];
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v13 = 301;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 200;
  }

  if (!((v13 == 0) | v12 & 1) || [(CRLPdfTagger *)self currentParagraphHasContents])
  {
    [(CRLPdfTagger *)self beginTagWithType:v15];
  }
}

- (void)endParagraphWithLineFragmentRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(CRLPdfTagger *)self restoreStateFromTopOfContextStackWithExpectedClass:objc_opt_class()];

  [(CRLPdfTagger *)self endMultiParagraphEntityWithLineFragmentRange:location, length];
}

- (void)beginParagraphBodyWithLineFragmentRange:(_NSRange)a3
{
  if ([(CRLPdfTagger *)self topmostTagType:a3.location]== 301)
  {

    [(CRLPdfTagger *)self beginTagWithType:303];
  }
}

- (void)assertCharIndexRelativeToParagraphRange:(BOOL)a3
{
  if (!a3)
  {
    sub_10052E5D0(0, "Char index not in paragraph range", a3, v3, v4, v5, v6, v7, v8);
  }
}

- (void)advanceParagraphEnumeratorToCharIndex:(unint64_t)a3
{
  v7 = [(CRLPdfTagger *)self topmostColumnContext];
  for (i = [v7 paragraphEnumerator]; ; sub_100240814(i))
  {
    v5 = sub_100240930(i);
    if (v5 + v6 > a3)
    {
      break;
    }
  }
}

- (_NSRange)currentParagraphRange
{
  v3 = [(CRLPdfTagger *)self topmostColumnRange];
  v5 = v4;
  v6 = [(CRLPdfTagger *)self topmostColumnContext];
  v10.location = sub_100240930([v6 paragraphEnumerator]);
  v12.location = v3;
  v12.length = v5;
  v7 = NSIntersectionRange(v10, v12);

  location = v7.location;
  length = v7.length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)indexOfFirstVisibleCharInParagraphAtOrAfterCharIndex:(unint64_t)a3
{
  v4 = [(CRLPdfTagger *)self currentParagraphRange];
  if (a3 - v4 < v5 && a3 >= v4)
  {
    return a3;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)beginLineFragmentWithRange:(_NSRange)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005319EC;
  v3[3] = &unk_10186D1E8;
  v4 = a3;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (void)endLineFragmentWithRange:(_NSRange)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100531AC8;
  v3[3] = &unk_10186D1E8;
  v4 = a3;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (void)beginListLabel
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100531BA4;
  v2[3] = &unk_10183F960;
  v2[4] = self;
  [(CRLPdfTagger *)self executeBlock:v2];
}

- (void)endListLabel
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100531CB4;
  v2[3] = &unk_10183F960;
  v2[4] = self;
  [(CRLPdfTagger *)self executeBlock:v2];
}

- (void)beginLineFragmentBodyWithRange:(_NSRange)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100531D6C;
  v3[3] = &unk_10186D1E8;
  v4 = a3;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (void)endLineFragmentBodyWithRange:(_NSRange)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100531E8C;
  v3[3] = &unk_10186D1E8;
  v4 = a3;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (id)retrieveHighestInfoAtCharIndex:(unint64_t)a3 returnTagType:(int *)a4
{
  v6 = [(CRLPdfTagger *)self topmostTextStorage];
  v7 = v6;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 smartFieldAtCharIndex:a3 attributeKind:6 effectiveRange:0];
    v10 = objc_opt_class();
    v8 = sub_100014370(v10, v9);

    if (v8)
    {
      *a4 = 506;
    }
  }

  return v8;
}

- (void)beginPrimaryTextRunWithRange:(_NSRange)a3 hasActualContents:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100532050;
  v4[3] = &unk_10186D210;
  v4[4] = self;
  v5 = a3;
  v6 = a4;
  [(CRLPdfTagger *)self executeBlock:v4];
}

- (void)endPrimaryTextRunWithRange:(_NSRange)a3 hasActualContents:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005321A8;
  v4[3] = &unk_10183F960;
  v4[4] = self;
  [(CRLPdfTagger *)self executeBlock:v4, a3.length, a4];
}

- (void)beginAncillaryTextRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100532264;
  v4[3] = &unk_10186D238;
  v4[4] = self;
  v5 = a3;
  v6 = a4;
  [(CRLPdfTagger *)self executeBlock:v4];
}

- (void)endAncillaryTextRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10053238C;
  v4[3] = &unk_10183F960;
  v4[4] = self;
  [(CRLPdfTagger *)self executeBlock:v4, a3.length, a4.location, a4.length];
}

- (void)dispatchObject:(id)a3 drawableBlock:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [v9 info];
  v8 = sub_100014370(v6, v7);

  if (v5 && v8)
  {
    v5[2](v5, v9);
  }
}

- (void)handleObject:(id)a3 drawableBlock:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005325A8;
  v7[3] = &unk_10186D260;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(CRLPdfTagger *)v8 executeBlock:v7];
}

- (id)regularDrawableRepForObjectRep:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1005326C0;
  v10 = sub_1005326D0;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005326D8;
  v5[3] = &unk_10186D288;
  v5[4] = &v6;
  [(CRLPdfTagger *)self dispatchObject:a3 drawableBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (BOOL)shouldMapDrawableRep:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 info];
  v6 = sub_100014370(v4, v5);

  v7 = objc_opt_class();
  v8 = sub_100014370(v7, v6);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  v10 = !v9;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v12 = isKindOfClass | v10;
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_opt_class();
    v14 = [v3 info];
    v15 = sub_100014370(v13, v14);

    v16 = [v15 accessibilityDescription];
    v12 |= [v16 length] != 0;
  }

  return v12 & 1;
}

- (void)beginObject:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005328FC;
  v3[3] = &unk_10186D2B0;
  v3[4] = self;
  [(CRLPdfTagger *)self handleObject:a3 drawableBlock:v3];
}

- (void)endObject:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005329E4;
  v3[3] = &unk_10186D2B0;
  v3[4] = self;
  [(CRLPdfTagger *)self handleObject:a3 drawableBlock:v3];
}

- (void)beginDrawable:(id)a3
{
  v4 = a3;
  v5 = [[CRLPdfTaggerDrawableContext alloc] initWithStateOfTagger:self drawableRep:v4];
  [(CRLPdfTagger *)self pushContext:v5];
  v6 = objc_opt_class();
  v7 = [v4 info];
  v8 = sub_100014370(v6, v7);

  v9 = [v8 accessibilityDescription];
  if ([v9 length])
  {
    v20 = kCGPDFTagPropertyAlternativeText;
    v21 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CRLPdfTagger *)self state];
  [(CRLPdfTaggerDrawableContext *)v5 setTaggerStateOutsideCore:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(CRLPdfTagger *)self beginTagWithType:700 tagProperties:v10];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"%@", objc_opt_class()];
    if (([&off_1018E1EF0 containsObject:v12] & 1) == 0)
    {
      v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138E908();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138E930(v12, v13, v14);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138E9EC();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[CRLAssertionHandler packedBacktraceString];
        sub_101318C3C(v16, buf, v13, v15);
      }

      v17 = [NSString stringWithUTF8String:"[CRLPdfTagger beginDrawable:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPdfTagger.mm"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1488 isFatal:0 description:"Drawable of class %@ not handled", v12];
    }
  }
}

- (void)endDrawable:(id)a3
{
  v4 = objc_opt_class();

  [(CRLPdfTagger *)self restoreStateFromTopOfContextStackWithExpectedClass:v4];
}

- (void)beginFreehandDrawing:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100533018;
  v4[3] = &unk_10185D010;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CRLPdfTagger *)v5 executeBlock:v4];
}

- (void)endFreehandDrawing:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005330D0;
  v4[3] = &unk_10185D010;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CRLPdfTagger *)v5 executeBlock:v4];
}

- (void)beginComment
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10053314C;
  v2[3] = &unk_10183F960;
  v2[4] = self;
  [(CRLPdfTagger *)self executeBlock:v2];
}

- (void)endComment
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10053323C;
  v2[3] = &unk_10183F960;
  v2[4] = self;
  [(CRLPdfTagger *)self executeBlock:v2];
}

@end