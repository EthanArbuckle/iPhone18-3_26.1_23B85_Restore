@interface CRLPdfTagger
+ (BOOL)isHeadingStyle:(id)style headingIndex:(int *)index;
+ (BOOL)shouldMapDrawableRep:(id)rep;
- (BOOL)currentParagraphHasContents;
- (BOOL)currentParagraphNeedsSpans;
- (BOOL)topOfContextStackIsParagraph;
- (CRLPdfTagger)init;
- (_NSRange)currentParagraphRange;
- (_NSRange)topmostColumnRange;
- (id)regularDrawableRepForObjectRep:(id)rep;
- (id)retrieveHighestInfoAtCharIndex:(unint64_t)index returnTagType:(int *)type;
- (id)state;
- (id)topOfContextStackWithExpectedClass:(Class)class;
- (id)topmostColumn;
- (id)topmostColumnContext;
- (id)topmostContextOfClass:(Class)class;
- (id)topmostParagraphContext;
- (id)topmostTextStorage;
- (int)tagTypeAtDepth:(unint64_t)depth;
- (unint64_t)depthOfContext:(id)context;
- (unint64_t)depthOfTopmostTagOfType:(int)type;
- (unint64_t)indexOfFirstVisibleCharInParagraphAtOrAfterCharIndex:(unint64_t)index;
- (void)advanceParagraphEnumeratorToCharIndex:(unint64_t)index;
- (void)assertCharIndexRelativeToParagraphRange:(BOOL)range;
- (void)assertTopOfContextStackIsParagraph:(BOOL)paragraph;
- (void)beginAncillaryTextRunWithRange:(_NSRange)range baseTextRange:(_NSRange)textRange;
- (void)beginComment;
- (void)beginDrawable:(id)drawable;
- (void)beginFreehandDrawing:(id)drawing;
- (void)beginLineFragmentBodyWithRange:(_NSRange)range;
- (void)beginLineFragmentWithRange:(_NSRange)range;
- (void)beginListLabel;
- (void)beginMultiParagraphEntityWithLineFragmentRange:(_NSRange)range;
- (void)beginObject:(id)object;
- (void)beginPage;
- (void)beginParagraphBodyWithLineFragmentRange:(_NSRange)range;
- (void)beginParagraphWithLineFragmentRange:(_NSRange)range;
- (void)beginPrimaryTextRunWithRange:(_NSRange)range hasActualContents:(BOOL)contents;
- (void)beginTagWithType:(int)type tagProperties:(id)properties;
- (void)beginTextColumn:(id)column limitSelection:(id)selection;
- (void)beginTextStorageChunk:(id)chunk limitSelection:(id)selection;
- (void)dispatchObject:(id)object drawableBlock:(id)block;
- (void)endAncillaryTextRunWithRange:(_NSRange)range baseTextRange:(_NSRange)textRange;
- (void)endComment;
- (void)endDrawable:(id)drawable;
- (void)endFreehandDrawing:(id)drawing;
- (void)endLineFragmentBodyWithRange:(_NSRange)range;
- (void)endLineFragmentWithRange:(_NSRange)range;
- (void)endListLabel;
- (void)endMultiParagraphEntityWithLineFragmentRange:(_NSRange)range;
- (void)endObject:(id)object;
- (void)endParagraphWithLineFragmentRange:(_NSRange)range;
- (void)endPrimaryTextRunWithRange:(_NSRange)range hasActualContents:(BOOL)contents;
- (void)endTag;
- (void)endTextColumn:(id)column;
- (void)endTextStorageChunk:(id)chunk;
- (void)executeBlock:(id)block;
- (void)handleObject:(id)object drawableBlock:(id)block;
- (void)popContextWithExpectedClass:(Class)class;
- (void)popTagStackUntilReachingHeight:(unint64_t)height;
- (void)pushContext:(id)context;
- (void)restoreStateFromTopOfContextStackWithExpectedClass:(Class)class;
- (void)setState:(id)state;
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

- (void)executeBlock:(id)block
{
  blockCopy = block;
  if (self->_stateIsValid)
  {
    blockCopy[2]();
  }
}

- (void)pushContext:(id)context
{
  contextCopy = context;
  v4 = [(NSMutableArray *)self->_contextStack count];
  contextCopy = [NSString stringWithFormat:@"%@", contextCopy];
  uTF8String = [contextCopy UTF8String];
  sub_10052FA0C(v4, "PUSH %s", v7, v8, v9, v10, v11, v12, uTF8String);

  [(NSMutableArray *)self->_contextStack crl_push:contextCopy];
}

- (void)popContextWithExpectedClass:(Class)class
{
  crl_peek = [(NSMutableArray *)self->_contextStack crl_peek];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = objc_opt_class();
    sub_10052E5D0(0, "Class mismatch popping rendering context: %@ instead of %@", v5, v6, v7, v8, v9, v10, v4);
  }

  crl_pop = [(NSMutableArray *)self->_contextStack crl_pop];
  v12 = [(NSMutableArray *)self->_contextStack count];
  v13 = [NSString stringWithFormat:@"%@", crl_peek];
  uTF8String = [v13 UTF8String];
  sub_10052FA0C(v12, "POP %s", v15, v16, v17, v18, v19, v20, uTF8String);
}

- (void)beginTagWithType:(int)type tagProperties:(id)properties
{
  v4 = *&type;
  tagProperties = properties;
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
  crl_peek = [(NSMutableArray *)self->_tagStack crl_peek];
  tagType = [crl_peek tagType];
  if (![(CRLPdfTagger *)self taggingPreventionDepth])
  {
    CGPDFContextEndTag(self->_cgContext);
  }

  crl_pop = [(NSMutableArray *)self->_tagStack crl_pop];
  Name = CGPDFTagTypeGetName(tagType);
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

- (void)popTagStackUntilReachingHeight:(unint64_t)height
{
  v5 = [(NSMutableArray *)self->_tagStack count]>= height;
  v6 = [(NSMutableArray *)self->_tagStack count];
  sub_10052E5D0(v5, "Tag stack %d less than desired value %d", v7, v8, v9, v10, v11, v12, v6);
  while ([(NSMutableArray *)self->_tagStack count]> height)
  {
    [(CRLPdfTagger *)self endTag];
  }
}

- (id)topmostContextOfClass:(Class)class
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_contextStack reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (unint64_t)depthOfContext:(id)context
{
  contextCopy = context;
  v5 = [(NSMutableArray *)self->_contextStack indexOfObjectIdenticalTo:contextCopy];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSMutableArray *)self->_contextStack count]+ ~v5;
  }

  return v6;
}

- (int)tagTypeAtDepth:(unint64_t)depth
{
  selfCopy = self;
  v5 = [(NSMutableArray *)self->_tagStack count]> depth;
  [(NSMutableArray *)selfCopy->_tagStack count];
  sub_10052E5D0(v5, "Tag depth %d exceeds tag stack height %d", v6, v7, v8, v9, v10, v11, depth);
  v12 = [(NSMutableArray *)selfCopy->_tagStack objectAtIndexedSubscript:[(NSMutableArray *)selfCopy->_tagStack count]+ ~depth];
  LODWORD(selfCopy) = [v12 tagType];

  return selfCopy;
}

- (unint64_t)depthOfTopmostTagOfType:(int)type
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_tagStack reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      if ([*(*(&v11 + 1) + 8 * v8) tagType] == type)
      {
        break;
      }

      ++v9;
      if (v5 == ++v8)
      {
        v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)setState:(id)state
{
  stateCopy = state;
  -[CRLPdfTagger popTagStackUntilReachingHeight:](self, "popTagStackUntilReachingHeight:", [stateCopy tagStackHeight]);
}

- (id)topOfContextStackWithExpectedClass:(Class)class
{
  crl_peek = [(NSMutableArray *)self->_contextStack crl_peek];
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = NSStringFromClass(class);
  v7 = objc_opt_class();
  v15 = NSStringFromClass(v7);
  sub_10052E5D0(isKindOfClass & 1, "Incorrect top context class: expected %@, actual %@", v8, v9, v10, v11, v12, v13, v6);

  return crl_peek;
}

- (void)restoreStateFromTopOfContextStackWithExpectedClass:(Class)class
{
  v5 = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  sub_10052E5D0(v5, "Unexpected class hierarchy", v6, v7, v8, v9, v10, v11, v13);
  v14 = [(CRLPdfTagger *)self topOfContextStackWithExpectedClass:class];
  taggerState = [v14 taggerState];
  [(CRLPdfTagger *)self setState:taggerState];

  [(CRLPdfTagger *)self popContextWithExpectedClass:class];
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
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  column = [topmostColumnContext column];

  return column;
}

- (id)topmostTextStorage
{
  topmostColumn = [(CRLPdfTagger *)self topmostColumn];
  storage = [topmostColumn storage];

  return storage;
}

- (_NSRange)topmostColumnRange
{
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  range = [topmostColumnContext range];
  v5 = v4;

  v6 = range;
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

- (void)beginTextStorageChunk:(id)chunk limitSelection:(id)selection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100530760;
  v7[3] = &unk_10186D198;
  selfCopy = self;
  chunkCopy = chunk;
  selectionCopy = selection;
  v5 = selectionCopy;
  v6 = chunkCopy;
  [(CRLPdfTagger *)selfCopy executeBlock:v7];
}

- (void)endTextStorageChunk:(id)chunk
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100530AA0;
  v3[3] = &unk_10183F960;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (void)beginTextColumn:(id)column limitSelection:(id)selection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100530BC8;
  v7[3] = &unk_10186D198;
  selfCopy = self;
  columnCopy = column;
  selectionCopy = selection;
  v5 = selectionCopy;
  v6 = columnCopy;
  [(CRLPdfTagger *)selfCopy executeBlock:v7];
}

- (void)endTextColumn:(id)column
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
  crl_peek = [(NSMutableArray *)self->_contextStack crl_peek];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)assertTopOfContextStackIsParagraph:(BOOL)paragraph
{
  if ([(CRLPdfTagger *)self topOfContextStackIsParagraph]!= paragraph)
  {

    sub_10052E5D0(0, "Incorrect paragraph rendering context life span", v3, v4, v5, v6, v7, v8, v10);
  }
}

- (void)beginMultiParagraphEntityWithLineFragmentRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  topmostParagraphLevelResolver = [(CRLPdfTagger *)self topmostParagraphLevelResolver];
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  paragraphEnumerator = [topmostColumnContext paragraphEnumerator];
  v16 = sub_100240930(paragraphEnumerator);
  v18 = v16 <= location && v16 + v9 >= location + length;
  sub_10052E5D0(v18, "Line fragment not within current paragraph", v10, v11, v12, v13, v14, v15, v31);
  v35 = 0;
  v19 = [topmostParagraphLevelResolver levelOfCurrentParagraph:&v35];
  v33 = v35;
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v32 = topmostColumnContext;
  topmostColumnRange = [(CRLPdfTagger *)self topmostColumnRange];
  v22 = v21;
  v23 = objc_opt_class();
  column = [topmostColumnContext column];
  storage = [column storage];
  v26 = [v23 indexOfFirstVisibleCharInRange:topmostColumnRange ofStorage:{v22, storage}];

  if (v26 >= v16)
  {
    v28 = 0;
    v27 = -1;
  }

  else
  {
    v34 = 0;
    v27 = [topmostParagraphLevelResolver levelOfCurrentParagraph:{&v34, sub_1002407F0(paragraphEnumerator)}];
    v28 = v34;
    v29 = sub_100240814(paragraphEnumerator);
    if (v19 <= v27)
    {
      if (v19 != v27)
      {

        topmostColumnContext = v32;
        goto LABEL_17;
      }

      v30 = [topmostParagraphLevelResolver paragraphInfo:v28 matchesParagraphInfo:v33 level:{v19, v29}] ^ 1;
      topmostColumnContext = v32;
      goto LABEL_15;
    }
  }

  topmostColumnContext = v32;
  v30 = v19 - v27;
LABEL_15:

  if (v30 >= 1)
  {
    do
    {
      -[CRLPdfTagger beginTagWithType:](self, "beginTagWithType:", [topmostParagraphLevelResolver tagType]);
      --v30;
    }

    while (v30);
  }

LABEL_17:
}

- (void)endMultiParagraphEntityWithLineFragmentRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  topmostParagraphLevelResolver = [(CRLPdfTagger *)self topmostParagraphLevelResolver];
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  paragraphEnumerator = [topmostColumnContext paragraphEnumerator];
  v9 = sub_100240930(paragraphEnumerator);
  v17 = &v9[v16];
  v19 = v9 <= location && v17 >= location + length;
  sub_10052E5D0(v19, "Line fragment not within current paragraph", v10, v11, v12, v13, v14, v15, v32);
  v35 = 0;
  v20 = [topmostParagraphLevelResolver levelOfCurrentParagraph:&v35];
  v33 = v35;
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  topmostColumnRange = [(CRLPdfTagger *)self topmostColumnRange];
  v23 = (&topmostColumnRange[v22] - v17);
  if (&topmostColumnRange[v22] <= v17 || (v24 = objc_opt_class(), [topmostColumnContext column], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "storage"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v24, "indexOfFirstVisibleCharInRange:ofStorage:", v17, v23, v26), v26, v25, v27 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v28 = 0;
    v29 = -1;
  }

  else
  {
    v34 = 0;
    v29 = [topmostParagraphLevelResolver levelOfCurrentParagraph:{&v34, sub_100240814(paragraphEnumerator)}];
    v28 = v34;
    v31 = sub_1002407F0(paragraphEnumerator);
    if (v20 <= v29)
    {
      if (v20 != v29)
      {

        goto LABEL_14;
      }

      v30 = [topmostParagraphLevelResolver paragraphInfo:v33 matchesParagraphInfo:v28 level:{v20, v31}] ^ 1;
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

+ (BOOL)isHeadingStyle:(id)style headingIndex:(int *)index
{
  v5 = [style intValueForProperty:41];
  if (index && v5 <= 6)
  {
    *index = v5;
  }

  return v5 < 7;
}

- (BOOL)currentParagraphNeedsSpans
{
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  column = [topmostColumnContext column];
  storage = [column storage];
  v5 = sub_100240930([topmostColumnContext paragraphEnumerator]);
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
  [storage enumerateSmartFieldsWithAttributeKind:6 inRange:v5 usingBlock:{v6, v9}];
  v7 = *(v13 + 24);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)currentParagraphHasContents
{
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  column = [topmostColumnContext column];
  storage = [column storage];
  v5 = sub_100240930([topmostColumnContext paragraphEnumerator]);
  v7 = v5;
  v8 = v6;
  if (v6)
  {
    v8 = v6 - sub_10027E2F0([storage characterAtIndex:&v5[v6 - 1]]);
  }

  v9 = [objc_opt_class() indexOfFirstVisibleCharInRange:v7 ofStorage:{v8, storage}];
  v11 = v9 != 0x7FFFFFFFFFFFFFFFLL && v9 < &v7[v8];

  return v11;
}

- (void)beginParagraphWithLineFragmentRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(CRLPdfTagger *)self assertTopOfContextStackIsParagraph:0];
  [(CRLPdfTagger *)self beginMultiParagraphEntityWithLineFragmentRange:location, length];
  v6 = [[CRLPdfTaggerParagraphContext alloc] initWithStateOfTagger:self needsSpans:[(CRLPdfTagger *)self currentParagraphNeedsSpans]];
  [(CRLPdfTagger *)self pushContext:v6];
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  paragraphEnumerator = [topmostColumnContext paragraphEnumerator];
  v9 = sub_100240898(paragraphEnumerator, 0);
  v10 = sub_1002409FC(paragraphEnumerator);
  v11 = [v10 labelTypeForLevel:sub_1002409EC(paragraphEnumerator)];
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

- (void)endParagraphWithLineFragmentRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(CRLPdfTagger *)self restoreStateFromTopOfContextStackWithExpectedClass:objc_opt_class()];

  [(CRLPdfTagger *)self endMultiParagraphEntityWithLineFragmentRange:location, length];
}

- (void)beginParagraphBodyWithLineFragmentRange:(_NSRange)range
{
  if ([(CRLPdfTagger *)self topmostTagType:range.location]== 301)
  {

    [(CRLPdfTagger *)self beginTagWithType:303];
  }
}

- (void)assertCharIndexRelativeToParagraphRange:(BOOL)range
{
  if (!range)
  {
    sub_10052E5D0(0, "Char index not in paragraph range", range, v3, v4, v5, v6, v7, v8);
  }
}

- (void)advanceParagraphEnumeratorToCharIndex:(unint64_t)index
{
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  for (i = [topmostColumnContext paragraphEnumerator]; ; sub_100240814(i))
  {
    v5 = sub_100240930(i);
    if (v5 + v6 > index)
    {
      break;
    }
  }
}

- (_NSRange)currentParagraphRange
{
  topmostColumnRange = [(CRLPdfTagger *)self topmostColumnRange];
  v5 = v4;
  topmostColumnContext = [(CRLPdfTagger *)self topmostColumnContext];
  v10.location = sub_100240930([topmostColumnContext paragraphEnumerator]);
  v12.location = topmostColumnRange;
  v12.length = v5;
  v7 = NSIntersectionRange(v10, v12);

  location = v7.location;
  length = v7.length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)indexOfFirstVisibleCharInParagraphAtOrAfterCharIndex:(unint64_t)index
{
  currentParagraphRange = [(CRLPdfTagger *)self currentParagraphRange];
  if (index - currentParagraphRange < v5 && index >= currentParagraphRange)
  {
    return index;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)beginLineFragmentWithRange:(_NSRange)range
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005319EC;
  v3[3] = &unk_10186D1E8;
  rangeCopy = range;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (void)endLineFragmentWithRange:(_NSRange)range
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100531AC8;
  v3[3] = &unk_10186D1E8;
  rangeCopy = range;
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

- (void)beginLineFragmentBodyWithRange:(_NSRange)range
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100531D6C;
  v3[3] = &unk_10186D1E8;
  rangeCopy = range;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (void)endLineFragmentBodyWithRange:(_NSRange)range
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100531E8C;
  v3[3] = &unk_10186D1E8;
  rangeCopy = range;
  v3[4] = self;
  [(CRLPdfTagger *)self executeBlock:v3];
}

- (id)retrieveHighestInfoAtCharIndex:(unint64_t)index returnTagType:(int *)type
{
  topmostTextStorage = [(CRLPdfTagger *)self topmostTextStorage];
  v7 = topmostTextStorage;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [topmostTextStorage smartFieldAtCharIndex:index attributeKind:6 effectiveRange:0];
    v10 = objc_opt_class();
    v8 = sub_100014370(v10, v9);

    if (v8)
    {
      *type = 506;
    }
  }

  return v8;
}

- (void)beginPrimaryTextRunWithRange:(_NSRange)range hasActualContents:(BOOL)contents
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100532050;
  v4[3] = &unk_10186D210;
  v4[4] = self;
  rangeCopy = range;
  contentsCopy = contents;
  [(CRLPdfTagger *)self executeBlock:v4];
}

- (void)endPrimaryTextRunWithRange:(_NSRange)range hasActualContents:(BOOL)contents
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005321A8;
  v4[3] = &unk_10183F960;
  v4[4] = self;
  [(CRLPdfTagger *)self executeBlock:v4, range.length, contents];
}

- (void)beginAncillaryTextRunWithRange:(_NSRange)range baseTextRange:(_NSRange)textRange
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100532264;
  v4[3] = &unk_10186D238;
  v4[4] = self;
  rangeCopy = range;
  textRangeCopy = textRange;
  [(CRLPdfTagger *)self executeBlock:v4];
}

- (void)endAncillaryTextRunWithRange:(_NSRange)range baseTextRange:(_NSRange)textRange
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10053238C;
  v4[3] = &unk_10183F960;
  v4[4] = self;
  [(CRLPdfTagger *)self executeBlock:v4, range.length, textRange.location, textRange.length];
}

- (void)dispatchObject:(id)object drawableBlock:(id)block
{
  objectCopy = object;
  blockCopy = block;
  v6 = objc_opt_class();
  info = [objectCopy info];
  v8 = sub_100014370(v6, info);

  if (blockCopy && v8)
  {
    blockCopy[2](blockCopy, objectCopy);
  }
}

- (void)handleObject:(id)object drawableBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005325A8;
  v7[3] = &unk_10186D260;
  selfCopy = self;
  objectCopy = object;
  blockCopy = block;
  v5 = blockCopy;
  v6 = objectCopy;
  [(CRLPdfTagger *)selfCopy executeBlock:v7];
}

- (id)regularDrawableRepForObjectRep:(id)rep
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
  [(CRLPdfTagger *)self dispatchObject:rep drawableBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (BOOL)shouldMapDrawableRep:(id)rep
{
  repCopy = rep;
  v4 = objc_opt_class();
  info = [repCopy info];
  v6 = sub_100014370(v4, info);

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
    info2 = [repCopy info];
    v15 = sub_100014370(v13, info2);

    accessibilityDescription = [v15 accessibilityDescription];
    v12 |= [accessibilityDescription length] != 0;
  }

  return v12 & 1;
}

- (void)beginObject:(id)object
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005328FC;
  v3[3] = &unk_10186D2B0;
  v3[4] = self;
  [(CRLPdfTagger *)self handleObject:object drawableBlock:v3];
}

- (void)endObject:(id)object
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005329E4;
  v3[3] = &unk_10186D2B0;
  v3[4] = self;
  [(CRLPdfTagger *)self handleObject:object drawableBlock:v3];
}

- (void)beginDrawable:(id)drawable
{
  drawableCopy = drawable;
  v5 = [[CRLPdfTaggerDrawableContext alloc] initWithStateOfTagger:self drawableRep:drawableCopy];
  [(CRLPdfTagger *)self pushContext:v5];
  v6 = objc_opt_class();
  info = [drawableCopy info];
  v8 = sub_100014370(v6, info);

  accessibilityDescription = [v8 accessibilityDescription];
  if ([accessibilityDescription length])
  {
    v20 = kCGPDFTagPropertyAlternativeText;
    v21 = accessibilityDescription;
    v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

  else
  {
    v10 = 0;
  }

  state = [(CRLPdfTagger *)self state];
  [(CRLPdfTaggerDrawableContext *)v5 setTaggerStateOutsideCore:state];

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

- (void)endDrawable:(id)drawable
{
  v4 = objc_opt_class();

  [(CRLPdfTagger *)self restoreStateFromTopOfContextStackWithExpectedClass:v4];
}

- (void)beginFreehandDrawing:(id)drawing
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100533018;
  v4[3] = &unk_10185D010;
  selfCopy = self;
  drawingCopy = drawing;
  v3 = drawingCopy;
  [(CRLPdfTagger *)selfCopy executeBlock:v4];
}

- (void)endFreehandDrawing:(id)drawing
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005330D0;
  v4[3] = &unk_10185D010;
  selfCopy = self;
  drawingCopy = drawing;
  v3 = drawingCopy;
  [(CRLPdfTagger *)selfCopy executeBlock:v4];
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