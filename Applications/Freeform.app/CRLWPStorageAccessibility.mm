@interface CRLWPStorageAccessibility
- (NSArray)crlaxInferredHeadingRanges;
- (NSString)crlaxString;
- (_NSRange)_crlaxInfferredHeadingRangeForParagraphIndex:(unint64_t)a3 withBaseFontSize:(unint64_t)a4 excludingCharacters:(id)a5;
- (_NSRange)crlaxInferredHeadingRangeForParagraphIndex:(unint64_t)a3 withBaseFontSize:(unint64_t)a4;
- (_NSRange)crlaxNextInferredHeadingRangeFromCharacterIndex:(unint64_t)a3 wrap:(BOOL)a4;
- (_NSRange)crlaxPreviousInferredHeadingRangeFromCharacterIndex:(unint64_t)a3 wrap:(BOOL)a4;
- (_NSRange)crlaxRange;
- (_NSRange)crlaxTextRangeForParagraphAtIndex:(unint64_t)a3;
- (_TtC8Freeform12CRLWPStorage)crlaxTarget;
- (id)crlaxAttachmentOrFootnoteAtCharIndex:(unint64_t)a3;
- (id)crlaxHyperLinksInRange:(_NSRange)a3;
- (id)crlaxInferredHeadingRangesWithBaseFontSize:(unint64_t)a3;
- (id)crlaxSubstringWithRange:(_NSRange)a3;
- (unint64_t)crlaxCharacterCount;
- (unint64_t)crlaxParagraphCount;
- (unint64_t)crlaxUpdatedInferredBaseFontSize;
- (unsigned)crlaxCharacterAtIndex:(unint64_t)a3;
- (void)_crlaxUpdateInferredBaseFontSize;
- (void)crlaxEnumerateSmartFieldsUsingBlock:(id)a3;
- (void)crlaxEnumerateSmartFieldsWithAttributeKind:(unint64_t)a3 inRange:(_NSRange)a4 usingBlock:(id)a5;
@end

@implementation CRLWPStorageAccessibility

- (_TtC8Freeform12CRLWPStorage)crlaxTarget
{
  v7 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v7);
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
  v2 = [(CRLWPStorageAccessibility *)self crlaxTarget];
  v3 = [v2 characterCount];

  return v3;
}

- (unint64_t)crlaxParagraphCount
{
  v2 = [(CRLWPStorageAccessibility *)self crlaxTarget];
  v3 = [v2 paragraphCount];

  return v3;
}

- (unint64_t)crlaxUpdatedInferredBaseFontSize
{
  [(CRLWPStorageAccessibility *)self _crlaxUpdateInferredBaseFontSize];

  return [(CRLWPStorageAccessibility *)self crlaxInferredBaseFontSize];
}

- (id)crlaxSubstringWithRange:(_NSRange)a3
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
  v6 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v5))
  {
    abort();
  }

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (id)crlaxAttachmentOrFootnoteAtCharIndex:(unint64_t)a3
{
  v8 = 0;
  v3 = [(CRLWPStorageAccessibility *)self attachmentOrFootnoteAtCharIndex:a3];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (void)crlaxEnumerateSmartFieldsUsingBlock:(id)a3
{
  v6 = a3;
  v4 = [(CRLWPStorageAccessibility *)self crlaxRange];
  [(CRLWPStorageAccessibility *)self crlaxEnumerateSmartFieldsWithAttributeKind:6 inRange:v4 usingBlock:v5, v6];
}

- (void)crlaxEnumerateSmartFieldsWithAttributeKind:(unint64_t)a3 inRange:(_NSRange)a4 usingBlock:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018050C;
  v6[3] = &unk_10183D380;
  v6[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = a5;
  v7 = v5;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }
}

- (NSArray)crlaxInferredHeadingRanges
{
  v3 = [(CRLWPStorageAccessibility *)self crlaxUpdatedInferredBaseFontSize];

  return [(CRLWPStorageAccessibility *)self crlaxInferredHeadingRangesWithBaseFontSize:v3];
}

- (id)crlaxInferredHeadingRangesWithBaseFontSize:(unint64_t)a3
{
  v5 = +[NSMutableArray array];
  v6 = [(CRLWPStorageAccessibility *)self crlaxParagraphCount];
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

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v13 = [(CRLWPStorageAccessibility *)self _crlaxInfferredHeadingRangeForParagraphIndex:i withBaseFontSize:a3 excludingCharacters:qword_101A34748];
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

- (_NSRange)crlaxInferredHeadingRangeForParagraphIndex:(unint64_t)a3 withBaseFontSize:(unint64_t)a4
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

  v12 = [(CRLWPStorageAccessibility *)self _crlaxInfferredHeadingRangeForParagraphIndex:a3 withBaseFontSize:a4 excludingCharacters:?];
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)_crlaxInfferredHeadingRangeForParagraphIndex:(unint64_t)a3 withBaseFontSize:(unint64_t)a4 excludingCharacters:(id)a5
{
  v7 = a5;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0;
  v10 = [(CRLWPStorageAccessibility *)self crlaxCharacterCount];
  v11 = [(CRLWPStorageAccessibility *)self crlaxTextRangeForParagraphAtIndex:a3];
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = &v11[v12];
    if (v11 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    v17 = v11;
    while (v16 != v17)
    {
      v18 = [(CRLWPStorageAccessibility *)self crlaxTarget];
      v19 = [v7 characterIsMember:{objc_msgSend(v18, "characterAtIndex:", v17)}];

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
      v21 = [(CRLWPStorageAccessibility *)self crlaxTarget];
      v22 = [v7 characterIsMember:{objc_msgSend(v21, "characterAtIndex:", v20)}];

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
          v27 = [(CRLWPStorageAccessibility *)self crlaxTarget];
          v28 = [v27 characterAtIndex:v26];

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

- (_NSRange)crlaxTextRangeForParagraphAtIndex:(unint64_t)a3
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
  v7[6] = a3;
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

- (unsigned)crlaxCharacterAtIndex:(unint64_t)a3
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
  v5[6] = a3;
  if (__CRLAccessibilityPerformSafeBlock(v5))
  {
    abort();
  }

  v3 = *(v7 + 12);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_NSRange)crlaxNextInferredHeadingRangeFromCharacterIndex:(unint64_t)a3 wrap:(BOOL)a4
{
  v4 = a4;
  v6 = [(CRLWPStorageAccessibility *)self crlaxInferredHeadingRanges];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  if ([v6 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = v4;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v25 + 1) + 8 * i) rangeValue];
          if (v14 > a3)
          {
            v17 = v14;
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
      v4 = v24;
    }

    else
    {
      v16 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v17 != 0x7FFFFFFFFFFFFFFFLL || v16 != 0 || !v4;
    v7 = v16;
    v8 = v17;
    if (!v19)
    {
      v20 = [v9 objectAtIndexedSubscript:0];
      v8 = [v20 rangeValue];
      v7 = v21;
    }
  }

  v22 = v8;
  v23 = v7;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)crlaxPreviousInferredHeadingRangeFromCharacterIndex:(unint64_t)a3 wrap:(BOOL)a4
{
  v4 = a4;
  v6 = [(CRLWPStorageAccessibility *)self crlaxInferredHeadingRanges];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  if ([v6 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v6 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = v4;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v25 + 1) + 8 * i) rangeValue];
          if (v14 + v15 <= a3)
          {
            v17 = v14;
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
      v4 = v24;
    }

    else
    {
      v16 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v17 != 0x7FFFFFFFFFFFFFFFLL || v16 != 0 || !v4;
    v7 = v16;
    v8 = v17;
    if (!v19)
    {
      v20 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];
      v8 = [v20 rangeValue];
      v7 = v21;
    }
  }

  v22 = v8;
  v23 = v7;
  result.length = v23;
  result.location = v22;
  return result;
}

- (id)crlaxHyperLinksInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(CRLWPStorageAccessibility *)self crlaxTarget];
  v6 = [v5 smartFieldsWithAttributeKind:6 intersectingRange:{location, length}];

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