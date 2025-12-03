@interface CRLWPShapeRepAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxCanBeOccludedForConnectionKnobDraggingByRep:(id)rep;
- (BOOL)crlaxCanBeginEditingChildRepOnDoubleTap:(id)tap;
- (BOOL)crlaxCanOccludeConnectionKnobDragging;
- (BOOL)crlaxIsEditingChildRep;
- (BOOL)crlaxIsTextboxRep;
- (BOOL)crlaxNeedsFormatEditOperation;
- (BOOL)crlaxShouldCreateKnobs;
- (BOOL)isAccessibilityElement;
- (CRLTextRepAccessibility)crlaxContainedRep;
- (CRLWPShapeItemAccessibility)crlaxInfo;
- (NSString)crlaxContainedRepText;
- (NSString)crlaxFillColorDescription;
- (NSString)crlaxLabel;
- (NSString)crlaxStrokeDescription;
- (id)_crlaxDescriptionForVerticalAlignment;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityUserInputLabels;
- (id)crlaxCollaboratorDescription;
- (id)crlaxDescriptionForConnections;
- (id)crlaxFocusedElement;
- (id)crlaxSummaryDescription;
- (void)crlaxBeginEditingAtEnd;
- (void)crlaxLoadChildrenIntoCollection:(id)collection;
- (void)crlaxShapeRepWillBeginEditingContainedRep:(id)rep;
- (void)willBeginEditingContainedInfo:(id)info;
@end

@implementation CRLWPShapeRepAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)crlaxIsTextboxRep
{
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];
  isAutogrowingTextBox = [info isAutogrowingTextBox];

  return isAutogrowingTextBox;
}

- (NSString)crlaxLabel
{
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];

  if ([(CRLWPShapeRepAccessibility *)self crlaxIsTextboxRep])
  {
    [info localizedName];
  }

  else
  {
    [info crlaxLocalizedName];
  }
  v5 = ;
  accessibilityDescription = [info accessibilityDescription];
  v12 = __CRLAccessibilityStringForVariables(1, 0, v6, v7, v8, v9, v10, v11, v5);

  return v12;
}

- (id)accessibilityUserInputLabels
{
  crlaxLabel = [(CRLWPShapeRepAccessibility *)self crlaxLabel];
  v11 = crlaxLabel;
  v4 = [NSArray arrayWithObjects:&v11 count:1];

  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];

  if ([info isLine])
  {
    crlaxLocalizedName = [info crlaxLocalizedName];
    v10 = crlaxLocalizedName;
    v8 = [NSArray arrayWithObjects:&v10 count:1];

    v4 = v8;
  }

  return v4;
}

- (id)accessibilityCustomContent
{
  v36.receiver = self;
  v36.super_class = CRLWPShapeRepAccessibility;
  accessibilityCustomContent = [(CRLCanvasRepAccessibility *)&v36 accessibilityCustomContent];
  v4 = [accessibilityCustomContent mutableCopy];

  crlaxFillColorDescription = [(CRLWPShapeRepAccessibility *)self crlaxFillColorDescription];
  if ([crlaxFillColorDescription length])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Fill color" value:0 table:0];
    v8 = [AXCustomContent customContentWithLabel:v7 value:crlaxFillColorDescription];
    [v4 addObject:v8];
  }

  crlaxStrokeDescription = [(CRLWPShapeRepAccessibility *)self crlaxStrokeDescription];
  if ([crlaxStrokeDescription length])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Stroke" value:0 table:0];
    v12 = [AXCustomContent customContentWithLabel:v11 value:crlaxStrokeDescription];
    [v4 addObject:v12];
  }

  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];

  if ([info isLine])
  {
    v15 = objc_opt_class();
    tailLineEnd = [info tailLineEnd];
    v17 = __CRLAccessibilityCastAsSafeCategory(v15, tailLineEnd, 0, 0);

    if (v17)
    {
      crlaxStyleInfoDescription = [v17 crlaxStyleInfoDescription];
      if ([crlaxStyleInfoDescription length])
      {
        +[NSBundle mainBundle];
        v20 = v19 = crlaxFillColorDescription;
        v21 = [v20 localizedStringForKey:@"Tail line end" value:0 table:0];
        v22 = [AXCustomContent customContentWithLabel:v21 value:crlaxStyleInfoDescription];
        [v4 addObject:v22];

        crlaxFillColorDescription = v19;
      }
    }

    v23 = objc_opt_class();
    headLineEnd = [info headLineEnd];
    v25 = __CRLAccessibilityCastAsSafeCategory(v23, headLineEnd, 0, 0);

    if (v25)
    {
      crlaxStyleInfoDescription2 = [v25 crlaxStyleInfoDescription];
      if ([crlaxStyleInfoDescription2 length])
      {
        v35 = crlaxFillColorDescription;
        v27 = +[NSBundle mainBundle];
        v28 = [v27 localizedStringForKey:@"Head line end" value:0 table:0];
        v29 = [AXCustomContent customContentWithLabel:v28 value:crlaxStyleInfoDescription2];
        [v4 addObject:v29];

        crlaxFillColorDescription = v35;
      }
    }
  }

  _crlaxDescriptionForVerticalAlignment = [(CRLWPShapeRepAccessibility *)self _crlaxDescriptionForVerticalAlignment];
  if ([_crlaxDescriptionForVerticalAlignment length])
  {
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"Vertical text alignment" value:0 table:0];
    v33 = [AXCustomContent customContentWithLabel:v32 value:_crlaxDescriptionForVerticalAlignment];
    [v4 addObject:v33];
  }

  return v4;
}

- (CRLWPShapeItemAccessibility)crlaxInfo
{
  v8 = 0;
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, info, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLTextRepAccessibility)crlaxContainedRep
{
  v8 = 0;
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  textRep = [crlaxTarget textRep];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, textRep, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxIsEditingChildRep
{
  crlaxContainedRep = [(CRLWPShapeRepAccessibility *)self crlaxContainedRep];

  if (!crlaxContainedRep)
  {
    return 0;
  }

  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  isEditingChildRep = [crlaxTarget isEditingChildRep];

  return isEditingChildRep;
}

- (NSString)crlaxFillColorDescription
{
  v14 = 0;
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxTarget = [crlaxLayout crlaxTarget];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, crlaxTarget, 1, &v14);
  if (v14 == 1 || (v6 = v5, crlaxTarget, v13 = 0, [v6 fill], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v8, v7, 1, &v13), v9 = objc_claimAutoreleasedReturnValue(), v13 == 1))
  {
    abort();
  }

  v10 = v9;

  crlaxColorFillNameWithOpacity = [v10 crlaxColorFillNameWithOpacity];

  return crlaxColorFillNameWithOpacity;
}

- (NSString)crlaxStrokeDescription
{
  v15 = 0;
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxTarget = [crlaxLayout crlaxTarget];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, crlaxTarget, 1, &v15);
  if (v15 == 1 || (v6 = v5, crlaxTarget, v14 = 0, [v6 styledInfo], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stroke"), v8 = objc_claimAutoreleasedReturnValue(), v7, v9 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v9, v8, 1, &v14), v10 = objc_claimAutoreleasedReturnValue(), v14 == 1))
  {
    abort();
  }

  v11 = v10;

  crlaxStrokeFullDescription = [v11 crlaxStrokeFullDescription];

  return crlaxStrokeFullDescription;
}

- (NSString)crlaxContainedRepText
{
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  containedRep = [crlaxTarget containedRep];
  storage = [containedRep storage];
  crlaxString = [storage crlaxString];

  return crlaxString;
}

- (BOOL)crlaxCanOccludeConnectionKnobDragging
{
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  parentRep = [crlaxTarget parentRep];
  v4 = parentRep == 0;

  return v4;
}

- (BOOL)crlaxCanBeOccludedForConnectionKnobDraggingByRep:(id)rep
{
  repCopy = rep;
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  containedRep = [crlaxTarget containedRep];
  crlaxTarget2 = [repCopy crlaxTarget];

  return containedRep != crlaxTarget2;
}

- (BOOL)crlaxCanBeginEditingChildRepOnDoubleTap:(id)tap
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100119608;
  v6[3] = &unk_10183DE60;
  v8 = &v9;
  v6[4] = self;
  tapCopy = tap;
  v7 = tapCopy;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }

  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)willBeginEditingContainedInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = CRLWPShapeRepAccessibility;
  [(CRLWPShapeRepAccessibility *)&v4 willBeginEditingContainedInfo:info];
  if ([(CRLWPShapeRepAccessibility *)self crlaxRespondsToSelector:"crlaxShapeRepWillBeginEditingContainedRep:" fromOptionalExtrasProtocol:&OBJC_PROTOCOL___CRLWPShapeRepAccessibilityExtras])
  {
    [(CRLWPShapeRepAccessibility *)self crlaxShapeRepWillBeginEditingContainedRep:self];
  }
}

- (void)crlaxBeginEditingAtEnd
{
  crlaxContainedRep = [(CRLWPShapeRepAccessibility *)self crlaxContainedRep];
  crlaxStorage = [crlaxContainedRep crlaxStorage];
  crlaxTarget = [crlaxStorage crlaxTarget];

  range = [crlaxTarget range];
  v7 = v6;
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget2 = [crlaxInteractiveCanvasController crlaxTarget];
  selectionModelTranslator = [crlaxTarget2 selectionModelTranslator];
  v11 = [selectionModelTranslator selectionPathForRange:&range[v7] onStorage:{0, crlaxTarget}];

  crlaxInteractiveCanvasController2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxEditorController = [crlaxInteractiveCanvasController2 crlaxEditorController];
  crlaxTarget3 = [crlaxEditorController crlaxTarget];
  [crlaxTarget3 setSelectionPath:v11 withFlags:6];
}

- (id)crlaxSummaryDescription
{
  crlaxIsTextboxRep = [(CRLWPShapeRepAccessibility *)self crlaxIsTextboxRep];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (crlaxIsTextboxRep)
  {
    v6 = [v4 localizedStringForKey:@"Text box: %1$@" value:0 table:0];
    crlaxContainedRep = [(CRLWPShapeRepAccessibility *)self crlaxContainedRep];
    [crlaxContainedRep crlaxSummaryDescription];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"%1$@ shape" value:0 table:0];
    crlaxContainedRep = [(CRLShapeRepAccessibility *)self crlaxShapeInfo];
    [crlaxContainedRep crlaxShapeTypeLabel];
  }
  v8 = ;
  v9 = [NSString stringWithFormat:v6, v8];

  return v9;
}

- (id)crlaxCollaboratorDescription
{
  v8.receiver = self;
  v8.super_class = CRLWPShapeRepAccessibility;
  crlaxCollaboratorDescription = [(CRLCanvasRepAccessibility *)&v8 crlaxCollaboratorDescription];
  crlaxContainedRep = [(CRLWPShapeRepAccessibility *)self crlaxContainedRep];
  crlaxCollaboratorDescriptionDirect = [crlaxContainedRep crlaxCollaboratorDescriptionDirect];

  if ([crlaxCollaboratorDescriptionDirect length])
  {
    v6 = crlaxCollaboratorDescriptionDirect;

    crlaxCollaboratorDescription = v6;
  }

  return crlaxCollaboratorDescription;
}

- (id)_crlaxDescriptionForVerticalAlignment
{
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  layoutsForChildReps = [crlaxTarget layoutsForChildReps];

  if ([layoutsForChildReps count] == 1)
  {
    v10 = 0;
    firstObject = [layoutsForChildReps firstObject];
    v5 = objc_opt_class();
    v6 = __CRLAccessibilityCastAsClass(v5, firstObject, 1, &v10);
    if (v10 == 1)
    {
      abort();
    }

    v7 = v6;

    if (v7)
    {
      v8 = +[NSString crlwpax_descriptionForVerticalAlignment:](NSString, "crlwpax_descriptionForVerticalAlignment:", [v7 verticalAlignment]);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAccessibilityElement
{
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  shapeLayout = [crlaxTarget shapeLayout];
  pathIsOpen = [shapeLayout pathIsOpen];
  if (pathIsOpen)
  {
    crlaxTarget2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
    containedRep = [crlaxTarget2 containedRep];
    if (!containedRep)
    {

      return 1;
    }

    v3 = containedRep;
  }

  crlaxTarget3 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  shapeLayout2 = [crlaxTarget3 shapeLayout];
  pathIsLineSegment = [shapeLayout2 pathIsLineSegment];

  if (pathIsOpen)
  {
  }

  if (pathIsLineSegment)
  {
    return 1;
  }

  crlaxTarget4 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  containedRep2 = [crlaxTarget4 containedRep];

  if (containedRep2)
  {
    return 0;
  }

  v15.receiver = self;
  v15.super_class = CRLWPShapeRepAccessibility;
  return [(CRLShapeRepAccessibility *)&v15 isAccessibilityElement];
}

- (void)crlaxLoadChildrenIntoCollection:(id)collection
{
  collectionCopy = collection;
  v6.receiver = self;
  v6.super_class = CRLWPShapeRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v6 crlaxLoadChildrenIntoCollection:collectionCopy];
  v5 = -1;
  do
  {
    ++v5;
  }

  while (v5 < [collectionCopy count]);
}

- (id)crlaxFocusedElement
{
  v11 = 0;
  v3 = [(CRLCanvasRepAccessibility *)self crlaxValueForKey:@"containedRep"];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v11);
  if (v11 == 1)
  {
    abort();
  }

  v6 = v5;

  if (v6)
  {
    crlaxFocusedElement = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLWPShapeRepAccessibility;
    crlaxFocusedElement = [(CRLCanvasRepAccessibility *)&v10 crlaxFocusedElement];
  }

  v8 = crlaxFocusedElement;

  return v8;
}

- (BOOL)crlaxShouldCreateKnobs
{
  crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  textRep = [crlaxTarget textRep];

  return textRep == 0;
}

- (BOOL)crlaxNeedsFormatEditOperation
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsSelected]|| [(CRLCanvasRepAccessibility *)self crlaxIsSelectedIgnoringLocking])
  {
    crlaxTarget = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
    if ([crlaxTarget isEditingChildRep])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(CRLCanvasRepAccessibility *)self crlaxIsInDrawingMode];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)crlaxDescriptionForConnections
{
  v3 = objc_alloc_init(NSMutableArray);
  accessibilityLabel = [(CRLCanvasRepAccessibility *)self accessibilityLabel];
  if ([accessibilityLabel length])
  {
    [v3 addObject:accessibilityLabel];
  }

  crlaxContainedRepText = [(CRLWPShapeRepAccessibility *)self crlaxContainedRepText];
  if ([crlaxContainedRepText length])
  {
    [v3 addObject:crlaxContainedRepText];
  }

  if ([v3 count])
  {
    v6 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)crlaxShapeRepWillBeginEditingContainedRep:(id)rep
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasViewController = [crlaxInteractiveCanvasController crlaxCanvasViewController];
  [crlaxCanvasViewController crlaxCancelEyeDropperMode];
}

- (id)accessibilityCustomActions
{
  v6.receiver = self;
  v6.super_class = CRLWPShapeRepAccessibility;
  accessibilityCustomActions = [(CRLCanvasRepAccessibility *)&v6 accessibilityCustomActions];
  v3 = [accessibilityCustomActions mutableCopy];

  v4 = [v3 copy];

  return v4;
}

@end