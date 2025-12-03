@interface AKAttributeController
+ (id)defaultTextAttributes;
+ (void)initialize;
- (AKAttributeController)initWithController:(id)controller;
- (AKController)controller;
- (BOOL)_isEnabledForSender:(id)sender segment:(int64_t)segment withSelectedAnnotations:(id)annotations;
- (BOOL)_updateStateOnSender:(id)sender segment:(int64_t)segment fromSelectedAnnotations:(id)annotations;
- (BOOL)isAttributeSenderEnabled:(id)enabled segment:(int64_t)segment;
- (BOOL)strokeColorIsEqualTo:(id)to;
- (void)_allAnnotations:(id)annotations all:(BOOL *)all atLeastOneShare:(BOOL *)share attributeFromTag:(int64_t)tag;
- (void)_persistCurrentAttributes;
- (void)_restorePersistedAttributes;
- (void)_syncAttributesFromSelectedAnnotationsToUI;
- (void)_syncAttributesFromSenderToSelfAndSelectedAnnotations:(id)annotations segment:(int64_t)segment;
- (void)_updateInk;
- (void)_updateStateOnSender:(id)sender segment:(int64_t)segment;
- (void)_updateStateOnSenderFromSelf:(id)self segment:(int64_t)segment;
- (void)annotationEditingDidEndWithCompletion:(id)completion;
- (void)forceHideRuler;
- (void)forceShowRuler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetToLastDrawingInk;
- (void)restoreStrokeColorToSystemDefault;
- (void)setDefaultInk;
- (void)setInk:(id)ink;
- (void)setModelControllerToObserveForSelections:(id)selections;
- (void)setStrokeColor:(id)color;
- (void)syncFillColorOnSelectionToUI;
- (void)syncStrokeColorOnSelectionToUI;
- (void)toggleRuler;
- (void)updateAttributeSenderState:(id)state segment:(int64_t)segment enabled:(BOOL)enabled;
- (void)updateInkIfNeeded:(id)needed;
@end

@implementation AKAttributeController

+ (id)defaultTextAttributes
{
  v13[3] = *MEMORY[0x277D85DE8];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v4 = [defaultParagraphStyle mutableCopy];

  [v4 setAlignment:1];
  [v4 setDefaultTabInterval:0.0];
  [v4 setAllowsDefaultTighteningForTruncation:1];
  v5 = [v4 copy];
  v12[0] = *MEMORY[0x277D740A8];
  defaultFont = [self defaultFont];
  v7 = *MEMORY[0x277D74118];
  v13[0] = defaultFont;
  v13[1] = v5;
  v8 = *MEMORY[0x277D740C0];
  v12[1] = v7;
  v12[2] = v8;
  blackColor = [MEMORY[0x277D75348] blackColor];
  v13[2] = blackColor;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (void)initialize
{
  v18[11] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();

  if (v3 == self)
  {
    defaultFont = [self defaultFont];
    defaultTextAttributes = [self defaultTextAttributes];
    v17[0] = @"com.apple.AnnotationKit.userDefaultsVersion";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v18[0] = v5;
    v17[1] = @"com.apple.AnnotationKit.strokeColor";
    v6 = MEMORY[0x277CBEBD0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v8 = [v6 akDataForColor:blackColor];
    v18[1] = v8;
    v17[2] = @"com.apple.AnnotationKit.fillColor";
    v9 = MEMORY[0x277CBEBD0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    v11 = [v9 akDataForColor:clearColor];
    v18[2] = v11;
    v18[3] = &unk_2851BB928;
    v17[3] = @"com.apple.AnnotationKit.strokeWidth";
    v17[4] = @"com.apple.AnnotationKit.strokeIsDashed";
    v18[4] = MEMORY[0x277CBEC28];
    v18[5] = MEMORY[0x277CBEC28];
    v17[5] = @"com.apple.AnnotationKit.hasShadow";
    v17[6] = @"com.apple.AnnotationKit.brushStyle";
    v18[6] = &unk_2851BB250;
    v18[7] = &unk_2851BB268;
    v17[7] = @"com.apple.AnnotationKit.arrowHeadStyle";
    v17[8] = @"com.apple.AnnotationKit.font";
    v12 = [MEMORY[0x277CBEBD0] akDataForFont:defaultFont];
    v18[8] = v12;
    v17[9] = @"com.apple.AnnotationKit.textAttributes";
    v13 = [MEMORY[0x277CBEBD0] akDataForTextAttributes:defaultTextAttributes];
    v17[10] = @"com.apple.AnnotationKit.highlightStyle";
    v18[9] = v13;
    v18[10] = &unk_2851BB280;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:11];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults registerDefaults:v14];
  }
}

- (AKAttributeController)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKAttributeController;
  v5 = [(AKAttributeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKAttributeController *)v5 setController:controllerCopy];
    [(AKAttributeController *)v6 _restorePersistedAttributes];
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"AKAttributeController.selectedAnnotationsObservationContext")
  {

    [(AKAttributeController *)self _syncAttributesFromSelectedAnnotationsToUI:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = AKAttributeController;
    [(AKAttributeController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  strokeColor = self->_strokeColor;
  p_strokeColor = &self->_strokeColor;
  v8 = colorCopy;
  if (![(UIColor *)strokeColor akIsEqualToColor:?])
  {
    objc_storeStrong(p_strokeColor, color);
  }
}

- (void)forceHideRuler
{
  controller = [(AKAttributeController *)self controller];
  currentPageController = [controller currentPageController];
  inkPageOverlayController = [currentPageController inkPageOverlayController];
  inkOverlayView = [inkPageOverlayController inkOverlayView];
  canvasView = [inkOverlayView canvasView];
  [canvasView setRulerActive:0];
}

- (void)forceShowRuler
{
  controller = [(AKAttributeController *)self controller];
  currentPageController = [controller currentPageController];
  inkPageOverlayController = [currentPageController inkPageOverlayController];
  inkOverlayView = [inkPageOverlayController inkOverlayView];
  canvasView = [inkOverlayView canvasView];
  [canvasView setRulerActive:1];
}

- (void)toggleRuler
{
  controller = [(AKAttributeController *)self controller];
  toolController = [controller toolController];
  toolMode = [toolController toolMode];

  if (toolMode == 4)
  {
    modelController = [controller modelController];
    [modelController deselectAllAnnotations];
  }

  currentPageController = [controller currentPageController];
  inkPageOverlayController = [currentPageController inkPageOverlayController];
  [inkPageOverlayController didToggleRuler];

  toolbarViewController = [controller toolbarViewController];
  [toolbarViewController revalidateItems];

  modernToolbarView = [controller modernToolbarView];
  [modernToolbarView revalidateItems];
}

- (void)annotationEditingDidEndWithCompletion:(id)completion
{
  completionCopy = completion;
  controller = [(AKAttributeController *)self controller];
  currentPageController = [controller currentPageController];

  inkPageOverlayController = [currentPageController inkPageOverlayController];

  if (inkPageOverlayController)
  {
    inkPageOverlayController2 = [currentPageController inkPageOverlayController];
    [inkPageOverlayController2 annotationEditingDidEndWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)setInk:(id)ink
{
  inkCopy = ink;
  if (([(PKInk *)self->_ink isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_ink, ink);
  }

  controller = [(AKAttributeController *)self controller];
  toolController = [controller toolController];
  toolMode = [toolController toolMode];

  if (toolMode == 4)
  {
    modelController = [controller modelController];
    [modelController deselectAllAnnotations];
  }

  [(AKAttributeController *)self _updateInk];
}

- (BOOL)isAttributeSenderEnabled:(id)enabled segment:(int64_t)segment
{
  enabledCopy = enabled;
  modelControllerToObserveForSelections = [(AKAttributeController *)self modelControllerToObserveForSelections];
  selectedAnnotations = [modelControllerToObserveForSelections selectedAnnotations];

  LOBYTE(segment) = [(AKAttributeController *)self _isEnabledForSender:enabledCopy segment:segment withSelectedAnnotations:selectedAnnotations];
  return segment;
}

- (void)updateAttributeSenderState:(id)state segment:(int64_t)segment enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  stateCopy = state;
  if (objc_opt_respondsToSelector())
  {
    [stateCopy setEnabled:enabledCopy];
  }

  [(AKAttributeController *)self _updateStateOnSender:stateCopy segment:segment];
}

- (BOOL)strokeColorIsEqualTo:(id)to
{
  toCopy = to;
  strokeColor = [(AKAttributeController *)self strokeColor];
  v6 = [strokeColor akIsEqualToColor:toCopy];

  return v6;
}

- (void)restoreStrokeColorToSystemDefault
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(AKAttributeController *)self setStrokeColor:blackColor];
}

- (void)setModelControllerToObserveForSelections:(id)selections
{
  selectionsCopy = selections;
  modelControllerToObserveForSelections = self->modelControllerToObserveForSelections;
  v7 = selectionsCopy;
  if (modelControllerToObserveForSelections != selectionsCopy)
  {
    if (modelControllerToObserveForSelections)
    {
      [(AKPageModelController *)modelControllerToObserveForSelections removeObserver:self forKeyPath:@"selectedAnnotations"];
    }

    objc_storeStrong(&self->modelControllerToObserveForSelections, selections);
    if (self->modelControllerToObserveForSelections)
    {
      [(AKAttributeController *)self _syncAttributesFromSelectedAnnotationsToUI];
      [(AKPageModelController *)self->modelControllerToObserveForSelections addObserver:self forKeyPath:@"selectedAnnotations" options:0 context:@"AKAttributeController.selectedAnnotationsObservationContext"];
    }
  }
}

- (void)setDefaultInk
{
  v3 = MEMORY[0x277CD9638];
  controller = [(AKAttributeController *)self controller];
  v5 = [v3 akDefaultInkWithHighVisibility:{objc_msgSend(controller, "useHighVisibilityDefaultInks")}];

  [(AKAttributeController *)self setInk:v5];
}

- (void)resetToLastDrawingInk
{
  controller = [(AKAttributeController *)self controller];
  modernToolbarView = [controller modernToolbarView];

  if (modernToolbarView)
  {
    [modernToolbarView resetToLastDrawingTool];
  }

  else
  {
    v4 = [(AKAttributeController *)self ink];

    if (v4)
    {
      v5 = MEMORY[0x277CD9638];
      v6 = [(AKAttributeController *)self ink];
      strokeColor = [(AKAttributeController *)self strokeColor];
      [(AKAttributeController *)self strokeWidth];
      v8 = [v5 akInkFromInk:v6 color:strokeColor strokeWidth:?];

      [(AKAttributeController *)self setInk:v8];
    }

    else
    {
      [(AKAttributeController *)self setDefaultInk];
    }
  }
}

- (void)updateInkIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy conformsToProtocol:&unk_2851CEC70] && objc_msgSend(neededCopy, "wantsInkUpdate"))
  {
    v4 = MEMORY[0x277CD9638];
    v5 = [(AKAttributeController *)self ink];
    strokeColor = [(AKAttributeController *)self strokeColor];
    [(AKAttributeController *)self strokeWidth];
    v7 = [v4 akInkFromInk:v5 color:strokeColor strokeWidth:?];
    [(AKAttributeController *)self setInk:v7];
  }
}

- (void)_updateInk
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AKAttributeController.inkDidChange" object:self];

  controller = [(AKAttributeController *)self controller];
  toolbarViewController = [controller toolbarViewController];
  [toolbarViewController revalidateItems];

  modernToolbarView = [controller modernToolbarView];
  [modernToolbarView revalidateItems];
}

- (void)_persistCurrentAttributes
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setInteger:1 forKey:@"com.apple.AnnotationKit.userDefaultsVersion"];
  strokeColor = [(AKAttributeController *)self strokeColor];
  [standardUserDefaults akSetColor:strokeColor forKey:@"com.apple.AnnotationKit.strokeColor"];

  fillColor = [(AKAttributeController *)self fillColor];
  [standardUserDefaults akSetColor:fillColor forKey:@"com.apple.AnnotationKit.fillColor"];

  [(AKAttributeController *)self strokeWidth];
  [standardUserDefaults setDouble:@"com.apple.AnnotationKit.strokeWidth" forKey:?];
  [standardUserDefaults setBool:-[AKAttributeController strokeIsDashed](self forKey:{"strokeIsDashed"), @"com.apple.AnnotationKit.strokeIsDashed"}];
  [standardUserDefaults setBool:-[AKAttributeController hasShadow](self forKey:{"hasShadow"), @"com.apple.AnnotationKit.hasShadow"}];
  [standardUserDefaults setInteger:-[AKAttributeController brushStyle](self forKey:{"brushStyle"), @"com.apple.AnnotationKit.brushStyle"}];
  [standardUserDefaults setInteger:-[AKAttributeController arrowHeadStyle](self forKey:{"arrowHeadStyle"), @"com.apple.AnnotationKit.arrowHeadStyle"}];
  font = [(AKAttributeController *)self font];
  [standardUserDefaults akSetFont:font forKey:@"com.apple.AnnotationKit.font"];

  textAttributes = [(AKAttributeController *)self textAttributes];
  [standardUserDefaults akSetTextAttributes:textAttributes forKey:@"com.apple.AnnotationKit.textAttributes"];

  [standardUserDefaults setInteger:-[AKAttributeController highlightStyle](self forKey:{"highlightStyle"), @"com.apple.AnnotationKit.highlightStyle"}];
}

- (void)_restorePersistedAttributes
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.strokeColor"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.fillColor"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.strokeWidth"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.strokeIsDashed"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.hasShadow"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.brushStyle"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.arrowHeadStyle"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.font"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.textAttributes"];
  [standardUserDefaults removeObjectForKey:@"com.apple.AnnotationKit.highlightStyle"];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(AKAttributeController *)self setStrokeColor:blackColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(AKAttributeController *)self setFillColor:clearColor];

  [standardUserDefaults doubleForKey:@"com.apple.AnnotationKit.strokeWidth"];
  [(AKAttributeController *)self setStrokeWidth:?];
  -[AKAttributeController setStrokeIsDashed:](self, "setStrokeIsDashed:", [standardUserDefaults BOOLForKey:@"com.apple.AnnotationKit.strokeIsDashed"]);
  -[AKAttributeController setHasShadow:](self, "setHasShadow:", [standardUserDefaults BOOLForKey:@"com.apple.AnnotationKit.hasShadow"]);
  -[AKAttributeController setBrushStyle:](self, "setBrushStyle:", [standardUserDefaults integerForKey:@"com.apple.AnnotationKit.brushStyle"]);
  v5 = [standardUserDefaults integerForKey:@"com.apple.AnnotationKit.arrowHeadStyle"];
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  [(AKAttributeController *)self setArrowHeadStyle:v6];
  v7 = [standardUserDefaults akFontForKey:@"com.apple.AnnotationKit.font"];
  [(AKAttributeController *)self setFont:v7];

  font = [(AKAttributeController *)self font];

  defaultFont = [objc_opt_class() defaultFont];
  font2 = defaultFont;
  if (font)
  {
    [defaultFont pointSize];
    v12 = v11;

    font2 = [(AKAttributeController *)self font];
    v13 = [font2 fontWithSize:v12];
    [(AKAttributeController *)self setFont:v13];
  }

  else
  {
    [(AKAttributeController *)self setFont:defaultFont];
  }

  v14 = [standardUserDefaults akTextAttributesForKey:@"com.apple.AnnotationKit.textAttributes"];
  [(AKAttributeController *)self setTextAttributes:v14];

  textAttributes = [(AKAttributeController *)self textAttributes];

  if (!textAttributes)
  {
    defaultTextAttributes = [objc_opt_class() defaultTextAttributes];
    [(AKAttributeController *)self setTextAttributes:defaultTextAttributes];
  }

  textAttributes2 = [(AKAttributeController *)self textAttributes];
  v18 = [textAttributes2 mutableCopy];

  font3 = [(AKAttributeController *)self font];
  [v18 setObject:font3 forKeyedSubscript:*MEMORY[0x277D740A8]];

  v20 = [v18 copy];
  [(AKAttributeController *)self setTextAttributes:v20];

  -[AKAttributeController setHighlightStyle:](self, "setHighlightStyle:", [standardUserDefaults integerForKey:@"com.apple.AnnotationKit.highlightStyle"]);
}

- (void)_syncAttributesFromSenderToSelfAndSelectedAnnotations:(id)annotations segment:(int64_t)segment
{
  v183 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v7 = [annotationsCopy tag];
  if (objc_opt_respondsToSelector())
  {
    v7 = [annotationsCopy tagForSegment:segment];
  }

  controller = [(AKAttributeController *)self controller];
  modelControllerToObserveForSelections = [(AKAttributeController *)self modelControllerToObserveForSelections];
  selectedAnnotations = [modelControllerToObserveForSelections selectedAnnotations];

  selfCopy = self;
  if (v7 > 765101)
  {
    if (v7 <= 765109)
    {
      if (v7 <= 765105)
      {
        if (v7 > 765103)
        {
          if (v7 == 765104)
          {
            if ([(AKAttributeController *)self strokeIsDashed])
            {
              [(AKAttributeController *)self setStrokeIsDashed:0];
            }

            [(AKAttributeController *)self setBrushStyle:[(AKAttributeController *)self brushStyle]== 0];
            goto LABEL_19;
          }

          font = [(AKAttributeController *)self font];
          v130 = [annotationsCopy convertFont:font];
          [(AKAttributeController *)self setFont:v130];

          font2 = [(AKAttributeController *)self font];

          if (!font2)
          {
            defaultFont = [objc_opt_class() defaultFont];
            [(AKAttributeController *)self setFont:defaultFont];
          }

          textAttributes = [(AKAttributeController *)self textAttributes];
          color = [textAttributes mutableCopy];

          v134 = *MEMORY[0x277D740A8];
          v135 = [color objectForKeyedSubscript:*MEMORY[0x277D740A8]];

          if (v135)
          {
            v136 = [color objectForKeyedSubscript:v134];
            font3 = [annotationsCopy convertFont:v136];

            self = selfCopy;
          }

          else
          {
            font3 = [(AKAttributeController *)self font];
          }

          [color setObject:font3 forKeyedSubscript:v134];

          v141 = [color copy];
          [(AKAttributeController *)self setTextAttributes:v141];
        }

        else
        {
          if (v7 != 765102)
          {
            if ([(AKAttributeController *)self brushStyle])
            {
              [(AKAttributeController *)self setBrushStyle:0];
            }

            [(AKAttributeController *)self setStrokeIsDashed:[(AKAttributeController *)self strokeIsDashed]^ 1];
            goto LABEL_19;
          }

          color = [annotationsCopy color];
          [(AKAttributeController *)self setFillColor:color];
        }

        goto LABEL_176;
      }

      if (v7 > 765107)
      {
        selfCopy4 = self;
        if (v7 == 765108)
        {
          v119 = 1;
        }

        else
        {
          v119 = 2;
        }
      }

      else
      {
        if (v7 == 765106)
        {
          textAttributes2 = [(AKAttributeController *)self textAttributes];
          v139 = [annotationsCopy convertTextAttributes:textAttributes2];
          [(AKAttributeController *)self setTextAttributes:v139];

          textAttributes3 = [(AKAttributeController *)self textAttributes];

          if (textAttributes3)
          {
            goto LABEL_19;
          }

          color = [objc_opt_class() defaultTextAttributes];
          [(AKAttributeController *)self setTextAttributes:color];
          goto LABEL_176;
        }

        selfCopy4 = self;
        v119 = 0;
      }
    }

    else
    {
      if ((v7 - 765200) < 7)
      {
        -[AKAttributeController setHighlightStyle:](self, "setHighlightStyle:", [annotationsCopy tag]);
        goto LABEL_19;
      }

      if (v7 != 765110)
      {
        if (v7 != 765300)
        {
          goto LABEL_19;
        }

        color = [annotationsCopy ink];
        [(AKAttributeController *)self setInk:color];
LABEL_176:

        goto LABEL_19;
      }

      selfCopy4 = self;
      v119 = 3;
    }

    [(AKAttributeController *)selfCopy4 setArrowHeadStyle:v119];
    goto LABEL_19;
  }

  if ((v7 - 765001) < 0xF)
  {
    if ([annotationsCopy conformsToProtocol:&unk_2851CEBF8])
    {
      [annotationsCopy lineWidth];
    }

    else
    {
      v10 = ([annotationsCopy tag] - 765000);
    }

    [(AKAttributeController *)self setStrokeWidth:v10];
    goto LABEL_18;
  }

  if (v7 == 765100)
  {
    [(AKAttributeController *)self setHasShadow:[(AKAttributeController *)self hasShadow]^ 1];
    goto LABEL_19;
  }

  if (v7 == 765101)
  {
    color2 = [annotationsCopy color];
    [(AKAttributeController *)self setStrokeColor:color2];

LABEL_18:
    [(AKAttributeController *)self updateInkIfNeeded:annotationsCopy];
  }

LABEL_19:
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = selectedAnnotations;
  v11 = [obj countByEnumeratingWithState:&v174 objects:v182 count:16];
  v152 = annotationsCopy;
  v12 = controller;
  if (!v11)
  {
    goto LABEL_129;
  }

  v13 = v11;
  v157 = *v175;
  v146 = *MEMORY[0x277D740C0];
  v14 = 1;
  if (v7 == 765206)
  {
    v14 = 2;
  }

  v145 = *MEMORY[0x277D740F8];
  v15 = *MEMORY[0x277D740A8];
  if (v7 == 765205)
  {
    v14 = 3;
  }

  v154 = v14;
  v16 = v7 - 765001;
  do
  {
    v17 = 0;
    do
    {
      if (*v175 != v157)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v174 + 1) + 8 * v17);
      currentPageController = [v12 currentPageController];
      if (objc_opt_respondsToSelector())
      {
        pathIsPrestroked = [v18 pathIsPrestroked];
      }

      else
      {
        pathIsPrestroked = 0;
      }

      if (v7 > 765101)
      {
        if (v7 > 765199)
        {
          if ((v7 - 765200) >= 7)
          {
            goto LABEL_93;
          }

          v23 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            color3 = v18;
            [color3 setStyle:v154];
            v26 = [AKHighlightAppearanceHelper colorForHighlightAttributeWithTag:v7];
            [color3 setColor:v26];

            if ([color3 conformsToAKParentAnnotationProtocol])
            {
              childAnnotation = [color3 childAnnotation];
              v28 = objc_opt_self();
              v29 = objc_opt_isKindOfClass();

              if (v29)
              {
                v30 = [AKHighlightAppearanceHelper colorForNoteOfHighlightAttributeTag:v7];
                [childAnnotation setFillColor:v30];
              }

              annotationsCopy = v152;
              self = selfCopy;
            }

            goto LABEL_91;
          }

          v31 = objc_opt_self();
          v32 = objc_opt_isKindOfClass();

          v12 = controller;
          if ((v32 & 1) != 0 && (v7 - 765200) <= 4)
          {
            v33 = v18;
            color3 = [AKHighlightAppearanceHelper colorForNoteOfHighlightAttributeTag:v7];
            [v33 setFillColor:color3];

            goto LABEL_91;
          }
        }

        else if (v7 > 765104)
        {
          if ((v7 - 765107) >= 4)
          {
            if (v7 == 765105)
            {
              if ([v18 conformsToAKTextAnnotationProtocol])
              {
                v61 = v18;
                v62 = annotationsCopy;
                annotationText = [v61 annotationText];
                v64 = [annotationText mutableCopy];

                [v64 removeAttribute:v145 range:{0, objc_msgSend(v64, "length")}];
                annotationText2 = [v61 annotationText];
                v171[0] = MEMORY[0x277D85DD0];
                v171[1] = 3221225472;
                v171[2] = sub_23F41FB74;
                v171[3] = &unk_278C7B658;
                v151 = v62;
                v172 = v151;
                v66 = v64;
                v173 = v66;
                [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:annotationText2 usingBlock:v171];

                v148 = v66;
                v67 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v66];
                [v61 setAnnotationText:v67];

                typingAttributes = [v61 typingAttributes];
                v69 = [typingAttributes mutableCopy];

                typingAttributes2 = [v61 typingAttributes];
                v71 = [typingAttributes2 objectForKeyedSubscript:v15];

                if (v71)
                {
                  v72 = [v69 objectForKeyedSubscript:v15];
                  font4 = [v151 convertFont:v72];
                }

                else
                {
                  font4 = [(AKAttributeController *)selfCopy font];
                }

                [v69 setObject:font4 forKeyedSubscript:v15];

                [v61 setTypingAttributes:v69];
                [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v61 toFitOptionalText:0 onPageController:currentPageController];

                goto LABEL_109;
              }
            }

            else if (v7 == 765106 && [v18 conformsToAKTextAnnotationProtocol])
            {
              v46 = v18;
              v47 = annotationsCopy;
              v48 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:v46];
              v49 = [v48 mutableCopy];

              v50 = [v49 length];
              v167[0] = MEMORY[0x277D85DD0];
              v167[1] = 3221225472;
              v167[2] = sub_23F41FBF4;
              v167[3] = &unk_278C7B958;
              v51 = v47;
              v168 = v51;
              v52 = v49;
              v169 = v52;
              v53 = v46;
              v170 = v53;
              [v52 enumerateAttributesInRange:0 options:v50 usingBlock:{0, v167}];
              v54 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v52];
              [v53 setAnnotationText:v54];

              typingAttributes3 = [v53 typingAttributes];
              v150 = v51;
              v56 = [v51 convertTextAttributes:typingAttributes3];

              [v53 setTypingAttributes:v56];
              v57 = [v56 objectForKeyedSubscript:v146];
              if (v57)
              {
                v58 = v57;
                v59 = objc_opt_respondsToSelector();

                if (v59)
                {
                  v60 = [v56 objectForKeyedSubscript:v146];
                  [v53 setStrokeColor:v60];
                }
              }

              [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v53 toFitOptionalText:0 onPageController:currentPageController];

LABEL_109:
              annotationsCopy = v152;
              self = selfCopy;
LABEL_92:
              v12 = controller;
            }
          }

          else if (objc_opt_respondsToSelector())
          {
            [v18 setArrowHeadStyle:{-[AKAttributeController arrowHeadStyle](self, "arrowHeadStyle")}];
          }
        }

        else
        {
          if (v7 == 765102)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_93;
            }

            color3 = [annotationsCopy color];
            [v18 setFillColor:color3];
LABEL_91:

            goto LABEL_92;
          }

          if (v7 == 765103)
          {
            if (pathIsPrestroked & 1) == 0 && (objc_opt_respondsToSelector())
            {
              if (objc_opt_respondsToSelector())
              {
                [v18 setBrushStyle:0];
              }

              [v18 setDashed:{-[AKAttributeController strokeIsDashed](self, "strokeIsDashed")}];
            }
          }

          else if (pathIsPrestroked & 1) == 0 && (objc_opt_respondsToSelector())
          {
            if (objc_opt_respondsToSelector())
            {
              [v18 setDashed:0];
            }

            [v18 setBrushStyle:{-[AKAttributeController brushStyle](self, "brushStyle")}];
          }
        }
      }

      else if (v16 <= 0x31 && ((1 << v16) & 0x2000000007FFFLL) != 0)
      {
        if (pathIsPrestroked & 1) == 0 && (objc_opt_respondsToSelector())
        {
          v21 = 1.0;
          if (v7 == 765050)
          {
            v22 = 1.0;
          }

          else
          {
            v22 = ([annotationsCopy tag] - 765000);
            if (v7 != 765001)
            {
              [currentPageController modelBaseScaleFactor];
              v21 = v43;
            }
          }

          [v18 setStrokeWidth:v22 * v21];
          strokeColor = [v18 strokeColor];

          if (!strokeColor)
          {
            strokeColor2 = [(AKAttributeController *)self strokeColor];
            [v18 setStrokeColor:strokeColor2];
          }

          v12 = controller;
          if ([v18 conformsToAKTextAnnotationProtocol])
          {
            [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v18 toFitOptionalText:0 onPageController:currentPageController];
          }
        }
      }

      else if (v7 == 765100)
      {
        if (objc_opt_respondsToSelector())
        {
          [v18 setHasShadow:{-[AKAttributeController hasShadow](self, "hasShadow")}];
        }
      }

      else if (v7 == 765101 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        strokeColor3 = [v18 strokeColor];
        color4 = [annotationsCopy color];
        [v18 setStrokeColor:?];
        if (objc_opt_respondsToSelector())
        {
          [v18 strokeWidth];
          if (v34 == 0.0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(AKAttributeController *)self strokeWidth];
              [v18 setStrokeWidth:?];
            }
          }
        }

        if ([v18 conformsToAKFilledAnnotationProtocol])
        {
          fillColor = [v18 fillColor];
          v36 = fillColor;
          if (fillColor && CGColorGetAlpha([fillColor CGColor]) != 0.0)
          {
            [v18 setFillColor:color4];
          }

          v12 = controller;
        }

        if ([v18 conformsToAKTextAnnotationProtocol])
        {
          v37 = v18;
          [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v37 toFitOptionalText:0 onPageController:currentPageController];
          if ([v37 conformsToAKFilledAnnotationProtocol])
          {
            annotationText3 = [v37 annotationText];
            strokeColor4 = [v37 strokeColor];
            v142 = strokeColor4;
            v144 = annotationText3;
            if (objc_opt_respondsToSelector())
            {
              fillColor2 = [v37 fillColor];
              if (fillColor2 && [strokeColor4 akIsEqualToColor:fillColor2])
              {
                whiteColor = [MEMORY[0x277D75348] whiteColor];
                v42 = [v142 akIsEqualToColor:whiteColor];

                if (v42)
                {
                  [MEMORY[0x277D75348] blackColor];
                }

                else
                {
                  [MEMORY[0x277D75348] whiteColor];
                }
                strokeColor4 = ;
              }
            }

            if (annotationText3 && [annotationText3 length])
            {
              v87 = [annotationText3 mutableCopy];
              v180 = v146;
              v181 = strokeColor4;
              v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
              [v87 addAttributes:v88 range:{0, objc_msgSend(annotationText3, "length")}];

              v89 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v87];
              [v37 setAnnotationText:v89];
            }

            typingAttributes4 = [v37 typingAttributes];
            v91 = [typingAttributes4 mutableCopy];

            [v91 setObject:strokeColor4 forKeyedSubscript:v146];
            [v37 setTypingAttributes:v91];

            annotationsCopy = v152;
            self = selfCopy;
            v85 = v142;
            goto LABEL_125;
          }

          if (([v37 isMemberOfClass:objc_opt_class()] & 1) == 0)
          {
            annotationText4 = [v37 annotationText];
            v144 = annotationText4;
            if (annotationText4)
            {
              v75 = annotationText4;
              if ([annotationText4 length])
              {
                v76 = [v75 mutableCopy];
                v77 = v75;
                v78 = v76;
                v79 = [v77 attributesAtIndex:0 effectiveRange:0];
                v80 = [v79 objectForKeyedSubscript:v146];
                v81 = v80;
                if (!v80 || [v80 akIsEqualToColor:strokeColor3])
                {
                  strokeColor5 = [v37 strokeColor];
                  v178 = v146;
                  v179 = strokeColor5;
                  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
                  [v78 addAttributes:v82 range:{0, objc_msgSend(v144, "length")}];

                  v83 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v78];
                  [v37 setAnnotationText:v83];

                  self = selfCopy;
                }

                annotationsCopy = v152;
              }
            }

            typingAttributes5 = [v37 typingAttributes];
            v85 = [typingAttributes5 mutableCopy];

            color5 = [annotationsCopy color];
            [v85 setObject:color5 forKeyedSubscript:v146];

            [v37 setTypingAttributes:v85];
LABEL_125:

            v12 = controller;
          }
        }
      }

LABEL_93:

      ++v17;
      v16 = v7 - 765001;
    }

    while (v13 != v17);
    v92 = [obj countByEnumeratingWithState:&v174 objects:v182 count:16];
    v13 = v92;
  }

  while (v92);
LABEL_129:

  textEditorController = [v12 textEditorController];
  isEditing = [textEditorController isEditing];

  if (isEditing)
  {
    textEditorController2 = [controller textEditorController];
    annotation = [textEditorController2 annotation];
    textView = [textEditorController2 textView];
    textStorage = [textView textStorage];
    if (v7 == 765106)
    {
      v113 = annotationsCopy;
      v114 = [textStorage length];
      v159[0] = MEMORY[0x277D85DD0];
      v159[1] = 3221225472;
      v159[2] = sub_23F41FD74;
      v159[3] = &unk_278C7B9A8;
      v160 = v113;
      v161 = textStorage;
      v115 = v113;
      [v161 enumerateAttributesInRange:0 options:v114 usingBlock:{0, v159}];
      typingAttributes6 = [textView typingAttributes];
      v117 = [v115 convertTextAttributes:typingAttributes6];
      [textView setTypingAttributes:v117];

      [textEditorController2 updateForTextAttributeChange];
      v104 = v160;
      goto LABEL_146;
    }

    if (v7 == 765105)
    {
      v99 = annotationsCopy;
      v158 = annotation;
      [annotation originalModelBaseScaleFactor];
      v101 = v100;
      v102 = [textStorage mutableCopy];
      v162[0] = MEMORY[0x277D85DD0];
      v162[1] = 3221225472;
      v162[2] = sub_23F41FCB0;
      v162[3] = &unk_278C7B980;
      v165 = 1.0 / v101;
      v103 = v99;
      v163 = v103;
      v166 = v101;
      v104 = v102;
      v164 = v104;
      [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:textStorage usingBlock:v162];
      [textStorage setAttributedString:v104];
      typingAttributes7 = [textView typingAttributes];
      v101 = [AKTextAnnotationAttributeHelper typingAttributes:typingAttributes7 byApplyingScaleFactor:1.0 / v101];

      v107 = v101;
      v108 = [v101 mutableCopy];
      v109 = *MEMORY[0x277D740A8];
      v110 = [v108 objectForKeyedSubscript:*MEMORY[0x277D740A8]];

      if (v110)
      {
        v111 = [v108 objectForKeyedSubscript:v109];
        font5 = [v103 convertFont:v111];
      }

      else
      {
        font5 = [(AKAttributeController *)selfCopy font];
      }

      [v108 setObject:font5 forKeyedSubscript:v109];

      v122 = [AKTextAnnotationAttributeHelper typingAttributes:v108 byApplyingScaleFactor:v101];

      [textView setTypingAttributes:v122];
      [textEditorController2 updateForTextAttributeChange];

      annotationsCopy = v152;
      annotation = v158;
LABEL_146:
    }

    self = selfCopy;
  }

  if ((v7 - 765105) <= 1)
  {
    toolbarViewController = [controller toolbarViewController];
    [toolbarViewController revalidateItems];
  }

  v124 = controller;
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 0xBACAC || (v7 - 765001) <= 0xE)
  {
    toolController = [controller toolController];
    if ([toolController toolMode] == 1)
    {

      goto LABEL_155;
    }

    toolController2 = [controller toolController];
    toolMode = [toolController2 toolMode];

    if (toolMode == 2)
    {
LABEL_155:
      legacyDoodleController = [controller legacyDoodleController];
      [legacyDoodleController updateStrokeAttributes];

      v124 = controller;
    }
  }

  [(AKAttributeController *)self _persistCurrentAttributes];
}

- (void)_syncAttributesFromSelectedAnnotationsToUI
{
  controller = [(AKAttributeController *)self controller];
  toolbarViewController = [controller toolbarViewController];
  [toolbarViewController revalidateItems];

  [(AKAttributeController *)self syncFillColorOnSelectionToUI];
  [(AKAttributeController *)self syncStrokeColorOnSelectionToUI];
}

- (void)syncFillColorOnSelectionToUI
{
  v27 = *MEMORY[0x277D85DE8];
  controller = [(AKAttributeController *)self controller];
  v4 = objc_opt_new();
  [controller maxHDRGain];
  [v4 setAllowHDR:v5 > 1.0];
  [controller availableHeadroom];
  [v4 setAvailableHeadroom:?];
  modelController = [controller modelController];
  [modelController annotationHeadroom];
  [v4 setDesiredHeadroom:?];

  selfCopy = self;
  modelControllerToObserveForSelections = [(AKAttributeController *)self modelControllerToObserveForSelections];
  selectedAnnotations = [modelControllerToObserveForSelections selectedAnnotations];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = selectedAnnotations;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v10)
  {

LABEL_21:
    if ([v9 count])
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [(AKAttributeController *)selfCopy fillColor];
    }
    v12 = ;
    goto LABEL_25;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v23;
  do
  {
    v14 = 0;
    do
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v22 + 1) + 8 * v14);
      if (objc_opt_respondsToSelector())
      {
        v16 = [v15 fillColorForOptions:v4];
        v17 = v16;
        if (v12 || !v16)
        {
          if (v12 && v16 && ([v12 akIsEqualToColor:v16] & 1) == 0)
          {
            whiteColor = [MEMORY[0x277D75348] whiteColor];

            v12 = whiteColor;
            goto LABEL_18;
          }
        }

        else
        {
          v17 = v16;
          v12 = v17;
        }
      }

      else
      {
        v17 = 0;
      }

      ++v14;
    }

    while (v11 != v14);
    v18 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v11 = v18;
  }

  while (v18);
LABEL_18:

  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_25:
  toolbarViewController = [controller toolbarViewController];
  [toolbarViewController setFillColorUIDisplayToColor:v12];
}

- (void)syncStrokeColorOnSelectionToUI
{
  v26 = *MEMORY[0x277D85DE8];
  controller = [(AKAttributeController *)self controller];
  v4 = objc_opt_new();
  [controller maxHDRGain];
  [v4 setAllowHDR:v5 > 1.0];
  [controller availableHeadroom];
  [v4 setAvailableHeadroom:?];
  modelController = [controller modelController];
  [modelController annotationHeadroom];
  [v4 setDesiredHeadroom:?];

  modelControllerToObserveForSelections = [(AKAttributeController *)self modelControllerToObserveForSelections];
  selectedAnnotations = [modelControllerToObserveForSelections selectedAnnotations];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = selectedAnnotations;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {

LABEL_21:
    if ([v9 count])
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [(AKAttributeController *)self strokeColor];
    }
    v12 = ;
    goto LABEL_25;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v22;
  do
  {
    v14 = 0;
    do
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      if ([v15 conformsToAKStrokedAnnotationProtocol])
      {
        v16 = [v15 strokeColorForOptions:v4];
        v17 = v16;
        if (v12 || !v16)
        {
          if (v12 && v16 && ([v12 akIsEqualToColor:v16] & 1) == 0)
          {
            whiteColor = [MEMORY[0x277D75348] whiteColor];

            v12 = whiteColor;
            goto LABEL_18;
          }
        }

        else
        {
          v17 = v16;
          v12 = v17;
        }
      }

      else
      {
        v17 = 0;
      }

      ++v14;
    }

    while (v11 != v14);
    v18 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v11 = v18;
  }

  while (v18);
LABEL_18:

  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_25:
  toolbarViewController = [controller toolbarViewController];
  [toolbarViewController setStrokeColorUIDisplayToColor:v12];
}

- (BOOL)_isEnabledForSender:(id)sender segment:(int64_t)segment withSelectedAnnotations:(id)annotations
{
  v133 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  annotationsCopy = annotations;
  v10 = annotationsCopy;
  if (annotationsCopy)
  {
    v11 = [annotationsCopy count] != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = [senderCopy tag];
  if (objc_opt_respondsToSelector())
  {
    v12 = [senderCopy tagForSegment:segment];
  }

  if (v12 <= 765101)
  {
    if ((v12 - 765001) <= 0x31 && ((1 << (v12 - 73)) & 0x2000000007FFFLL) != 0)
    {
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      controller2 = v10;
      v15 = [controller2 countByEnumeratingWithState:&v111 objects:v130 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v112;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v112 != v17)
            {
              objc_enumerationMutation(controller2);
            }

            v19 = *(*(&v111 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              if (objc_opt_respondsToSelector())
              {
                v20 = [v19 pathIsPrestroked] ^ 1;
              }

              else
              {
                LOBYTE(v20) = 1;
              }

              goto LABEL_142;
            }
          }

          v16 = [controller2 countByEnumeratingWithState:&v111 objects:v130 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_136;
    }

    if (v12 == 765100)
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      controller2 = v10;
      v57 = [controller2 countByEnumeratingWithState:&v99 objects:v127 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v100;
LABEL_101:
        v60 = 0;
        while (1)
        {
          if (*v100 != v59)
          {
            objc_enumerationMutation(controller2);
          }

          if (objc_opt_respondsToSelector())
          {
            goto LABEL_109;
          }

          if (v58 == ++v60)
          {
            v58 = [controller2 countByEnumeratingWithState:&v99 objects:v127 count:16];
            if (v58)
            {
              goto LABEL_101;
            }

            goto LABEL_136;
          }
        }
      }

      goto LABEL_136;
    }

    if (v12 == 765101)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      controller2 = v10;
      v38 = [controller2 countByEnumeratingWithState:&v115 objects:v131 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v116;
LABEL_66:
        v41 = 0;
        while (1)
        {
          if (*v116 != v40)
          {
            objc_enumerationMutation(controller2);
          }

          if (objc_opt_respondsToSelector())
          {
            goto LABEL_109;
          }

          if (v39 == ++v41)
          {
            v39 = [controller2 countByEnumeratingWithState:&v115 objects:v131 count:16];
            if (v39)
            {
              goto LABEL_66;
            }

            goto LABEL_136;
          }
        }
      }

      goto LABEL_136;
    }

LABEL_137:
    LOBYTE(v20) = !v11;
    goto LABEL_142;
  }

  if (v12 > 765199)
  {
    if ((v12 - 765200) < 5)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      controller2 = v10;
      v21 = [controller2 countByEnumeratingWithState:&v87 objects:v124 count:16];
      if (v21)
      {
        v22 = v21;
        v82 = senderCopy;
        v23 = *v88;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v88 != v23)
            {
              objc_enumerationMutation(controller2);
            }

            v25 = objc_opt_self();
            if (objc_opt_isKindOfClass())
            {

              goto LABEL_141;
            }

            v26 = objc_opt_self();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              goto LABEL_141;
            }
          }

          v22 = [controller2 countByEnumeratingWithState:&v87 objects:v124 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_136;
    }

    if ((v12 - 765205) >= 2)
    {
      if (v12 != 765300)
      {
        goto LABEL_137;
      }

      controller = [(AKAttributeController *)self controller];
      toolController = [controller toolController];
      toolMode = [toolController toolMode];

      if (toolMode != 4)
      {
        goto LABEL_137;
      }

LABEL_110:
      LOBYTE(v20) = 1;
      goto LABEL_142;
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    controller2 = v10;
    v32 = [controller2 countByEnumeratingWithState:&v83 objects:v123 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v84;
LABEL_55:
      v35 = 0;
      while (1)
      {
        if (*v84 != v34)
        {
          objc_enumerationMutation(controller2);
        }

        v36 = objc_opt_self();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          goto LABEL_109;
        }

        if (v33 == ++v35)
        {
          v33 = [controller2 countByEnumeratingWithState:&v83 objects:v123 count:16];
          if (v33)
          {
            goto LABEL_55;
          }

          break;
        }
      }
    }

LABEL_136:

    goto LABEL_137;
  }

  if (v12 > 765106)
  {
    if ((v12 - 765107) < 4)
    {
      if (!v11)
      {
LABEL_139:
        LOBYTE(v20) = 0;
        goto LABEL_142;
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      controller2 = v10;
      v28 = [controller2 countByEnumeratingWithState:&v91 objects:v125 count:16];
      if (!v28)
      {
        goto LABEL_136;
      }

      v29 = v28;
      v30 = *v92;
LABEL_45:
      v31 = 0;
      while (1)
      {
        if (*v92 != v30)
        {
          objc_enumerationMutation(controller2);
        }

        if (objc_opt_respondsToSelector())
        {
          goto LABEL_109;
        }

        if (v29 == ++v31)
        {
          v29 = [controller2 countByEnumeratingWithState:&v91 objects:v125 count:16];
          if (v29)
          {
            goto LABEL_45;
          }

          goto LABEL_136;
        }
      }
    }

    goto LABEL_137;
  }

  if (v12 > 765104)
  {
    controller2 = [(AKAttributeController *)self controller];
    textEditorController = [controller2 textEditorController];
    isEditing = [textEditorController isEditing];

    if ((isEditing & 1) == 0)
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v44 = v10;
      v45 = [v44 countByEnumeratingWithState:&v95 objects:v126 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v96;
        while (2)
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v96 != v47)
            {
              objc_enumerationMutation(v44);
            }

            if ([*(*(&v95 + 1) + 8 * k) conformsToAKTextAnnotationProtocol])
            {

              goto LABEL_109;
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v95 objects:v126 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_135;
    }

    goto LABEL_109;
  }

  if (v12 == 765102)
  {
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    controller2 = v10;
    v53 = [controller2 countByEnumeratingWithState:&v119 objects:v132 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v120;
LABEL_92:
      v56 = 0;
      while (1)
      {
        if (*v120 != v55)
        {
          objc_enumerationMutation(controller2);
        }

        if (objc_opt_respondsToSelector())
        {
          break;
        }

        if (v54 == ++v56)
        {
          v54 = [controller2 countByEnumeratingWithState:&v119 objects:v132 count:16];
          if (v54)
          {
            goto LABEL_92;
          }

          goto LABEL_136;
        }
      }

LABEL_109:

      goto LABEL_110;
    }

    goto LABEL_136;
  }

  if (v12 != 765103)
  {
    controller2 = [(AKAttributeController *)self controller];
    toolController2 = [controller2 toolController];
    if ([toolController2 toolMode] == 2)
    {

      if (!v11)
      {
        goto LABEL_138;
      }

LABEL_124:
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v63 = v10;
      v73 = [v63 countByEnumeratingWithState:&v103 objects:v128 count:16];
      if (v73)
      {
        v74 = v73;
        v81 = v11;
        v82 = senderCopy;
        v75 = *v104;
        v76 = &selRef_intValue;
LABEL_126:
        v77 = 0;
        v78 = v76;
        while (1)
        {
          if (*v104 != v75)
          {
            objc_enumerationMutation(v63);
          }

          v79 = *(*(&v103 + 1) + 8 * v77);
          if ((objc_opt_respondsToSelector() & 1) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || ![v79 pathIsPrestroked]))
          {
            goto LABEL_140;
          }

          if (v74 == ++v77)
          {
            v74 = [v63 countByEnumeratingWithState:&v103 objects:v128 count:16];
            v76 = v78;
            if (v74)
            {
              goto LABEL_126;
            }

            goto LABEL_134;
          }
        }
      }

      goto LABEL_135;
    }

    toolController3 = [controller2 toolController];
    v72 = [toolController3 toolMode] != 4;

    if (v72 || v11)
    {
      goto LABEL_124;
    }

LABEL_138:

    goto LABEL_139;
  }

  controller2 = [(AKAttributeController *)self controller];
  toolController4 = [controller2 toolController];
  if ([toolController4 toolMode] == 2)
  {

    if (!v11)
    {
      goto LABEL_138;
    }
  }

  else
  {
    toolController5 = [controller2 toolController];
    v62 = [toolController5 toolMode] != 4;

    if (!v62 && !v11)
    {
      goto LABEL_138;
    }
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v63 = v10;
  v64 = [v63 countByEnumeratingWithState:&v107 objects:v129 count:16];
  if (!v64)
  {
LABEL_135:

    goto LABEL_136;
  }

  v65 = v64;
  v81 = v11;
  v82 = senderCopy;
  v66 = *v108;
  v67 = &selRef_intValue;
LABEL_114:
  v68 = 0;
  v69 = v67;
  while (1)
  {
    if (*v108 != v66)
    {
      objc_enumerationMutation(v63);
    }

    v70 = *(*(&v107 + 1) + 8 * v68);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || ![v70 pathIsPrestroked]))
    {
      break;
    }

    if (v65 == ++v68)
    {
      v65 = [v63 countByEnumeratingWithState:&v107 objects:v129 count:16];
      v67 = v69;
      if (v65)
      {
        goto LABEL_114;
      }

LABEL_134:
      senderCopy = v82;
      LOBYTE(v11) = v81;
      goto LABEL_135;
    }
  }

LABEL_140:

LABEL_141:
  LOBYTE(v20) = 1;
  senderCopy = v82;
LABEL_142:

  return v20;
}

- (void)_updateStateOnSender:(id)sender segment:(int64_t)segment
{
  senderCopy = sender;
  modelControllerToObserveForSelections = [(AKAttributeController *)self modelControllerToObserveForSelections];
  selectedAnnotations = [modelControllerToObserveForSelections selectedAnnotations];

  if (![(AKAttributeController *)self _updateStateOnSender:senderCopy segment:segment fromSelectedAnnotations:selectedAnnotations])
  {
    [(AKAttributeController *)self _updateStateOnSenderFromSelf:senderCopy segment:segment];
  }
}

- (void)_allAnnotations:(id)annotations all:(BOOL *)all atLeastOneShare:(BOOL *)share attributeFromTag:(int64_t)tag
{
  v20 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [annotationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(annotationsCopy);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (tag <= 765106)
        {
          if (tag == 765100)
          {
            if (objc_opt_respondsToSelector() & 1) != 0 && ([v13 hasShadow])
            {
LABEL_34:
              *share = 1;
              continue;
            }
          }

          else if (tag == 765103)
          {
            if (objc_opt_respondsToSelector() & 1) != 0 && ([v13 isDashed])
            {
              goto LABEL_34;
            }
          }

          else if (tag == 765104 && (objc_opt_respondsToSelector() & 1) != 0 && [v13 brushStyle])
          {
            goto LABEL_34;
          }
        }

        else if (tag > 765108)
        {
          if (tag == 765109)
          {
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 arrowHeadStyle] == 2)
            {
              goto LABEL_34;
            }
          }

          else if (tag == 765110 && (objc_opt_respondsToSelector() & 1) != 0 && [v13 arrowHeadStyle] == 3)
          {
            goto LABEL_34;
          }
        }

        else if (tag == 765107)
        {
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 arrowHeadStyle])
          {
            goto LABEL_34;
          }
        }

        else if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 arrowHeadStyle] == 1)
        {
          goto LABEL_34;
        }

        *all = 0;
      }

      v10 = [annotationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (BOOL)_updateStateOnSender:(id)sender segment:(int64_t)segment fromSelectedAnnotations:(id)annotations
{
  v50 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  annotationsCopy = annotations;
  v9 = annotationsCopy;
  if (!annotationsCopy || ![annotationsCopy count])
  {
    goto LABEL_34;
  }

  if ([senderCopy conformsToProtocol:&unk_2851E7310])
  {
    v10 = senderCopy;
    v11 = [v10 tag];
    v12 = v11 == 765105;
    if (v11 == 765105)
    {
      v13 = [AKTextAnnotationAttributeHelper fontsOfAnnotations:v9];
      controller = [(AKAttributeController *)self controller];
      textEditorController = [controller textEditorController];
      v16 = [AKTextAnnotationAttributeHelper fontsOfEditor:textEditorController];
      if ([v16 count])
      {
        v17 = [v13 setByAddingObjectsFromSet:v16];

        v13 = v17;
      }

      [v10 syncFontsToUI:v13];
LABEL_13:

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (![senderCopy conformsToProtocol:&unk_2851D1F48])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([senderCopy tag] > 765000 && objc_msgSend(senderCopy, "tag") < 765016 || objc_msgSend(senderCopy, "tag") > 765106 && objc_msgSend(senderCopy, "tag") < 765111))
    {
      v10 = senderCopy;
      v20 = [v10 tag];
      if ((v20 - 765001) >= 0xF)
      {
        if ((v20 - 765107) >= 4)
        {
          v12 = 0;
          goto LABEL_14;
        }

        v44 = 0;
        -[AKAttributeController _allAnnotations:all:atLeastOneShare:attributeFromTag:](self, "_allAnnotations:all:atLeastOneShare:attributeFromTag:", v9, &v44 + 1, &v44, [v10 tag]);
        [v10 setSelected:v44];
      }

      else
      {
        controller2 = [(AKAttributeController *)self controller];
        currentPageController = [controller2 currentPageController];
        [currentPageController modelBaseScaleFactor];
        v24 = v23;

        v25 = [v10 tag];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v26 = v9;
        v27 = [v26 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v27)
        {
          v28 = v27;
          v41 = controller2;
          v42 = v9;
          v43 = senderCopy;
          v29 = 0;
          v30 = *v46;
          v31 = 1;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v46 != v30)
              {
                objc_enumerationMutation(v26);
              }

              v33 = *(*(&v45 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v33 strokeWidth];
                v35 = v34;
                v36 = [v10 tag];
                v37 = v35 / v24;
                if (v36 == 765001)
                {
                  v37 = v35;
                }

                v38 = vabdd_f64(v37, (v25 - 765000)) < 0.0005;
                v29 |= v38;
                v31 &= v38;
              }

              else
              {
                v31 = 0;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v28);
          v39 = v31 | v29;
          v9 = v42;
          senderCopy = v43;
          controller2 = v41;
        }

        else
        {
          v39 = 1;
        }

        [v10 setSelected:v39 & 1];
      }

      v12 = 1;
      goto LABEL_14;
    }

LABEL_34:
    v12 = 0;
    goto LABEL_35;
  }

  v10 = senderCopy;
  v18 = [v10 tag];
  v12 = v18 == 765106;
  if (v18 == 765106)
  {
    v13 = [AKTextAnnotationAttributeHelper textAttributesOfAnnotations:v9];
    controller = [(AKAttributeController *)self controller];
    textEditorController = [controller textEditorController];
    v16 = [AKTextAnnotationAttributeHelper textAttributesOfEditor:textEditorController];
    if ([v16 count])
    {
      v19 = [v13 setByAddingObjectsFromSet:v16];

      v13 = v19;
    }

    [v10 syncTextAttributesToUI:v13];
    goto LABEL_13;
  }

LABEL_14:

LABEL_35:
  return v12;
}

- (void)_updateStateOnSenderFromSelf:(id)self segment:(int64_t)segment
{
  selfCopy = self;
  if ([selfCopy conformsToProtocol:&unk_2851E7310])
  {
    v5 = selfCopy;
    if ([v5 tag] == 765105)
    {
      v6 = MEMORY[0x277CBEB98];
      font = [(AKAttributeController *)self font];
      v8 = [v6 setWithObject:font];

      controller = [(AKAttributeController *)self controller];
      textEditorController = [controller textEditorController];
      v11 = [AKTextAnnotationAttributeHelper fontsOfEditor:textEditorController];
      if ([v11 count])
      {
        v12 = [v8 setByAddingObjectsFromSet:v11];

        v8 = v12;
      }

      [v5 syncFontsToUI:v8];
LABEL_11:
    }
  }

  else
  {
    if (![selfCopy conformsToProtocol:&unk_2851D1F48])
    {
      goto LABEL_13;
    }

    v13 = selfCopy;
    if ([v13 tag] == 765106)
    {
      v14 = MEMORY[0x277CBEB98];
      textAttributes = [(AKAttributeController *)self textAttributes];
      v8 = [v14 setWithObject:textAttributes];

      controller = [(AKAttributeController *)self controller];
      textEditorController = [controller textEditorController];
      v11 = [AKTextAnnotationAttributeHelper textAttributesOfEditor:textEditorController];
      if ([v11 count])
      {
        v16 = [v8 setByAddingObjectsFromSet:v11];

        v8 = v16;
      }

      [v13 syncTextAttributesToUI:v8];
      goto LABEL_11;
    }
  }

LABEL_13:
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end