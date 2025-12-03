@interface AKFormFeatureDetectorController
- (AKController)controller;
- (AKFormFeatureDetectorController)initWithController:(id)controller;
- (BOOL)detectFormFeatureAtPoint:(CGPoint)point inPageController:(id)controller;
- (BOOL)formFeature:(id)feature intersectsAnnotationsOnPage:(id)page;
- (CGSize)defaultFeatureSizeForPage:(id)page;
- (double)maximumFeatureWidthForPage:(id)page;
- (id)_convertFont:(id)font toSize:(double)size;
- (id)formFeatureAtPoint:(CGPoint)point inPageController:(id)controller;
- (void)createAnnotationWithFeature:(id)feature onPageController:(id)controller;
@end

@implementation AKFormFeatureDetectorController

- (AKFormFeatureDetectorController)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKFormFeatureDetectorController;
  v5 = [(AKFormFeatureDetectorController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKFormFeatureDetectorController *)v5 setController:controllerCopy];
  }

  return v6;
}

- (BOOL)detectFormFeatureAtPoint:(CGPoint)point inPageController:(id)controller
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  controller = [(AKFormFeatureDetectorController *)self controller];
  delegate = [controller delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate shouldPlaceFormElementAtPoint:objc_msgSend(controllerCopy onOverlayAtPageIndex:"pageIndex") forAnnotationController:{controller, x, y}])
  {
    v10 = [(AKFormFeatureDetectorController *)self formFeatureAtPoint:controllerCopy inPageController:x, y];
    if (objc_opt_respondsToSelector())
    {
      [v10 rect];
      v15 = [delegate shouldPlaceProposedFormElementAtRect:objc_msgSend(controllerCopy onOverlayAtPageIndex:"pageIndex") forAnnotationController:{controller, v11, v12, v13, v14}] ^ 1;
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    formDetectionController = [controller formDetectionController];
    v18 = [formDetectionController formFeature:v10 intersectsAnnotationsOnPage:controllerCopy];

    v19 = (v10 == 0) | v18 | v15;
    if ((v19 & 1) == 0)
    {
      formDetectionController2 = [controller formDetectionController];
      [formDetectionController2 createAnnotationWithFeature:v10 onPageController:controllerCopy];
    }

    v16 = v19 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (id)formFeatureAtPoint:(CGPoint)point inPageController:(id)controller
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  v8 = [[AKFormFeatureDetector alloc] initWithDelegate:self];
  [controllerCopy convertPointFromOverlayToModel:{x, y}];
  v9 = [(AKFormFeatureDetector *)v8 featureAtPoint:controllerCopy onPage:1 mode:?];

  AKLog(@"Detected feature: %@");

  return v9;
}

- (void)createAnnotationWithFeature:(id)feature onPageController:(id)controller
{
  featureCopy = feature;
  controllerCopy = controller;
  controller = [(AKFormFeatureDetectorController *)self controller];
  toolController = [controller toolController];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [featureCopy rect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = objc_opt_new();
    [v17 setFillColor:0];
    [v17 setStrokeColor:0];
    [v17 setStrokeWidth:0.0];
    [v17 setBrushStyle:0];
    [v17 setDashed:0];
    [v17 setHasShadow:0];
    [v17 setRectangle:{v10, v12, v14, v16}];
    [v17 setTextIsFixedWidth:0];
    attributeController = [controller attributeController];
    textAttributes = [attributeController textAttributes];
    v20 = [textAttributes mutableCopy];

    attributeController2 = [controller attributeController];
    font = [attributeController2 font];

    if (font)
    {
      [font pointSize];
      v24 = v23;
      [font descender];
      v26 = v24 - v25;
      v47.origin.x = v10;
      v47.origin.y = v12;
      v47.size.width = v14;
      v47.size.height = v16;
      if (v26 > CGRectGetHeight(v47))
      {
        v48.origin.x = v10;
        v48.origin.y = v12;
        v48.size.width = v14;
        v48.size.height = v16;
        v27 = [(AKFormFeatureDetectorController *)self _convertFont:font toSize:CGRectGetHeight(v48)];

        [v20 setObject:v27 forKeyedSubscript:*MEMORY[0x277D740A8]];
        font = v27;
      }
    }

    v28 = *MEMORY[0x277D74118];
    v29 = [v20 objectForKeyedSubscript:*MEMORY[0x277D74118]];
    v30 = [v29 mutableCopy];

    if (!v30)
    {
      defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
      v30 = [defaultParagraphStyle mutableCopy];
    }

    [v30 setAlignment:0];
    [v20 setObject:v30 forKeyedSubscript:v28];
    [v17 setTypingAttributes:v20];

    if (v17)
    {
LABEL_9:
      [toolController addNewAnnotation:v17 onPageController:controllerCopy shouldSelect:1 shouldCascade:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        modelController = [controller modelController];
        [modelController deselectAllAnnotations];
      }

      if ([v17 conformsToAKTextAnnotationProtocol])
      {
        textEditorController = [controller textEditorController];
        [textEditorController beginEditingAnnotation:v17 withPageController:controllerCopy selectAllText:1];
      }
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
      v17 = 0;
      goto LABEL_17;
    }

    [featureCopy rect];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v17 = objc_opt_new();
    v42 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    [v17 setImage:v42];

    [v17 setRectangle:{v35, v37, v39, v41}];
    if (v17)
    {
      goto LABEL_9;
    }
  }

LABEL_17:
  [featureCopy rect];
  v43 = j__NSStringFromCGRect(v49);
  [v17 drawingBounds];
  v44 = j__NSStringFromCGRect(v50);
  AKLog(@"Placed detected feature\n%@ has annotation drawing bounds - rect:%@, drawingBounds:%@");
}

- (BOOL)formFeature:(id)feature intersectsAnnotationsOnPage:(id)page
{
  featureCopy = feature;
  pageCopy = page;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  [featureCopy rect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  pageModelController = [pageCopy pageModelController];
  annotations = [pageModelController annotations];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_23F4A5784;
  v18[3] = &unk_278C7C3C8;
  v18[5] = v8;
  v18[6] = v10;
  v18[7] = v12;
  v18[8] = v14;
  v18[4] = &v19;
  [annotations enumerateObjectsUsingBlock:v18];
  LOBYTE(pageModelController) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return pageModelController;
}

- (id)_convertFont:(id)font toSize:(double)size
{
  fontCopy = font;
  [fontCopy pointSize];
  v7 = v6;
  [fontCopy descender];
  v9 = v7 - v8;
  if (v9 > size)
  {
    [fontCopy pointSize];
    if (size != 1.0)
    {
      v11 = [fontCopy fontWithSize:v10 * size / v9];

      fontCopy = v11;
    }
  }

  return fontCopy;
}

- (CGSize)defaultFeatureSizeForPage:(id)page
{
  pageCopy = page;
  controller = [(AKFormFeatureDetectorController *)self controller];
  attributeController = [controller attributeController];
  font = [attributeController font];
  [font pointSize];
  v9 = v8;
  [font descender];
  v11 = v9 - v10;
  overlayView = [pageCopy overlayView];

  [overlayView frame];
  v13 = CGRectGetWidth(v19) / 6.0;

  v17.width = v13;
  v17.height = v11;
  v16 = j__NSStringFromCGSize(v17);
  AKLog(@"%s %@");

  v14 = v13;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)maximumFeatureWidthForPage:(id)page
{
  overlayView = [page overlayView];
  [overlayView frame];
  v4 = CGRectGetWidth(v6) * 0.5;

  if (v4 > 100.0)
  {
    v4 = 100.0;
  }

  AKLog(@"%s %f");
  return v4;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end