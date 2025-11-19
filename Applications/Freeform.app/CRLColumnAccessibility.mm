@interface CRLColumnAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CGRect)crlaxColumnRectForRange:(_NSRange)a3;
- (CGRect)crlaxGlyphRectForRange:(_NSRange)a3 includingLabel:(BOOL)a4;
- (_NSRange)crlaxRange;
- (_NSRange)crlaxRangeOfLineFragmentAtIndex:(unint64_t)a3;
- (unint64_t)crlaxLineCount;
- (unint64_t)crlaxLineIndexForCharIndex:(unint64_t)a3 eol:(BOOL)a4;
@end

@implementation CRLColumnAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (_NSRange)crlaxRange
{
  v2 = [(CRLColumnAccessibility *)self crlaxTarget];
  v3 = [v2 range];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (unint64_t)crlaxLineCount
{
  v2 = [(CRLColumnAccessibility *)self crlaxTarget];
  v3 = [v2 lineCount];

  return v3;
}

- (CGRect)crlaxColumnRectForRange:(_NSRange)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_1016A8115;
  v17 = 0u;
  v18 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B9B80;
  v11[3] = &unk_1018427D8;
  v11[4] = self;
  v11[5] = &v13;
  v12 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v11))
  {
    abort();
  }

  v3 = v14[4];
  v4 = v14[5];
  v5 = v14[6];
  v6 = v14[7];
  _Block_object_dispose(&v13, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)crlaxGlyphRectForRange:(_NSRange)a3 includingLabel:(BOOL)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = &unk_1016A8115;
  v19 = 0u;
  v20 = 0u;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B9CB8;
  v12[3] = &unk_101845388;
  v12[4] = self;
  v12[5] = &v15;
  v13 = a3;
  v14 = a4;
  if (__CRLAccessibilityPerformSafeBlock(v12))
  {
    abort();
  }

  v4 = v16[4];
  v5 = v16[5];
  v6 = v16[6];
  v7 = v16[7];
  _Block_object_dispose(&v15, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (_NSRange)crlaxRangeOfLineFragmentAtIndex:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_1016A8115;
  v12 = 0;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B9DD0;
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

- (unint64_t)crlaxLineIndexForCharIndex:(unint64_t)a3 eol:(BOOL)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B9ED4;
  v6[3] = &unk_10183B6B8;
  v6[4] = self;
  v6[5] = &v8;
  v6[6] = a3;
  v7 = a4;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

@end