@interface AXEntityControllerElement
- (AXEntityControllerElement)initWithAccessibilityContainer:(id)container entityController:(id)controller previewViewController:(id)viewController;
- (id)_accessibilityScrollStatus;
- (id)entityController;
- (id)previewViewController;
@end

@implementation AXEntityControllerElement

- (AXEntityControllerElement)initWithAccessibilityContainer:(id)container entityController:(id)controller previewViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v13.receiver = self;
  v13.super_class = AXEntityControllerElement;
  v10 = [(AXEntityControllerElement *)&v13 initWithAccessibilityContainer:container];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_entityController, controllerCopy);
    objc_storeWeak(&v11->_previewViewController, viewControllerCopy);
  }

  return v11;
}

- (id)_accessibilityScrollStatus
{
  previewViewController = [(AXEntityControllerElement *)self previewViewController];
  entityController = [(AXEntityControllerElement *)self entityController];
  _axEmitterMode = [previewViewController _axEmitterMode];
  v6 = 0;
  if (entityController && previewViewController && _axEmitterMode == 2)
  {
    if ([previewViewController _axIsOffScreenForEntityController:entityController])
    {
      v6 = 0;
    }

    else
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v27 = previewViewController;
      v28 = entityController;
      AXPerformSafeBlock();
      v26 = *(v30 + 6);

      _Block_object_dispose(&v29, 8);
      [v27 _axBoundingRectForEntityController:v28];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      _arView = [(AXEntityControllerElement *)self _arView];
      [_arView bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      LODWORD(v24) = v26;
      v6 = [MEMORY[0x29EDBDF28] descriptionForDistance:v24 objectFrame:v8 viewBounds:{v10, v12, v14, v17, v19, v21, v23}];
    }
  }

  return v6;
}

uint64_t __55__AXEntityControllerElement__accessibilityScrollStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessibilityDistanceInMetersFromEntityController:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (id)entityController
{
  WeakRetained = objc_loadWeakRetained(&self->_entityController);

  return WeakRetained;
}

- (id)previewViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_previewViewController);

  return WeakRetained;
}

@end