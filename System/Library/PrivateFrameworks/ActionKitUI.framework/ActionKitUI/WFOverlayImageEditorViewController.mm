@interface WFOverlayImageEditorViewController
- (BOOL)opacitySliderVisible;
- (BOOL)rotationEnabled;
- (WFOpacitySliderView)opacityView;
- (WFOverlayImageEditorCanvasView)canvasView;
- (WFOverlayImageEditorOptionsView)optionsView;
- (WFOverlayImageEditorViewController)initWithFileRepresentations:(id)a3 overlayImage:(id)a4 completionHandler:(id)a5;
- (void)cancelEditingImage;
- (void)didChangeOpacity:(id)a3;
- (void)finishEditingImage;
- (void)loadView;
- (void)resetOverlayImageViewTransformations;
- (void)setCurrentFile:(id)a3;
- (void)setOpacitySliderVisible:(BOOL)a3;
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
  v3 = [(WFOverlayImageEditorViewController *)self completionHandler];
  v4 = [MEMORY[0x277CCA9B8] userCancelledError];
  (v3)[2](v3, 0, v4);

  [(WFOverlayImageEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)finishEditingImage
{
  v3 = [(WFOverlayImageEditorViewController *)self transforms];
  v4 = [(WFOverlayImageEditorViewController *)self canvasView];
  v5 = [v4 imageTransform];
  v6 = [(WFOverlayImageEditorViewController *)self currentFile];
  [v3 setObject:v5 forKey:v6];

  v7 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
  v8 = [(WFOverlayImageEditorViewController *)self currentFile];
  v9 = [v7 indexOfObject:v8];

  v10 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
  v11 = [v10 count];

  if (v9 + 1 >= v11)
  {
    v20 = [WFOverlayImageEditorProcessingView alloc];
    v21 = [MEMORY[0x277D75210] effectWithStyle:2];
    v22 = [(WFOverlayImageEditorProcessingView *)v20 initWithEffect:v21];

    [(WFOverlayImageEditorProcessingView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(WFOverlayImageEditorViewController *)self view];
    [v23 addSubview:v22];

    v24 = [(WFOverlayImageEditorViewController *)self view];
    v25 = MEMORY[0x277CCAAD0];
    WeakRetained = objc_loadWeakRetained(&self->_optionsView);
    v27 = _NSDictionaryOfVariableBindings(&cfstr_Processingview.isa, v22, WeakRetained, 0);
    v28 = [v25 constraintsWithVisualFormat:@"V:|[processingView][_optionsView]" options:0 metrics:0 views:v27];
    [v24 addConstraints:v28];

    v29 = [(WFOverlayImageEditorViewController *)self view];
    v30 = MEMORY[0x277CCAAD0];
    v31 = _NSDictionaryOfVariableBindings(&cfstr_Processingview_0.isa, v22, 0);
    v32 = [v30 constraintsWithVisualFormat:@"H:|[processingView]|" options:0 metrics:0 views:v31];
    [v29 addConstraints:v32];

    v33 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
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
    [v33 if_mapAsynchronously:v36 completionHandler:v35];
  }

  else
  {
    v12 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
    v13 = [v12 objectAtIndexedSubscript:v9 + 1];
    [(WFOverlayImageEditorViewController *)self setCurrentFile:v13];

    v14 = [(WFOverlayImageEditorViewController *)self optionsView];
    v15 = [v14 nextButton];
    [v15 setEnabled:1];

    v16 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
    v17 = [v16 count] - 2;

    if (v9 == v17)
    {
      v34 = [(WFOverlayImageEditorViewController *)self optionsView];
      v18 = [v34 nextButton];
      v19 = WFLocalizedString(@"Done");
      [v18 setTitle:v19 forState:0];
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
  v2 = [(WFOverlayImageEditorViewController *)self canvasView];
  [v2 reset];
}

- (BOOL)rotationEnabled
{
  v2 = [(WFOverlayImageEditorViewController *)self canvasView];
  v3 = [v2 isRotationEnabled];

  return v3;
}

- (void)setOpacitySliderVisible:(BOOL)a3
{
  v4 = a3;
  if (a3)
  {
    v3 = [(WFOverlayImageEditorViewController *)self opacityView];
    [v3 frame];
    v7 = -v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(WFOverlayImageEditorViewController *)self opacityViewVerticalConstraint];
  [v8 setConstant:v7];

  if (v4)
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
  v2 = [(WFOverlayImageEditorViewController *)self opacityViewVerticalConstraint];
  [v2 constant];
  v4 = v3 == 0.0;

  return v4;
}

- (void)didChangeOpacity:(id)a3
{
  v4 = a3;
  v7 = [(WFOverlayImageEditorViewController *)self canvasView];
  [v4 opacity];
  v6 = v5;

  [v7 setOverlayImageOpacity:v6];
}

- (void)setCurrentFile:(id)a3
{
  v89[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_currentFile, a3);
  v6 = WFImageSourceCreateFromFile();
  v7 = WFImageAtIndexFromImageSource();
  CFRelease(v6);
  v8 = [objc_alloc(MEMORY[0x277CE8858]) initForCenteringImage:self->_overlayImage inBackgroundImage:v7];
  v9 = [WFOverlayImageEditorCanvasView alloc];
  v10 = [v7 UIImage];
  v11 = [(WFImage *)self->_overlayImage UIImage];
  v12 = [(WFOverlayImageEditorCanvasView *)v9 initWithBackgroundImage:v10 overlayImage:v11 transform:v8];

  [(WFOverlayImageEditorCanvasView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(WFOverlayImageEditorViewController *)self canvasView];

  if (!v13)
  {
    v60 = [(WFOverlayImageEditorViewController *)self view];
    [v60 insertSubview:v12 atIndex:0];

    v61 = objc_storeWeak(&self->_canvasView, v12);
    WeakRetained = objc_loadWeakRetained(&self->_optionsView);
    v63 = _NSDictionaryOfVariableBindings(&cfstr_CanvasviewOpti.isa, v12, WeakRetained, 0);

    v64 = [(WFOverlayImageEditorViewController *)self view];
    v65 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_canvasView][_optionsView]" options:0 metrics:0 views:v63];
    [v64 addConstraints:v65];

    v66 = [(WFOverlayImageEditorViewController *)self view];
    v67 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_canvasView]|" options:0 metrics:0 views:v63];
    [v66 addConstraints:v67];

    v68 = [(WFOverlayImageEditorViewController *)self view];
    [v68 setNeedsLayout];

    goto LABEL_16;
  }

  v73 = v8;
  v74 = v7;
  v75 = v5;
  v14 = [(WFOverlayImageEditorViewController *)self canvasView];
  [v14 setUserInteractionEnabled:0];
  v15 = [(WFOverlayImageEditorViewController *)self view];
  [v15 insertSubview:v12 aboveSubview:v14];

  v88 = @"offset";
  v16 = MEMORY[0x277CCABB0];
  v17 = [(WFOverlayImageEditorViewController *)self view];
  [v17 frame];
  v19 = [v16 numberWithDouble:v18];
  v89[0] = v19;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:&v88 count:1];

  v20 = MEMORY[0x277CCAAD0];
  v21 = [(WFOverlayImageEditorViewController *)self view];
  v22 = [(WFOverlayImageEditorViewController *)self view];
  [v22 frame];
  v24 = [v20 constraintWithItem:v12 attribute:1 relatedBy:0 toItem:v21 attribute:1 multiplier:1.0 constant:v23];

  v25 = MEMORY[0x277CCAAD0];
  v26 = [(WFOverlayImageEditorViewController *)self view];
  [v26 frame];
  v28 = [v25 constraintWithItem:v12 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v27];

  v29 = [(WFOverlayImageEditorViewController *)self view];
  v71 = v24;
  [v29 addConstraint:v24];

  v30 = [(WFOverlayImageEditorViewController *)self view];
  v70 = v28;
  [v30 addConstraint:v28];

  v31 = [(WFOverlayImageEditorViewController *)self view];
  v32 = MEMORY[0x277CCAAD0];
  v33 = objc_loadWeakRetained(&self->_optionsView);
  v34 = _NSDictionaryOfVariableBindings(&cfstr_NewcanvasviewO.isa, v12, v33, 0);
  v35 = [v32 constraintsWithVisualFormat:@"V:|[newCanvasView][_optionsView]" options:0 metrics:0 views:v34];
  [v31 addConstraints:v35];

  v36 = [(WFOverlayImageEditorViewController *)self view];
  [v36 setNeedsLayout];

  v37 = [(WFOverlayImageEditorViewController *)self view];
  [v37 layoutIfNeeded];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v38 = [(WFOverlayImageEditorViewController *)self view];
  v39 = [v38 constraints];

  v40 = [v39 countByEnumeratingWithState:&v83 objects:v87 count:16];
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
        objc_enumerationMutation(v39);
      }

      v44 = *(*(&v83 + 1) + 8 * i);
      v45 = [v44 firstItem];
      v46 = v45;
      if (v45 == v14)
      {
      }

      else
      {
        v47 = [v44 secondItem];

        if (v47 != v14)
        {
          continue;
        }
      }

      v48 = [(WFOverlayImageEditorViewController *)self view];
      [v48 removeConstraint:v44];
    }

    v41 = [v39 countByEnumeratingWithState:&v83 objects:v87 count:16];
  }

  while (v41);
LABEL_14:

  v49 = objc_loadWeakRetained(&self->_optionsView);
  v50 = _NSDictionaryOfVariableBindings(&cfstr_OldcanvasviewO.isa, v14, v49, 0);

  v51 = [(WFOverlayImageEditorViewController *)self view];
  v52 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[oldCanvasView][_optionsView]" options:0 metrics:0 views:v50];
  [v51 addConstraints:v52];

  v53 = [(WFOverlayImageEditorViewController *)self view];
  v54 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[oldCanvasView(==offset)]-(offset)-|" options:0 metrics:v72 views:v50];
  [v53 addConstraints:v54];

  [v71 setConstant:0.0];
  v55 = [(WFOverlayImageEditorViewController *)self optionsView];
  [v55 setUserInteractionEnabled:0];

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
  v77 = v14;
  v78 = self;
  v79 = v71;
  v80 = v70;
  v81 = v12;
  v57 = v70;
  v58 = v71;
  v59 = v14;
  [v56 animateWithDuration:v82 animations:v76 completion:0.3];

  v7 = v74;
  v5 = v75;
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
  v3 = [(WFOverlayImageEditorViewController *)self fileRepresentations];
  v4 = [v3 count];

  v5 = [(WFOverlayImageEditorViewController *)self optionsView];
  v6 = [v5 nextButton];
  if (v4 >= 2)
  {
    v7 = @"Next";
  }

  else
  {
    v7 = @"Done";
  }

  v8 = WFLocalizedString(v7);
  [v6 setTitle:v8 forState:0];
}

- (void)loadView
{
  v25.receiver = self;
  v25.super_class = WFOverlayImageEditorViewController;
  [(WFOverlayImageEditorViewController *)&v25 loadView];
  v3 = [(WFOverlayImageEditorViewController *)self editorBackgroundColor];
  v4 = [(WFOverlayImageEditorViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(WFOverlayImageEditorOptionsView);
  v6 = [(WFOverlayImageEditorViewController *)self editorBackgroundColor];
  [(WFOverlayImageEditorOptionsView *)v5 setBackgroundColor:v6];

  [(WFOverlayImageEditorOptionsView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WFOverlayImageEditorOptionsView *)v5 setDelegate:self];
  v7 = [(WFOverlayImageEditorViewController *)self view];
  [v7 addSubview:v5];

  objc_storeWeak(&self->_optionsView, v5);
  v8 = objc_alloc_init(WFOpacitySliderView);
  [(WFOpacitySliderView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WFOpacitySliderView *)v8 addTarget:self action:sel_didChangeOpacity_ forControlEvents:4096];
  v9 = [(WFOverlayImageEditorViewController *)self view];
  [v9 insertSubview:v8 belowSubview:v5];

  objc_storeWeak(&self->_opacityView, v8);
  v10 = _NSDictionaryOfVariableBindings(&cfstr_OptionsviewOpa.isa, v5, v8, 0);
  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v5 attribute:3 multiplier:1.0 constant:0.0];
  [(WFOverlayImageEditorViewController *)self setOpacityViewVerticalConstraint:v11];

  v12 = [(WFOverlayImageEditorViewController *)self view];
  v13 = [(WFOverlayImageEditorViewController *)self opacityViewVerticalConstraint];
  [v12 addConstraint:v13];

  v14 = [(WFOverlayImageEditorViewController *)self view];
  v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[opacitySliderView]|" options:0 metrics:0 views:v10];
  [v14 addConstraints:v15];

  v16 = [(WFOverlayImageEditorViewController *)self view];
  v17 = MEMORY[0x277CCAAD0];
  WeakRetained = objc_loadWeakRetained(&self->_opacityView);
  v19 = [v17 constraintWithItem:WeakRetained attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:90.0];
  [v16 addConstraint:v19];

  v20 = [(WFOverlayImageEditorViewController *)self view];
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[optionsView]|" options:0 metrics:0 views:v10];
  [v20 addConstraints:v21];

  v22 = [(WFOverlayImageEditorViewController *)self view];
  v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[optionsView]|" options:0 metrics:0 views:v10];
  [v22 addConstraints:v23];

  v24 = [(NSArray *)self->_fileRepresentations firstObject];
  [(WFOverlayImageEditorViewController *)self setCurrentFile:v24];
}

- (WFOverlayImageEditorViewController)initWithFileRepresentations:(id)a3 overlayImage:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = WFOverlayImageEditorViewController;
  v11 = [(WFOverlayImageEditorViewController *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    fileRepresentations = v11->_fileRepresentations;
    v11->_fileRepresentations = v12;

    v14 = _Block_copy(v10);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v14;

    objc_storeStrong(&v11->_overlayImage, a4);
    v16 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    transforms = v11->_transforms;
    v11->_transforms = v16;

    [(WFOverlayImageEditorViewController *)v11 setModalPresentationStyle:0];
    v18 = v11;
  }

  return v11;
}

@end