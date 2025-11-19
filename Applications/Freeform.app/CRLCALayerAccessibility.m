@interface CRLCALayerAccessibility
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)description;
@end

@implementation CRLCALayerAccessibility

- (id)description
{
  v4.receiver = self;
  v4.super_class = CRLCALayerAccessibility;
  v2 = [(CRLCALayerAccessibility *)&v4 description];

  return v2;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(CRLCALayerAccessibility *)self string];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 string];
    }

    else
    {
      v4 = v3;
    }

    v5 = v4;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLCALayerAccessibility;
    v5 = [(CRLCALayerAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

- (CGRect)accessibilityFrame
{
  v3 = [(CRLCALayerAccessibility *)self crlaxAncestorOfType:NSClassFromString(@"CRLCanvasView")];
  if (v3)
  {
    v4 = self;
    [(CRLCALayerAccessibility *)v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v3 layer];
    [(CRLCALayerAccessibility *)v4 convertRect:v13 toLayer:v6, v8, v10, v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v3 crlaxFrameFromBounds:{v15, v17, v19, v21}];
  }

  else
  {
    v34.receiver = self;
    v34.super_class = CRLCALayerAccessibility;
    [(CRLCALayerAccessibility *)&v34 accessibilityFrame];
  }

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;

  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

@end