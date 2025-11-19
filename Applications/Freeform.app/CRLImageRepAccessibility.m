@interface CRLImageRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_crlaxAllowedToEditMask;
- (BOOL)accessibilityActivate;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (BOOL)supportsAlternatePressureDrag;
- (CRLImageItemAccessibility)_crlaxImageInfo;
- (CRLImageLayoutAccessibility)crlaxImageLayout;
- (CRLImageRepAccessibility)initWithLayout:(id)a3 canvas:(id)a4;
- (NSString)crlaxLabel;
- (id)accessibilityHint;
- (id)crlaxDescriptionForConnections;
- (id)crlaxKnobLabel;
- (void)editMaskWithHUD:(BOOL)a3;
@end

@implementation CRLImageRepAccessibility

- (CRLImageRepAccessibility)initWithLayout:(id)a3 canvas:(id)a4
{
  v8.receiver = self;
  v8.super_class = CRLImageRepAccessibility;
  v4 = [(CRLImageRepAccessibility *)&v8 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CRLCanvasRepAccessibility *)v4 accessibilityTraits];
    [(CRLImageRepAccessibility *)v5 setAccessibilityTraits:UIAccessibilityTraitImage | v6];
  }

  return v5;
}

- (void)editMaskWithHUD:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CRLImageRepAccessibility;
  [(CRLImageRepAccessibility *)&v6 editMaskWithHUD:?];
  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Image mask slider visible below image" value:0 table:0];
    CRLAccessibilityPostHighPriorityAnnouncementNotification(0, v5);
  }
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = CRLImageRepAccessibility;
  return [(CRLImageRepAccessibility *)&v9 handleDoubleTapAtPoint:a4 inputType:x, y];
}

- (BOOL)supportsAlternatePressureDrag
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLImageRepAccessibility;
  return [(CRLImageRepAccessibility *)&v4 supportsAlternatePressureDrag];
}

- (id)accessibilityHint
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  if (([v3 crlaxDocumentIsSharedReadOnly] & 1) != 0 || !-[CRLCanvasRepAccessibility crlaxIsSelected](self, "crlaxIsSelected"))
  {
  }

  else
  {
    v4 = [(CRLImageRepAccessibility *)self _crlaxAllowedToEditMask];

    if (v4)
    {
      v5 = [(CRLImageRepAccessibility *)self crlaxImageLayout];
      v6 = [v5 crlaxIsInMaskEditMode];

      v7 = +[NSBundle mainBundle];
      v8 = v7;
      if (v6)
      {
        v9 = @"Image mask slider visible below image";
      }

      else
      {
        v9 = @"Double tap to view image";
      }

      v10 = [v7 localizedStringForKey:v9 value:0 table:0];

      goto LABEL_8;
    }
  }

  v12.receiver = self;
  v12.super_class = CRLImageRepAccessibility;
  v10 = [(CRLCanvasRepAccessibility *)&v12 accessibilityHint];
LABEL_8:

  return v10;
}

- (BOOL)accessibilityActivate
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsSelected])
  {
    [(CRLCanvasRepAccessibility *)self accessibilityActivationPoint];
    v6.receiver = self;
    v6.super_class = CRLImageRepAccessibility;
    v3 = 1;
    [(CRLImageRepAccessibility *)&v6 handleDoubleTapAtPoint:1 inputType:?];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLImageRepAccessibility;
    return [(CRLCanvasRepAccessibility *)&v5 accessibilityActivate];
  }

  return v3;
}

- (BOOL)_crlaxAllowedToEditMask
{
  v2 = [(CRLImageRepAccessibility *)self crlaxTarget];
  v3 = [v2 i_allowedToEditMask];

  return v3;
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CRLImageLayoutAccessibility)crlaxImageLayout
{
  v8 = 0;
  v2 = [(CRLImageRepAccessibility *)self crlaxTarget];
  v3 = [v2 imageLayout];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (NSString)crlaxLabel
{
  v2 = [(CRLImageRepAccessibility *)self crlaxTarget];
  v3 = [v2 imageInfo];

  v4 = [v3 accessibilityDescription];
  if (![v4 length])
  {
    v5 = [v3 imageAssetPayload];
    v6 = [v5 filename];

    v4 = v6;
  }

  v7 = [v3 localizedName];
  v14 = __CRLAccessibilityStringForVariables(1, v7, v8, v9, v10, v11, v12, v13, v4);

  return v14;
}

- (id)crlaxDescriptionForConnections
{
  v3 = [(CRLImageRepAccessibility *)self crlaxTarget];
  v4 = [v3 imageInfo];
  v5 = [v4 imageAssetPayload];
  v6 = [v5 filename];
  v7 = [(CRLCanvasRepAccessibility *)self crlaxDefaultDescriptionForConnections];
  v8 = [(CRLCanvasRepAccessibility *)self crlaxRemoveExtensionFromFile:v6 inString:v7];

  return v8;
}

- (id)crlaxKnobLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Image" value:0 table:0];

  return v3;
}

- (CRLImageItemAccessibility)_crlaxImageInfo
{
  v8 = 0;
  v2 = [(CRLImageRepAccessibility *)self crlaxTarget];
  v3 = [v2 imageInfo];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end