@interface CRLWPSelectionAccessibility
+ (id)crlaxCastFrom:(id)from;
+ (id)crlaxSelectionWithRange:(_NSRange)range;
- (BOOL)crlaxIsInsertionPoint;
- (BOOL)crlaxIsValid;
- (_NSRange)crlaxRange;
- (unint64_t)crlaxStart;
@end

@implementation CRLWPSelectionAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

+ (id)crlaxSelectionWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
  v7[5] = [self crlaxTargetClass];
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
  crlaxTarget = [(CRLWPSelectionAccessibility *)self crlaxTarget];
  range = [crlaxTarget range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)crlaxIsInsertionPoint
{
  crlaxTarget = [(CRLWPSelectionAccessibility *)self crlaxTarget];
  isInsertionPoint = [crlaxTarget isInsertionPoint];

  return isInsertionPoint;
}

- (BOOL)crlaxIsValid
{
  crlaxTarget = [(CRLWPSelectionAccessibility *)self crlaxTarget];
  isValid = [crlaxTarget isValid];

  return isValid;
}

- (unint64_t)crlaxStart
{
  crlaxTarget = [(CRLWPSelectionAccessibility *)self crlaxTarget];
  start = [crlaxTarget start];

  return start;
}

@end