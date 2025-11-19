@interface AXEntityControllerElement
- (AXEntityControllerElement)initWithAccessibilityContainer:(id)a3 entityController:(id)a4 previewViewController:(id)a5;
- (id)_accessibilityScrollStatus;
- (id)entityController;
- (id)previewViewController;
@end

@implementation AXEntityControllerElement

- (AXEntityControllerElement)initWithAccessibilityContainer:(id)a3 entityController:(id)a4 previewViewController:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AXEntityControllerElement;
  v10 = [(AXEntityControllerElement *)&v13 initWithAccessibilityContainer:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_entityController, v8);
    objc_storeWeak(&v11->_previewViewController, v9);
  }

  return v11;
}

- (id)_accessibilityScrollStatus
{
  v3 = [(AXEntityControllerElement *)self previewViewController];
  v4 = [(AXEntityControllerElement *)self entityController];
  v5 = [v3 _axEmitterMode];
  v6 = 0;
  if (v4 && v3 && v5 == 2)
  {
    if ([v3 _axIsOffScreenForEntityController:v4])
    {
      v6 = 0;
    }

    else
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v27 = v3;
      v28 = v4;
      AXPerformSafeBlock();
      v26 = *(v30 + 6);

      _Block_object_dispose(&v29, 8);
      [v27 _axBoundingRectForEntityController:v28];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [(AXEntityControllerElement *)self _arView];
      [v15 bounds];
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