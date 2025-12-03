@interface BCSLiveViewController
- (BCSLiveViewController)initWithPreviewLayer:(id)layer;
- (BCSLiveViewControllerDelegate)delegate;
- (CGPoint)_convertLogicalPoint:(CGPoint)point inBounds:(CGRect)bounds;
- (CGPoint)_convertPointFromCaptureDeviceLocation:(CGPoint)location;
- (CGPoint)_convertPointToCaptureDeviceLocation:(CGPoint)location;
- (CGPoint)_normalize:(CGPoint)_normalize inBounds:(CGRect)bounds;
- (CGPoint)_pointFromNormalizedPoint:(CGPoint)point;
- (id)_perspectiveCorrectedImage:(id)image imageQuad:(id)quad;
- (void)_applyTorchButtonRotationForDeviceOrientation;
- (void)_continueToPopAnimationForDetectedCode:(id)code;
- (void)_layOutWithPreviewSize:(CGSize)size angle:(double)angle isPortrait:(BOOL)portrait;
- (void)_liveViewTapped;
- (void)_setTorchButtonPosition;
- (void)_updateCoacheMessageWithString:(id)string;
- (void)actionCoordinator:(id)coordinator didParseCode:(id)code withAction:(id)action;
- (void)cameraDeviceDidChange;
- (void)compensateForInterfaceOrientationInLiveView:(int64_t)view referenceSize:(CGSize)size;
- (void)compensateForVideoRotationAngleInLiveView:(double)view;
- (void)didCaptureVisualCode:(id)code image:(id)image shouldAnimate:(BOOL)animate;
- (void)sessionControlsDidBecomeActive:(id)active;
- (void)sessionControlsDidBecomeInactive:(id)inactive;
- (void)updateQRCodeAvailability:(int64_t)availability;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BCSLiveViewController

- (BCSLiveViewController)initWithPreviewLayer:(id)layer
{
  layerCopy = layer;
  v12.receiver = self;
  v12.super_class = BCSLiveViewController;
  v6 = [(BCSLiveViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewLayer, layer);
    v8 = objc_alloc_init(BCSActionCoordinator);
    actionCoordinator = v7->_actionCoordinator;
    v7->_actionCoordinator = v8;

    [(BCSActionCoordinator *)v7->_actionCoordinator setDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v70[4] = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = BCSLiveViewController;
  [(BCSLiveViewController *)&v68 viewDidLoad];
  v3 = objc_alloc_init(BCSPreviewContainerView);
  previewContainerView = self->_previewContainerView;
  self->_previewContainerView = v3;

  [(BCSPreviewContainerView *)self->_previewContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BCSPreviewContainerView *)self->_previewContainerView setAccessibilityIgnoresInvertColors:1];
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__liveViewTapped];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v5;

  [(BCSPreviewContainerView *)self->_previewContainerView addGestureRecognizer:self->_tapGestureRecognizer];
  view = [(BCSLiveViewController *)self view];
  [view addSubview:self->_previewContainerView];

  [(BCSPreviewContainerView *)self->_previewContainerView setPreviewLayer:self->_previewLayer];
  v8 = [BCSSubjectIndicatorView alloc];
  v9 = [(BCSSubjectIndicatorView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  focusIndicator = self->_focusIndicator;
  self->_focusIndicator = v9;

  [(BCSSubjectIndicatorView *)self->_focusIndicator setInactive:1];
  [(BCSSubjectIndicatorView *)self->_focusIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BCSSubjectIndicatorView *)self->_focusIndicator sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(BCSSubjectIndicatorView *)self->_focusIndicator setBounds:0.0, 0.0, v11, v12];
  view2 = [(BCSLiveViewController *)self view];
  [view2 center];
  [(BCSSubjectIndicatorView *)self->_focusIndicator setCenter:?];

  view3 = [(BCSLiveViewController *)self view];
  [view3 addSubview:self->_focusIndicator];

  v15 = objc_alloc_init(BCSTorchButtonView);
  torchButtonView = self->_torchButtonView;
  self->_torchButtonView = v15;

  [(BCSTorchButtonView *)self->_torchButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BCSTorchButtonView *)self->_torchButtonView setDelegate:self];
  delegate = [(BCSLiveViewController *)self delegate];
  -[BCSTorchButtonView setHidden:](self->_torchButtonView, "setHidden:", [delegate liveViewControllerTorchModeSupported:self] ^ 1);

  view4 = [(BCSLiveViewController *)self view];
  [view4 addSubview:self->_torchButtonView];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v19 = objc_alloc_init(BCSCoachingMessageView);
    coachingMessageView = self->_coachingMessageView;
    self->_coachingMessageView = v19;

    [(BCSCoachingMessageView *)self->_coachingMessageView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(BCSCoachingMessageView *)self->_coachingMessageView topAnchor];
    view5 = [(BCSLiveViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:80.0];
    coachingMessageTopAnchorConstraint = self->_coachingMessageTopAnchorConstraint;
    self->_coachingMessageTopAnchorConstraint = v24;

    view6 = [(BCSLiveViewController *)self view];
    [view6 addSubview:self->_coachingMessageView];
  }

  v27 = objc_alloc_init(MEMORY[0x277D75D18]);
  focusIndicatorInsetView = self->_focusIndicatorInsetView;
  self->_focusIndicatorInsetView = v27;

  [(UIView *)self->_focusIndicatorInsetView setTranslatesAutoresizingMaskIntoConstraints:0];
  view7 = [(BCSLiveViewController *)self view];
  [view7 addSubview:self->_focusIndicatorInsetView];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v58 = MEMORY[0x277CCAAD0];
    v70[0] = self->_coachingMessageTopAnchorConstraint;
    centerXAnchor = [(BCSCoachingMessageView *)self->_coachingMessageView centerXAnchor];
    view8 = [(BCSLiveViewController *)self view];
    centerXAnchor2 = [view8 centerXAnchor];
    v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v70[1] = v60;
    bottomAnchor = [(BCSCoachingMessageView *)self->_coachingMessageView bottomAnchor];
    topAnchor3 = [(BCSSubjectIndicatorView *)self->_focusIndicator topAnchor];
    v31 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor3 constant:-10.0];
    v70[2] = v31;
    widthAnchor = [(BCSCoachingMessageView *)self->_coachingMessageView widthAnchor];
    view9 = [(BCSLiveViewController *)self view];
    widthAnchor2 = [view9 widthAnchor];
    v35 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v70[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
    [v58 activateConstraints:v36];
  }

  v53 = MEMORY[0x277CCAAD0];
  centerXAnchor3 = [(BCSSubjectIndicatorView *)self->_focusIndicator centerXAnchor];
  view10 = [(BCSLiveViewController *)self view];
  centerXAnchor4 = [view10 centerXAnchor];
  v61 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v69[0] = v61;
  centerYAnchor = [(BCSSubjectIndicatorView *)self->_focusIndicator centerYAnchor];
  view11 = [(BCSLiveViewController *)self view];
  centerYAnchor2 = [view11 centerYAnchor];
  v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v69[1] = v54;
  centerXAnchor5 = [(UIView *)self->_focusIndicatorInsetView centerXAnchor];
  centerXAnchor6 = [(BCSSubjectIndicatorView *)self->_focusIndicator centerXAnchor];
  v50 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v69[2] = v50;
  centerYAnchor3 = [(UIView *)self->_focusIndicatorInsetView centerYAnchor];
  centerYAnchor4 = [(BCSSubjectIndicatorView *)self->_focusIndicator centerYAnchor];
  v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v69[3] = v38;
  widthAnchor3 = [(UIView *)self->_focusIndicatorInsetView widthAnchor];
  widthAnchor4 = [(BCSSubjectIndicatorView *)self->_focusIndicator widthAnchor];
  v41 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.8];
  v69[4] = v41;
  heightAnchor = [(UIView *)self->_focusIndicatorInsetView heightAnchor];
  heightAnchor2 = [(BCSSubjectIndicatorView *)self->_focusIndicator heightAnchor];
  v44 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.8];
  v69[5] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:6];
  [v53 activateConstraints:v45];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  [(BCSPreviewContainerView *)self->_previewContainerView setBounds:?];

  view12 = [(BCSLiveViewController *)self view];
  [view12 bounds];
  UIRectGetCenter();
  [(BCSPreviewContainerView *)self->_previewContainerView setCenter:?];

  [(BCSPreviewContainerView *)self->_previewContainerView setNeedsLayout];
  [(BCSSubjectIndicatorView *)self->_focusIndicator setBouncing:1];
  v48 = *MEMORY[0x277D85DE8];
}

- (void)_liveViewTapped
{
  superview = [(UIImageView *)self->_targetQRImage superview];

  if (!superview)
  {
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer locationInView:self->_previewContainerView];
    [(BCSLiveViewController *)self _convertPointToCaptureDeviceLocation:?];
    v5 = v4;
    v7 = v6;
    delegate = [(BCSLiveViewController *)self delegate];
    [delegate liveViewController:self didTapAtDevicePoint:{v5, v7}];
  }

  [(BCSLiveViewController *)self resetUIAndStartCapturing:1];
}

- (void)_updateCoacheMessageWithString:(id)string
{
  stringCopy = string;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(BCSCoachingMessageView *)self->_coachingMessageView setContentHidden:0];
    [(BCSCoachingMessageView *)self->_coachingMessageView setMessage:stringCopy];
  }
}

- (void)updateQRCodeAvailability:(int64_t)availability
{
  if ((_UISolariumEnabled() & 1) == 0 && (availability == 2 || !availability))
  {
    v5 = _BCSLocalizedString();
    [(BCSLiveViewController *)self _updateCoacheMessageWithString:v5];
  }
}

- (void)didCaptureVisualCode:(id)code image:(id)image shouldAnimate:(BOOL)animate
{
  animateCopy = animate;
  codeCopy = code;
  imageCopy = image;
  [(BCSActionCoordinator *)self->_actionCoordinator startParsingVisualCode:codeCopy];
  v9 = [BCSImageQuad alloc];
  [codeCopy topLeft];
  v11 = v10;
  v13 = v12;
  [codeCopy topRight];
  v15 = v14;
  v17 = v16;
  [codeCopy bottomRight];
  v19 = v18;
  v21 = v20;
  [codeCopy bottomLeft];
  v24 = [(BCSImageQuad *)v9 initWithTopLeft:v11 topRight:v13 bottomRight:v15 bottomLeft:v17, v19, v21, v22, v23];
  [(BCSImageQuad *)v24 boundingBox];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [imageCopy extent];
  CGAffineTransformMakeScale(&v144, v33, v34);
  v145.origin.x = v26;
  v145.origin.y = v28;
  v145.size.width = v30;
  v145.size.height = v32;
  v146 = CGRectApplyAffineTransform(v145, &v144);
  v35 = [imageCopy imageByCroppingToRect:{v146.origin.x, v146.origin.y, v146.size.width, v146.size.height}];
  [(BCSImageQuad *)v24 normalize];
  [v35 extent];
  [(BCSImageQuad *)v24 topLeft];
  [BCSLiveViewController _convertLogicalPoint:"_convertLogicalPoint:inBounds:" inBounds:?];
  v127 = v37;
  v129 = v36;
  [(BCSImageQuad *)v24 topRight];
  [BCSLiveViewController _convertLogicalPoint:"_convertLogicalPoint:inBounds:" inBounds:?];
  v39 = v38;
  v41 = v40;
  [(BCSImageQuad *)v24 bottomRight];
  [BCSLiveViewController _convertLogicalPoint:"_convertLogicalPoint:inBounds:" inBounds:?];
  v43 = v42;
  v45 = v44;
  [(BCSImageQuad *)v24 bottomLeft];
  [BCSLiveViewController _convertLogicalPoint:"_convertLogicalPoint:inBounds:" inBounds:?];
  v48 = [[BCSImageQuad alloc] initWithTopLeft:v129 topRight:v127 bottomRight:v39 bottomLeft:v41, v43, v45, v46, v47];
  [(BCSImageQuad *)v48 adjustOrientationInImageSpace:1];
  v125 = v35;
  v49 = [(BCSLiveViewController *)self _perspectiveCorrectedImage:v35 imageQuad:v48];
  [(UIImageView *)self->_targetQRImage removeFromSuperview];
  v124 = v49;
  v50 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v49];
  targetQRImage = self->_targetQRImage;
  self->_targetQRImage = v50;

  [(AVCaptureVideoPreviewLayer *)self->_previewLayer rectForMetadataOutputRectOfInterest:0.0, 0.0, 1.0, 1.0];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  view = [(BCSLiveViewController *)self view];
  [view convertRect:self->_previewContainerView fromView:{v53, v55, v57, v59}];

  [codeCopy topLeft];
  [BCSLiveViewController _convertLogicalPoint:"_convertLogicalPoint:inBounds:" inBounds:?];
  v128 = v61;
  v130 = v62;
  [codeCopy topRight];
  [BCSLiveViewController _convertLogicalPoint:"_convertLogicalPoint:inBounds:" inBounds:?];
  v64 = v63;
  v66 = v65;
  [codeCopy bottomRight];
  [BCSLiveViewController _convertLogicalPoint:"_convertLogicalPoint:inBounds:" inBounds:?];
  v68 = v67;
  v70 = v69;
  [codeCopy bottomLeft];
  [BCSLiveViewController _convertLogicalPoint:"_convertLogicalPoint:inBounds:" inBounds:?];
  v122 = v66;
  v123 = v64;
  v120 = v70;
  v121 = v68;
  v118 = v72;
  v119 = v71;
  v73 = [[BCSImageQuad alloc] initWithTopLeft:v128 topRight:v130 bottomRight:v64 bottomLeft:v66, v68, v70, v71, v72];
  [(BCSImageQuad *)v73 boundingBox];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  view2 = [(BCSLiveViewController *)self view];
  [view2 bounds];
  Height = CGRectGetHeight(v147);

  v144.b = 0.0;
  v144.c = 0.0;
  v144.a = 1.0;
  *&v144.d = xmmword_241A064E0;
  v144.ty = Height;
  v148.origin.x = v75;
  v148.origin.y = v77;
  v148.size.width = v79;
  v148.size.height = v81;
  v149 = CGRectApplyAffineTransform(v148, &v144);
  x = v149.origin.x;
  y = v149.origin.y;
  width = v149.size.width;
  v87 = v149.size.height;
  _bcs_roundRectToPixels();
  [(UIImageView *)self->_targetQRImage setFrame:?];
  if ([codeCopy codeType] == 1)
  {
    [(UIImageView *)self->_targetQRImage bounds];
    v88 = CGRectGetWidth(v150);
    [(UIImageView *)self->_targetQRImage bounds];
    v89 = CGRectGetHeight(v151);
    v90 = v88 / v89;
    if (v88 > v89)
    {
      v90 = 1.0;
    }

    sx = v90;
    if (v88 > v89)
    {
      v91 = v89 / v88;
    }

    else
    {
      v91 = 1.0;
    }

    if (v88 <= v89)
    {
      v88 = v89;
    }

    [(UIImageView *)self->_targetQRImage position];
    v93 = v92;
    v94 = y;
    v95 = x;
    v96 = width;
    v98 = v97;
    [(UIImageView *)self->_targetQRImage setFrame:0.0, 0.0, v88, v88];
    [(UIImageView *)self->_targetQRImage setPosition:v93, v98];
    layer = [(UIImageView *)self->_targetQRImage layer];
    width = v96;
    x = v95;
    y = v94;
    [layer setCornerRadius:v88 * 0.5];

    v100 = *(MEMORY[0x277CBF2C0] + 16);
    *&v144.a = *MEMORY[0x277CBF2C0];
    *&v144.c = v100;
    *&v144.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformScale(&v143, &v144, sx, v91);
    v101 = self->_targetQRImage;
    v144 = v143;
    [(UIImageView *)v101 setTransform:&v144];
    layer2 = [(UIImageView *)self->_targetQRImage layer];
    [layer2 setMasksToBounds:1];

    [(UIImageView *)self->_targetQRImage setClipsToBounds:1];
  }

  animator = self->_animator;
  if (!animator)
  {
    v104 = objc_alloc_init(BCSScanningAnimator);
    v105 = self->_animator;
    self->_animator = v104;

    animator = self->_animator;
  }

  [(BCSScanningAnimator *)animator setFocusIndicator:self->_focusIndicator];
  v118 = [[BCSImageQuad alloc] initWithTopLeft:v128 topRight:v130 bottomRight:v123 bottomLeft:v122, v121, v120, v119, v118];
  [(BCSImageQuad *)v118 setBounds:x, y, width, v87];
  [(BCSImageQuad *)v118 normalize];
  [(BCSImageQuad *)v118 flip];
  [(BCSScanningAnimator *)self->_animator setImageQuad:v118];
  [(BCSScanningAnimator *)self->_animator setTargetQRImage:self->_targetQRImage];
  [(BCSScanningAnimator *)self->_animator setTargetCode:codeCopy];
  [(BCSSubjectIndicatorView *)self->_focusIndicator setBouncing:0];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v141[4] = self;
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke;
    v142[3] = &unk_278D01AE0;
    v142[4] = self;
    v141[0] = MEMORY[0x277D85DD0];
    v141[1] = 3221225472;
    v141[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_2;
    v141[3] = &unk_278D01B28;
    [MEMORY[0x277D75D18] animateWithDuration:v142 animations:v141 completion:0.25];
  }

  v107 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
  if (os_signpost_enabled(v107))
  {
    LOWORD(v144.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v107, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "pushAnimationStarts", "start QR code animation", &v144, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_30;
  aBlock[3] = &unk_278D01B78;
  v108 = codeCopy;
  v138 = v108;
  v109 = imageCopy;
  v139 = v109;
  selfCopy = self;
  v110 = _Block_copy(aBlock);
  codeType = [v108 codeType];
  v112 = self->_animator;
  if (codeType == 1)
  {
    v134[0] = MEMORY[0x277D85DD0];
    v134[1] = 3221225472;
    v134[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_39;
    v134[3] = &unk_278D01BC8;
    v134[4] = self;
    v113 = &v135;
    v114 = &v136;
    v135 = v108;
    v136 = v110;
    v115 = v110;
    [(BCSScanningAnimator *)v112 animateAppClipCodeBounceWithCompletion:v134 shouldAnimate:animateCopy];
  }

  else
  {
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_3;
    v131[3] = &unk_278D01BC8;
    v131[4] = self;
    v113 = &v132;
    v114 = &v133;
    v132 = v108;
    v133 = v110;
    v116 = v110;
    [(BCSScanningAnimator *)v112 animatePushWithCompletion:v131 shouldAnimate:animateCopy];
  }
}

uint64_t __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) setContentHidden:1];
  v2 = *(*(a1 + 32) + 1008);

  return [v2 setAlpha:1.0];
}

BOOL __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_30(void *a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = +[BCSSecureCaptureSession hasActiveSession];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE58]);
    v4 = [v3 initWithActivityType:*MEMORY[0x277CD48A0]];
    v13[0] = @"detectedCode";
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1[4]];
    v13[1] = @"detectedImage";
    v14[0] = v5;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1[5]];
    v14[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v4 setUserInfo:v7];

    v8 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "captureExtensionCodePayload", "created Capture Extension code payload", buf, 2u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_35;
    v11[3] = &unk_278D01B50;
    v11[4] = a1[6];
    [BCSSecureCaptureSession authenticateWithUserActivity:v4 completionHandler:v11];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

void __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_2_36;
    block[3] = &unk_278D01AE0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v4 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_35_cold_1(v4, v3);
    }
  }
}

void __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_39(uint64_t a1, int a2)
{
  v4 = [*(*(a1 + 32) + 1088) actionForVisualCode:*(a1 + 40)];
  if (a2)
  {
    v5 = *(*(a1 + 32) + 1088);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_2_40;
    v8[3] = &unk_278D01BA0;
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = v4;
    [v5 requestDeviceUnlockIfNeededWithCompletion:v8];
  }
}

uint64_t __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_2_40(void *a1, char a2)
{
  result = (*(a1[6] + 16))();
  if ((result & 1) == 0)
  {
    v5 = a1[4];
    if (a2)
    {
      v6 = [v5 delegate];
      [v6 liveViewControllerWillPerformAction:a1[4]];

      v7 = a1[5];
      v8 = *(a1[4] + 1088);

      return [v8 performAction:v7];
    }

    else
    {

      return [v5 resetUIAndStartCapturing:1];
    }
  }

  return result;
}

void __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1088) actionForVisualCode:*(a1 + 40)];

  if (v2)
  {
    v3 = 100000000;
  }

  else
  {
    v3 = 1000000000;
  }

  v4 = dispatch_time(0, v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_4;
  block[3] = &unk_278D01BF0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  block[4] = v6;
  v9 = v7;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_4(void *a1)
{
  result = (*(a1[6] + 16))();
  if ((result & 1) == 0)
  {
    v3 = a1[4];
    v4 = a1[5];

    return [v3 _continueToPopAnimationForDetectedCode:v4];
  }

  return result;
}

- (void)_continueToPopAnimationForDetectedCode:(id)code
{
  codeCopy = code;
  v5 = [(BCSActionCoordinator *)self->_actionCoordinator actionForVisualCode:codeCopy];
  v6 = v5;
  if (v5)
  {
    actionCoordinator = self->_actionCoordinator;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke;
    v8[3] = &unk_278D01D08;
    v8[4] = self;
    v9 = v5;
    v10 = codeCopy;
    [(BCSActionCoordinator *)actionCoordinator requestDeviceUnlockIfNeededWithCompletion:v8];
  }

  else
  {
    [(BCSLiveViewController *)self resetUIAndStartCapturing:1];
  }
}

void __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 40) actionPickerItems];
    v4 = [v3 count];

    if (v4 == 1)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(v5 + 1088);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_2;
      v25[3] = &unk_278D01C68;
      v25[4] = v5;
      v26 = *(a1 + 48);
      [v7 showFirstTimePromptIfNecessary:v6 completion:v25];
      v8 = v26;
    }

    else
    {
      v10 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2419E7000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "startShowingAlertForUserChoice", "show alert for multiple action items", buf, 2u);
      }

      v11 = [*(a1 + 40) actionPickerItems];
      v12 = [v11 firstObject];
      v13 = [v12 actionURL];
      v14 = [v13 _bcs_isUPIURL];

      v15 = *(a1 + 32);
      if (v14)
      {
        v16 = *(v15 + 1040);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_42;
        v23[3] = &unk_278D01C90;
        v23[4] = v15;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_2_43;
        v21[3] = &unk_278D01C40;
        v21[4] = v15;
        v22 = *(a1 + 40);
        [v16 animatePopWithAppImageBlock:v23 completion:v21];
        v8 = v22;
      }

      else
      {
        v17 = *(v15 + 1088);
        v18 = *(a1 + 40);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_4_46;
        v19[3] = &unk_278D01CB8;
        v19[4] = v15;
        v20 = v18;
        [v17 showItemsWithAction:v20 completion:v19];
        v8 = v20;
      }
    }
  }

  else
  {
    v9 = *(a1 + 32);

    [v9 resetUIAndStartCapturing:1];
  }
}

void __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 1040);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_3;
  v8[3] = &unk_278D01C18;
  v8[4] = v3;
  v9 = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_4;
  v6[3] = &unk_278D01C40;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 animatePopWithAppImageBlock:v8 completion:v6];
}

id __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1088) actionForVisualCode:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 1088) homeScreenAppIconForAction:v2];

  return v3;
}

void __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_4(uint64_t a1, int a2)
{
  v4 = [*(*(a1 + 32) + 1088) actionForVisualCode:*(a1 + 40)];
  if (a2)
  {
    v6 = v4;
    v5 = [*(a1 + 32) delegate];
    [v5 liveViewControllerWillPerformAction:*(a1 + 32)];

    [*(*(a1 + 32) + 1088) performAction:v6];
    v4 = v6;
  }
}

void __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_2_43(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(v2 + 1088);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_3_44;
    v5[3] = &unk_278D01CB8;
    v5[4] = v2;
    v6 = v3;
    [v4 showItemsWithAction:v6 completion:v5];
  }
}

uint64_t __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_3_44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 liveViewControllerWillPerformAction:*(a1 + 32)];

  [v4 performAction];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 1088);

  return [v7 logActivatedEventForAction:v6];
}

void __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_4_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 actionURL];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 1040);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_5;
    v10[3] = &unk_278D01CE0;
    v10[4] = v5;
    v11 = v3;
    v12 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_6;
    v7[3] = &unk_278D01D08;
    v7[4] = *(a1 + 32);
    v8 = v11;
    v9 = *(a1 + 40);
    [v6 animatePopWithAppImageBlock:v10 completion:v7];
  }

  else if ([v3 isCopyActionItem])
  {
    [v3 performAction];
    [*(a1 + 32) resetUIAndStartCapturing:1];
  }
}

id __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1088);
  v3 = [*(a1 + 40) targetApplicationBundleIdentifier];
  if (v3)
  {
    v4 = [v2 homeScreenAppIconWithIdentifier:v3];
  }

  else
  {
    v5 = [*(a1 + 48) defaultActionTargetApplicationBundleIdentifier];
    v4 = [v2 homeScreenAppIconWithIdentifier:v5];
  }

  return v4;
}

uint64_t __64__BCSLiveViewController__continueToPopAnimationForDetectedCode___block_invoke_6(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) delegate];
    [v3 liveViewControllerWillPerformAction:v2[4]];

    [*(v2[4] + 1088) performActionPickerItem:v2[5]];
    v4 = *(v2[4] + 1088);
    v5 = v2[6];

    return [v4 logActivatedEventForAction:v5];
  }

  return result;
}

- (CGPoint)_normalize:(CGPoint)_normalize inBounds:(CGRect)bounds
{
  v4 = (_normalize.x - bounds.origin.x) / bounds.size.width;
  v5 = (_normalize.y - bounds.origin.y) / bounds.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_convertLogicalPoint:(CGPoint)point inBounds:(CGRect)bounds
{
  v4 = bounds.origin.x + point.x * bounds.size.width;
  v5 = bounds.origin.y + point.y * bounds.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)_perspectiveCorrectedImage:(id)image imageQuad:(id)quad
{
  imageCopy = image;
  v6 = MEMORY[0x277CBF750];
  quadCopy = quad;
  v8 = [v6 filterWithName:@"CIPerspectiveCorrection"];
  v9 = MEMORY[0x277CBF788];
  [quadCopy topLeft];
  v10 = [v9 vectorWithCGPoint:?];
  [v8 setValue:v10 forKey:@"inputTopLeft"];

  v11 = MEMORY[0x277CBF788];
  [quadCopy topRight];
  v12 = [v11 vectorWithCGPoint:?];
  [v8 setValue:v12 forKey:@"inputTopRight"];

  v13 = MEMORY[0x277CBF788];
  [quadCopy bottomLeft];
  v14 = [v13 vectorWithCGPoint:?];
  [v8 setValue:v14 forKey:@"inputBottomLeft"];

  v15 = MEMORY[0x277CBF788];
  [quadCopy bottomRight];
  v17 = v16;
  v19 = v18;

  v20 = [v15 vectorWithCGPoint:{v17, v19}];
  [v8 setValue:v20 forKey:@"inputBottomRight"];

  [v8 setValue:imageCopy forKey:*MEMORY[0x277CBFAF0]];
  v21 = [v8 valueForKey:*MEMORY[0x277CBFB50]];
  v22 = MEMORY[0x277D755B8];
  _bcs_mainScreenScale();
  v23 = [v22 imageWithCIImage:v21 scale:0 orientation:?];

  return v23;
}

- (CGPoint)_pointFromNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  previewLayer = self->_previewLayer;
  view = [(BCSLiveViewController *)self view];
  layer = [view layer];
  [(AVCaptureVideoPreviewLayer *)previewLayer convertPoint:layer toLayer:x, y];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)_convertPointToCaptureDeviceLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(BCSLiveViewController *)self view];
  layer = [view layer];
  [layer convertPoint:self->_previewLayer toLayer:{x, y}];
  v9 = v8;
  v11 = v10;

  previewLayer = self->_previewLayer;

  [(AVCaptureVideoPreviewLayer *)previewLayer captureDevicePointOfInterestForPoint:v9, v11];
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)_convertPointFromCaptureDeviceLocation:(CGPoint)location
{
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer pointForCaptureDevicePointOfInterest:location.x, location.y];
  v5 = v4;
  v7 = v6;
  view = [(BCSLiveViewController *)self view];
  layer = [view layer];
  [layer convertPoint:self->_previewLayer fromLayer:{v5, v7}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)cameraDeviceDidChange
{
  delegate = [(BCSLiveViewController *)self delegate];
  -[BCSTorchButtonView setHidden:](self->_torchButtonView, "setHidden:", [delegate liveViewControllerTorchModeSupported:self] ^ 1);
}

- (void)_applyTorchButtonRotationForDeviceOrientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];

  v5 = 0.0;
  if ((orientation - 2) <= 2)
  {
    v5 = dbl_241A064F8[orientation - 2];
  }

  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeRotation(&v7, v5);
  v6 = v7;
  [(BCSTorchButtonView *)self->_torchButtonView setTransform:&v6];
}

- (void)_setTorchButtonPosition
{
  view = [(BCSLiveViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  view2 = [(BCSLiveViewController *)self view];
  [view2 bounds];
  v9 = v8;
  v11 = v10;

  if (v11 > v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = interfaceOrientation;
  }

  if (v12 == 3)
  {
    v16 = v9 + -116.0;
    view3 = [(BCSLiveViewController *)self view];
    [view3 center];
    v15 = v18;
  }

  else if (v12 == 4)
  {
    view4 = [(BCSLiveViewController *)self view];
    [view4 center];
    v15 = v14;

    v16 = 116.0;
  }

  else
  {
    view5 = [(BCSLiveViewController *)self view];
    [view5 center];
    v16 = v20;

    v15 = v11 + -116.0;
  }

  torchButtonView = self->_torchButtonView;

  [(BCSTorchButtonView *)torchButtonView setCenter:v16, v15];
}

- (void)compensateForVideoRotationAngleInLiveView:(double)view
{
  self->_videoRotationAngle = view;
  v5 = fabs(remainder(view, 3.14159265));
  view = [(BCSLiveViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  if (v5 <= 0.001)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 0.001)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  [(BCSLiveViewController *)self _layOutWithPreviewSize:v8 < v10 angle:v12 isPortrait:v11, view];
}

- (void)compensateForInterfaceOrientationInLiveView:(int64_t)view referenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(BCSLiveViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;

  v13 = width >= height && v10 < v12;
  if (v13 || width < height && v10 > v12)
  {
    width = v12;
    height = v10;
  }

  switch(view)
  {
    case 2:
      v14 = 1;
      v15 = 3.14159265;
      break;
    case 3:
      v14 = 0;
      v15 = -1.57079633;
      break;
    case 4:
      v14 = 0;
      v15 = 1.57079633;
      break;
    default:
      v14 = 1;
      v15 = 0.0;
      break;
  }

  [(BCSLiveViewController *)self _layOutWithPreviewSize:v14 angle:width isPortrait:height, v15];
}

- (void)_layOutWithPreviewSize:(CGSize)size angle:(double)angle isPortrait:(BOOL)portrait
{
  [(BCSPreviewContainerView *)self->_previewContainerView setBounds:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), size.width, size.height];
  view = [(BCSLiveViewController *)self view];
  [view bounds];
  UIRectGetCenter();
  [(BCSPreviewContainerView *)self->_previewContainerView setCenter:?];

  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeRotation(&v13, angle);
  v12 = v13;
  [(BCSPreviewContainerView *)self->_previewContainerView setTransform:&v12];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if (portrait)
    {
      v9 = 80.0;
    }

    else
    {
      IsPad = _bcs_deviceIsPad();
      v9 = 10.0;
      if (IsPad)
      {
        v9 = 20.0;
      }
    }

    [(NSLayoutConstraint *)self->_coachingMessageTopAnchorConstraint setConstant:v9];
    LODWORD(v11) = 1144733696;
    [(NSLayoutConstraint *)self->_coachingMessageTopAnchorConstraint setPriority:v11];
  }

  [(BCSLiveViewController *)self _setTorchButtonPosition];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(BCSCoachingMessageView *)self->_coachingMessageView setNeedsLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  if (_os_feature_enabled_impl())
  {
    videoRotationAngle = self->_videoRotationAngle;

    [(BCSLiveViewController *)self compensateForVideoRotationAngleInLiveView:videoRotationAngle];
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    [(BCSLiveViewController *)self compensateForInterfaceOrientationInLiveView:statusBarOrientation referenceSize:v6, v7];
  }
}

- (void)actionCoordinator:(id)coordinator didParseCode:(id)code withAction:(id)action
{
  codeCopy = code;
  actionCopy = action;
  codeType = [codeCopy codeType];
  if (actionCopy && codeType == 1)
  {
    v10 = [(BCSActionCoordinator *)self->_actionCoordinator centerGlyphImageForAction:actionCopy];
    v11 = v10;
    if (codeCopy && v10)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__BCSLiveViewController_actionCoordinator_didParseCode_withAction___block_invoke;
      block[3] = &unk_278D01D30;
      v13 = codeCopy;
      selfCopy = self;
      v15 = v11;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __67__BCSLiveViewController_actionCoordinator_didParseCode_withAction___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [*(a1[5] + 1040) targetCode];

  if (v2 == v3)
  {
    v4 = a1[6];
    v5 = *(a1[5] + 1040);

    [v5 prepareCenterGlyphWithImage:v4];
  }
}

- (void)sessionControlsDidBecomeActive:(id)active
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__BCSLiveViewController_sessionControlsDidBecomeActive___block_invoke;
    block[3] = &unk_278D01AE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)sessionControlsDidBecomeInactive:(id)inactive
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__BCSLiveViewController_sessionControlsDidBecomeInactive___block_invoke;
    block[3] = &unk_278D01AE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (BCSLiveViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __66__BCSLiveViewController_didCaptureVisualCode_image_shouldAnimate___block_invoke_35_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _bcs_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_2419E7000, v3, OS_LOG_TYPE_ERROR, "BCSLiveViewController: capture extension authentication failed with error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end