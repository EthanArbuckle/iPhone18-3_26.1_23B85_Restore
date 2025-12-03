@interface WFOverlayImageEditorViewController
- (BOOL)opacitySliderVisible;
- (BOOL)rotationEnabled;
- (WFOpacitySliderView)opacityView;
- (WFOverlayImageEditorCanvasView)canvasView;
- (WFOverlayImageEditorOptionsView)optionsView;
- (WFOverlayImageEditorViewController)initWithFileRepresentations:(id)representations overlayImage:(id)image completionHandler:(id)handler;
- (void)cancelEditingImage;
- (void)didChangeOpacity:(id)opacity;
- (void)finishEditingImage;
- (void)loadView;
- (void)resetOverlayImageViewTransformations;
- (void)setCurrentFile:(id)file;
- (void)setOpacitySliderVisible:(BOOL)visible;
- (void)viewDidLoad;
@end

@implementation WFOverlayImageEditorViewController

- (WFOpacitySliderView)opacityView
{
  WeakRetained = objc_loadWeakRetained(&self->_opacityView);

  return WeakRetained;
}

- (WFOverlayImageEditorCanvasView)canvasView
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasView);

  return WeakRetained;
}

- (WFOverlayImageEditorOptionsView)optionsView
{
  WeakRetained = objc_loadWeakRetained(&self->_optionsView);

  return WeakRetained;
}

- (void)cancelEditingImage
{
  completionHandler = [(WFOverlayImageEditorViewController *)self completionHandler];
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  (completionHandler)[2](completionHandler, 0, userCancelledError);

  [(WFOverlayImageEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)finishEditingImage
{
  transforms = [(WFOverlayImageEditorViewController *)self transforms];
  canvasView = [(WFOverlayImageEditorViewController *)self canvasView];
  imageTransform = [canvasView imageTransform];
  currentFile = [(WFOverlayImageEditorViewController *)self currentFile];
  [transforms setObject:imageTransform forKey:currentFile];

  fileRepresentations = [(WFOverlayImageEditorViewController *)self fileRepresentations];
  currentFile2 = [(WFOverlayImageEditorViewController *)self currentFile];
  v9 = [fileRepresentations indexOfObject:currentFile2];

  fileRepresentations2 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
  v11 = [fileRepresentations2 count];

  if (v9 + 1 >= v11)
  {
    v20 = [WFOverlayImageEditorProcessingView alloc];
    v21 = [MEMORY[0x277D75210] effectWithStyle:2];
    v22 = [(WFOverlayImageEditorProcessingView *)v20 initWithEffect:v21];

    [(WFOverlayImageEditorProcessingView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(WFOverlayImageEditorViewController *)self view];
    [view addSubview:v22];

    view2 = [(WFOverlayImageEditorViewController *)self view];
    v25 = MEMORY[0x277CCAAD0];
    WeakRetained = objc_loadWeakRetained(&self->_optionsView);
    v27 = _NSDictionaryOfVariableBindings(&cfstr_Processingview.isa, v22, WeakRetained, 0);
    v28 = [v25 constraintsWithVisualFormat:@"V:|[processingView][_optionsView]" options:0 metrics:0 views:v27];
    [view2 addConstraints:v28];

    view3 = [(WFOverlayImageEditorViewController *)self view];
    v30 = MEMORY[0x277CCAAD0];
    v31 = _NSDictionaryOfVariableBindings(&cfstr_Processingview_0.isa, v22, 0);
    v32 = [v30 constraintsWithVisualFormat:@"H:|[processingView]|" options:0 metrics:0 views:v31];
    [view3 addConstraints:v32];

    fileRepresentations3 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __56__WFOverlayImageEditorViewController_finishEditingImage__block_invoke;
    v36[3] = &unk_278C368C0;
    v36[4] = self;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __56__WFOverlayImageEditorViewController_finishEditingImage__block_invoke_3;
    v35[3] = &unk_278C376E0;
    v35[4] = self;
    [fileRepresentations3 if_mapAsynchronously:v36 completionHandler:v35];
  }

  else
  {
    fileRepresentations4 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
    v13 = [fileRepresentations4 objectAtIndexedSubscript:v9 + 1];
    [(WFOverlayImageEditorViewController *)self setCurrentFile:v13];

    optionsView = [(WFOverlayImageEditorViewController *)self optionsView];
    nextButton = [optionsView nextButton];
    [nextButton setEnabled:1];

    fileRepresentations5 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
    v17 = [fileRepresentations5 count] - 2;

    if (v9 == v17)
    {
      optionsView2 = [(WFOverlayImageEditorViewController *)self optionsView];
      nextButton2 = [optionsView2 nextButton];
      v19 = WFLocalizedString(@"Done");
      [nextButton2 setTitle:v19 forState:0];
    }
  }
}

void __56__WFOverlayImageEditorViewController_finishEditingImage__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 transforms];
  v10 = [v9 objectForKey:v8];
  v11 = *(*(a1 + 32) + 992);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__WFOverlayImageEditorViewController_finishEditingImage__block_invoke_2;
  v13[3] = &unk_278C36898;
  v14 = v6;
  v12 = v6;
  [v10 applyToImageFile:v8 withOverlayImage:v11 completionHandler:v13];
}

void __56__WFOverlayImageEditorViewController_finishEditingImage__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__WFOverlayImageEditorViewController_finishEditingImage__block_invoke_4;
  v10[3] = &unk_278C37058;
  v10[4] = v7;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 dismissViewControllerAnimated:1 completion:v10];
}

void __56__WFOverlayImageEditorViewController_finishEditingImage__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 48));
  }
}

- (void)resetOverlayImageViewTransformations
{
  canvasView = [(WFOverlayImageEditorViewController *)self canvasView];
  [canvasView reset];
}

- (BOOL)rotationEnabled
{
  canvasView = [(WFOverlayImageEditorViewController *)self canvasView];
  isRotationEnabled = [canvasView isRotationEnabled];

  return isRotationEnabled;
}

- (void)setOpacitySliderVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (visible)
  {
    opacityView = [(WFOverlayImageEditorViewController *)self opacityView];
    [opacityView frame];
    v7 = -v6;
  }

  else
  {
    v7 = 0.0;
  }

  opacityViewVerticalConstraint = [(WFOverlayImageEditorViewController *)self opacityViewVerticalConstraint];
  [opacityViewVerticalConstraint setConstant:v7];

  if (visibleCopy)
  {
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__WFOverlayImageEditorViewController_setOpacitySliderVisible___block_invoke;
  v9[3] = &unk_278C37538;
  v9[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v9 animations:0 completion:0.25];
}

void __62__WFOverlayImageEditorViewController_setOpacitySliderVisible___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (BOOL)opacitySliderVisible
{
  opacityViewVerticalConstraint = [(WFOverlayImageEditorViewController *)self opacityViewVerticalConstraint];
  [opacityViewVerticalConstraint constant];
  v4 = v3 == 0.0;

  return v4;
}

- (void)didChangeOpacity:(id)opacity
{
  opacityCopy = opacity;
  canvasView = [(WFOverlayImageEditorViewController *)self canvasView];
  [opacityCopy opacity];
  v6 = v5;

  [canvasView setOverlayImageOpacity:v6];
}

- (void)setCurrentFile:(id)file
{
  v89[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  objc_storeStrong(&self->_currentFile, file);
  v6 = WFImageSourceCreateFromFile();
  v7 = WFImageAtIndexFromImageSource();
  CFRelease(v6);
  v8 = [objc_alloc(MEMORY[0x277CE8858]) initForCenteringImage:self->_overlayImage inBackgroundImage:v7];
  v9 = [WFOverlayImageEditorCanvasView alloc];
  uIImage = [v7 UIImage];
  uIImage2 = [(WFImage *)self->_overlayImage UIImage];
  v12 = [(WFOverlayImageEditorCanvasView *)v9 initWithBackgroundImage:uIImage overlayImage:uIImage2 transform:v8];

  [(WFOverlayImageEditorCanvasView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  canvasView = [(WFOverlayImageEditorViewController *)self canvasView];

  if (!canvasView)
  {
    view = [(WFOverlayImageEditorViewController *)self view];
    [view insertSubview:v12 atIndex:0];

    v61 = objc_storeWeak(&self->_canvasView, v12);
    WeakRetained = objc_loadWeakRetained(&self->_optionsView);
    v63 = _NSDictionaryOfVariableBindings(&cfstr_CanvasviewOpti.isa, v12, WeakRetained, 0);

    view2 = [(WFOverlayImageEditorViewController *)self view];
    v65 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_canvasView][_optionsView]" options:0 metrics:0 views:v63];
    [view2 addConstraints:v65];

    view3 = [(WFOverlayImageEditorViewController *)self view];
    v67 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_canvasView]|" options:0 metrics:0 views:v63];
    [view3 addConstraints:v67];

    view4 = [(WFOverlayImageEditorViewController *)self view];
    [view4 setNeedsLayout];

    goto LABEL_16;
  }

  v73 = v8;
  v74 = v7;
  v75 = fileCopy;
  canvasView2 = [(WFOverlayImageEditorViewController *)self canvasView];
  [canvasView2 setUserInteractionEnabled:0];
  view5 = [(WFOverlayImageEditorViewController *)self view];
  [view5 insertSubview:v12 aboveSubview:canvasView2];

  v88 = @"offset";
  v16 = MEMORY[0x277CCABB0];
  view6 = [(WFOverlayImageEditorViewController *)self view];
  [view6 frame];
  v19 = [v16 numberWithDouble:v18];
  v89[0] = v19;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:&v88 count:1];

  v20 = MEMORY[0x277CCAAD0];
  view7 = [(WFOverlayImageEditorViewController *)self view];
  view8 = [(WFOverlayImageEditorViewController *)self view];
  [view8 frame];
  v24 = [v20 constraintWithItem:v12 attribute:1 relatedBy:0 toItem:view7 attribute:1 multiplier:1.0 constant:v23];

  v25 = MEMORY[0x277CCAAD0];
  view9 = [(WFOverlayImageEditorViewController *)self view];
  [view9 frame];
  v28 = [v25 constraintWithItem:v12 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v27];

  view10 = [(WFOverlayImageEditorViewController *)self view];
  v71 = v24;
  [view10 addConstraint:v24];

  view11 = [(WFOverlayImageEditorViewController *)self view];
  v70 = v28;
  [view11 addConstraint:v28];

  view12 = [(WFOverlayImageEditorViewController *)self view];
  v32 = MEMORY[0x277CCAAD0];
  v33 = objc_loadWeakRetained(&self->_optionsView);
  v34 = _NSDictionaryOfVariableBindings(&cfstr_NewcanvasviewO.isa, v12, v33, 0);
  v35 = [v32 constraintsWithVisualFormat:@"V:|[newCanvasView][_optionsView]" options:0 metrics:0 views:v34];
  [view12 addConstraints:v35];

  view13 = [(WFOverlayImageEditorViewController *)self view];
  [view13 setNeedsLayout];

  view14 = [(WFOverlayImageEditorViewController *)self view];
  [view14 layoutIfNeeded];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  view15 = [(WFOverlayImageEditorViewController *)self view];
  constraints = [view15 constraints];

  v40 = [constraints countByEnumeratingWithState:&v83 objects:v87 count:16];
  if (!v40)
  {
    goto LABEL_14;
  }

  v41 = v40;
  v42 = *v84;
  do
  {
    for (i = 0; i != v41; ++i)
    {
      if (*v84 != v42)
      {
        objc_enumerationMutation(constraints);
      }

      v44 = *(*(&v83 + 1) + 8 * i);
      firstItem = [v44 firstItem];
      v46 = firstItem;
      if (firstItem == canvasView2)
      {
      }

      else
      {
        secondItem = [v44 secondItem];

        if (secondItem != canvasView2)
        {
          continue;
        }
      }

      view16 = [(WFOverlayImageEditorViewController *)self view];
      [view16 removeConstraint:v44];
    }

    v41 = [constraints countByEnumeratingWithState:&v83 objects:v87 count:16];
  }

  while (v41);
LABEL_14:

  v49 = objc_loadWeakRetained(&self->_optionsView);
  v50 = _NSDictionaryOfVariableBindings(&cfstr_OldcanvasviewO.isa, canvasView2, v49, 0);

  view17 = [(WFOverlayImageEditorViewController *)self view];
  v52 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[oldCanvasView][_optionsView]" options:0 metrics:0 views:v50];
  [view17 addConstraints:v52];

  view18 = [(WFOverlayImageEditorViewController *)self view];
  v54 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[oldCanvasView(==offset)]-(offset)-|" options:0 metrics:v72 views:v50];
  [view18 addConstraints:v54];

  [v71 setConstant:0.0];
  optionsView = [(WFOverlayImageEditorViewController *)self optionsView];
  [optionsView setUserInteractionEnabled:0];

  v56 = MEMORY[0x277D75D18];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __53__WFOverlayImageEditorViewController_setCurrentFile___block_invoke;
  v82[3] = &unk_278C37538;
  v82[4] = self;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __53__WFOverlayImageEditorViewController_setCurrentFile___block_invoke_2;
  v76[3] = &unk_278C36870;
  v77 = canvasView2;
  selfCopy = self;
  v79 = v71;
  v80 = v70;
  v81 = v12;
  v57 = v70;
  v58 = v71;
  v59 = canvasView2;
  [v56 animateWithDuration:v82 animations:v76 completion:0.3];

  v7 = v74;
  fileCopy = v75;
  v8 = v73;
LABEL_16:

  v69 = *MEMORY[0x277D85DE8];
}

void __53__WFOverlayImageEditorViewController_setCurrentFile___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void __53__WFOverlayImageEditorViewController_setCurrentFile___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) view];
  [v2 removeConstraint:*(a1 + 48)];

  v3 = [*(a1 + 40) view];
  [v3 removeConstraint:*(a1 + 56)];

  v4 = [*(a1 + 40) view];
  v5 = MEMORY[0x277CCAAD0];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_Newcanvasview.isa, *(a1 + 64), 0);
  v7 = [v5 constraintsWithVisualFormat:@"H:|[newCanvasView]|" options:0 metrics:0 views:v6];
  [v4 addConstraints:v7];

  objc_storeWeak((*(a1 + 40) + 1040), *(a1 + 64));
  v8 = [*(a1 + 40) optionsView];
  [v8 setUserInteractionEnabled:1];

  v9 = [*(a1 + 40) opacityView];
  [v9 reset];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = WFOverlayImageEditorViewController;
  [(WFOverlayImageEditorViewController *)&v9 viewDidLoad];
  [(WFOverlayImageEditorViewController *)self setNeedsStatusBarAppearanceUpdate];
  fileRepresentations = [(WFOverlayImageEditorViewController *)self fileRepresentations];
  v4 = [fileRepresentations count];

  optionsView = [(WFOverlayImageEditorViewController *)self optionsView];
  nextButton = [optionsView nextButton];
  if (v4 >= 2)
  {
    v7 = @"Next";
  }

  else
  {
    v7 = @"Done";
  }

  v8 = WFLocalizedString(v7);
  [nextButton setTitle:v8 forState:0];
}

- (void)loadView
{
  v25.receiver = self;
  v25.super_class = WFOverlayImageEditorViewController;
  [(WFOverlayImageEditorViewController *)&v25 loadView];
  editorBackgroundColor = [(WFOverlayImageEditorViewController *)self editorBackgroundColor];
  view = [(WFOverlayImageEditorViewController *)self view];
  [view setBackgroundColor:editorBackgroundColor];

  v5 = objc_alloc_init(WFOverlayImageEditorOptionsView);
  editorBackgroundColor2 = [(WFOverlayImageEditorViewController *)self editorBackgroundColor];
  [(WFOverlayImageEditorOptionsView *)v5 setBackgroundColor:editorBackgroundColor2];

  [(WFOverlayImageEditorOptionsView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WFOverlayImageEditorOptionsView *)v5 setDelegate:self];
  view2 = [(WFOverlayImageEditorViewController *)self view];
  [view2 addSubview:v5];

  objc_storeWeak(&self->_optionsView, v5);
  v8 = objc_alloc_init(WFOpacitySliderView);
  [(WFOpacitySliderView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WFOpacitySliderView *)v8 addTarget:self action:sel_didChangeOpacity_ forControlEvents:4096];
  view3 = [(WFOverlayImageEditorViewController *)self view];
  [view3 insertSubview:v8 belowSubview:v5];

  objc_storeWeak(&self->_opacityView, v8);
  v10 = _NSDictionaryOfVariableBindings(&cfstr_OptionsviewOpa.isa, v5, v8, 0);
  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v5 attribute:3 multiplier:1.0 constant:0.0];
  [(WFOverlayImageEditorViewController *)self setOpacityViewVerticalConstraint:v11];

  view4 = [(WFOverlayImageEditorViewController *)self view];
  opacityViewVerticalConstraint = [(WFOverlayImageEditorViewController *)self opacityViewVerticalConstraint];
  [view4 addConstraint:opacityViewVerticalConstraint];

  view5 = [(WFOverlayImageEditorViewController *)self view];
  v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[opacitySliderView]|" options:0 metrics:0 views:v10];
  [view5 addConstraints:v15];

  view6 = [(WFOverlayImageEditorViewController *)self view];
  v17 = MEMORY[0x277CCAAD0];
  WeakRetained = objc_loadWeakRetained(&self->_opacityView);
  v19 = [v17 constraintWithItem:WeakRetained attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:90.0];
  [view6 addConstraint:v19];

  view7 = [(WFOverlayImageEditorViewController *)self view];
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[optionsView]|" options:0 metrics:0 views:v10];
  [view7 addConstraints:v21];

  view8 = [(WFOverlayImageEditorViewController *)self view];
  v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[optionsView]|" options:0 metrics:0 views:v10];
  [view8 addConstraints:v23];

  firstObject = [(NSArray *)self->_fileRepresentations firstObject];
  [(WFOverlayImageEditorViewController *)self setCurrentFile:firstObject];
}

- (WFOverlayImageEditorViewController)initWithFileRepresentations:(id)representations overlayImage:(id)image completionHandler:(id)handler
{
  representationsCopy = representations;
  imageCopy = image;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = WFOverlayImageEditorViewController;
  v11 = [(WFOverlayImageEditorViewController *)&v20 init];
  if (v11)
  {
    v12 = [representationsCopy copy];
    fileRepresentations = v11->_fileRepresentations;
    v11->_fileRepresentations = v12;

    v14 = _Block_copy(handlerCopy);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v14;

    objc_storeStrong(&v11->_overlayImage, image);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    transforms = v11->_transforms;
    v11->_transforms = strongToStrongObjectsMapTable;

    [(WFOverlayImageEditorViewController *)v11 setModalPresentationStyle:0];
    v18 = v11;
  }

  return v11;
}

@end