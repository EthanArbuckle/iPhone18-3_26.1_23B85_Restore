@interface AKToolController
+ (void)cascadeAnnotations:(id)a3 onPageController:(id)a4 forPaste:(BOOL)a5;
- (AKController)controller;
- (AKToolController)initWithController:(id)a3;
- (CGPoint)_defaultCenterForNewAnnotation;
- (CGRect)_centerBounds:(CGRect)result atPoint:(CGPoint)a4;
- (CGRect)_defaultRectangleForNewAnnotation:(id)a3 centeredAtPoint:(CGPoint)a4;
- (CGRect)_validatedRect:(CGRect)a3 fitsInVisibleRegionOfOverlayView:(id)a4 ownedByPageController:(id)a5 centeredAtPoint:(CGPoint)a6;
- (double)_modelBaseScaleFactorForNewAnnotation;
- (double)_strokeWidthForNewAnnotation;
- (id)_defaultHeartTypingAttributesWithFillColor:(id)a3;
- (id)_defaultTextBoxTypingAttributes;
- (id)_defaultTypingAttributes;
- (id)_strokeColorForNewAnnotation;
- (id)createAnnotationOfType:(int64_t)a3 centeredAtPoint:(CGPoint)a4;
- (unint64_t)_arrowStyleForToolTag:(int64_t)a3;
- (void)_peripheralAvailabilityDidUpdate:(id)a3;
- (void)_propagateTextColors:(id)a3;
- (void)_setRectangleToFitTextOnTextAnnotation:(id)a3;
- (void)addNewAnnotation:(id)a3 onPageController:(id)a4 shouldSelect:(BOOL)a5 shouldCascade:(BOOL)a6;
- (void)dealloc;
- (void)performToolActionForSender:(id)a3;
- (void)resetToDefaultMode;
- (void)setToolMode:(unint64_t)a3;
- (void)updateToolSenderState:(id)a3 enabled:(BOOL)a4;
@end

@implementation AKToolController

- (AKToolController)initWithController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKToolController;
  v5 = [(AKToolController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AKToolController *)v5 setController:v4];
    v6->_toolMode = -1;
    [(AKToolController *)v6 setToolMode:0];
    if (+[AKController canConnectToStylus])
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 addObserver:v6 selector:sel__peripheralAvailabilityDidUpdate_ name:@"AKPeripheralAvailabilityManagerAvailabilityNotification" object:0];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AKToolController;
  [(AKToolController *)&v4 dealloc];
}

- (void)performToolActionForSender:(id)a3
{
  v17 = a3;
  v4 = [v17 tag];
  v5 = [(AKToolController *)self controller];
  v6 = [v5 delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 requestPermissionForController:v5 toPerformActionFromSender:v4])
  {
    goto LABEL_22;
  }

  if (v4 <= 764016)
  {
    if (v4 == 764015)
    {
      if ([(AKToolController *)self toolMode]!= 1)
      {
        v7 = self;
        v8 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 != 764016)
      {
        goto LABEL_16;
      }

      if ([(AKToolController *)self toolMode]!= 2)
      {
        v7 = self;
        v8 = 2;
LABEL_21:
        [(AKToolController *)v7 setToolMode:v8];
        goto LABEL_22;
      }
    }

LABEL_15:
    v7 = self;
    v8 = 0;
    goto LABEL_21;
  }

  if (v4 == 764017)
  {
    if ([(AKToolController *)self toolMode]!= 4)
    {
      v7 = self;
      v8 = 4;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (v4 == 764022 || v4 == 764064)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ([v17 tag] == 764066)
  {
    goto LABEL_22;
  }

  if ((v4 - 764050) <= 7)
  {
    v9 = [v5 attributeController];
    v10 = v9;
    if (v4 == 764050)
    {
      v11 = [v9 highlightStyle];
    }

    else
    {
      v11 = [AKUserInterfaceItemHelper highlightAttributeTagFromHighlightToolTag:v4];
    }

    v14 = v11;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 hasHighlightableSelectionForAnnotationController:v5] & 1) == 0)
    {
      v15 = [(AKToolController *)self toolMode];
      if (v15 != 3 || v4 == 764050)
      {
        if (v15 == 3)
        {
          v16 = 0;
        }

        else
        {
          v16 = 3;
        }

        [(AKToolController *)self setToolMode:v16];
      }

      [v10 setHighlightStyle:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 controller:v5 performActionForMode:-[AKToolController toolMode](self fromSender:"toolMode") withAttribute:v4 onPageAtIndex:{v14, objc_msgSend(v5, "currentPageIndex")}];
    }

    goto LABEL_22;
  }

  if (v4 > 764061)
  {
    if (v4 == 764062)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_22;
      }

      v13 = [v6 undoManagerForAnnotationController:v5];
      [v13 registerUndoWithTarget:v6 selector:sel_rotateLeft_ object:self];
      [v6 rotateRight:v5];
      goto LABEL_54;
    }

    if (v4 == 764063)
    {
      v13 = [v6 undoManagerForAnnotationController:v5];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_54:

        goto LABEL_22;
      }

      v12 = v13;
LABEL_47:
      [v12 registerUndoWithTarget:v6 selector:sel_rotateRight_ object:self];
      [v6 rotateLeft:v5];
      goto LABEL_54;
    }
  }

  else
  {
    if (v4 == 764058)
    {
      goto LABEL_22;
    }

    if (v4 == 764061)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_22;
      }

      v12 = [v6 undoManagerForAnnotationController:v5];
      v13 = v12;
      goto LABEL_47;
    }
  }

  [v5 setCreationCascadingMultiplier:0];
  if (v4 != 764060)
  {
    [(AKToolController *)self _defaultCenterForNewAnnotation];
    v13 = [(AKToolController *)self createAnnotationOfType:v4 centeredAtPoint:?];
    [(AKToolController *)self addNewAnnotation:v13 onPageController:0 shouldSelect:1 shouldCascade:1];
    goto LABEL_54;
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 controller:v5 performActionForMode:-[AKToolController toolMode](self fromSender:"toolMode") withAttribute:764060 onPageAtIndex:{763000, objc_msgSend(v5, "currentPageIndex")}];
  }

LABEL_22:
}

- (void)_propagateTextColors:(id)a3
{
  v7 = a3;
  v3 = [v7 typingAttributes];
  v4 = [v3 objectForKeyedSubscript:@"NSColor"];

  if (v4)
  {
    v5 = [v7 typingAttributes];
    v6 = [v5 objectForKeyedSubscript:@"NSColor"];
    [v7 setForegroundColor:v6];
  }
}

- (id)createAnnotationOfType:(int64_t)a3 centeredAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(AKToolController *)self controller];
  v9 = [v8 attributeController];
  [(AKToolController *)self _modelBaseScaleFactorForNewAnnotation];
  v10 = 0;
  v12 = v11;
  switch(a3)
  {
    case 764000:
    case 764001:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      v22 = objc_opt_self();
      v23 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v22];
      [v10 setFillColor:v23];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v24 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v24];

      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      if (a3 == 764001)
      {
        [v10 setCornerRadius:v12 * 20.0];
      }

      goto LABEL_12;
    case 764002:
    case 764013:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      v37 = objc_opt_self();
      v38 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v37];
      [v10 setFillColor:v38];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v39 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v39];

      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      goto LABEL_12;
    case 764003:
    case 764004:
    case 764005:
      v10 = objc_opt_new();
      [v10 setArrowHeadStyle:{-[AKToolController _arrowStyleForToolTag:](self, "_arrowStyleForToolTag:", a3)}];
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v13 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v13];

      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      v14 = v76.origin.x;
      v15 = v76.origin.y;
      width = v76.size.width;
      height = v76.size.height;
      MinX = CGRectGetMinX(v76);
      v77.origin.x = v14;
      v77.origin.y = v15;
      v77.size.width = width;
      v77.size.height = height;
      [v10 setStartPoint:{MinX, CGRectGetMidY(v77)}];
      v78.origin.x = v14;
      v78.origin.y = v15;
      v78.size.width = width;
      v78.size.height = height;
      MaxX = CGRectGetMaxX(v78);
      v79.origin.x = v14;
      v79.origin.y = v15;
      v79.size.width = width;
      v79.size.height = height;
      [v10 setEndPoint:{MaxX, CGRectGetMidY(v79)}];
      v80.origin.x = v14;
      v80.origin.y = v15;
      v80.size.width = width;
      v80.size.height = height;
      MidX = CGRectGetMidX(v80);
      v81.origin.x = v14;
      v81.origin.y = v15;
      v81.size.width = width;
      v81.size.height = height;
      [v10 setMidPoint:{MidX, CGRectGetMidY(v81)}];
      goto LABEL_13;
    case 764006:
      v10 = objc_opt_new();
      [v10 setArrowHeadStyle:{-[AKToolController _arrowStyleForToolTag:](self, "_arrowStyleForToolTag:", 764006)}];
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      v55 = v84.origin.x;
      v56 = v84.origin.y;
      v57 = v84.size.width;
      v58 = v84.size.height;
      v59 = CGRectGetMinX(v84);
      v85.origin.x = v55;
      v85.origin.y = v56;
      v85.size.width = v57;
      v85.size.height = v58;
      [v10 setStartPoint:{v59, CGRectGetMidY(v85)}];
      v86.origin.x = v55;
      v86.origin.y = v56;
      v86.size.width = v57;
      v86.size.height = v58;
      v60 = CGRectGetMaxX(v86);
      v87.origin.x = v55;
      v87.origin.y = v56;
      v87.size.width = v57;
      v87.size.height = v58;
      [v10 setEndPoint:{v60, CGRectGetMidY(v87)}];
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v61 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v61];

      v62 = objc_opt_self();
      v63 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v62];
      [v10 setFillColor:v63];

      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      [v10 setArrowHeadWidth:v12 * 80.0];
      [v10 setArrowLineWidth:v12 * 40.0];
      [v10 setArrowHeadLength:v12 * 40.0];
      goto LABEL_13;
    case 764007:
      v10 = objc_opt_new();
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      [v10 rectangle];
      v44 = CGRectGetMinX(v82) + v12 * -10.0;
      [v10 rectangle];
      [v10 setPointyBitPoint:{v44, CGRectGetMinY(v83) + v12 * -10.0}];
      v45 = objc_opt_self();
      v46 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v45];
      [v10 setFillColor:v46];

      v47 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v47];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v48 = [v8 attributeController];
      [v10 setDashed:{objc_msgSend(v48, "strokeIsDashed")}];

      v49 = [v8 attributeController];
      [v10 setBrushStyle:{objc_msgSend(v49, "brushStyle")}];

      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      [v10 setPointyBitBaseWidthAngle:25.0];
      goto LABEL_13;
    case 764008:
      v10 = objc_opt_new();
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      v41 = objc_opt_self();
      v42 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v41];
      [v10 setFillColor:v42];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v43 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v43];

      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      [v10 setPointCount:5];
      [AKStarAnnotationRenderer defaultInnerRadiusForStar:v10];
      [v10 setInnerRadiusFactor:?];
      goto LABEL_13;
    case 764009:
      v10 = objc_opt_new();
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      v67 = objc_opt_self();
      v68 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v67];
      [v10 setFillColor:v68];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v69 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v69];

      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      [v10 setPointCount:6];
      goto LABEL_13;
    case 764010:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v25 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v25];

      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      v26 = objc_opt_self();
      v27 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v26];
      [v10 setFillColor:v27];

LABEL_12:
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
LABEL_13:
      v35 = [(AKToolController *)self _defaultTypingAttributes];
      [v10 setTypingAttributes:v35];
      goto LABEL_14;
    case 764011:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      v32 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v32];

      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      v33 = objc_opt_self();
      v34 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v33];
      [v10 setFillColor:v34];

      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      v35 = [v10 fillColor];
      v36 = [(AKToolController *)self _defaultHeartTypingAttributesWithFillColor:v35];
      [v10 setTypingAttributes:v36];

LABEL_14:
      goto LABEL_15;
    case 764012:
    case 764015:
    case 764016:
    case 764017:
      goto LABEL_17;
    case 764014:
      v10 = objc_opt_new();
      [v10 setFillColor:0];
      [v10 setStrokeWidth:0.0];
      v28 = [v8 attributeController];
      [v10 setBrushStyle:{objc_msgSend(v28, "brushStyle")}];

      [v10 setDashed:0];
      v29 = [(AKToolController *)self _defaultTextBoxTypingAttributes];
      [v10 setTypingAttributes:v29];

      v30 = [v10 typingAttributes];
      v31 = [v30 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
      [v10 setStrokeColor:v31];

      [v10 setRectangle:{0.0, 0.0, 100.0, 100.0}];
LABEL_15:
      [(AKToolController *)self _propagateTextColors:v10];
      goto LABEL_16;
    case 764018:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(v9, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      [v10 setDashed:{objc_msgSend(v9, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(v9, "brushStyle")}];
      v71 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:v71];

      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      goto LABEL_16;
    case 764019:
      v64 = [v8 signatureModelController];
      v65 = [v64 selectedSignature];

      v10 = objc_opt_new();
      [v10 setSignature:v65];
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      v66 = [MEMORY[0x277D75348] blackColor];
      [v10 setStrokeColor:v66];

      goto LABEL_17;
    case 764020:
      v10 = objc_opt_new();
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      v70 = [MEMORY[0x277D75348] akColorWithWhite:0.0 alpha:0.5];
      [v10 setStrokeColor:v70];

      [v10 setMagnification:2.0];
      [v10 setStrokeWidth:v12 * 2.5];
      [v10 setBrushStyle:0];
      [v10 setDashed:0];
      [v10 setHasShadow:0];
      goto LABEL_16;
    case 764021:
      v50 = objc_opt_new();
      v51 = *MEMORY[0x277CBF390];
      v52 = *(MEMORY[0x277CBF390] + 8);
      v53 = *(MEMORY[0x277CBF390] + 16);
      v54 = *(MEMORY[0x277CBF390] + 24);
      v10 = v50;
      [v10 setRectangle:{v51, v52, v53, v54}];
      [v10 setFillColor:0];
LABEL_16:

      goto LABEL_17;
    default:
      if (a3 == 764050)
      {
        v72 = os_log_create("com.apple.annotationkit", "Tool Controller");
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          sub_23F4BD5B8(v72);
        }

        v10 = objc_opt_new();
        v73 = [v9 highlightStyle];
        if ((v73 - 765200) > 6)
        {
          v21 = 0;
          v74 = 0;
        }

        else
        {
          v74 = qword_23F4D9400[v73 - 765200];
          v21 = [AKHighlightAppearanceHelper colorForHighlightAttributeWithTag:v73];
        }

        [v10 setColor:v21];
        [v10 setStyle:v74];
      }

      else
      {
        if (a3 != 764060)
        {
          goto LABEL_17;
        }

        v10 = objc_opt_new();
        [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
        [v10 setRectangle:?];
        v21 = +[AKHighlightAppearanceHelper colorForNoteOfHighlightAttributeTag:](AKHighlightAppearanceHelper, "colorForNoteOfHighlightAttributeTag:", [v9 highlightStyle]);
        [v10 setFillColor:v21];
      }

LABEL_17:

      return v10;
  }
}

- (void)addNewAnnotation:(id)a3 onPageController:(id)a4 shouldSelect:(BOOL)a5 shouldCascade:(BOOL)a6
{
  v6 = a6;
  v32 = a5;
  v34[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(AKToolController *)self controller];
  v12 = v11;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = [v11 currentPageController];
  }

  v14 = v13;
  v15 = [v13 pageModelController];
  v16 = [v12 delegate];
  v17 = [v12 author];
  if (v17)
  {
    v18 = v17;
    v19 = [v9 author];

    if (!v19)
    {
      v20 = [v12 author];
      [v9 setAuthor:v20];
    }
  }

  v21 = [v9 modificationDate];

  if (!v21)
  {
    v22 = [MEMORY[0x277CBEAA8] date];
    [v9 setModificationDate:v22];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 controller:v12 shouldPlaceSingleShotAnnotation:v9 onProposedPageModelController:v15])
  {
    v23 = v15;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v33 = v15;
      [v16 controller:v12 willPlaceSingleShotAnnotation:v9 onProposedPageModelController:&v33];
      v23 = v33;

      v24 = [v14 pageModelController];

      if (v24 != v23)
      {
        v25 = [v12 pageControllerForPageModelController:v23];

        v14 = v25;
      }
    }

    else
    {
      v23 = v15;
    }

    [v9 originalModelBaseScaleFactor];
    if (v26 == 0.0)
    {
      [(AKToolController *)self _modelBaseScaleFactorForNewAnnotation];
      [v9 setOriginalModelBaseScaleFactor:?];
      v27 = v6;
    }

    else
    {
      v27 = 0;
    }

    if (![v9 originalExifOrientation])
    {
      [v9 setOriginalExifOrientation:{objc_msgSend(v14, "currentModelToScreenExifOrientation")}];
      [v9 adjustModelToCompensateForOriginalExif];
      if (v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(AKToolController *)self _setRectangleToFitTextOnTextAnnotation:v9];
        }
      }
    }

    if (v6)
    {
      v28 = objc_opt_class();
      v34[0] = v9;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      [v28 cascadeAnnotations:v29 onPageController:v14 forPaste:0];
    }

    v30 = [v23 mutableArrayValueForKey:@"annotations"];
    [v30 addObject:v9];
    v31 = [v12 modelController];
    [v31 deselectAllAnnotations];

    if (v32)
    {
      [v12 setCurrentPageIndex:{objc_msgSend(v14, "pageIndex")}];
      [v23 selectAnnotation:v9 byExtendingSelection:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [v16 controller:v12 didPlaceSingleShotAnnotation:v9 onPageModelController:v23];
    }
  }
}

+ (void)cascadeAnnotations:(id)a3 onPageController:(id)a4 forPaste:(BOOL)a5
{
  v5 = a5;
  v57 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 controller];
  v10 = v9;
  if (!v5)
  {
    v11 = [v9 lastCreationCascadingPageController];

    if (v11 != v8)
    {
      [v10 setLastCreationCascadingPageController:v8];
      [v10 setCreationCascadingMultiplier:0];
    }
  }

  v12 = [v8 overlayView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v8 convertRectFromOverlayToModel:{v14, v16, v18, v20}];
  rect[0] = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  memset(&rect[1], 0, 32);
  v54 = 0u;
  v55 = 0u;
  v28 = v7;
  v29 = [v28 countByEnumeratingWithState:&rect[1] objects:v56 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *rect[3];
    v51 = *(MEMORY[0x277CBF3A0] + 8);
    v52 = *MEMORY[0x277CBF3A0];
    v49 = *(MEMORY[0x277CBF3A0] + 24);
    v50 = *(MEMORY[0x277CBF3A0] + 16);
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*rect[3] != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(rect[2] + 8 * i);
        if (!v5)
        {
          v34 = [v10 creationCascadingMultiplier];
          if (!v34)
          {
            goto LABEL_14;
          }

LABEL_13:
          v35 = v34;
          [v8 modelBaseScaleFactor];
          [AKGeometryHelper convertScreenToModelOrientationForPoint:v8 relativeToRect:v36 * v35 * 10.0 withPageController:v36 * v35 * -10.0, v52, v51, v50, v49];
          [v33 translateBy:?];
          goto LABEL_14;
        }

        v34 = [v10 pasteCascadingMultiplier];
        if (v34)
        {
          goto LABEL_13;
        }

LABEL_14:
        [v33 drawingBounds];
        x = v59.origin.x;
        y = v59.origin.y;
        width = v59.size.width;
        height = v59.size.height;
        MidX = CGRectGetMidX(v59);
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        MidY = CGRectGetMidY(v60);
        *&v61.origin.x = rect[0];
        v61.origin.y = v23;
        v61.size.width = v25;
        v61.size.height = v27;
        v58.x = MidX;
        v58.y = MidY;
        if (!CGRectContainsPoint(v61, v58))
        {
          *&v62.origin.x = rect[0];
          v62.origin.y = v23;
          v62.size.width = v25;
          v62.size.height = v27;
          MinX = CGRectGetMinX(v62);
          *&v63.origin.x = rect[0];
          v63.origin.y = v23;
          v63.size.width = v25;
          v63.size.height = v27;
          MaxX = CGRectGetMaxX(v63);
          if (MidX <= MaxX)
          {
            MaxX = MidX;
          }

          if (MidX >= MinX)
          {
            v45 = MaxX;
          }

          else
          {
            v45 = MinX;
          }

          *&v64.origin.x = rect[0];
          v64.origin.y = v23;
          v64.size.width = v25;
          v64.size.height = v27;
          MinY = CGRectGetMinY(v64);
          *&v65.origin.x = rect[0];
          v65.origin.y = v23;
          v65.size.width = v25;
          v65.size.height = v27;
          MaxY = CGRectGetMaxY(v65);
          if (MidY <= MaxY)
          {
            MaxY = MidY;
          }

          if (MidY >= MinY)
          {
            v48 = MaxY;
          }

          else
          {
            v48 = MinY;
          }

          [v33 translateBy:{v45 - MidX, v48 - MidY}];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&rect[1] objects:v56 count:16];
    }

    while (v30);
  }

  if (v5)
  {
    [v10 setPasteCascadingMultiplier:{objc_msgSend(v10, "pasteCascadingMultiplier") + 1}];
  }

  else
  {
    [v10 setCreationCascadingMultiplier:{objc_msgSend(v10, "creationCascadingMultiplier") + 1}];
  }
}

- (void)setToolMode:(unint64_t)a3
{
  if (self->_toolMode == a3)
  {
    return;
  }

  v23 = [(AKToolController *)self controller];
  if (([v23 isTornDown] & 1) == 0)
  {
    v6 = [v23 delegate];
    if (a3)
    {
      if (objc_opt_respondsToSelector())
      {
        [v6 controllerWillEnterToolMode:v23];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v6 controllerWillExitToolMode:v23];
    }

    toolMode = self->_toolMode;
    if (toolMode - 1 < 2)
    {
      v8 = [v23 legacyDoodleController];
      [v8 removeOverlay];
    }

    else if (toolMode - 4 >= 2)
    {
      v9 = v23;
      if (toolMode)
      {
        goto LABEL_15;
      }

      v10 = [v23 textEditorController];
      [v10 endEditing];

      v8 = [v23 modelController];
      [v8 deselectAllAnnotations];
    }

    else
    {
      [(AKToolController *)self setAllInkEnabled:0];
      [(AKToolController *)self setPencilInkEnabled:0];
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 postNotificationName:@"AKToolController.inkToolStatusUpdated" object:self];
    }

    v9 = v23;
LABEL_15:
    self->_toolMode = a3;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v20 = [v9 legacyDoodleController];
        [v20 setPressureSensitiveDoodleMode:1];

        goto LABEL_27;
      }

      if (a3 == 4)
      {
        [(AKToolController *)self setAllInkEnabled:1];
        [(AKToolController *)self setPencilInkEnabled:1];
        v13 = [v23 attributeController];
        v14 = [v13 ink];

        if (!v14)
        {
          v15 = [v23 attributeController];
          [v15 setDefaultInk];
        }

        v16 = [MEMORY[0x277CCAB98] defaultCenter];
        [v16 postNotificationName:@"AKToolController.inkToolStatusUpdated" object:self];

        v17 = [v23 modelController];
        [v17 deselectAllAnnotations];
        goto LABEL_30;
      }
    }

    else
    {
      if (!a3)
      {
        v18 = [v9 supportForPencilAlwaysDrawsSatisfied];
        [(AKToolController *)self setAllInkEnabled:0];
        if (v18)
        {
          [(AKToolController *)self setPencilInkEnabled:1];
          v19 = [v23 attributeController];
          [v19 resetToLastDrawingInk];
        }

        else
        {
          [(AKToolController *)self setPencilInkEnabled:0];
        }

        v17 = [MEMORY[0x277CCAB98] defaultCenter];
        [v17 postNotificationName:@"AKToolController.inkToolStatusUpdated" object:self];
        goto LABEL_30;
      }

      if (a3 == 1)
      {
        v11 = [v9 shouldDrawVariableStrokeDoodles];
        v12 = [v23 legacyDoodleController];
        [v12 setPressureSensitiveDoodleMode:v11];

LABEL_27:
        v17 = [v23 legacyDoodleController];
        [v17 showOverlay];
LABEL_30:

        v9 = v23;
      }
    }

    v21 = [v9 toolbarViewController];
    [v21 revalidateItems];
    v22 = [v23 modernToolbarView];
    [v22 revalidateItems];
    if (a3)
    {
      if (objc_opt_respondsToSelector())
      {
        [v6 controllerDidEnterToolMode:v23];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v6 controllerDidExitToolMode:v23];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateToolSenderState:(id)a3 enabled:(BOOL)a4
{
  v8 = a3;
  if ([v8 tag] == 764015)
  {
    v5 = v8;
    v6 = [(AKToolController *)self toolMode]== 1;
LABEL_7:
    v7 = v6;
    [v5 setSelected:v7];

    goto LABEL_11;
  }

  if ([v8 tag] == 764016)
  {
    v5 = v8;
    v6 = [(AKToolController *)self toolMode]== 2;
    goto LABEL_7;
  }

  if ([v8 tag] == 764017)
  {
    v5 = v8;
    v6 = [(AKToolController *)self toolMode]== 4;
    goto LABEL_7;
  }

  [v8 tag];
LABEL_11:
}

- (void)resetToDefaultMode
{
  if ([(AKToolController *)self isInDefaultMode])
  {
    v3 = [(AKToolController *)self pencilInkEnabled];
    v4 = [(AKToolController *)self controller];
    v5 = [v4 supportForPencilAlwaysDrawsSatisfied];

    if (v3 == v5)
    {
      return;
    }

    self->_toolMode = -1;
  }

  v6 = [(AKToolController *)self defaultToolMode];

  [(AKToolController *)self setToolMode:v6];
}

- (double)_modelBaseScaleFactorForNewAnnotation
{
  v2 = [(AKToolController *)self controller];
  v3 = [v2 currentPageController];
  [v3 modelBaseScaleFactor];
  v5 = v4;

  return v5;
}

- (double)_strokeWidthForNewAnnotation
{
  v3 = [(AKToolController *)self controller];
  v4 = [v3 attributeController];
  [v4 strokeWidth];
  v6 = v5;

  if (v6 > 1.0001)
  {
    [(AKToolController *)self _modelBaseScaleFactorForNewAnnotation];
    v6 = v6 * v7;
  }

  return v6;
}

- (id)_strokeColorForNewAnnotation
{
  v2 = [(AKToolController *)self controller];
  v3 = [v2 currentPageController];
  v4 = [v3 pageModelController];
  v5 = [v2 attributeController];
  v6 = [v4 selectedAnnotations];
  if ([v6 count])
  {
    v7 = [v6 anyObject];
    if ([v7 conformsToAKStrokedAnnotationProtocol])
    {
      v8 = [v7 strokeColor];
LABEL_7:

      goto LABEL_9;
    }
  }

  v9 = [v5 ink];

  if (v9)
  {
    v7 = [v5 ink];
    v10 = [v7 color];
    v8 = [v10 colorWithAlphaComponent:1.0];

    goto LABEL_7;
  }

  v8 = [v5 strokeColor];
LABEL_9:

  return v8;
}

- (CGRect)_centerBounds:(CGRect)result atPoint:(CGPoint)a4
{
  v4 = a4.x - result.size.width * 0.5;
  v5 = a4.y - result.size.height * 0.5;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)_defaultCenterForNewAnnotation
{
  v2 = [(AKToolController *)self controller];
  v3 = [v2 currentPageController];
  [v3 visibleRectOfOverlay];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);

  v10 = MidX;
  v11 = MidY;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)_defaultRectangleForNewAnnotation:(id)a3 centeredAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  [(AKToolController *)self _modelBaseScaleFactorForNewAnnotation];
  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(AKToolController *)self controller];
    v11 = [v10 currentPageController];
    [v11 maxPageRect];
    v14 = sqrt(v12 * v13 / 40.0 / 28800.0);
    v15 = v9 * 400.0 * v14;
    v16 = v9 * 72.0 * v14;
    v17 = v7;
    v18 = [v17 signature];
    v19 = [v18 drawing];

    v20 = [v17 signature];
    v21 = v20;
    if (v19)
    {
      v22 = [v20 drawing];
      [v22 bounds];
      v24 = v23;
      v26 = v25;
    }

    else
    {
      v31 = [v20 path];

      if (!v31)
      {
        v24 = *MEMORY[0x277CBF3A8];
        v26 = *(MEMORY[0x277CBF3A8] + 8);
        goto LABEL_11;
      }

      v21 = [v17 signature];
      [v21 pathBounds];
      v24 = v32;
      v26 = v33;
    }

LABEL_11:
    [AKGeometryHelper rectForSize:v24 inRect:v26, 0.0, 0.0, v15, v16];
    v34 = v55.origin.x;
    v35 = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
    v27 = CGRectGetWidth(v55);
    v56.origin.x = v34;
    v56.origin.y = v35;
    v56.size.width = width;
    v56.size.height = height;
    v28 = CGRectGetHeight(v56);

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v9 * 175.0;
    v28 = v9 * 131.0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 image];
    [v10 size];
    v27 = v29;
    v28 = v30;
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v9 * 120.0;
LABEL_18:
    v27 = v28;
    goto LABEL_13;
  }

  v28 = v9 * 200.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_18;
  }

  v53 = v9 * 150.0;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v27 = 24.0;
  }

  else
  {
    v27 = v28;
  }

  if (isKindOfClass)
  {
    v28 = 24.0;
  }

  else
  {
    v28 = v53;
  }

LABEL_13:
  v38 = [(AKToolController *)self controller];
  v39 = [v38 currentPageController];
  v40 = [v39 overlayView];
  [(AKToolController *)self _validatedRect:v40 fitsInVisibleRegionOfOverlayView:v39 ownedByPageController:x - v27 * 0.5 centeredAtPoint:y - v28 * 0.5, v27, v28, x, y];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = v42;
  v50 = v44;
  v51 = v46;
  v52 = v48;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (CGRect)_validatedRect:(CGRect)a3 fitsInVisibleRegionOfOverlayView:(id)a4 ownedByPageController:(id)a5 centeredAtPoint:(CGPoint)a6
{
  rect = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a5;
  [v9 visibleRectOfOverlay];
  [v9 convertRectFromModelToOverlay:?];
  [v9 convertRectFromOverlayToModel:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v44.origin.x = v11;
  v44.origin.y = v13;
  v44.size.width = v15;
  v44.size.height = v17;
  v18 = CGRectGetWidth(v44);
  v45.origin.x = v11;
  v45.origin.y = v13;
  v45.size.width = v15;
  v45.size.height = v17;
  Height = CGRectGetHeight(v45);
  if (v18 < Height)
  {
    Height = v18;
  }

  if (Height >= 20.0)
  {
    v20 = 5.0;
  }

  else
  {
    v20 = 0.0;
  }

  v46.origin.x = v11;
  v46.origin.y = v13;
  v46.size.width = v15;
  v46.size.height = v17;
  v47 = CGRectInset(v46, v20, v20);
  v21 = v47.origin.x;
  v22 = v47.origin.y;
  v23 = v47.size.width;
  v24 = v47.size.height;
  v42 = CGRectGetWidth(v47);
  v48.origin.x = v21;
  v48.origin.y = v22;
  v48.size.width = v23;
  v48.size.height = v24;
  v25 = CGRectGetHeight(v48);
  v43 = x;
  v49.origin.x = x;
  v26 = y;
  v49.origin.y = y;
  v27 = width;
  v49.size.width = width;
  v49.size.height = rect;
  if (CGRectGetWidth(v49) <= v25 && (v50.origin.x = v43, v50.origin.y = v26, v50.size.width = width, v50.size.height = rect, CGRectGetHeight(v50) <= v42))
  {
    v33 = rect;
    v35 = v26;
    v34 = v43;
  }

  else
  {
    v51.origin.x = v43;
    v51.origin.y = v26;
    v51.size.width = width;
    v51.size.height = rect;
    v28 = NSStringFromCGRect(v51);
    v52.origin.x = v21;
    v52.origin.y = v22;
    v52.size.width = v23;
    v52.size.height = v24;
    v39 = NSStringFromCGRect(v52);
    AKLog(@"Proposed rect %@ does not fit in visible region %@");

    if (v42 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v42;
    }

    v53.origin.x = v43;
    v53.origin.y = v26;
    v53.size.width = width;
    v53.size.height = rect;
    v30 = CGRectGetWidth(v53);
    v54.origin.x = v43;
    v54.origin.y = v26;
    v54.size.width = width;
    v54.size.height = rect;
    v31 = CGRectGetWidth(v54);
    if (v30 >= v31)
    {
      v31 = v30;
    }

    v32 = v29 / v31;
    v55.origin.x = v43;
    v55.origin.y = v26;
    v55.size.width = width;
    v55.size.height = rect;
    v27 = CGRectGetWidth(v55) * v32;
    v56.origin.x = v43;
    v56.origin.y = v26;
    v56.size.width = v27;
    v56.size.height = rect;
    v33 = CGRectGetHeight(v56) * v32;
    v57.origin.x = v43;
    v57.origin.y = v26;
    v57.size.width = v27;
    v57.size.height = v33;
    v34 = a6.x - CGRectGetWidth(v57) * 0.5;
    v58.origin.x = v34;
    v58.origin.y = v26;
    v58.size.width = v27;
    v58.size.height = v33;
    v35 = a6.y - CGRectGetHeight(v58) * 0.5;
  }

  v36 = v34;
  v37 = v27;
  v38 = v33;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v35;
  result.origin.x = v36;
  return result;
}

- (id)_defaultTypingAttributes
{
  v2 = [(AKToolController *)self controller];
  v3 = [v2 attributeController];
  v4 = [v3 textAttributes];
  v5 = [v4 mutableCopy];

  v6 = [v3 strokeColor];

  if (v6)
  {
    v7 = [v3 strokeColor];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D740C0]];
  }

  v8 = [v3 font];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v5;
}

- (id)_defaultTextBoxTypingAttributes
{
  v2 = [(AKToolController *)self controller];
  v3 = [v2 attributeController];
  v4 = [v3 textAttributes];
  v5 = [v4 mutableCopy];

  v6 = [v3 font];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v5;
}

- (id)_defaultHeartTypingAttributesWithFillColor:(id)a3
{
  v4 = a3;
  v5 = [(AKToolController *)self controller];
  v6 = [v5 attributeController];
  v7 = [v6 textAttributes];
  v8 = [v7 mutableCopy];

  v9 = [MEMORY[0x277D75348] whiteColor];
  v10 = [v4 akIsEqualToColor:v9];

  if (v10)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v11 = ;
  [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277D740C0]];
  v12 = [v6 font];
  [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v8;
}

- (void)_setRectangleToFitTextOnTextAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(AKToolController *)self controller];
  v6 = [v5 currentPageController];
  [(AKToolController *)self _defaultCenterForNewAnnotation];
  v8 = 0u;
  v9 = 0u;
  LOBYTE(v7) = 0;
  [AKTextAnnotationRenderHelper getAnnotationRectangle:"getAnnotationRectangle:textBounds:containerSize:exclusionPaths:isTextClipped:forAnnotation:onPageController:orInContext:shouldAlignToPixels:optionalText:optionalCenter:optionalProposedRectangle:" textBounds:&v8 containerSize:0 exclusionPaths:0 isTextClipped:0 forAnnotation:0 onPageController:v4 orInContext:v6 shouldAlignToPixels:0 optionalText:v7 optionalCenter:0 optionalProposedRectangle:?];
  [v4 setRectangle:{v8, v9}];
}

- (unint64_t)_arrowStyleForToolTag:(int64_t)a3
{
  if ((a3 - 764003) > 3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_23F4D9438[a3 - 764003];
  }
}

- (void)_peripheralAvailabilityDidUpdate:(id)a3
{
  v7 = [(AKToolController *)self controller];
  v3 = [v7 peripheralAvailabilityManager];
  v4 = [v3 currentAvailability] == 1;

  v5 = [v7 legacyDoodleController];
  [v5 setPressureSensitiveDoodleMode:v4];

  v6 = [v7 legacyDoodleController];
  [v6 updateStrokeAttributes];
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end