@interface CRLWPShapeRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxCanBeOccludedForConnectionKnobDraggingByRep:(id)a3;
- (BOOL)crlaxCanBeginEditingChildRepOnDoubleTap:(id)a3;
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
- (void)crlaxLoadChildrenIntoCollection:(id)a3;
- (void)crlaxShapeRepWillBeginEditingContainedRep:(id)a3;
- (void)willBeginEditingContainedInfo:(id)a3;
@end

@implementation CRLWPShapeRepAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)crlaxIsTextboxRep
{
  v2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 info];
  v4 = [v3 isAutogrowingTextBox];

  return v4;
}

- (NSString)crlaxLabel
{
  v3 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v4 = [v3 info];

  if ([(CRLWPShapeRepAccessibility *)self crlaxIsTextboxRep])
  {
    [v4 localizedName];
  }

  else
  {
    [v4 crlaxLocalizedName];
  }
  v5 = ;
  v14 = [v4 accessibilityDescription];
  v12 = __CRLAccessibilityStringForVariables(1, 0, v6, v7, v8, v9, v10, v11, v5);

  return v12;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(CRLWPShapeRepAccessibility *)self crlaxLabel];
  v11 = v3;
  v4 = [NSArray arrayWithObjects:&v11 count:1];

  v5 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v6 = [v5 info];

  if ([v6 isLine])
  {
    v7 = [v6 crlaxLocalizedName];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];

    v4 = v8;
  }

  return v4;
}

- (id)accessibilityCustomContent
{
  v36.receiver = self;
  v36.super_class = CRLWPShapeRepAccessibility;
  v3 = [(CRLCanvasRepAccessibility *)&v36 accessibilityCustomContent];
  v4 = [v3 mutableCopy];

  v5 = [(CRLWPShapeRepAccessibility *)self crlaxFillColorDescription];
  if ([v5 length])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Fill color" value:0 table:0];
    v8 = [AXCustomContent customContentWithLabel:v7 value:v5];
    [v4 addObject:v8];
  }

  v9 = [(CRLWPShapeRepAccessibility *)self crlaxStrokeDescription];
  if ([v9 length])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Stroke" value:0 table:0];
    v12 = [AXCustomContent customContentWithLabel:v11 value:v9];
    [v4 addObject:v12];
  }

  v13 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v14 = [v13 info];

  if ([v14 isLine])
  {
    v15 = objc_opt_class();
    v16 = [v14 tailLineEnd];
    v17 = __CRLAccessibilityCastAsSafeCategory(v15, v16, 0, 0);

    if (v17)
    {
      v18 = [v17 crlaxStyleInfoDescription];
      if ([v18 length])
      {
        +[NSBundle mainBundle];
        v20 = v19 = v5;
        v21 = [v20 localizedStringForKey:@"Tail line end" value:0 table:0];
        v22 = [AXCustomContent customContentWithLabel:v21 value:v18];
        [v4 addObject:v22];

        v5 = v19;
      }
    }

    v23 = objc_opt_class();
    v24 = [v14 headLineEnd];
    v25 = __CRLAccessibilityCastAsSafeCategory(v23, v24, 0, 0);

    if (v25)
    {
      v26 = [v25 crlaxStyleInfoDescription];
      if ([v26 length])
      {
        v35 = v5;
        v27 = +[NSBundle mainBundle];
        v28 = [v27 localizedStringForKey:@"Head line end" value:0 table:0];
        v29 = [AXCustomContent customContentWithLabel:v28 value:v26];
        [v4 addObject:v29];

        v5 = v35;
      }
    }
  }

  v30 = [(CRLWPShapeRepAccessibility *)self _crlaxDescriptionForVerticalAlignment];
  if ([v30 length])
  {
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"Vertical text alignment" value:0 table:0];
    v33 = [AXCustomContent customContentWithLabel:v32 value:v30];
    [v4 addObject:v33];
  }

  return v4;
}

- (CRLWPShapeItemAccessibility)crlaxInfo
{
  v8 = 0;
  v2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 info];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
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
  v2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 textRep];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxIsEditingChildRep
{
  v3 = [(CRLWPShapeRepAccessibility *)self crlaxContainedRep];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v5 = [v4 isEditingChildRep];

  return v5;
}

- (NSString)crlaxFillColorDescription
{
  v14 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v3 = [v2 crlaxTarget];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v14);
  if (v14 == 1 || (v6 = v5, v3, v13 = 0, [v6 fill], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v8, v7, 1, &v13), v9 = objc_claimAutoreleasedReturnValue(), v13 == 1))
  {
    abort();
  }

  v10 = v9;

  v11 = [v10 crlaxColorFillNameWithOpacity];

  return v11;
}

- (NSString)crlaxStrokeDescription
{
  v15 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v3 = [v2 crlaxTarget];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v15);
  if (v15 == 1 || (v6 = v5, v3, v14 = 0, [v6 styledInfo], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stroke"), v8 = objc_claimAutoreleasedReturnValue(), v7, v9 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v9, v8, 1, &v14), v10 = objc_claimAutoreleasedReturnValue(), v14 == 1))
  {
    abort();
  }

  v11 = v10;

  v12 = [v11 crlaxStrokeFullDescription];

  return v12;
}

- (NSString)crlaxContainedRepText
{
  v2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 containedRep];
  v4 = [v3 storage];
  v5 = [v4 crlaxString];

  return v5;
}

- (BOOL)crlaxCanOccludeConnectionKnobDragging
{
  v2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 parentRep];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)crlaxCanBeOccludedForConnectionKnobDraggingByRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v6 = [v5 containedRep];
  v7 = [v4 crlaxTarget];

  return v6 != v7;
}

- (BOOL)crlaxCanBeginEditingChildRepOnDoubleTap:(id)a3
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
  v3 = a3;
  v7 = v3;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }

  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)willBeginEditingContainedInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLWPShapeRepAccessibility;
  [(CRLWPShapeRepAccessibility *)&v4 willBeginEditingContainedInfo:a3];
  if ([(CRLWPShapeRepAccessibility *)self crlaxRespondsToSelector:"crlaxShapeRepWillBeginEditingContainedRep:" fromOptionalExtrasProtocol:&OBJC_PROTOCOL___CRLWPShapeRepAccessibilityExtras])
  {
    [(CRLWPShapeRepAccessibility *)self crlaxShapeRepWillBeginEditingContainedRep:self];
  }
}

- (void)crlaxBeginEditingAtEnd
{
  v3 = [(CRLWPShapeRepAccessibility *)self crlaxContainedRep];
  v4 = [v3 crlaxStorage];
  v15 = [v4 crlaxTarget];

  v5 = [v15 range];
  v7 = v6;
  v8 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v9 = [v8 crlaxTarget];
  v10 = [v9 selectionModelTranslator];
  v11 = [v10 selectionPathForRange:&v5[v7] onStorage:{0, v15}];

  v12 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v13 = [v12 crlaxEditorController];
  v14 = [v13 crlaxTarget];
  [v14 setSelectionPath:v11 withFlags:6];
}

- (id)crlaxSummaryDescription
{
  v3 = [(CRLWPShapeRepAccessibility *)self crlaxIsTextboxRep];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 localizedStringForKey:@"Text box: %1$@" value:0 table:0];
    v7 = [(CRLWPShapeRepAccessibility *)self crlaxContainedRep];
    [v7 crlaxSummaryDescription];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"%1$@ shape" value:0 table:0];
    v7 = [(CRLShapeRepAccessibility *)self crlaxShapeInfo];
    [v7 crlaxShapeTypeLabel];
  }
  v8 = ;
  v9 = [NSString stringWithFormat:v6, v8];

  return v9;
}

- (id)crlaxCollaboratorDescription
{
  v8.receiver = self;
  v8.super_class = CRLWPShapeRepAccessibility;
  v3 = [(CRLCanvasRepAccessibility *)&v8 crlaxCollaboratorDescription];
  v4 = [(CRLWPShapeRepAccessibility *)self crlaxContainedRep];
  v5 = [v4 crlaxCollaboratorDescriptionDirect];

  if ([v5 length])
  {
    v6 = v5;

    v3 = v6;
  }

  return v3;
}

- (id)_crlaxDescriptionForVerticalAlignment
{
  v2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 layoutsForChildReps];

  if ([v3 count] == 1)
  {
    v10 = 0;
    v4 = [v3 firstObject];
    v5 = objc_opt_class();
    v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v10);
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
  v5 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v6 = [v5 shapeLayout];
  v7 = [v6 pathIsOpen];
  if (v7)
  {
    v2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
    v8 = [v2 containedRep];
    if (!v8)
    {

      return 1;
    }

    v3 = v8;
  }

  v9 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v10 = [v9 shapeLayout];
  v11 = [v10 pathIsLineSegment];

  if (v7)
  {
  }

  if (v11)
  {
    return 1;
  }

  v12 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v13 = [v12 containedRep];

  if (v13)
  {
    return 0;
  }

  v15.receiver = self;
  v15.super_class = CRLWPShapeRepAccessibility;
  return [(CRLShapeRepAccessibility *)&v15 isAccessibilityElement];
}

- (void)crlaxLoadChildrenIntoCollection:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CRLWPShapeRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v6 crlaxLoadChildrenIntoCollection:v4];
  v5 = -1;
  do
  {
    ++v5;
  }

  while (v5 < [v4 count]);
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
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLWPShapeRepAccessibility;
    v7 = [(CRLCanvasRepAccessibility *)&v10 crlaxFocusedElement];
  }

  v8 = v7;

  return v8;
}

- (BOOL)crlaxShouldCreateKnobs
{
  v2 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 textRep];

  return v3 == 0;
}

- (BOOL)crlaxNeedsFormatEditOperation
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsSelected]|| [(CRLCanvasRepAccessibility *)self crlaxIsSelectedIgnoringLocking])
  {
    v3 = [(CRLWPShapeRepAccessibility *)self crlaxTarget];
    if ([v3 isEditingChildRep])
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
  v4 = [(CRLCanvasRepAccessibility *)self accessibilityLabel];
  if ([v4 length])
  {
    [v3 addObject:v4];
  }

  v5 = [(CRLWPShapeRepAccessibility *)self crlaxContainedRepText];
  if ([v5 length])
  {
    [v3 addObject:v5];
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

- (void)crlaxShapeRepWillBeginEditingContainedRep:(id)a3
{
  v4 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v4 crlaxCanvasViewController];
  [v3 crlaxCancelEyeDropperMode];
}

- (id)accessibilityCustomActions
{
  v6.receiver = self;
  v6.super_class = CRLWPShapeRepAccessibility;
  v2 = [(CRLCanvasRepAccessibility *)&v6 accessibilityCustomActions];
  v3 = [v2 mutableCopy];

  v4 = [v3 copy];

  return v4;
}

@end