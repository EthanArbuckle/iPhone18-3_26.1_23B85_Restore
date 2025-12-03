@interface CRLWPStorageAccessibility
- (NSArray)crlaxInferredHeadingRanges;
- (NSString)crlaxString;
- (_NSRange)_crlaxInfferredHeadingRangeForParagraphIndex:(unint64_t)index withBaseFontSize:(unint64_t)size excludingCharacters:(id)characters;
- (_NSRange)crlaxInferredHeadingRangeForParagraphIndex:(unint64_t)index withBaseFontSize:(unint64_t)size;
- (_NSRange)crlaxNextInferredHeadingRangeFromCharacterIndex:(unint64_t)index wrap:(BOOL)wrap;
- (_NSRange)crlaxPreviousInferredHeadingRangeFromCharacterIndex:(unint64_t)index wrap:(BOOL)wrap;
- (_NSRange)crlaxRange;
- (_NSRange)crlaxTextRangeForParagraphAtIndex:(unint64_t)index;
- (_TtC8Freeform12CRLWPStorage)crlaxTarget;
- (id)crlaxAttachmentOrFootnoteAtCharIndex:(unint64_t)index;
- (id)crlaxHyperLinksInRange:(_NSRange)range;
- (id)crlaxInferredHeadingRangesWithBaseFontSize:(unint64_t)size;
- (id)crlaxSubstringWithRange:(_NSRange)range;
- (unint64_t)crlaxCharacterCount;
- (unint64_t)crlaxParagraphCount;
- (unint64_t)crlaxUpdatedInferredBaseFontSize;
- (unsigned)crlaxCharacterAtIndex:(unint64_t)index;
- (void)_crlaxUpdateInferredBaseFontSize;
- (void)crlaxEnumerateSmartFieldsUsingBlock:(id)block;
- (void)crlaxEnumerateSmartFieldsWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block;
@end

@implementation CRLWPStorageAccessibility

- (_TtC8Freeform12CRLWPStorage)crlaxTarget
{
  v7 = 0;
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, selfCopy, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (NSString)crlaxString
{
  v7 = 0;
  v2 = [(CRLWPStorageAccessibility *)self crlaxValueForKey:@"string"];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (_NSRange)crlaxRange
{
  v2 = [(CRLWPStorageAccessibility *)self crlaxRangeValueForKey:@"range"];
  result.length = v3;
  result.location = v2;
  return result;
}

- (unint64_t)crlaxCharacterCount
{
  crlaxTarget = [(CRLWPStorageAccessibility *)self crlaxTarget];
  characterCount = [crlaxTarget characterCount];

  return characterCount;
}

- (unint64_t)crlaxParagraphCount
{
  crlaxTarget = [(CRLWPStorageAccessibility *)self crlaxTarget];
  paragraphCount = [crlaxTarget paragraphCount];

  return paragraphCount;
}

- (unint64_t)crlaxUpdatedInferredBaseFontSize
{
  [(CRLWPStorageAccessibility *)self _crlaxUpdateInferredBaseFontSize];

  return [(CRLWPStorageAccessibility *)self crlaxInferredBaseFontSize];
}

- (id)crlaxSubstringWithRange:(_NSRange)range
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100180308;
  v11 = sub_100180318;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100180320;
  v5[3] = &unk_1018427D8;
  v5[4] = self;
  v5[5] = &v7;
  rangeCopy = range;
  if (__CRLAccessibilityPerformSafeBlock(v5))
  {
    abort();
  }

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (id)crlaxAttachmentOrFootnoteAtCharIndex:(unint64_t)index
{
  v8 = 0;
  v3 = [(CRLWPStorageAccessibility *)self attachmentOrFootnoteAtCharIndex:index];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (void)crlaxEnumerateSmartFieldsUsingBlock:(id)block
{
  blockCopy = block;
  crlaxRange = [(CRLWPStorageAccessibility *)self crlaxRange];
  [(CRLWPStorageAccessibility *)self crlaxEnumerateSmartFieldsWithAttributeKind:6 inRange:crlaxRange usingBlock:v5, blockCopy];
}

- (void)crlaxEnumerateSmartFieldsWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018050C;
  v6[3] = &unk_10183D380;
  v6[4] = self;
  kindCopy = kind;
  rangeCopy = range;
  blockCopy = block;
  v7 = blockCopy;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }
}

- (NSArray)crlaxInferredHeadingRanges
{
  crlaxUpdatedInferredBaseFontSize = [(CRLWPStorageAccessibility *)self crlaxUpdatedInferredBaseFontSize];

  return [(CRLWPStorageAccessibility *)self crlaxInferredHeadingRangesWithBaseFontSize:crlaxUpdatedInferredBaseFontSize];
}

- (id)crlaxInferredHeadingRangesWithBaseFontSize:(unint64_t)size
{
  v5 = +[NSMutableArray array];
  crlaxParagraphCount = [(CRLWPStorageAccessibility *)self crlaxParagraphCount];
  if (!qword_101A34748)
  {
    v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v8 = [v7 mutableCopy];

    v9 = +[NSCharacterSet controlCharacterSet];
    [v8 formUnionWithCharacterSet:v9];

    [v8 addCharactersInRange:{65532, 1}];
    v10 = [v8 copy];
    v11 = qword_101A34748;
    qword_101A34748 = v10;
  }

  if (crlaxParagraphCount)
  {
    for (i = 0; i != crlaxParagraphCount; ++i)
    {
      v13 = [(CRLWPStorageAccessibility *)self _crlaxInfferredHeadingRangeForParagraphIndex:i withBaseFontSize:size excludingCharacters:qword_101A34748];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL || v14 != 0)
      {
        v16 = [NSValue valueWithRange:v13, v14];
        [v5 addObject:v16];
      }
    }
  }

  v17 = [v5 copy];

  return v17;
}

- (_NSRange)crlaxInferredHeadingRangeForParagraphIndex:(unint64_t)index withBaseFontSize:(unint64_t)size
{
  if (!qword_101A34750)
  {
    v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v8 = [v7 mutableCopy];

    v9 = +[NSCharacterSet controlCharacterSet];
    [v8 formUnionWithCharacterSet:v9];

    [v8 addCharactersInRange:{65532, 1}];
    v10 = [v8 copy];
    v11 = qword_101A34750;
    qword_101A34750 = v10;
  }

  v12 = [(CRLWPStorageAccessibility *)self _crlaxInfferredHeadingRangeForParagraphIndex:index withBaseFontSize:size excludingCharacters:?];
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)_crlaxInfferredHeadingRangeForParagraphIndex:(unint64_t)index withBaseFontSize:(unint64_t)size excludingCharacters:(id)characters
{
  charactersCopy = characters;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0;
  crlaxCharacterCount = [(CRLWPStorageAccessibility *)self crlaxCharacterCount];
  v11 = [(CRLWPStorageAccessibility *)self crlaxTextRangeForParagraphAtIndex:index];
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = &v11[v12];
    if (v11 <= crlaxCharacterCount)
    {
      v16 = crlaxCharacterCount;
    }

    else
    {
      v16 = v11;
    }

    v17 = v11;
    while (v16 != v17)
    {
      crlaxTarget = [(CRLWPStorageAccessibility *)self crlaxTarget];
      v19 = [charactersCopy characterIsMember:{objc_msgSend(crlaxTarget, "characterAtIndex:", v17)}];

      if (v19)
      {
        if (++v17 < v15)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v17 = v16;
LABEL_11:
    v20 = &v13[v14 - 1];
    v8 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      crlaxTarget2 = [(CRLWPStorageAccessibility *)self crlaxTarget];
      v22 = [charactersCopy characterIsMember:{objc_msgSend(crlaxTarget2, "characterAtIndex:", v20)}];

      if (!v22)
      {
        break;
      }

      if (!v20)
      {
        break;
      }

      --v20;
    }

    while (v20 >= v17);
    v23 = v20 - v17;
    if (v20 > v17 && v23 <= 0x44)
    {
      v24 = v23 + 1;
      v25 = v20 + 1;
      if (v17 >= v20 + 1)
      {
        v8 = v24;
LABEL_23:
        v9 = v17;
      }

      else
      {
        v32 = v24;
        v26 = v17;
        while (1)
        {
          crlaxTarget3 = [(CRLWPStorageAccessibility *)self crlaxTarget];
          v28 = [crlaxTarget3 characterAtIndex:v26];

          v29 = +[NSCharacterSet lowercaseLetterCharacterSet];
          LODWORD(v28) = [v29 characterIsMember:v28];

          if (v28)
          {
            break;
          }

          if (v25 == ++v26)
          {
            v8 = v32;
            goto LABEL_23;
          }
        }
      }
    }
  }

  v30 = v9;
  v31 = v8;
  result.length = v31;
  result.location = v30;
  return result;
}

- (_NSRange)crlaxTextRangeForParagraphAtIndex:(unint64_t)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_1016A8115;
  v12 = 0;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100180B94;
  v7[3] = &unk_10183B670;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = index;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.length = v6;
  result.location = v5;
  return result;
}

- (unsigned)crlaxCharacterAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100180CBC;
  v5[3] = &unk_10183B670;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = index;
  if (__CRLAccessibilityPerformSafeBlock(v5))
  {
    abort();
  }

  v3 = *(v7 + 12);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_NSRange)crlaxNextInferredHeadingRangeFromCharacterIndex:(unint64_t)index wrap:(BOOL)wrap
{
  wrapCopy = wrap;
  crlaxInferredHeadingRanges = [(CRLWPStorageAccessibility *)self crlaxInferredHeadingRanges];
  rangeValue2 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  if ([crlaxInferredHeadingRanges count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = crlaxInferredHeadingRanges;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = wrapCopy;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          rangeValue = [*(*(&v25 + 1) + 8 * i) rangeValue];
          if (rangeValue > index)
          {
            v17 = rangeValue;
            v16 = v15;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v16 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
      wrapCopy = v24;
    }

    else
    {
      v16 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v17 != 0x7FFFFFFFFFFFFFFFLL || v16 != 0 || !wrapCopy;
    v7 = v16;
    rangeValue2 = v17;
    if (!v19)
    {
      v20 = [v9 objectAtIndexedSubscript:0];
      rangeValue2 = [v20 rangeValue];
      v7 = v21;
    }
  }

  v22 = rangeValue2;
  v23 = v7;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)crlaxPreviousInferredHeadingRangeFromCharacterIndex:(unint64_t)index wrap:(BOOL)wrap
{
  wrapCopy = wrap;
  crlaxInferredHeadingRanges = [(CRLWPStorageAccessibility *)self crlaxInferredHeadingRanges];
  rangeValue2 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  if ([crlaxInferredHeadingRanges count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    reverseObjectEnumerator = [crlaxInferredHeadingRanges reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = wrapCopy;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          rangeValue = [*(*(&v25 + 1) + 8 * i) rangeValue];
          if (rangeValue + v15 <= index)
          {
            v17 = rangeValue;
            v16 = v15;
            goto LABEL_12;
          }
        }

        v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v16 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
      wrapCopy = v24;
    }

    else
    {
      v16 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v17 != 0x7FFFFFFFFFFFFFFFLL || v16 != 0 || !wrapCopy;
    v7 = v16;
    rangeValue2 = v17;
    if (!v19)
    {
      v20 = [crlaxInferredHeadingRanges objectAtIndexedSubscript:{objc_msgSend(crlaxInferredHeadingRanges, "count") - 1}];
      rangeValue2 = [v20 rangeValue];
      v7 = v21;
    }
  }

  v22 = rangeValue2;
  v23 = v7;
  result.length = v23;
  result.location = v22;
  return result;
}

- (id)crlaxHyperLinksInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  crlaxTarget = [(CRLWPStorageAccessibility *)self crlaxTarget];
  v6 = [crlaxTarget smartFieldsWithAttributeKind:6 intersectingRange:{location, length}];

  return v6;
}

- (void)_crlaxUpdateInferredBaseFontSize
{
  bzero(v7, 0x1F40uLL);
  v3 = 0;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v5 = v7[v3];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL || (v6 = v3, !v5))
    {
      if (v5 <= v7[v4])
      {
        v6 = v4;
      }

      else
      {
        v6 = v3;
      }
    }

    ++v3;
    v4 = v6;
  }

  while (v3 != 1000);

  [(CRLWPStorageAccessibility *)self crlaxSetInferredBaseFontSize:?];
}

@end