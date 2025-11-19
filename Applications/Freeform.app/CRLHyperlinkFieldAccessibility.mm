@interface CRLHyperlinkFieldAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CGRect)accessibilityFrame;
- (NSString)crlaxLinkTitle;
- (NSURL)crlaxLinkURL;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CRLHyperlinkFieldAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxLinkTitle
{
  v2 = [(CRLHyperlinkFieldAccessibility *)self crlaxTarget];
  v3 = [v2 displayText];

  return v3;
}

- (NSURL)crlaxLinkURL
{
  v2 = [(CRLHyperlinkFieldAccessibility *)self crlaxTarget];
  v3 = [v2 url];

  return v3;
}

- (id)accessibilityLabel
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100556B54;
  v18 = sub_100556B64;
  v19 = 0;
  v3 = [(CRLWPSmartFieldAccessibility *)self crlaxParentTextRep];
  v5 = [(CRLWPSmartFieldAccessibility *)self crlaxFieldRange];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    if (v4)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100556B6C;
      v9[3] = &unk_1018427D8;
      v11 = &v14;
      v10 = v3;
      v12 = v5;
      v13 = v6;
      if (__CRLAccessibilityPerformSafeBlock(v9))
      {
        abort();
      }
    }
  }

  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CRLHyperlinkFieldAccessibility;
  return UIAccessibilityTraitLink | [(CRLHyperlinkFieldAccessibility *)&v3 accessibilityTraits];
}

- (CGRect)accessibilityFrame
{
  LOBYTE(v41) = 0;
  v3 = [(CRLWPSmartFieldAccessibility *)self crlaxParentTextRep];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v41);
  if (v41 == 1)
  {
    goto LABEL_8;
  }

  v6 = v5;

  v7 = [v6 crlaxInteractiveCanvasController];
  LOBYTE(v41) = 0;
  v8 = [v7 crlaxCanvasView];
  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsClass(v9, v8, 1, &v41);
  if (v41 == 1)
  {
    goto LABEL_8;
  }

  v11 = v10;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;

  v16 = [(CRLHyperlinkFieldAccessibility *)self crlaxRangeValueForKey:@"range"];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v17;
    if (v17)
    {
      v19 = v16;
      v41 = 0;
      v42 = &v41;
      v43 = 0x4010000000;
      v44 = &unk_1016A8115;
      v45 = 0u;
      v46 = 0u;
      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_100556E40;
      v36 = &unk_1018427D8;
      v38 = &v41;
      v20 = v6;
      v37 = v20;
      v39 = v19;
      v40 = v18;
      if (!__CRLAccessibilityPerformSafeBlock(&v33))
      {

        v21 = v42[4];
        v22 = v42[5];
        v23 = v42[6];
        v24 = v42[7];
        _Block_object_dispose(&v41, 8);
        [v20 crlaxConvertNaturalRectToUnscaledCanvas:{v21, v22, v23, v24, v33, v34, v35, v36}];
        [v7 crlaxConvertUnscaledToBoundsRect:?];
        [v11 crlaxFrameFromBounds:?];
        x = v25;
        y = v26;
        width = v27;
        height = v28;
        goto LABEL_7;
      }

LABEL_8:
      abort();
    }
  }

LABEL_7:

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

@end