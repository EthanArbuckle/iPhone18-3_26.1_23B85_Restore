@interface AKToolController
+ (void)cascadeAnnotations:(id)annotations onPageController:(id)controller forPaste:(BOOL)paste;
- (AKController)controller;
- (AKToolController)initWithController:(id)controller;
- (CGPoint)_defaultCenterForNewAnnotation;
- (CGRect)_centerBounds:(CGRect)result atPoint:(CGPoint)point;
- (CGRect)_defaultRectangleForNewAnnotation:(id)annotation centeredAtPoint:(CGPoint)point;
- (CGRect)_validatedRect:(CGRect)rect fitsInVisibleRegionOfOverlayView:(id)view ownedByPageController:(id)controller centeredAtPoint:(CGPoint)point;
- (double)_modelBaseScaleFactorForNewAnnotation;
- (double)_strokeWidthForNewAnnotation;
- (id)_defaultHeartTypingAttributesWithFillColor:(id)color;
- (id)_defaultTextBoxTypingAttributes;
- (id)_defaultTypingAttributes;
- (id)_strokeColorForNewAnnotation;
- (id)createAnnotationOfType:(int64_t)type centeredAtPoint:(CGPoint)point;
- (unint64_t)_arrowStyleForToolTag:(int64_t)tag;
- (void)_peripheralAvailabilityDidUpdate:(id)update;
- (void)_propagateTextColors:(id)colors;
- (void)_setRectangleToFitTextOnTextAnnotation:(id)annotation;
- (void)addNewAnnotation:(id)annotation onPageController:(id)controller shouldSelect:(BOOL)select shouldCascade:(BOOL)cascade;
- (void)dealloc;
- (void)performToolActionForSender:(id)sender;
- (void)resetToDefaultMode;
- (void)setToolMode:(unint64_t)mode;
- (void)updateToolSenderState:(id)state enabled:(BOOL)enabled;
@end

@implementation AKToolController

- (AKToolController)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AKToolController;
  v5 = [(AKToolController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AKToolController *)v5 setController:controllerCopy];
    v6->_toolMode = -1;
    [(AKToolController *)v6 setToolMode:0];
    if (+[AKController canConnectToStylus])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel__peripheralAvailabilityDidUpdate_ name:@"AKPeripheralAvailabilityManagerAvailabilityNotification" object:0];
    }
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AKToolController;
  [(AKToolController *)&v4 dealloc];
}

- (void)performToolActionForSender:(id)sender
{
  senderCopy = sender;
  v4 = [senderCopy tag];
  controller = [(AKToolController *)self controller];
  delegate = [controller delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate requestPermissionForController:controller toPerformActionFromSender:v4])
  {
    goto LABEL_22;
  }

  if (v4 <= 764016)
  {
    if (v4 == 764015)
    {
      if ([(AKToolController *)self toolMode]!= 1)
      {
        selfCopy4 = self;
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
        selfCopy4 = self;
        v8 = 2;
LABEL_21:
        [(AKToolController *)selfCopy4 setToolMode:v8];
        goto LABEL_22;
      }
    }

LABEL_15:
    selfCopy4 = self;
    v8 = 0;
    goto LABEL_21;
  }

  if (v4 == 764017)
  {
    if ([(AKToolController *)self toolMode]!= 4)
    {
      selfCopy4 = self;
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
  if ([senderCopy tag] == 764066)
  {
    goto LABEL_22;
  }

  if ((v4 - 764050) <= 7)
  {
    attributeController = [controller attributeController];
    v10 = attributeController;
    if (v4 == 764050)
    {
      highlightStyle = [attributeController highlightStyle];
    }

    else
    {
      highlightStyle = [AKUserInterfaceItemHelper highlightAttributeTagFromHighlightToolTag:v4];
    }

    v14 = highlightStyle;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate hasHighlightableSelectionForAnnotationController:controller] & 1) == 0)
    {
      toolMode = [(AKToolController *)self toolMode];
      if (toolMode != 3 || v4 == 764050)
      {
        if (toolMode == 3)
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
      [delegate controller:controller performActionForMode:-[AKToolController toolMode](self fromSender:"toolMode") withAttribute:v4 onPageAtIndex:{v14, objc_msgSend(controller, "currentPageIndex")}];
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

      v13 = [delegate undoManagerForAnnotationController:controller];
      [v13 registerUndoWithTarget:delegate selector:sel_rotateLeft_ object:self];
      [delegate rotateRight:controller];
      goto LABEL_54;
    }

    if (v4 == 764063)
    {
      v13 = [delegate undoManagerForAnnotationController:controller];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_54:

        goto LABEL_22;
      }

      v12 = v13;
LABEL_47:
      [v12 registerUndoWithTarget:delegate selector:sel_rotateRight_ object:self];
      [delegate rotateLeft:controller];
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

      v12 = [delegate undoManagerForAnnotationController:controller];
      v13 = v12;
      goto LABEL_47;
    }
  }

  [controller setCreationCascadingMultiplier:0];
  if (v4 != 764060)
  {
    [(AKToolController *)self _defaultCenterForNewAnnotation];
    v13 = [(AKToolController *)self createAnnotationOfType:v4 centeredAtPoint:?];
    [(AKToolController *)self addNewAnnotation:v13 onPageController:0 shouldSelect:1 shouldCascade:1];
    goto LABEL_54;
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate controller:controller performActionForMode:-[AKToolController toolMode](self fromSender:"toolMode") withAttribute:764060 onPageAtIndex:{763000, objc_msgSend(controller, "currentPageIndex")}];
  }

LABEL_22:
}

- (void)_propagateTextColors:(id)colors
{
  colorsCopy = colors;
  typingAttributes = [colorsCopy typingAttributes];
  v4 = [typingAttributes objectForKeyedSubscript:@"NSColor"];

  if (v4)
  {
    typingAttributes2 = [colorsCopy typingAttributes];
    v6 = [typingAttributes2 objectForKeyedSubscript:@"NSColor"];
    [colorsCopy setForegroundColor:v6];
  }
}

- (id)createAnnotationOfType:(int64_t)type centeredAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  controller = [(AKToolController *)self controller];
  attributeController = [controller attributeController];
  [(AKToolController *)self _modelBaseScaleFactorForNewAnnotation];
  v10 = 0;
  v12 = v11;
  switch(type)
  {
    case 764000:
    case 764001:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      v22 = objc_opt_self();
      v23 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v22];
      [v10 setFillColor:v23];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      _strokeColorForNewAnnotation = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation];

      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
      if (type == 764001)
      {
        [v10 setCornerRadius:v12 * 20.0];
      }

      goto LABEL_12;
    case 764002:
    case 764013:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      v37 = objc_opt_self();
      v38 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v37];
      [v10 setFillColor:v38];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      _strokeColorForNewAnnotation2 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation2];

      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
      goto LABEL_12;
    case 764003:
    case 764004:
    case 764005:
      v10 = objc_opt_new();
      [v10 setArrowHeadStyle:{-[AKToolController _arrowStyleForToolTag:](self, "_arrowStyleForToolTag:", type)}];
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      _strokeColorForNewAnnotation3 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation3];

      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
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
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      _strokeColorForNewAnnotation4 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation4];

      v62 = objc_opt_self();
      v63 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v62];
      [v10 setFillColor:v63];

      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
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

      _strokeColorForNewAnnotation5 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation5];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      attributeController2 = [controller attributeController];
      [v10 setDashed:{objc_msgSend(attributeController2, "strokeIsDashed")}];

      attributeController3 = [controller attributeController];
      [v10 setBrushStyle:{objc_msgSend(attributeController3, "brushStyle")}];

      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      [v10 setPointyBitBaseWidthAngle:25.0];
      goto LABEL_13;
    case 764008:
      v10 = objc_opt_new();
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      v41 = objc_opt_self();
      v42 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v41];
      [v10 setFillColor:v42];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      _strokeColorForNewAnnotation6 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation6];

      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
      [v10 setPointCount:5];
      [AKStarAnnotationRenderer defaultInnerRadiusForStar:v10];
      [v10 setInnerRadiusFactor:?];
      goto LABEL_13;
    case 764009:
      v10 = objc_opt_new();
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      v67 = objc_opt_self();
      v68 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v67];
      [v10 setFillColor:v68];

      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      _strokeColorForNewAnnotation7 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation7];

      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
      [v10 setPointCount:6];
      goto LABEL_13;
    case 764010:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      _strokeColorForNewAnnotation8 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation8];

      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
      v26 = objc_opt_self();
      v27 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v26];
      [v10 setFillColor:v27];

LABEL_12:
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
LABEL_13:
      _defaultTypingAttributes = [(AKToolController *)self _defaultTypingAttributes];
      [v10 setTypingAttributes:_defaultTypingAttributes];
      goto LABEL_14;
    case 764011:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      _strokeColorForNewAnnotation9 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation9];

      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
      v33 = objc_opt_self();
      v34 = [(AKToolController *)self _defaultFillColorForAnnotationOfClass:v33];
      [v10 setFillColor:v34];

      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      _defaultTypingAttributes = [v10 fillColor];
      v36 = [(AKToolController *)self _defaultHeartTypingAttributesWithFillColor:_defaultTypingAttributes];
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
      attributeController4 = [controller attributeController];
      [v10 setBrushStyle:{objc_msgSend(attributeController4, "brushStyle")}];

      [v10 setDashed:0];
      _defaultTextBoxTypingAttributes = [(AKToolController *)self _defaultTextBoxTypingAttributes];
      [v10 setTypingAttributes:_defaultTextBoxTypingAttributes];

      typingAttributes = [v10 typingAttributes];
      v31 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D740C0]];
      [v10 setStrokeColor:v31];

      [v10 setRectangle:{0.0, 0.0, 100.0, 100.0}];
LABEL_15:
      [(AKToolController *)self _propagateTextColors:v10];
      goto LABEL_16;
    case 764018:
      v10 = objc_opt_new();
      [v10 setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
      [(AKToolController *)self _strokeWidthForNewAnnotation];
      [v10 setStrokeWidth:?];
      [v10 setDashed:{objc_msgSend(attributeController, "strokeIsDashed")}];
      [v10 setBrushStyle:{objc_msgSend(attributeController, "brushStyle")}];
      _strokeColorForNewAnnotation10 = [(AKToolController *)self _strokeColorForNewAnnotation];
      [v10 setStrokeColor:_strokeColorForNewAnnotation10];

      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      goto LABEL_16;
    case 764019:
      signatureModelController = [controller signatureModelController];
      selectedSignature = [signatureModelController selectedSignature];

      v10 = objc_opt_new();
      [v10 setSignature:selectedSignature];
      [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
      [v10 setRectangle:?];
      blackColor = [MEMORY[0x277D75348] blackColor];
      [v10 setStrokeColor:blackColor];

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
      if (type == 764050)
      {
        v72 = os_log_create("com.apple.annotationkit", "Tool Controller");
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          sub_23F4BD5B8(v72);
        }

        v10 = objc_opt_new();
        highlightStyle = [attributeController highlightStyle];
        if ((highlightStyle - 765200) > 6)
        {
          v21 = 0;
          v74 = 0;
        }

        else
        {
          v74 = qword_23F4D9400[highlightStyle - 765200];
          v21 = [AKHighlightAppearanceHelper colorForHighlightAttributeWithTag:highlightStyle];
        }

        [v10 setColor:v21];
        [v10 setStyle:v74];
      }

      else
      {
        if (type != 764060)
        {
          goto LABEL_17;
        }

        v10 = objc_opt_new();
        [(AKToolController *)self _defaultRectangleForNewAnnotation:v10 centeredAtPoint:x, y];
        [v10 setRectangle:?];
        v21 = +[AKHighlightAppearanceHelper colorForNoteOfHighlightAttributeTag:](AKHighlightAppearanceHelper, "colorForNoteOfHighlightAttributeTag:", [attributeController highlightStyle]);
        [v10 setFillColor:v21];
      }

LABEL_17:

      return v10;
  }
}

- (void)addNewAnnotation:(id)annotation onPageController:(id)controller shouldSelect:(BOOL)select shouldCascade:(BOOL)cascade
{
  cascadeCopy = cascade;
  selectCopy = select;
  v34[1] = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  controllerCopy = controller;
  controller = [(AKToolController *)self controller];
  v12 = controller;
  if (controllerCopy)
  {
    currentPageController = controllerCopy;
  }

  else
  {
    currentPageController = [controller currentPageController];
  }

  v14 = currentPageController;
  pageModelController = [currentPageController pageModelController];
  delegate = [v12 delegate];
  author = [v12 author];
  if (author)
  {
    v18 = author;
    author2 = [annotationCopy author];

    if (!author2)
    {
      author3 = [v12 author];
      [annotationCopy setAuthor:author3];
    }
  }

  modificationDate = [annotationCopy modificationDate];

  if (!modificationDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [annotationCopy setModificationDate:date];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate controller:v12 shouldPlaceSingleShotAnnotation:annotationCopy onProposedPageModelController:pageModelController])
  {
    v23 = pageModelController;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v33 = pageModelController;
      [delegate controller:v12 willPlaceSingleShotAnnotation:annotationCopy onProposedPageModelController:&v33];
      v23 = v33;

      pageModelController2 = [v14 pageModelController];

      if (pageModelController2 != v23)
      {
        v25 = [v12 pageControllerForPageModelController:v23];

        v14 = v25;
      }
    }

    else
    {
      v23 = pageModelController;
    }

    [annotationCopy originalModelBaseScaleFactor];
    if (v26 == 0.0)
    {
      [(AKToolController *)self _modelBaseScaleFactorForNewAnnotation];
      [annotationCopy setOriginalModelBaseScaleFactor:?];
      v27 = cascadeCopy;
    }

    else
    {
      v27 = 0;
    }

    if (![annotationCopy originalExifOrientation])
    {
      [annotationCopy setOriginalExifOrientation:{objc_msgSend(v14, "currentModelToScreenExifOrientation")}];
      [annotationCopy adjustModelToCompensateForOriginalExif];
      if (v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(AKToolController *)self _setRectangleToFitTextOnTextAnnotation:annotationCopy];
        }
      }
    }

    if (cascadeCopy)
    {
      v28 = objc_opt_class();
      v34[0] = annotationCopy;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      [v28 cascadeAnnotations:v29 onPageController:v14 forPaste:0];
    }

    v30 = [v23 mutableArrayValueForKey:@"annotations"];
    [v30 addObject:annotationCopy];
    modelController = [v12 modelController];
    [modelController deselectAllAnnotations];

    if (selectCopy)
    {
      [v12 setCurrentPageIndex:{objc_msgSend(v14, "pageIndex")}];
      [v23 selectAnnotation:annotationCopy byExtendingSelection:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate controller:v12 didPlaceSingleShotAnnotation:annotationCopy onPageModelController:v23];
    }
  }
}

+ (void)cascadeAnnotations:(id)annotations onPageController:(id)controller forPaste:(BOOL)paste
{
  pasteCopy = paste;
  v57 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  controllerCopy = controller;
  controller = [controllerCopy controller];
  v10 = controller;
  if (!pasteCopy)
  {
    lastCreationCascadingPageController = [controller lastCreationCascadingPageController];

    if (lastCreationCascadingPageController != controllerCopy)
    {
      [v10 setLastCreationCascadingPageController:controllerCopy];
      [v10 setCreationCascadingMultiplier:0];
    }
  }

  overlayView = [controllerCopy overlayView];
  [overlayView bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [controllerCopy convertRectFromOverlayToModel:{v14, v16, v18, v20}];
  rect[0] = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  memset(&rect[1], 0, 32);
  v54 = 0u;
  v55 = 0u;
  v28 = annotationsCopy;
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
        if (!pasteCopy)
        {
          creationCascadingMultiplier = [v10 creationCascadingMultiplier];
          if (!creationCascadingMultiplier)
          {
            goto LABEL_14;
          }

LABEL_13:
          v35 = creationCascadingMultiplier;
          [controllerCopy modelBaseScaleFactor];
          [AKGeometryHelper convertScreenToModelOrientationForPoint:controllerCopy relativeToRect:v36 * v35 * 10.0 withPageController:v36 * v35 * -10.0, v52, v51, v50, v49];
          [v33 translateBy:?];
          goto LABEL_14;
        }

        creationCascadingMultiplier = [v10 pasteCascadingMultiplier];
        if (creationCascadingMultiplier)
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

  if (pasteCopy)
  {
    [v10 setPasteCascadingMultiplier:{objc_msgSend(v10, "pasteCascadingMultiplier") + 1}];
  }

  else
  {
    [v10 setCreationCascadingMultiplier:{objc_msgSend(v10, "creationCascadingMultiplier") + 1}];
  }
}

- (void)setToolMode:(unint64_t)mode
{
  if (self->_toolMode == mode)
  {
    return;
  }

  controller = [(AKToolController *)self controller];
  if (([controller isTornDown] & 1) == 0)
  {
    delegate = [controller delegate];
    if (mode)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate controllerWillEnterToolMode:controller];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillExitToolMode:controller];
    }

    toolMode = self->_toolMode;
    if (toolMode - 1 < 2)
    {
      legacyDoodleController = [controller legacyDoodleController];
      [legacyDoodleController removeOverlay];
    }

    else if (toolMode - 4 >= 2)
    {
      v9 = controller;
      if (toolMode)
      {
        goto LABEL_15;
      }

      textEditorController = [controller textEditorController];
      [textEditorController endEditing];

      legacyDoodleController = [controller modelController];
      [legacyDoodleController deselectAllAnnotations];
    }

    else
    {
      [(AKToolController *)self setAllInkEnabled:0];
      [(AKToolController *)self setPencilInkEnabled:0];
      legacyDoodleController = [MEMORY[0x277CCAB98] defaultCenter];
      [legacyDoodleController postNotificationName:@"AKToolController.inkToolStatusUpdated" object:self];
    }

    v9 = controller;
LABEL_15:
    self->_toolMode = mode;
    if (mode > 1)
    {
      if (mode == 2)
      {
        legacyDoodleController2 = [v9 legacyDoodleController];
        [legacyDoodleController2 setPressureSensitiveDoodleMode:1];

        goto LABEL_27;
      }

      if (mode == 4)
      {
        [(AKToolController *)self setAllInkEnabled:1];
        [(AKToolController *)self setPencilInkEnabled:1];
        attributeController = [controller attributeController];
        v14 = [attributeController ink];

        if (!v14)
        {
          attributeController2 = [controller attributeController];
          [attributeController2 setDefaultInk];
        }

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"AKToolController.inkToolStatusUpdated" object:self];

        modelController = [controller modelController];
        [modelController deselectAllAnnotations];
        goto LABEL_30;
      }
    }

    else
    {
      if (!mode)
      {
        supportForPencilAlwaysDrawsSatisfied = [v9 supportForPencilAlwaysDrawsSatisfied];
        [(AKToolController *)self setAllInkEnabled:0];
        if (supportForPencilAlwaysDrawsSatisfied)
        {
          [(AKToolController *)self setPencilInkEnabled:1];
          attributeController3 = [controller attributeController];
          [attributeController3 resetToLastDrawingInk];
        }

        else
        {
          [(AKToolController *)self setPencilInkEnabled:0];
        }

        modelController = [MEMORY[0x277CCAB98] defaultCenter];
        [modelController postNotificationName:@"AKToolController.inkToolStatusUpdated" object:self];
        goto LABEL_30;
      }

      if (mode == 1)
      {
        shouldDrawVariableStrokeDoodles = [v9 shouldDrawVariableStrokeDoodles];
        legacyDoodleController3 = [controller legacyDoodleController];
        [legacyDoodleController3 setPressureSensitiveDoodleMode:shouldDrawVariableStrokeDoodles];

LABEL_27:
        modelController = [controller legacyDoodleController];
        [modelController showOverlay];
LABEL_30:

        v9 = controller;
      }
    }

    toolbarViewController = [v9 toolbarViewController];
    [toolbarViewController revalidateItems];
    modernToolbarView = [controller modernToolbarView];
    [modernToolbarView revalidateItems];
    if (mode)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate controllerDidEnterToolMode:controller];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [delegate controllerDidExitToolMode:controller];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateToolSenderState:(id)state enabled:(BOOL)enabled
{
  stateCopy = state;
  if ([stateCopy tag] == 764015)
  {
    v5 = stateCopy;
    v6 = [(AKToolController *)self toolMode]== 1;
LABEL_7:
    v7 = v6;
    [v5 setSelected:v7];

    goto LABEL_11;
  }

  if ([stateCopy tag] == 764016)
  {
    v5 = stateCopy;
    v6 = [(AKToolController *)self toolMode]== 2;
    goto LABEL_7;
  }

  if ([stateCopy tag] == 764017)
  {
    v5 = stateCopy;
    v6 = [(AKToolController *)self toolMode]== 4;
    goto LABEL_7;
  }

  [stateCopy tag];
LABEL_11:
}

- (void)resetToDefaultMode
{
  if ([(AKToolController *)self isInDefaultMode])
  {
    pencilInkEnabled = [(AKToolController *)self pencilInkEnabled];
    controller = [(AKToolController *)self controller];
    supportForPencilAlwaysDrawsSatisfied = [controller supportForPencilAlwaysDrawsSatisfied];

    if (pencilInkEnabled == supportForPencilAlwaysDrawsSatisfied)
    {
      return;
    }

    self->_toolMode = -1;
  }

  defaultToolMode = [(AKToolController *)self defaultToolMode];

  [(AKToolController *)self setToolMode:defaultToolMode];
}

- (double)_modelBaseScaleFactorForNewAnnotation
{
  controller = [(AKToolController *)self controller];
  currentPageController = [controller currentPageController];
  [currentPageController modelBaseScaleFactor];
  v5 = v4;

  return v5;
}

- (double)_strokeWidthForNewAnnotation
{
  controller = [(AKToolController *)self controller];
  attributeController = [controller attributeController];
  [attributeController strokeWidth];
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
  controller = [(AKToolController *)self controller];
  currentPageController = [controller currentPageController];
  pageModelController = [currentPageController pageModelController];
  attributeController = [controller attributeController];
  selectedAnnotations = [pageModelController selectedAnnotations];
  if ([selectedAnnotations count])
  {
    anyObject = [selectedAnnotations anyObject];
    if ([anyObject conformsToAKStrokedAnnotationProtocol])
    {
      strokeColor = [anyObject strokeColor];
LABEL_7:

      goto LABEL_9;
    }
  }

  v9 = [attributeController ink];

  if (v9)
  {
    anyObject = [attributeController ink];
    color = [anyObject color];
    strokeColor = [color colorWithAlphaComponent:1.0];

    goto LABEL_7;
  }

  strokeColor = [attributeController strokeColor];
LABEL_9:

  return strokeColor;
}

- (CGRect)_centerBounds:(CGRect)result atPoint:(CGPoint)point
{
  v4 = point.x - result.size.width * 0.5;
  v5 = point.y - result.size.height * 0.5;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)_defaultCenterForNewAnnotation
{
  controller = [(AKToolController *)self controller];
  currentPageController = [controller currentPageController];
  [currentPageController visibleRectOfOverlay];
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

- (CGRect)_defaultRectangleForNewAnnotation:(id)annotation centeredAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  annotationCopy = annotation;
  [(AKToolController *)self _modelBaseScaleFactorForNewAnnotation];
  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    controller = [(AKToolController *)self controller];
    currentPageController = [controller currentPageController];
    [currentPageController maxPageRect];
    v14 = sqrt(v12 * v13 / 40.0 / 28800.0);
    v15 = v9 * 400.0 * v14;
    v16 = v9 * 72.0 * v14;
    v17 = annotationCopy;
    signature = [v17 signature];
    drawing = [signature drawing];

    signature2 = [v17 signature];
    signature3 = signature2;
    if (drawing)
    {
      drawing2 = [signature2 drawing];
      [drawing2 bounds];
      v24 = v23;
      v26 = v25;
    }

    else
    {
      path = [signature2 path];

      if (!path)
      {
        v24 = *MEMORY[0x277CBF3A8];
        v26 = *(MEMORY[0x277CBF3A8] + 8);
        goto LABEL_11;
      }

      signature3 = [v17 signature];
      [signature3 pathBounds];
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
    controller = [annotationCopy image];
    [controller size];
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
  controller2 = [(AKToolController *)self controller];
  currentPageController2 = [controller2 currentPageController];
  overlayView = [currentPageController2 overlayView];
  [(AKToolController *)self _validatedRect:overlayView fitsInVisibleRegionOfOverlayView:currentPageController2 ownedByPageController:x - v27 * 0.5 centeredAtPoint:y - v28 * 0.5, v27, v28, x, y];
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

- (CGRect)_validatedRect:(CGRect)rect fitsInVisibleRegionOfOverlayView:(id)view ownedByPageController:(id)controller centeredAtPoint:(CGPoint)point
{
  rect = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  [controllerCopy visibleRectOfOverlay];
  [controllerCopy convertRectFromModelToOverlay:?];
  [controllerCopy convertRectFromOverlayToModel:?];
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
    rectCopy = rect;
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
    rectCopy = CGRectGetHeight(v56) * v32;
    v57.origin.x = v43;
    v57.origin.y = v26;
    v57.size.width = v27;
    v57.size.height = rectCopy;
    v34 = point.x - CGRectGetWidth(v57) * 0.5;
    v58.origin.x = v34;
    v58.origin.y = v26;
    v58.size.width = v27;
    v58.size.height = rectCopy;
    v35 = point.y - CGRectGetHeight(v58) * 0.5;
  }

  v36 = v34;
  v37 = v27;
  v38 = rectCopy;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v35;
  result.origin.x = v36;
  return result;
}

- (id)_defaultTypingAttributes
{
  controller = [(AKToolController *)self controller];
  attributeController = [controller attributeController];
  textAttributes = [attributeController textAttributes];
  v5 = [textAttributes mutableCopy];

  strokeColor = [attributeController strokeColor];

  if (strokeColor)
  {
    strokeColor2 = [attributeController strokeColor];
    [v5 setObject:strokeColor2 forKeyedSubscript:*MEMORY[0x277D740C0]];
  }

  font = [attributeController font];
  [v5 setObject:font forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v5;
}

- (id)_defaultTextBoxTypingAttributes
{
  controller = [(AKToolController *)self controller];
  attributeController = [controller attributeController];
  textAttributes = [attributeController textAttributes];
  v5 = [textAttributes mutableCopy];

  font = [attributeController font];
  [v5 setObject:font forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v5;
}

- (id)_defaultHeartTypingAttributesWithFillColor:(id)color
{
  colorCopy = color;
  controller = [(AKToolController *)self controller];
  attributeController = [controller attributeController];
  textAttributes = [attributeController textAttributes];
  v8 = [textAttributes mutableCopy];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v10 = [colorCopy akIsEqualToColor:whiteColor];

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
  font = [attributeController font];
  [v8 setObject:font forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v8;
}

- (void)_setRectangleToFitTextOnTextAnnotation:(id)annotation
{
  annotationCopy = annotation;
  controller = [(AKToolController *)self controller];
  currentPageController = [controller currentPageController];
  [(AKToolController *)self _defaultCenterForNewAnnotation];
  v8 = 0u;
  v9 = 0u;
  LOBYTE(v7) = 0;
  [AKTextAnnotationRenderHelper getAnnotationRectangle:"getAnnotationRectangle:textBounds:containerSize:exclusionPaths:isTextClipped:forAnnotation:onPageController:orInContext:shouldAlignToPixels:optionalText:optionalCenter:optionalProposedRectangle:" textBounds:&v8 containerSize:0 exclusionPaths:0 isTextClipped:0 forAnnotation:0 onPageController:annotationCopy orInContext:currentPageController shouldAlignToPixels:0 optionalText:v7 optionalCenter:0 optionalProposedRectangle:?];
  [annotationCopy setRectangle:{v8, v9}];
}

- (unint64_t)_arrowStyleForToolTag:(int64_t)tag
{
  if ((tag - 764003) > 3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_23F4D9438[tag - 764003];
  }
}

- (void)_peripheralAvailabilityDidUpdate:(id)update
{
  controller = [(AKToolController *)self controller];
  peripheralAvailabilityManager = [controller peripheralAvailabilityManager];
  v4 = [peripheralAvailabilityManager currentAvailability] == 1;

  legacyDoodleController = [controller legacyDoodleController];
  [legacyDoodleController setPressureSensitiveDoodleMode:v4];

  legacyDoodleController2 = [controller legacyDoodleController];
  [legacyDoodleController2 updateStrokeAttributes];
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end