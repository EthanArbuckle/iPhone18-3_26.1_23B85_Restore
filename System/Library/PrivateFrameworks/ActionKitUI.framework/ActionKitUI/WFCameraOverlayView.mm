@interface WFCameraOverlayView
- (UIButton)flipButton;
- (UIImagePickerController)pickerController;
- (UILabel)photosLabel;
- (UIView)flashView;
- (WFCameraFlashButton)flashButton;
- (WFCameraOverlayView)initWithFrame:(CGRect)frame;
- (WFCameraShutterButton)shutterButton;
- (void)cancelPressed;
- (void)flashValueChanged;
- (void)flipPressed;
- (void)layoutSubviews;
- (void)setPickerController:(id)controller;
- (void)shutterPressed;
- (void)updateButtons;
- (void)updateFlipButton;
- (void)updatePhotosLabel;
@end

@implementation WFCameraOverlayView

- (UILabel)photosLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_photosLabel);

  return WeakRetained;
}

- (UIButton)flipButton
{
  WeakRetained = objc_loadWeakRetained(&self->_flipButton);

  return WeakRetained;
}

- (UIView)flashView
{
  WeakRetained = objc_loadWeakRetained(&self->_flashView);

  return WeakRetained;
}

- (WFCameraFlashButton)flashButton
{
  WeakRetained = objc_loadWeakRetained(&self->_flashButton);

  return WeakRetained;
}

- (WFCameraShutterButton)shutterButton
{
  WeakRetained = objc_loadWeakRetained(&self->_shutterButton);

  return WeakRetained;
}

- (UIImagePickerController)pickerController
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerController);

  return WeakRetained;
}

- (void)updateButtons
{
  pickerController = [(WFCameraOverlayView *)self pickerController];
  cameraDevice = [pickerController cameraDevice];

  v5 = [MEMORY[0x277D755C8] isFlashAvailableForCameraDevice:cameraDevice];
  if ((v5 & 1) == 0)
  {
    pickerController2 = [(WFCameraOverlayView *)self pickerController];
    [pickerController2 setCameraFlashMode:-1];
  }

  v7 = [MEMORY[0x277D755C8] isCameraDeviceAvailable:cameraDevice != 1];
  flipButton = [(WFCameraOverlayView *)self flipButton];
  [flipButton setEnabled:v7];

  flashButton = [(WFCameraOverlayView *)self flashButton];
  [flashButton setHidden:v5 ^ 1u];

  pickerController3 = [(WFCameraOverlayView *)self pickerController];
  cameraFlashMode = [pickerController3 cameraFlashMode];
  flashButton2 = [(WFCameraOverlayView *)self flashButton];
  [flashButton2 setFlashMode:cameraFlashMode];

  [(WFCameraOverlayView *)self updateFlipButton];
}

- (void)updateFlipButton
{
  pickerController = [(WFCameraOverlayView *)self pickerController];
  if ([pickerController cameraDevice])
  {
    v3 = @"Camera chooser - front facing";
  }

  else
  {
    v3 = @"Camera chooser - rear facing";
  }

  v4 = WFLocalizedString(v3);
  flipButton = [(WFCameraOverlayView *)self flipButton];
  [flipButton setAccessibilityLabel:v4];
}

- (void)setPickerController:(id)controller
{
  objc_storeWeak(&self->_pickerController, controller);

  [(WFCameraOverlayView *)self updateButtons];
}

- (void)flashValueChanged
{
  flashButton = [(WFCameraOverlayView *)self flashButton];
  flashMode = [flashButton flashMode];
  pickerController = [(WFCameraOverlayView *)self pickerController];
  [pickerController setCameraFlashMode:flashMode];
}

- (void)cancelPressed
{
  pickerController = [(WFCameraOverlayView *)self pickerController];
  delegate = [pickerController delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    pickerController2 = [(WFCameraOverlayView *)self pickerController];
    delegate2 = [pickerController2 delegate];
    pickerController3 = [(WFCameraOverlayView *)self pickerController];
    [delegate2 imagePickerControllerDidCancel:pickerController3];
  }
}

- (void)flipPressed
{
  pickerController = [(WFCameraOverlayView *)self pickerController];
  v4 = [pickerController cameraDevice] != 1;

  pickerController2 = [(WFCameraOverlayView *)self pickerController];
  [pickerController2 setCameraDevice:v4];

  [(WFCameraOverlayView *)self updateButtons];
}

- (void)updatePhotosLabel
{
  if (self->_totalPhotos > 1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = @"of %d\nphotos";
    v5 = @"of %d\nphotos";
    if ([@"of %d\nphotos" length])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [@"of %d\nphotos" stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
      v8 = [v6 stringWithFormat:@"%@ (Pluralization)", v7];

      v9 = WFCurrentBundle();
      v4 = [v9 localizedStringForKey:v8 value:@"of %d\nphotos" table:0];
    }

    else
    {
      v10 = @"of %d\nphotos";
    }

    v11 = [v3 localizedStringWithFormat:v4, self->_totalPhotos];
    photosLabel2 = [v11 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

    v12 = MEMORY[0x277CCACA8];
    v13 = WFLocalizedString(@"%1$d %2$@");
    takenPhotos = self->_takenPhotos;
    if (takenPhotos + 1 < self->_totalPhotos)
    {
      totalPhotos = takenPhotos + 1;
    }

    else
    {
      totalPhotos = self->_totalPhotos;
    }

    v16 = [v12 localizedStringWithFormat:v13, totalPhotos, photosLabel2];
    photosLabel = [(WFCameraOverlayView *)self photosLabel];
    [photosLabel setText:v16];
  }

  else
  {
    photosLabel2 = [(WFCameraOverlayView *)self photosLabel];
    [photosLabel2 setText:0];
  }
}

- (void)shutterPressed
{
  shutterButton = [(WFCameraOverlayView *)self shutterButton];
  [shutterButton setEnabled:0];

  [(WFCameraOverlayView *)self setTakenPhotos:[(WFCameraOverlayView *)self takenPhotos]+ 1];
  pickerController = [(WFCameraOverlayView *)self pickerController];
  [pickerController takePicture];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__WFCameraOverlayView_shutterPressed__block_invoke;
  v5[3] = &unk_278C37538;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:0 delay:v5 options:0 animations:0.200000003 completion:0.0];
}

uint64_t __37__WFCameraOverlayView_shutterPressed__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__WFCameraOverlayView_shutterPressed__block_invoke_2;
  v4[3] = &unk_278C37538;
  v4[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__WFCameraOverlayView_shutterPressed__block_invoke_3;
  v3[3] = &unk_278C37538;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.5 animations:0.5];
}

void __37__WFCameraOverlayView_shutterPressed__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) flashView];
  [v1 setAlpha:1.0];
}

void __37__WFCameraOverlayView_shutterPressed__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) flashView];
  [v1 setAlpha:0.0];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = WFCameraOverlayView;
  [(WFCameraOverlayView *)&v20 layoutSubviews];
  flipButton = [(WFCameraOverlayView *)self flipButton];
  superview = [flipButton superview];
  v5 = [superview isEqual:self];

  if (v5)
  {
    flipButton2 = [(WFCameraOverlayView *)self flipButton];
    [flipButton2 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    MinY = CGRectGetMinY(v21);
    v22.origin.x = v8;
    v22.origin.y = v10;
    v22.size.width = v12;
    v22.size.height = v14;
    MaxY = CGRectGetMaxY(v22);
    CGAffineTransformMakeTranslation(&v19, 0.0, MinY + MaxY);
    pickerController = [(WFCameraOverlayView *)self pickerController];
    v18 = v19;
    [pickerController setCameraViewTransform:&v18];
  }
}

- (WFCameraOverlayView)initWithFrame:(CGRect)frame
{
  v127.receiver = self;
  v127.super_class = WFCameraOverlayView;
  v3 = [(WFCameraOverlayView *)&v127 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [v4 setBackgroundColor:v5];

    [(WFCameraOverlayView *)v3 addSubview:v4];
    v6 = [MEMORY[0x277D75220] buttonWithType:1];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = WFLocalizedString(@"Switches between the front and back facing cameras");
    [v6 setAccessibilityHint:v7];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v6 setTintColor:whiteColor];

    v9 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"CameraFlip"];
    uIImage = [v9 UIImage];
    [v6 setImage:uIImage forState:0];

    v11 = WFLocalizedString(@"Camera flip");
    [v6 setAccessibilityLabel:v11];

    [v6 addTarget:v3 action:sel_flipPressed forControlEvents:64];
    v123 = v6;
    [(WFCameraOverlayView *)v3 setFlipButton:v6];
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [v12 setTextColor:whiteColor2];

    v14 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [v12 setFont:v14];

    [v12 setNumberOfLines:2];
    [v12 setTextAlignment:1];
    [v4 addSubview:v12];
    [(WFCameraOverlayView *)v3 setPhotosLabel:v12];
    [(WFCameraOverlayView *)v3 updatePhotosLabel];
    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [v15 setTintColor:whiteColor3];

    v17 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    titleLabel = [v15 titleLabel];
    [titleLabel setFont:v17];

    v19 = WFLocalizedString(@"Cancel");
    [v15 setTitle:v19 forState:0];

    [v15 addTarget:v3 action:sel_cancelPressed forControlEvents:64];
    [v4 addSubview:v15];
    v20 = objc_alloc_init(WFCameraFlashButton);
    [(WFCameraFlashButton *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    pickerController = [(WFCameraOverlayView *)v3 pickerController];
    -[WFCameraFlashButton setFlashMode:](v20, "setFlashMode:", [pickerController cameraFlashMode]);

    [(WFCameraFlashButton *)v20 addTarget:v3 action:sel_flashValueChanged forControlEvents:4096];
    [(WFCameraOverlayView *)v3 addSubview:v20];
    [(WFCameraOverlayView *)v3 setFlashButton:v20];
    v22 = objc_alloc_init(WFCameraShutterButton);
    [(WFCameraShutterButton *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFCameraShutterButton *)v22 addTarget:v3 action:sel_shutterPressed forControlEvents:64];
    [v4 addSubview:v22];
    [(WFCameraOverlayView *)v3 setShutterButton:v22];
    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v23 setBackgroundColor:blackColor];

    [v23 setAlpha:0.0];
    [(WFCameraOverlayView *)v3 addSubview:v23];
    [(WFCameraOverlayView *)v3 sendSubviewToBack:v23];
    [(WFCameraOverlayView *)v3 setFlashView:v23];
    centerXAnchor = [(WFCameraShutterButton *)v22 centerXAnchor];
    centerXAnchor2 = [v4 centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v4 addConstraint:v27];

    centerYAnchor = [(WFCameraShutterButton *)v22 centerYAnchor];
    centerYAnchor2 = [v4 centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v4 addConstraint:v30];

    v120 = v23;
    v31 = _NSDictionaryOfVariableBindings(&cfstr_SidebarviewFla.isa, v4, v23, 0);
    v32 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[flashView]|" options:0 metrics:0 views:v31];
    [(WFCameraOverlayView *)v3 addConstraints:v32];

    v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[flashView]|" options:0 metrics:0 views:v31];
    [(WFCameraOverlayView *)v3 addConstraints:v33];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v121 = v20;
    v122 = v31;
    if (userInterfaceIdiom == 1)
    {
      v36 = v123;
      [v4 addSubview:v123];
      [(WFCameraFlashButton *)v20 removeFromSuperview];
      v37 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[sidebarView]|" options:0 metrics:0 views:v31];
      [(WFCameraOverlayView *)v3 addConstraints:v37];

      rightAnchor = [v4 rightAnchor];
      rightAnchor2 = [(WFCameraOverlayView *)v3 rightAnchor];
      v40 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      [(WFCameraOverlayView *)v3 addConstraint:v40];

      v41 = [MEMORY[0x277CCAAD0] constraintWithItem:v4 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:102.0];
      [v4 addConstraint:v41];

      centerXAnchor3 = [v15 centerXAnchor];
      centerXAnchor4 = [v4 centerXAnchor];
      v44 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [v4 addConstraint:v44];

      centerYAnchor3 = [v15 centerYAnchor];
      bottomAnchor = [v4 bottomAnchor];
      v47 = [centerYAnchor3 constraintEqualToAnchor:bottomAnchor constant:-40.0];
      [v4 addConstraint:v47];

      centerXAnchor5 = [v15 centerXAnchor];
      centerXAnchor6 = [v4 centerXAnchor];
      v50 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      [v4 addConstraint:v50];

      leadingAnchor = [v15 leadingAnchor];
      layoutMarginsGuide = [v4 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v54 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      [v4 addConstraint:v54];

      trailingAnchor = [v15 trailingAnchor];
      layoutMarginsGuide2 = [v4 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v58 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      [v4 addConstraint:v58];

      centerXAnchor7 = [v123 centerXAnchor];
      centerXAnchor8 = [v4 centerXAnchor];
      v61 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
      [v4 addConstraint:v61];

      centerYAnchor4 = [v123 centerYAnchor];
      topAnchor = [v4 topAnchor];
      v64 = [centerYAnchor4 constraintEqualToAnchor:topAnchor constant:40.0];
      [v4 addConstraint:v64];

      v65 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:10 relatedBy:0 toItem:v4 attribute:10 multiplier:1.5 constant:0.0];
      [v4 addConstraint:v65];

      centerXAnchor9 = [v12 centerXAnchor];
      centerXAnchor10 = [v4 centerXAnchor];
      v68 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
      [v4 addConstraint:v68];

      leadingAnchor3 = [v12 leadingAnchor];
      layoutMarginsGuide3 = [v4 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
      v72 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
      [v4 addConstraint:v72];

      trailingAnchor3 = [v12 trailingAnchor];
      layoutMarginsGuide4 = [v4 layoutMarginsGuide];
      trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
      v76 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
      [v4 addConstraint:v76];
    }

    else
    {
      [(WFCameraOverlayView *)v3 addSubview:v123];
      v77 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[sidebarView]-|" options:0 metrics:0 views:v31];
      [(WFCameraOverlayView *)v3 addConstraints:v77];

      topAnchor2 = [(WFCameraFlashButton *)v20 topAnchor];
      [(WFCameraOverlayView *)v3 safeAreaLayoutGuide];
      v80 = v79 = v20;
      topAnchor3 = [v80 topAnchor];
      v82 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      [(WFCameraOverlayView *)v3 addConstraint:v82];

      bottomAnchor2 = [v4 bottomAnchor];
      layoutMarginsGuide5 = [(WFCameraOverlayView *)v3 layoutMarginsGuide];
      bottomAnchor3 = [layoutMarginsGuide5 bottomAnchor];
      v86 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      [(WFCameraOverlayView *)v3 addConstraint:v86];

      topAnchor4 = [v123 topAnchor];
      layoutMarginsGuide6 = [(WFCameraOverlayView *)v3 layoutMarginsGuide];
      topAnchor5 = [layoutMarginsGuide6 topAnchor];
      v90 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      [(WFCameraOverlayView *)v3 addConstraint:v90];

      rightAnchor3 = [v123 rightAnchor];
      layoutMarginsGuide7 = [(WFCameraOverlayView *)v3 layoutMarginsGuide];
      rightAnchor4 = [layoutMarginsGuide7 rightAnchor];
      v94 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      [(WFCameraOverlayView *)v3 addConstraint:v94];

      leftAnchor = [(WFCameraFlashButton *)v79 leftAnchor];
      layoutMarginsGuide8 = [(WFCameraOverlayView *)v3 layoutMarginsGuide];
      leftAnchor2 = [layoutMarginsGuide8 leftAnchor];
      v98 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      [(WFCameraOverlayView *)v3 addConstraint:v98];

      v99 = [MEMORY[0x277CCAAD0] constraintWithItem:v4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:102.0];
      [v4 addConstraint:v99];

      centerYAnchor5 = [v15 centerYAnchor];
      centerYAnchor6 = [v4 centerYAnchor];
      v102 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      [v4 addConstraint:v102];

      leadingAnchor5 = [v15 leadingAnchor];
      layoutMarginsGuide9 = [v4 layoutMarginsGuide];
      leadingAnchor6 = [layoutMarginsGuide9 leadingAnchor];
      v106 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [v4 addConstraint:v106];

      trailingAnchor5 = [v15 trailingAnchor];
      leadingAnchor7 = [(WFCameraShutterButton *)v22 leadingAnchor];
      v109 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor7 constant:-10.0];
      [v4 addConstraint:v109];

      centerYAnchor7 = [v12 centerYAnchor];
      centerYAnchor8 = [v4 centerYAnchor];
      v112 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
      [v4 addConstraint:v112];

      trailingAnchor6 = [v12 trailingAnchor];
      layoutMarginsGuide10 = [v4 layoutMarginsGuide];
      trailingAnchor7 = [layoutMarginsGuide10 trailingAnchor];
      v116 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
      [v4 addConstraint:v116];

      trailingAnchor3 = [v12 leadingAnchor];
      layoutMarginsGuide4 = [(WFCameraShutterButton *)v22 trailingAnchor];
      trailingAnchor4 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:layoutMarginsGuide4 constant:10.0];
      [v4 addConstraint:trailingAnchor4];
      v36 = v123;
    }

    [(WFCameraOverlayView *)v3 updateButtons];
    objc_initWeak(&location, v3);
    v117 = [WFVolumeButtonManager alloc];
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __37__WFCameraOverlayView_initWithFrame___block_invoke;
    v124[3] = &unk_278C36650;
    objc_copyWeak(&v125, &location);
    v118 = [(WFVolumeButtonManager *)v117 initWithPressHandler:v124];
    [(WFCameraOverlayView *)v3 setVolumeButtonManager:v118];

    objc_destroyWeak(&v125);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __37__WFCameraOverlayView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shutterPressed];
}

@end