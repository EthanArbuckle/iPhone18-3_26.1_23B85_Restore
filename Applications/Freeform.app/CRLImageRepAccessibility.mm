@interface CRLImageRepAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_crlaxAllowedToEditMask;
- (BOOL)accessibilityActivate;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (BOOL)supportsAlternatePressureDrag;
- (CRLImageItemAccessibility)_crlaxImageInfo;
- (CRLImageLayoutAccessibility)crlaxImageLayout;
- (CRLImageRepAccessibility)initWithLayout:(id)layout canvas:(id)canvas;
- (NSString)crlaxLabel;
- (id)accessibilityHint;
- (id)crlaxDescriptionForConnections;
- (id)crlaxKnobLabel;
- (void)editMaskWithHUD:(BOOL)d;
@end

@implementation CRLImageRepAccessibility

- (CRLImageRepAccessibility)initWithLayout:(id)layout canvas:(id)canvas
{
  v8.receiver = self;
  v8.super_class = CRLImageRepAccessibility;
  v4 = [(CRLImageRepAccessibility *)&v8 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (v4)
  {
    accessibilityTraits = [(CRLCanvasRepAccessibility *)v4 accessibilityTraits];
    [(CRLImageRepAccessibility *)v5 setAccessibilityTraits:UIAccessibilityTraitImage | accessibilityTraits];
  }

  return v5;
}

- (void)editMaskWithHUD:(BOOL)d
{
  dCopy = d;
  v6.receiver = self;
  v6.super_class = CRLImageRepAccessibility;
  [(CRLImageRepAccessibility *)&v6 editMaskWithHUD:?];
  if (dCopy)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Image mask slider visible below image" value:0 table:0];
    CRLAccessibilityPostHighPriorityAnnouncementNotification(0, v5);
  }
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  y = point.y;
  x = point.x;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = CRLImageRepAccessibility;
  return [(CRLImageRepAccessibility *)&v9 handleDoubleTapAtPoint:type inputType:x, y];
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
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  if (([crlaxInteractiveCanvasController crlaxDocumentIsSharedReadOnly] & 1) != 0 || !-[CRLCanvasRepAccessibility crlaxIsSelected](self, "crlaxIsSelected"))
  {
  }

  else
  {
    _crlaxAllowedToEditMask = [(CRLImageRepAccessibility *)self _crlaxAllowedToEditMask];

    if (_crlaxAllowedToEditMask)
    {
      crlaxImageLayout = [(CRLImageRepAccessibility *)self crlaxImageLayout];
      crlaxIsInMaskEditMode = [crlaxImageLayout crlaxIsInMaskEditMode];

      v7 = +[NSBundle mainBundle];
      v8 = v7;
      if (crlaxIsInMaskEditMode)
      {
        v9 = @"Image mask slider visible below image";
      }

      else
      {
        v9 = @"Double tap to view image";
      }

      accessibilityHint = [v7 localizedStringForKey:v9 value:0 table:0];

      goto LABEL_8;
    }
  }

  v12.receiver = self;
  v12.super_class = CRLImageRepAccessibility;
  accessibilityHint = [(CRLCanvasRepAccessibility *)&v12 accessibilityHint];
LABEL_8:

  return accessibilityHint;
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
  crlaxTarget = [(CRLImageRepAccessibility *)self crlaxTarget];
  i_allowedToEditMask = [crlaxTarget i_allowedToEditMask];

  return i_allowedToEditMask;
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLImageLayoutAccessibility)crlaxImageLayout
{
  v8 = 0;
  crlaxTarget = [(CRLImageRepAccessibility *)self crlaxTarget];
  imageLayout = [crlaxTarget imageLayout];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, imageLayout, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (NSString)crlaxLabel
{
  crlaxTarget = [(CRLImageRepAccessibility *)self crlaxTarget];
  imageInfo = [crlaxTarget imageInfo];

  accessibilityDescription = [imageInfo accessibilityDescription];
  if (![accessibilityDescription length])
  {
    imageAssetPayload = [imageInfo imageAssetPayload];
    filename = [imageAssetPayload filename];

    accessibilityDescription = filename;
  }

  localizedName = [imageInfo localizedName];
  v14 = __CRLAccessibilityStringForVariables(1, localizedName, v8, v9, v10, v11, v12, v13, accessibilityDescription);

  return v14;
}

- (id)crlaxDescriptionForConnections
{
  crlaxTarget = [(CRLImageRepAccessibility *)self crlaxTarget];
  imageInfo = [crlaxTarget imageInfo];
  imageAssetPayload = [imageInfo imageAssetPayload];
  filename = [imageAssetPayload filename];
  crlaxDefaultDescriptionForConnections = [(CRLCanvasRepAccessibility *)self crlaxDefaultDescriptionForConnections];
  v8 = [(CRLCanvasRepAccessibility *)self crlaxRemoveExtensionFromFile:filename inString:crlaxDefaultDescriptionForConnections];

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
  crlaxTarget = [(CRLImageRepAccessibility *)self crlaxTarget];
  imageInfo = [crlaxTarget imageInfo];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, imageInfo, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end