@interface CRLWPSelectionAccessibility
+ (id)crlaxCastFrom:(id)a3;
+ (id)crlaxSelectionWithRange:(_NSRange)a3;
- (BOOL)crlaxIsInsertionPoint;
- (BOOL)crlaxIsValid;
- (_NSRange)crlaxRange;
- (unint64_t)crlaxStart;
@end

@implementation CRLWPSelectionAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

+ (id)crlaxSelectionWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10041FE40;
  v12 = sub_10041FE50;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10041FE58;
  v7[3] = &unk_1018615B0;
  v7[4] = &v8;
  v7[5] = [a1 crlaxTargetClass];
  v7[6] = location;
  v7[7] = length;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (_NSRange)crlaxRange
{
  v2 = [(CRLWPSelectionAccessibility *)self crlaxTarget];
  v3 = [v2 range];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)crlaxIsInsertionPoint
{
  v2 = [(CRLWPSelectionAccessibility *)self crlaxTarget];
  v3 = [v2 isInsertionPoint];

  return v3;
}

- (BOOL)crlaxIsValid
{
  v2 = [(CRLWPSelectionAccessibility *)self crlaxTarget];
  v3 = [v2 isValid];

  return v3;
}

- (unint64_t)crlaxStart
{
  v2 = [(CRLWPSelectionAccessibility *)self crlaxTarget];
  v3 = [v2 start];

  return v3;
}

@end