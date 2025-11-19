@interface AKAttributeController
+ (id)defaultTextAttributes;
+ (void)initialize;
- (AKAttributeController)initWithController:(id)a3;
- (AKController)controller;
- (BOOL)_isEnabledForSender:(id)a3 segment:(int64_t)a4 withSelectedAnnotations:(id)a5;
- (BOOL)_updateStateOnSender:(id)a3 segment:(int64_t)a4 fromSelectedAnnotations:(id)a5;
- (BOOL)isAttributeSenderEnabled:(id)a3 segment:(int64_t)a4;
- (BOOL)strokeColorIsEqualTo:(id)a3;
- (void)_allAnnotations:(id)a3 all:(BOOL *)a4 atLeastOneShare:(BOOL *)a5 attributeFromTag:(int64_t)a6;
- (void)_persistCurrentAttributes;
- (void)_restorePersistedAttributes;
- (void)_syncAttributesFromSelectedAnnotationsToUI;
- (void)_syncAttributesFromSenderToSelfAndSelectedAnnotations:(id)a3 segment:(int64_t)a4;
- (void)_updateInk;
- (void)_updateStateOnSender:(id)a3 segment:(int64_t)a4;
- (void)_updateStateOnSenderFromSelf:(id)a3 segment:(int64_t)a4;
- (void)annotationEditingDidEndWithCompletion:(id)a3;
- (void)forceHideRuler;
- (void)forceShowRuler;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetToLastDrawingInk;
- (void)restoreStrokeColorToSystemDefault;
- (void)setDefaultInk;
- (void)setInk:(id)a3;
- (void)setModelControllerToObserveForSelections:(id)a3;
- (void)setStrokeColor:(id)a3;
- (void)syncFillColorOnSelectionToUI;
- (void)syncStrokeColorOnSelectionToUI;
- (void)toggleRuler;
- (void)updateAttributeSenderState:(id)a3 segment:(int64_t)a4 enabled:(BOOL)a5;
- (void)updateInkIfNeeded:(id)a3;
@end

@implementation AKAttributeController

+ (id)defaultTextAttributes
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setAlignment:1];
  [v4 setDefaultTabInterval:0.0];
  [v4 setAllowsDefaultTighteningForTruncation:1];
  v5 = [v4 copy];
  v12[0] = *MEMORY[0x277D740A8];
  v6 = [a1 defaultFont];
  v7 = *MEMORY[0x277D74118];
  v13[0] = v6;
  v13[1] = v5;
  v8 = *MEMORY[0x277D740C0];
  v12[1] = v7;
  v12[2] = v8;
  v9 = [MEMORY[0x277D75348] blackColor];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (void)initialize
{
  v18[11] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v16 = [a1 defaultFont];
    v4 = [a1 defaultTextAttributes];
    v17[0] = @"com.apple.AnnotationKit.userDefaultsVersion";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v18[0] = v5;
    v17[1] = @"com.apple.AnnotationKit.strokeColor";
    v6 = MEMORY[0x277CBEBD0];
    v7 = [MEMORY[0x277D75348] blackColor];
    v8 = [v6 akDataForColor:v7];
    v18[1] = v8;
    v17[2] = @"com.apple.AnnotationKit.fillColor";
    v9 = MEMORY[0x277CBEBD0];
    v10 = [MEMORY[0x277D75348] clearColor];
    v11 = [v9 akDataForColor:v10];
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
    v12 = [MEMORY[0x277CBEBD0] akDataForFont:v16];
    v18[8] = v12;
    v17[9] = @"com.apple.AnnotationKit.textAttributes";
    v13 = [MEMORY[0x277CBEBD0] akDataForTextAttributes:v4];
    v17[10] = @"com.apple.AnnotationKit.highlightStyle";
    v18[9] = v13;
    v18[10] = &unk_2851BB280;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:11];

    v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v15 registerDefaults:v14];
  }
}

- (AKAttributeController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKAttributeController;
  v5 = [(AKAttributeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKAttributeController *)v5 setController:v4];
    [(AKAttributeController *)v6 _restorePersistedAttributes];
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"AKAttributeController.selectedAnnotationsObservationContext")
  {

    [(AKAttributeController *)self _syncAttributesFromSelectedAnnotationsToUI:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = AKAttributeController;
    [(AKAttributeController *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  strokeColor = self->_strokeColor;
  p_strokeColor = &self->_strokeColor;
  v8 = v5;
  if (![(UIColor *)strokeColor akIsEqualToColor:?])
  {
    objc_storeStrong(p_strokeColor, a3);
  }
}

- (void)forceHideRuler
{
  v6 = [(AKAttributeController *)self controller];
  v2 = [v6 currentPageController];
  v3 = [v2 inkPageOverlayController];
  v4 = [v3 inkOverlayView];
  v5 = [v4 canvasView];
  [v5 setRulerActive:0];
}

- (void)forceShowRuler
{
  v6 = [(AKAttributeController *)self controller];
  v2 = [v6 currentPageController];
  v3 = [v2 inkPageOverlayController];
  v4 = [v3 inkOverlayView];
  v5 = [v4 canvasView];
  [v5 setRulerActive:1];
}

- (void)toggleRuler
{
  v9 = [(AKAttributeController *)self controller];
  v2 = [v9 toolController];
  v3 = [v2 toolMode];

  if (v3 == 4)
  {
    v4 = [v9 modelController];
    [v4 deselectAllAnnotations];
  }

  v5 = [v9 currentPageController];
  v6 = [v5 inkPageOverlayController];
  [v6 didToggleRuler];

  v7 = [v9 toolbarViewController];
  [v7 revalidateItems];

  v8 = [v9 modernToolbarView];
  [v8 revalidateItems];
}

- (void)annotationEditingDidEndWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(AKAttributeController *)self controller];
  v5 = [v4 currentPageController];

  v6 = [v5 inkPageOverlayController];

  if (v6)
  {
    v7 = [v5 inkPageOverlayController];
    [v7 annotationEditingDidEndWithCompletion:v8];
  }

  else if (v8)
  {
    v8[2]();
  }
}

- (void)setInk:(id)a3
{
  v9 = a3;
  if (([(PKInk *)self->_ink isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_ink, a3);
  }

  v5 = [(AKAttributeController *)self controller];
  v6 = [v5 toolController];
  v7 = [v6 toolMode];

  if (v7 == 4)
  {
    v8 = [v5 modelController];
    [v8 deselectAllAnnotations];
  }

  [(AKAttributeController *)self _updateInk];
}

- (BOOL)isAttributeSenderEnabled:(id)a3 segment:(int64_t)a4
{
  v6 = a3;
  v7 = [(AKAttributeController *)self modelControllerToObserveForSelections];
  v8 = [v7 selectedAnnotations];

  LOBYTE(a4) = [(AKAttributeController *)self _isEnabledForSender:v6 segment:a4 withSelectedAnnotations:v8];
  return a4;
}

- (void)updateAttributeSenderState:(id)a3 segment:(int64_t)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v8 setEnabled:v5];
  }

  [(AKAttributeController *)self _updateStateOnSender:v8 segment:a4];
}

- (BOOL)strokeColorIsEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(AKAttributeController *)self strokeColor];
  v6 = [v5 akIsEqualToColor:v4];

  return v6;
}

- (void)restoreStrokeColorToSystemDefault
{
  v3 = [MEMORY[0x277D75348] blackColor];
  [(AKAttributeController *)self setStrokeColor:v3];
}

- (void)setModelControllerToObserveForSelections:(id)a3
{
  v5 = a3;
  modelControllerToObserveForSelections = self->modelControllerToObserveForSelections;
  v7 = v5;
  if (modelControllerToObserveForSelections != v5)
  {
    if (modelControllerToObserveForSelections)
    {
      [(AKPageModelController *)modelControllerToObserveForSelections removeObserver:self forKeyPath:@"selectedAnnotations"];
    }

    objc_storeStrong(&self->modelControllerToObserveForSelections, a3);
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
  v4 = [(AKAttributeController *)self controller];
  v5 = [v3 akDefaultInkWithHighVisibility:{objc_msgSend(v4, "useHighVisibilityDefaultInks")}];

  [(AKAttributeController *)self setInk:v5];
}

- (void)resetToLastDrawingInk
{
  v3 = [(AKAttributeController *)self controller];
  v9 = [v3 modernToolbarView];

  if (v9)
  {
    [v9 resetToLastDrawingTool];
  }

  else
  {
    v4 = [(AKAttributeController *)self ink];

    if (v4)
    {
      v5 = MEMORY[0x277CD9638];
      v6 = [(AKAttributeController *)self ink];
      v7 = [(AKAttributeController *)self strokeColor];
      [(AKAttributeController *)self strokeWidth];
      v8 = [v5 akInkFromInk:v6 color:v7 strokeWidth:?];

      [(AKAttributeController *)self setInk:v8];
    }

    else
    {
      [(AKAttributeController *)self setDefaultInk];
    }
  }
}

- (void)updateInkIfNeeded:(id)a3
{
  v8 = a3;
  if ([v8 conformsToProtocol:&unk_2851CEC70] && objc_msgSend(v8, "wantsInkUpdate"))
  {
    v4 = MEMORY[0x277CD9638];
    v5 = [(AKAttributeController *)self ink];
    v6 = [(AKAttributeController *)self strokeColor];
    [(AKAttributeController *)self strokeWidth];
    v7 = [v4 akInkFromInk:v5 color:v6 strokeWidth:?];
    [(AKAttributeController *)self setInk:v7];
  }
}

- (void)_updateInk
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"AKAttributeController.inkDidChange" object:self];

  v6 = [(AKAttributeController *)self controller];
  v4 = [v6 toolbarViewController];
  [v4 revalidateItems];

  v5 = [v6 modernToolbarView];
  [v5 revalidateItems];
}

- (void)_persistCurrentAttributes
{
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 setInteger:1 forKey:@"com.apple.AnnotationKit.userDefaultsVersion"];
  v3 = [(AKAttributeController *)self strokeColor];
  [v7 akSetColor:v3 forKey:@"com.apple.AnnotationKit.strokeColor"];

  v4 = [(AKAttributeController *)self fillColor];
  [v7 akSetColor:v4 forKey:@"com.apple.AnnotationKit.fillColor"];

  [(AKAttributeController *)self strokeWidth];
  [v7 setDouble:@"com.apple.AnnotationKit.strokeWidth" forKey:?];
  [v7 setBool:-[AKAttributeController strokeIsDashed](self forKey:{"strokeIsDashed"), @"com.apple.AnnotationKit.strokeIsDashed"}];
  [v7 setBool:-[AKAttributeController hasShadow](self forKey:{"hasShadow"), @"com.apple.AnnotationKit.hasShadow"}];
  [v7 setInteger:-[AKAttributeController brushStyle](self forKey:{"brushStyle"), @"com.apple.AnnotationKit.brushStyle"}];
  [v7 setInteger:-[AKAttributeController arrowHeadStyle](self forKey:{"arrowHeadStyle"), @"com.apple.AnnotationKit.arrowHeadStyle"}];
  v5 = [(AKAttributeController *)self font];
  [v7 akSetFont:v5 forKey:@"com.apple.AnnotationKit.font"];

  v6 = [(AKAttributeController *)self textAttributes];
  [v7 akSetTextAttributes:v6 forKey:@"com.apple.AnnotationKit.textAttributes"];

  [v7 setInteger:-[AKAttributeController highlightStyle](self forKey:{"highlightStyle"), @"com.apple.AnnotationKit.highlightStyle"}];
}

- (void)_restorePersistedAttributes
{
  v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.strokeColor"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.fillColor"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.strokeWidth"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.strokeIsDashed"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.hasShadow"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.brushStyle"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.arrowHeadStyle"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.font"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.textAttributes"];
  [v21 removeObjectForKey:@"com.apple.AnnotationKit.highlightStyle"];
  v3 = [MEMORY[0x277D75348] blackColor];
  [(AKAttributeController *)self setStrokeColor:v3];

  v4 = [MEMORY[0x277D75348] clearColor];
  [(AKAttributeController *)self setFillColor:v4];

  [v21 doubleForKey:@"com.apple.AnnotationKit.strokeWidth"];
  [(AKAttributeController *)self setStrokeWidth:?];
  -[AKAttributeController setStrokeIsDashed:](self, "setStrokeIsDashed:", [v21 BOOLForKey:@"com.apple.AnnotationKit.strokeIsDashed"]);
  -[AKAttributeController setHasShadow:](self, "setHasShadow:", [v21 BOOLForKey:@"com.apple.AnnotationKit.hasShadow"]);
  -[AKAttributeController setBrushStyle:](self, "setBrushStyle:", [v21 integerForKey:@"com.apple.AnnotationKit.brushStyle"]);
  v5 = [v21 integerForKey:@"com.apple.AnnotationKit.arrowHeadStyle"];
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  [(AKAttributeController *)self setArrowHeadStyle:v6];
  v7 = [v21 akFontForKey:@"com.apple.AnnotationKit.font"];
  [(AKAttributeController *)self setFont:v7];

  v8 = [(AKAttributeController *)self font];

  v9 = [objc_opt_class() defaultFont];
  v10 = v9;
  if (v8)
  {
    [v9 pointSize];
    v12 = v11;

    v10 = [(AKAttributeController *)self font];
    v13 = [v10 fontWithSize:v12];
    [(AKAttributeController *)self setFont:v13];
  }

  else
  {
    [(AKAttributeController *)self setFont:v9];
  }

  v14 = [v21 akTextAttributesForKey:@"com.apple.AnnotationKit.textAttributes"];
  [(AKAttributeController *)self setTextAttributes:v14];

  v15 = [(AKAttributeController *)self textAttributes];

  if (!v15)
  {
    v16 = [objc_opt_class() defaultTextAttributes];
    [(AKAttributeController *)self setTextAttributes:v16];
  }

  v17 = [(AKAttributeController *)self textAttributes];
  v18 = [v17 mutableCopy];

  v19 = [(AKAttributeController *)self font];
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277D740A8]];

  v20 = [v18 copy];
  [(AKAttributeController *)self setTextAttributes:v20];

  -[AKAttributeController setHighlightStyle:](self, "setHighlightStyle:", [v21 integerForKey:@"com.apple.AnnotationKit.highlightStyle"]);
}

- (void)_syncAttributesFromSenderToSelfAndSelectedAnnotations:(id)a3 segment:(int64_t)a4
{
  v183 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 tag];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 tagForSegment:a4];
  }

  v155 = [(AKAttributeController *)self controller];
  v8 = [(AKAttributeController *)self modelControllerToObserveForSelections];
  v9 = [v8 selectedAnnotations];

  v153 = self;
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

          v129 = [(AKAttributeController *)self font];
          v130 = [v6 convertFont:v129];
          [(AKAttributeController *)self setFont:v130];

          v131 = [(AKAttributeController *)self font];

          if (!v131)
          {
            v132 = [objc_opt_class() defaultFont];
            [(AKAttributeController *)self setFont:v132];
          }

          v133 = [(AKAttributeController *)self textAttributes];
          v121 = [v133 mutableCopy];

          v134 = *MEMORY[0x277D740A8];
          v135 = [v121 objectForKeyedSubscript:*MEMORY[0x277D740A8]];

          if (v135)
          {
            v136 = [v121 objectForKeyedSubscript:v134];
            v137 = [v6 convertFont:v136];

            self = v153;
          }

          else
          {
            v137 = [(AKAttributeController *)self font];
          }

          [v121 setObject:v137 forKeyedSubscript:v134];

          v141 = [v121 copy];
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

          v121 = [v6 color];
          [(AKAttributeController *)self setFillColor:v121];
        }

        goto LABEL_176;
      }

      if (v7 > 765107)
      {
        v118 = self;
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
          v138 = [(AKAttributeController *)self textAttributes];
          v139 = [v6 convertTextAttributes:v138];
          [(AKAttributeController *)self setTextAttributes:v139];

          v140 = [(AKAttributeController *)self textAttributes];

          if (v140)
          {
            goto LABEL_19;
          }

          v121 = [objc_opt_class() defaultTextAttributes];
          [(AKAttributeController *)self setTextAttributes:v121];
          goto LABEL_176;
        }

        v118 = self;
        v119 = 0;
      }
    }

    else
    {
      if ((v7 - 765200) < 7)
      {
        -[AKAttributeController setHighlightStyle:](self, "setHighlightStyle:", [v6 tag]);
        goto LABEL_19;
      }

      if (v7 != 765110)
      {
        if (v7 != 765300)
        {
          goto LABEL_19;
        }

        v121 = [v6 ink];
        [(AKAttributeController *)self setInk:v121];
LABEL_176:

        goto LABEL_19;
      }

      v118 = self;
      v119 = 3;
    }

    [(AKAttributeController *)v118 setArrowHeadStyle:v119];
    goto LABEL_19;
  }

  if ((v7 - 765001) < 0xF)
  {
    if ([v6 conformsToProtocol:&unk_2851CEBF8])
    {
      [v6 lineWidth];
    }

    else
    {
      v10 = ([v6 tag] - 765000);
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
    v120 = [v6 color];
    [(AKAttributeController *)self setStrokeColor:v120];

LABEL_18:
    [(AKAttributeController *)self updateInkIfNeeded:v6];
  }

LABEL_19:
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v174 objects:v182 count:16];
  v152 = v6;
  v12 = v155;
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
      v19 = [v12 currentPageController];
      if (objc_opt_respondsToSelector())
      {
        v20 = [v18 pathIsPrestroked];
      }

      else
      {
        v20 = 0;
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
            v25 = v18;
            [v25 setStyle:v154];
            v26 = [AKHighlightAppearanceHelper colorForHighlightAttributeWithTag:v7];
            [v25 setColor:v26];

            if ([v25 conformsToAKParentAnnotationProtocol])
            {
              v27 = [v25 childAnnotation];
              v28 = objc_opt_self();
              v29 = objc_opt_isKindOfClass();

              if (v29)
              {
                v30 = [AKHighlightAppearanceHelper colorForNoteOfHighlightAttributeTag:v7];
                [v27 setFillColor:v30];
              }

              v6 = v152;
              self = v153;
            }

            goto LABEL_91;
          }

          v31 = objc_opt_self();
          v32 = objc_opt_isKindOfClass();

          v12 = v155;
          if ((v32 & 1) != 0 && (v7 - 765200) <= 4)
          {
            v33 = v18;
            v25 = [AKHighlightAppearanceHelper colorForNoteOfHighlightAttributeTag:v7];
            [v33 setFillColor:v25];

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
                v62 = v6;
                v63 = [v61 annotationText];
                v64 = [v63 mutableCopy];

                [v64 removeAttribute:v145 range:{0, objc_msgSend(v64, "length")}];
                v65 = [v61 annotationText];
                v171[0] = MEMORY[0x277D85DD0];
                v171[1] = 3221225472;
                v171[2] = sub_23F41FB74;
                v171[3] = &unk_278C7B658;
                v151 = v62;
                v172 = v151;
                v66 = v64;
                v173 = v66;
                [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:v65 usingBlock:v171];

                v148 = v66;
                v67 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v66];
                [v61 setAnnotationText:v67];

                v68 = [v61 typingAttributes];
                v69 = [v68 mutableCopy];

                v70 = [v61 typingAttributes];
                v71 = [v70 objectForKeyedSubscript:v15];

                if (v71)
                {
                  v72 = [v69 objectForKeyedSubscript:v15];
                  v73 = [v151 convertFont:v72];
                }

                else
                {
                  v73 = [(AKAttributeController *)v153 font];
                }

                [v69 setObject:v73 forKeyedSubscript:v15];

                [v61 setTypingAttributes:v69];
                [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v61 toFitOptionalText:0 onPageController:v19];

                goto LABEL_109;
              }
            }

            else if (v7 == 765106 && [v18 conformsToAKTextAnnotationProtocol])
            {
              v46 = v18;
              v47 = v6;
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

              v55 = [v53 typingAttributes];
              v150 = v51;
              v56 = [v51 convertTextAttributes:v55];

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

              [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v53 toFitOptionalText:0 onPageController:v19];

LABEL_109:
              v6 = v152;
              self = v153;
LABEL_92:
              v12 = v155;
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

            v25 = [v6 color];
            [v18 setFillColor:v25];
LABEL_91:

            goto LABEL_92;
          }

          if (v7 == 765103)
          {
            if (v20 & 1) == 0 && (objc_opt_respondsToSelector())
            {
              if (objc_opt_respondsToSelector())
              {
                [v18 setBrushStyle:0];
              }

              [v18 setDashed:{-[AKAttributeController strokeIsDashed](self, "strokeIsDashed")}];
            }
          }

          else if (v20 & 1) == 0 && (objc_opt_respondsToSelector())
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
        if (v20 & 1) == 0 && (objc_opt_respondsToSelector())
        {
          v21 = 1.0;
          if (v7 == 765050)
          {
            v22 = 1.0;
          }

          else
          {
            v22 = ([v6 tag] - 765000);
            if (v7 != 765001)
            {
              [v19 modelBaseScaleFactor];
              v21 = v43;
            }
          }

          [v18 setStrokeWidth:v22 * v21];
          v44 = [v18 strokeColor];

          if (!v44)
          {
            v45 = [(AKAttributeController *)self strokeColor];
            [v18 setStrokeColor:v45];
          }

          v12 = v155;
          if ([v18 conformsToAKTextAnnotationProtocol])
          {
            [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v18 toFitOptionalText:0 onPageController:v19];
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
        v147 = [v18 strokeColor];
        v149 = [v6 color];
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
          v35 = [v18 fillColor];
          v36 = v35;
          if (v35 && CGColorGetAlpha([v35 CGColor]) != 0.0)
          {
            [v18 setFillColor:v149];
          }

          v12 = v155;
        }

        if ([v18 conformsToAKTextAnnotationProtocol])
        {
          v37 = v18;
          [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v37 toFitOptionalText:0 onPageController:v19];
          if ([v37 conformsToAKFilledAnnotationProtocol])
          {
            v38 = [v37 annotationText];
            v39 = [v37 strokeColor];
            v142 = v39;
            v144 = v38;
            if (objc_opt_respondsToSelector())
            {
              v40 = [v37 fillColor];
              if (v40 && [v39 akIsEqualToColor:v40])
              {
                v41 = [MEMORY[0x277D75348] whiteColor];
                v42 = [v142 akIsEqualToColor:v41];

                if (v42)
                {
                  [MEMORY[0x277D75348] blackColor];
                }

                else
                {
                  [MEMORY[0x277D75348] whiteColor];
                }
                v39 = ;
              }
            }

            if (v38 && [v38 length])
            {
              v87 = [v38 mutableCopy];
              v180 = v146;
              v181 = v39;
              v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
              [v87 addAttributes:v88 range:{0, objc_msgSend(v38, "length")}];

              v89 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v87];
              [v37 setAnnotationText:v89];
            }

            v90 = [v37 typingAttributes];
            v91 = [v90 mutableCopy];

            [v91 setObject:v39 forKeyedSubscript:v146];
            [v37 setTypingAttributes:v91];

            v6 = v152;
            self = v153;
            v85 = v142;
            goto LABEL_125;
          }

          if (([v37 isMemberOfClass:objc_opt_class()] & 1) == 0)
          {
            v74 = [v37 annotationText];
            v144 = v74;
            if (v74)
            {
              v75 = v74;
              if ([v74 length])
              {
                v76 = [v75 mutableCopy];
                v77 = v75;
                v78 = v76;
                v79 = [v77 attributesAtIndex:0 effectiveRange:0];
                v80 = [v79 objectForKeyedSubscript:v146];
                v81 = v80;
                if (!v80 || [v80 akIsEqualToColor:v147])
                {
                  v143 = [v37 strokeColor];
                  v178 = v146;
                  v179 = v143;
                  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
                  [v78 addAttributes:v82 range:{0, objc_msgSend(v144, "length")}];

                  v83 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v78];
                  [v37 setAnnotationText:v83];

                  self = v153;
                }

                v6 = v152;
              }
            }

            v84 = [v37 typingAttributes];
            v85 = [v84 mutableCopy];

            v86 = [v6 color];
            [v85 setObject:v86 forKeyedSubscript:v146];

            [v37 setTypingAttributes:v85];
LABEL_125:

            v12 = v155;
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

  v93 = [v12 textEditorController];
  v94 = [v93 isEditing];

  if (v94)
  {
    v95 = [v155 textEditorController];
    v96 = [v95 annotation];
    v97 = [v95 textView];
    v98 = [v97 textStorage];
    if (v7 == 765106)
    {
      v113 = v6;
      v114 = [v98 length];
      v159[0] = MEMORY[0x277D85DD0];
      v159[1] = 3221225472;
      v159[2] = sub_23F41FD74;
      v159[3] = &unk_278C7B9A8;
      v160 = v113;
      v161 = v98;
      v115 = v113;
      [v161 enumerateAttributesInRange:0 options:v114 usingBlock:{0, v159}];
      v116 = [v97 typingAttributes];
      v117 = [v115 convertTextAttributes:v116];
      [v97 setTypingAttributes:v117];

      [v95 updateForTextAttributeChange];
      v104 = v160;
      goto LABEL_146;
    }

    if (v7 == 765105)
    {
      v99 = v6;
      v158 = v96;
      [v96 originalModelBaseScaleFactor];
      v101 = v100;
      v102 = [v98 mutableCopy];
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
      [AKTextAnnotationAttributeHelper enumerateFontAttributesOfAttributedString:v98 usingBlock:v162];
      [v98 setAttributedString:v104];
      v105 = [v97 typingAttributes];
      v106 = [AKTextAnnotationAttributeHelper typingAttributes:v105 byApplyingScaleFactor:1.0 / v101];

      v107 = v106;
      v108 = [v106 mutableCopy];
      v109 = *MEMORY[0x277D740A8];
      v110 = [v108 objectForKeyedSubscript:*MEMORY[0x277D740A8]];

      if (v110)
      {
        v111 = [v108 objectForKeyedSubscript:v109];
        v112 = [v103 convertFont:v111];
      }

      else
      {
        v112 = [(AKAttributeController *)v153 font];
      }

      [v108 setObject:v112 forKeyedSubscript:v109];

      v122 = [AKTextAnnotationAttributeHelper typingAttributes:v108 byApplyingScaleFactor:v101];

      [v97 setTypingAttributes:v122];
      [v95 updateForTextAttributeChange];

      v6 = v152;
      v96 = v158;
LABEL_146:
    }

    self = v153;
  }

  if ((v7 - 765105) <= 1)
  {
    v123 = [v155 toolbarViewController];
    [v123 revalidateItems];
  }

  v124 = v155;
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 0xBACAC || (v7 - 765001) <= 0xE)
  {
    v125 = [v155 toolController];
    if ([v125 toolMode] == 1)
    {

      goto LABEL_155;
    }

    v126 = [v155 toolController];
    v127 = [v126 toolMode];

    if (v127 == 2)
    {
LABEL_155:
      v128 = [v155 legacyDoodleController];
      [v128 updateStrokeAttributes];

      v124 = v155;
    }
  }

  [(AKAttributeController *)self _persistCurrentAttributes];
}

- (void)_syncAttributesFromSelectedAnnotationsToUI
{
  v4 = [(AKAttributeController *)self controller];
  v3 = [v4 toolbarViewController];
  [v3 revalidateItems];

  [(AKAttributeController *)self syncFillColorOnSelectionToUI];
  [(AKAttributeController *)self syncStrokeColorOnSelectionToUI];
}

- (void)syncFillColorOnSelectionToUI
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(AKAttributeController *)self controller];
  v4 = objc_opt_new();
  [v3 maxHDRGain];
  [v4 setAllowHDR:v5 > 1.0];
  [v3 availableHeadroom];
  [v4 setAvailableHeadroom:?];
  v6 = [v3 modelController];
  [v6 annotationHeadroom];
  [v4 setDesiredHeadroom:?];

  v21 = self;
  v7 = [(AKAttributeController *)self modelControllerToObserveForSelections];
  v8 = [v7 selectedAnnotations];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
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
      [(AKAttributeController *)v21 fillColor];
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
            v19 = [MEMORY[0x277D75348] whiteColor];

            v12 = v19;
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
  v20 = [v3 toolbarViewController];
  [v20 setFillColorUIDisplayToColor:v12];
}

- (void)syncStrokeColorOnSelectionToUI
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(AKAttributeController *)self controller];
  v4 = objc_opt_new();
  [v3 maxHDRGain];
  [v4 setAllowHDR:v5 > 1.0];
  [v3 availableHeadroom];
  [v4 setAvailableHeadroom:?];
  v6 = [v3 modelController];
  [v6 annotationHeadroom];
  [v4 setDesiredHeadroom:?];

  v7 = [(AKAttributeController *)self modelControllerToObserveForSelections];
  v8 = [v7 selectedAnnotations];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
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
            v19 = [MEMORY[0x277D75348] whiteColor];

            v12 = v19;
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
  v20 = [v3 toolbarViewController];
  [v20 setStrokeColorUIDisplayToColor:v12];
}

- (BOOL)_isEnabledForSender:(id)a3 segment:(int64_t)a4 withSelectedAnnotations:(id)a5
{
  v133 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 tag];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v8 tagForSegment:a4];
  }

  if (v12 <= 765101)
  {
    if ((v12 - 765001) <= 0x31 && ((1 << (v12 - 73)) & 0x2000000007FFFLL) != 0)
    {
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v13 = v10;
      v15 = [v13 countByEnumeratingWithState:&v111 objects:v130 count:16];
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
              objc_enumerationMutation(v13);
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

          v16 = [v13 countByEnumeratingWithState:&v111 objects:v130 count:16];
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
      v13 = v10;
      v57 = [v13 countByEnumeratingWithState:&v99 objects:v127 count:16];
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
            objc_enumerationMutation(v13);
          }

          if (objc_opt_respondsToSelector())
          {
            goto LABEL_109;
          }

          if (v58 == ++v60)
          {
            v58 = [v13 countByEnumeratingWithState:&v99 objects:v127 count:16];
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
      v13 = v10;
      v38 = [v13 countByEnumeratingWithState:&v115 objects:v131 count:16];
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
            objc_enumerationMutation(v13);
          }

          if (objc_opt_respondsToSelector())
          {
            goto LABEL_109;
          }

          if (v39 == ++v41)
          {
            v39 = [v13 countByEnumeratingWithState:&v115 objects:v131 count:16];
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
      v13 = v10;
      v21 = [v13 countByEnumeratingWithState:&v87 objects:v124 count:16];
      if (v21)
      {
        v22 = v21;
        v82 = v8;
        v23 = *v88;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v88 != v23)
            {
              objc_enumerationMutation(v13);
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

          v22 = [v13 countByEnumeratingWithState:&v87 objects:v124 count:16];
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

      v49 = [(AKAttributeController *)self controller];
      v50 = [v49 toolController];
      v51 = [v50 toolMode];

      if (v51 != 4)
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
    v13 = v10;
    v32 = [v13 countByEnumeratingWithState:&v83 objects:v123 count:16];
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
          objc_enumerationMutation(v13);
        }

        v36 = objc_opt_self();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          goto LABEL_109;
        }

        if (v33 == ++v35)
        {
          v33 = [v13 countByEnumeratingWithState:&v83 objects:v123 count:16];
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
      v13 = v10;
      v28 = [v13 countByEnumeratingWithState:&v91 objects:v125 count:16];
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
          objc_enumerationMutation(v13);
        }

        if (objc_opt_respondsToSelector())
        {
          goto LABEL_109;
        }

        if (v29 == ++v31)
        {
          v29 = [v13 countByEnumeratingWithState:&v91 objects:v125 count:16];
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
    v13 = [(AKAttributeController *)self controller];
    v42 = [v13 textEditorController];
    v43 = [v42 isEditing];

    if ((v43 & 1) == 0)
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
    v13 = v10;
    v53 = [v13 countByEnumeratingWithState:&v119 objects:v132 count:16];
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
          objc_enumerationMutation(v13);
        }

        if (objc_opt_respondsToSelector())
        {
          break;
        }

        if (v54 == ++v56)
        {
          v54 = [v13 countByEnumeratingWithState:&v119 objects:v132 count:16];
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
    v13 = [(AKAttributeController *)self controller];
    v14 = [v13 toolController];
    if ([v14 toolMode] == 2)
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
        v82 = v8;
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

    v71 = [v13 toolController];
    v72 = [v71 toolMode] != 4;

    if (v72 || v11)
    {
      goto LABEL_124;
    }

LABEL_138:

    goto LABEL_139;
  }

  v13 = [(AKAttributeController *)self controller];
  v52 = [v13 toolController];
  if ([v52 toolMode] == 2)
  {

    if (!v11)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v61 = [v13 toolController];
    v62 = [v61 toolMode] != 4;

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
  v82 = v8;
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
      v8 = v82;
      LOBYTE(v11) = v81;
      goto LABEL_135;
    }
  }

LABEL_140:

LABEL_141:
  LOBYTE(v20) = 1;
  v8 = v82;
LABEL_142:

  return v20;
}

- (void)_updateStateOnSender:(id)a3 segment:(int64_t)a4
{
  v8 = a3;
  v6 = [(AKAttributeController *)self modelControllerToObserveForSelections];
  v7 = [v6 selectedAnnotations];

  if (![(AKAttributeController *)self _updateStateOnSender:v8 segment:a4 fromSelectedAnnotations:v7])
  {
    [(AKAttributeController *)self _updateStateOnSenderFromSelf:v8 segment:a4];
  }
}

- (void)_allAnnotations:(id)a3 all:(BOOL *)a4 atLeastOneShare:(BOOL *)a5 attributeFromTag:(int64_t)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (a6 <= 765106)
        {
          if (a6 == 765100)
          {
            if (objc_opt_respondsToSelector() & 1) != 0 && ([v13 hasShadow])
            {
LABEL_34:
              *a5 = 1;
              continue;
            }
          }

          else if (a6 == 765103)
          {
            if (objc_opt_respondsToSelector() & 1) != 0 && ([v13 isDashed])
            {
              goto LABEL_34;
            }
          }

          else if (a6 == 765104 && (objc_opt_respondsToSelector() & 1) != 0 && [v13 brushStyle])
          {
            goto LABEL_34;
          }
        }

        else if (a6 > 765108)
        {
          if (a6 == 765109)
          {
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 arrowHeadStyle] == 2)
            {
              goto LABEL_34;
            }
          }

          else if (a6 == 765110 && (objc_opt_respondsToSelector() & 1) != 0 && [v13 arrowHeadStyle] == 3)
          {
            goto LABEL_34;
          }
        }

        else if (a6 == 765107)
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

        *a4 = 0;
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (BOOL)_updateStateOnSender:(id)a3 segment:(int64_t)a4 fromSelectedAnnotations:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (!v8 || ![v8 count])
  {
    goto LABEL_34;
  }

  if ([v7 conformsToProtocol:&unk_2851E7310])
  {
    v10 = v7;
    v11 = [v10 tag];
    v12 = v11 == 765105;
    if (v11 == 765105)
    {
      v13 = [AKTextAnnotationAttributeHelper fontsOfAnnotations:v9];
      v14 = [(AKAttributeController *)self controller];
      v15 = [v14 textEditorController];
      v16 = [AKTextAnnotationAttributeHelper fontsOfEditor:v15];
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

  if (![v7 conformsToProtocol:&unk_2851D1F48])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 tag] > 765000 && objc_msgSend(v7, "tag") < 765016 || objc_msgSend(v7, "tag") > 765106 && objc_msgSend(v7, "tag") < 765111))
    {
      v10 = v7;
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
        v21 = [(AKAttributeController *)self controller];
        v22 = [v21 currentPageController];
        [v22 modelBaseScaleFactor];
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
          v41 = v21;
          v42 = v9;
          v43 = v7;
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
          v7 = v43;
          v21 = v41;
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

  v10 = v7;
  v18 = [v10 tag];
  v12 = v18 == 765106;
  if (v18 == 765106)
  {
    v13 = [AKTextAnnotationAttributeHelper textAttributesOfAnnotations:v9];
    v14 = [(AKAttributeController *)self controller];
    v15 = [v14 textEditorController];
    v16 = [AKTextAnnotationAttributeHelper textAttributesOfEditor:v15];
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

- (void)_updateStateOnSenderFromSelf:(id)a3 segment:(int64_t)a4
{
  v17 = a3;
  if ([v17 conformsToProtocol:&unk_2851E7310])
  {
    v5 = v17;
    if ([v5 tag] == 765105)
    {
      v6 = MEMORY[0x277CBEB98];
      v7 = [(AKAttributeController *)self font];
      v8 = [v6 setWithObject:v7];

      v9 = [(AKAttributeController *)self controller];
      v10 = [v9 textEditorController];
      v11 = [AKTextAnnotationAttributeHelper fontsOfEditor:v10];
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
    if (![v17 conformsToProtocol:&unk_2851D1F48])
    {
      goto LABEL_13;
    }

    v13 = v17;
    if ([v13 tag] == 765106)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [(AKAttributeController *)self textAttributes];
      v8 = [v14 setWithObject:v15];

      v9 = [(AKAttributeController *)self controller];
      v10 = [v9 textEditorController];
      v11 = [AKTextAnnotationAttributeHelper textAttributesOfEditor:v10];
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