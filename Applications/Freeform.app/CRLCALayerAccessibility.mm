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
    string = [(CRLCALayerAccessibility *)self string];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3String = [string string];
    }

    else
    {
      v3String = string;
    }

    accessibilityLabel = v3String;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLCALayerAccessibility;
    accessibilityLabel = [(CRLCALayerAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (CGRect)accessibilityFrame
{
  v3 = [(CRLCALayerAccessibility *)self crlaxAncestorOfType:NSClassFromString(@"CRLCanvasView")];
  if (v3)
  {
    selfCopy = self;
    [(CRLCALayerAccessibility *)selfCopy bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    layer = [v3 layer];
    [(CRLCALayerAccessibility *)selfCopy convertRect:layer toLayer:v6, v8, v10, v12];
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