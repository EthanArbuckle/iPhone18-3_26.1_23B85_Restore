@interface CRLFreehandDrawingRepAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_accessibilityIsSpeakThisElement;
- (BOOL)_crlaxContainsMath;
- (BOOL)_hasContainedHandwrittenText;
- (BOOL)_hasContainedHandwrittenTextParsingInFlight;
- (BOOL)_shouldAutomaticallyAttemptHandwritingRecognition;
- (BOOL)crlaxUsesAccessibilityPath;
- (CGRect)accessibilityFrame;
- (CGRect)crlaxFrameInUnscaledCanvas;
- (_TtC8Freeform22CRLFreehandDrawingItem)_crlaxFreehandDrawingInfo;
- (id)_accessibilitySpeakThisString;
- (id)_containedHandwrittenText;
- (id)_containedMathematicalText;
- (id)_crlaxFreehandDrawingSummary;
- (id)crlaxLabel;
@end

@implementation CRLFreehandDrawingRepAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)crlaxLabel
{
  crlaxTitleLabel = [(CRLCanvasRepAccessibility *)self crlaxTitleLabel];
  _crlaxFreehandDrawingInfo = [(CRLFreehandDrawingRepAccessibility *)self _crlaxFreehandDrawingInfo];
  accessibilityDescription = [_crlaxFreehandDrawingInfo accessibilityDescription];

  if ([(CRLFreehandDrawingRepAccessibility *)self _crlaxContainsMath])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Handwritten math" value:0 table:0];

    _containedMathematicalText = [(CRLFreehandDrawingRepAccessibility *)self _containedMathematicalText];
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else if ([(CRLFreehandDrawingRepAccessibility *)self _hasContainedHandwrittenText])
  {
    _containedMathematicalText = [(CRLFreehandDrawingRepAccessibility *)self _containedHandwrittenText];
    v9 = +[NSBundle mainBundle];
    v7 = [v9 localizedStringForKey:@"Handwritten text" value:0 table:0];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else if ([(CRLFreehandDrawingRepAccessibility *)self _hasContainedHandwrittenTextParsingInFlight])
  {
    v10 = +[NSBundle mainBundle];
    v7 = [v10 localizedStringForKey:@"Freehand drawing value:handwriting recognition in progress" table:{0, 0}];

    _containedMathematicalText = 0;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    _containedMathematicalText = 0;
  }

  _crlaxFreehandDrawingSummary = [(CRLFreehandDrawingRepAccessibility *)self _crlaxFreehandDrawingSummary];

  v12 = +[NSBundle mainBundle];
  v7 = [v12 localizedStringForKey:@"Freehand drawing" value:0 table:0];

  _containedMathematicalText = _crlaxFreehandDrawingSummary;
LABEL_12:
  crlaxCaptionLabel = [(CRLCanvasRepAccessibility *)self crlaxCaptionLabel];
  v20 = __CRLAccessibilityStringForVariables(1, crlaxTitleLabel, v14, v15, v16, v17, v18, v19, _containedMathematicalText);
  v21 = +[AXRequest currentRequest];
  technology = [v21 technology];
  v23 = v20;
  if (![CRLFreehandDrawingRep requestingTechnologyShouldProvideAdditionalContext:technology])
  {
    if ([_containedMathematicalText length])
    {
      v23 = _containedMathematicalText;
    }

    else
    {
      v23 = v20;
    }
  }

  v24 = v23;

  return v23;
}

- (BOOL)crlaxUsesAccessibilityPath
{
  _crlaxFreehandDrawingInfo = [(CRLFreehandDrawingRepAccessibility *)self _crlaxFreehandDrawingInfo];
  shouldBeTreatedAsBoxForConnectionLinesForPerf = [_crlaxFreehandDrawingInfo shouldBeTreatedAsBoxForConnectionLinesForPerf];

  if (shouldBeTreatedAsBoxForConnectionLinesForPerf)
  {
    v5 = 0;
  }

  else
  {
    _crlaxContainsMath = [(CRLFreehandDrawingRepAccessibility *)self _crlaxContainsMath];
    v5 = (_crlaxContainsMath | [(CRLFreehandDrawingRepAccessibility *)self _hasContainedHandwrittenText]) ^ 1;
  }

  return v5 & 1;
}

- (CGRect)accessibilityFrame
{
  v20.receiver = self;
  v20.super_class = CRLFreehandDrawingRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v20 accessibilityFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(CRLFreehandDrawingRepAccessibility *)self _crlaxContainsMath])
  {
    crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
    [crlaxTarget crlaxAttachedMathResultViewFrame];
    v24.origin.x = v12;
    v24.origin.y = v13;
    v24.size.width = v14;
    v24.size.height = v15;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectUnion(v21, v24);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)crlaxFrameInUnscaledCanvas
{
  v22.receiver = self;
  v22.super_class = CRLFreehandDrawingRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v22 crlaxFrameInUnscaledCanvas];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(CRLFreehandDrawingRepAccessibility *)self _crlaxContainsMath])
  {
    crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
    layout = [crlaxTarget layout];
    pureGeometryInRoot = [layout pureGeometryInRoot];
    [pureGeometryInRoot frame];
    v26.origin.x = v14;
    v26.origin.y = v15;
    v26.size.width = v16;
    v26.size.height = v17;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v24 = CGRectUnion(v23, v26);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  if ([(CRLFreehandDrawingRepAccessibility *)self _crlaxContainsMath])
  {
    return 1;
  }

  return [(CRLFreehandDrawingRepAccessibility *)self _hasContainedHandwrittenText];
}

- (id)_accessibilitySpeakThisString
{
  v3 = +[NSMutableArray array];
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  if ([(CRLFreehandDrawingRepAccessibility *)self _crlaxContainsMath])
  {
    [(CRLFreehandDrawingRepAccessibility *)self _containedMathematicalText];
  }

  else
  {
    [(CRLFreehandDrawingRepAccessibility *)self _containedHandwrittenText];
  }
  v5 = ;
  v6 = [v5 stringByTrimmingCharactersInSet:v4];

  if ([v6 length])
  {
    [v3 addObject:v6];
  }

  _crlaxFreehandDrawingInfo = [(CRLFreehandDrawingRepAccessibility *)self _crlaxFreehandDrawingInfo];
  accessibilityDescription = [_crlaxFreehandDrawingInfo accessibilityDescription];
  v9 = [accessibilityDescription stringByTrimmingCharactersInSet:v4];

  if ([v9 length] && (objc_msgSend(v9, "isEqualToString:", v6) & 1) == 0)
  {
    [v3 addObject:v9];
  }

  if ([v3 count])
  {
    v10 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC8Freeform22CRLFreehandDrawingItem)_crlaxFreehandDrawingInfo
{
  v3 = objc_opt_class();
  crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];
  v6 = sub_100014370(v3, info);

  return v6;
}

- (BOOL)_crlaxContainsMath
{
  if (!+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    return 0;
  }

  crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
  freehandDrawingLayout = [crlaxTarget freehandDrawingLayout];
  pkRecognitionController = [freehandDrawingLayout pkRecognitionController];
  mathRecognitionController = [pkRecognitionController mathRecognitionController];

  v13 = 0;
  v7 = [mathRecognitionController crlaxValueForKey:@"currentMathRecognitionItems"];
  v8 = objc_opt_class();
  v9 = __CRLAccessibilityCastAsClass(v8, v7, 1, &v13);
  if (v13 == 1)
  {
    abort();
  }

  v10 = v9;

  v11 = [v10 count] != 0;
  return v11;
}

- (id)_containedMathematicalText
{
  crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
  crlaxRecognizedMathDescription = [crlaxTarget crlaxRecognizedMathDescription];

  if (!crlaxRecognizedMathDescription)
  {
    crlaxRecognizedMathDescription = [(CRLFreehandDrawingRepAccessibility *)self _containedHandwrittenText];
  }

  return crlaxRecognizedMathDescription;
}

- (BOOL)_hasContainedHandwrittenText
{
  v3 = +[_TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache sharedInstance];
  crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
  freehandDrawingLayout = [crlaxTarget freehandDrawingLayout];
  pkRecognitionController = [freehandDrawingLayout pkRecognitionController];
  drawing = [pkRecognitionController drawing];
  v8 = [v3 stringForDrawing:drawing attemptHandwritingRecognitionUponFailure:{-[CRLFreehandDrawingRepAccessibility _shouldAutomaticallyAttemptHandwritingRecognition](self, "_shouldAutomaticallyAttemptHandwritingRecognition")}];
  v9 = [v8 length] != 0;

  return v9;
}

- (BOOL)_hasContainedHandwrittenTextParsingInFlight
{
  v3 = +[_TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache sharedInstance];
  crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
  freehandDrawingLayout = [crlaxTarget freehandDrawingLayout];
  pkRecognitionController = [freehandDrawingLayout pkRecognitionController];
  drawing = [pkRecognitionController drawing];
  v8 = [v3 hasInFlightTaskForDrawing:drawing];

  return v8;
}

- (id)_containedHandwrittenText
{
  v3 = +[_TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache sharedInstance];
  crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
  freehandDrawingLayout = [crlaxTarget freehandDrawingLayout];
  pkRecognitionController = [freehandDrawingLayout pkRecognitionController];
  drawing = [pkRecognitionController drawing];
  v8 = [v3 stringForDrawing:drawing attemptHandwritingRecognitionUponFailure:{-[CRLFreehandDrawingRepAccessibility _shouldAutomaticallyAttemptHandwritingRecognition](self, "_shouldAutomaticallyAttemptHandwritingRecognition")}];

  if (!-[CRLFreehandDrawingRepAccessibility _crlaxContainsMath](self, "_crlaxContainsMath") && [v8 length])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Possible handwriting: %@" value:0 table:0];

    v11 = +[AXRequest currentRequest];
    technology = [v11 technology];
    if ([CRLFreehandDrawingRep requestingTechnologyShouldProvideAdditionalContext:technology])
    {
      v13 = [NSString localizedStringWithFormat:v10, v8];

      v8 = v13;
    }
  }

  return v8;
}

- (id)_crlaxFreehandDrawingSummary
{
  v3 = objc_alloc_init(NSMutableSet);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  crlaxTarget = [(CRLFreehandDrawingRepAccessibility *)self crlaxTarget];
  allRepsContainedInGroup = [crlaxTarget allRepsContainedInGroup];

  v6 = [allRepsContainedInGroup countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allRepsContainedInGroup);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v21 = 0;
        v11 = v10;
        v12 = objc_opt_class();
        v13 = __CRLAccessibilityCastAsClass(v12, v11, 1, &v21);
        if (v21 == 1 || (v14 = v13, v11, v21 = 0, [v14 shapeInfo], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_opt_class(), __CRLAccessibilityCastAsClass(v16, v15, 1, &v21), v17 = objc_claimAutoreleasedReturnValue(), v21 == 1))
        {
          abort();
        }

        v18 = v17;

        if (v18)
        {
          [v3 addObject:v18];
        }
      }

      v7 = [allRepsContainedInGroup countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = [_TtC8Freeform27CRLFreehandDrawingShapeItem crlaxDescriptionFor:v3];

  return v19;
}

- (BOOL)_shouldAutomaticallyAttemptHandwritingRecognition
{
  if (UIAccessibilityIsVoiceOverRunning() || (IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning()))
  {
    LOBYTE(IsSwitchControlRunning) = ![(CRLFreehandDrawingRepAccessibility *)self _crlaxContainsMath];
  }

  return IsSwitchControlRunning;
}

@end