@interface MKLookAroundViewController
- (BOOL)_isDescendantOfRootViewController;
- (BOOL)_isPresentedFullScreen;
- (BOOL)_isPresentingFullScreen;
- (BOOL)_isTransitioningToOrFromFullScreen;
- (BOOL)lookAroundView:(id)view shouldReceiveTouch:(id)touch;
- (CGRect)attributionButtonFrame;
- (MKLookAroundViewController)initWithCoder:(NSCoder *)coder;
- (MKLookAroundViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (MKLookAroundViewController)initWithScene:(MKLookAroundScene *)scene;
- (NSAttributedString)badgeLabelGlyph;
- (NSAttributedString)badgeLabelTitle;
- (UIFont)attributionButtonFont;
- (UIFont)buttonFont;
- (UIFont)labelFont;
- (UIFont)secondaryLabelFont;
- (UIFont)tertiaryLabelFont;
- (id)_fullScreenViewController;
- (id)_transitionController;
- (id)_urlForMapAttribution;
- (id)delegate;
- (void)_commonInit;
- (void)_contentSizeDidChange;
- (void)_didSelectView:(id)view;
- (void)_didTapAttributionButton:(id)button;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_transitionFromFullScreenAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)_transitionToFullScreenAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)_updateBadgeViewIfNeeded;
- (void)_updateCloseButtonIfNeeded;
- (void)_updateGradientIfNeeded;
- (void)_updateLookAroundViewIfNeeded;
- (void)_updateSceneIfNeeded;
- (void)_updateStackViewIfNeeded;
- (void)applyShadowToView:(id)view withRadius:(double)radius offset:(CGSize)offset opacity:(float)opacity;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fullScreenViewControllerDidDismiss:(id)dismiss;
- (void)fullScreenViewControllerDidPresent:(id)present;
- (void)fullScreenViewControllerWillDismiss:(id)dismiss;
- (void)fullScreenViewControllerWillPresent:(id)present;
- (void)lookAroundView:(id)view didChangeLocationInfo:(id)info;
- (void)lookAroundViewDidChangeRegion:(id)region;
- (void)lookAroundViewWillChangeRegion:(id)region;
- (void)setBadgePosition:(MKLookAroundBadgePosition)badgePosition;
- (void)setNavigationEnabled:(BOOL)navigationEnabled;
- (void)setPointOfInterestFilter:(MKPointOfInterestFilter *)pointOfInterestFilter;
- (void)setScene:(MKLookAroundScene *)scene;
- (void)setShowsRoadLabels:(BOOL)showsRoadLabels;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MKLookAroundViewController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_urlForMapAttribution
{
  lookAroundView = [(MKLookAroundView *)self->_lookAroundView lookAroundView];
  attributionsForCurrentRegion = [lookAroundView attributionsForCurrentRegion];

  v4 = [MKMapAttribution attributionUrlFromRegionalAttributions:attributionsForCurrentRegion];

  return v4;
}

- (void)_updateStackViewIfNeeded
{
  labelFont = [(MKLookAroundViewController *)self labelFont];
  [(UILabel *)self->_locationLabel setFont:labelFont];

  secondaryLabelFont = [(MKLookAroundViewController *)self secondaryLabelFont];
  [(UILabel *)self->_localityLabel setFont:secondaryLabelFont];

  attributedText = [(UILabel *)self->_imageryCollectionDateLabel attributedText];
  v19 = [attributedText mutableCopy];

  v6 = *MEMORY[0x1E69DB648];
  tertiaryLabelFont = [(MKLookAroundViewController *)self tertiaryLabelFont];
  [v19 addAttribute:v6 value:tertiaryLabelFont range:{0, objc_msgSend(v19, "length")}];

  v8 = [v19 copy];
  [(UILabel *)self->_imageryCollectionDateLabel setAttributedText:v8];

  v9 = [(UIButton *)self->_attributionButton attributedTitleForState:0];
  v10 = [v9 mutableCopy];

  attributionButtonFont = [(MKLookAroundViewController *)self attributionButtonFont];
  [v10 addAttribute:v6 value:attributionButtonFont range:{0, objc_msgSend(v10, "length")}];

  attributionButton = self->_attributionButton;
  v13 = [v10 copy];
  [(UIButton *)attributionButton setAttributedTitle:v13 forState:0];

  presentationType = self->_presentationType;
  if (presentationType)
  {
    if (presentationType != 1)
    {
      goto LABEL_6;
    }

    v15 = 0;
    v16 = 1.0;
    v17 = 1;
    v18 = 0.0;
  }

  else
  {
    v17 = 0;
    v15 = 1;
    v16 = 0.0;
    v18 = 1.0;
  }

  [(UIImageView *)self->_appleLogoImageView setAlpha:v18];
  [(UIImageView *)self->_appleLogoImageView setHidden:v17];
  [(UIStackView *)self->_infoStackView setAlpha:v16];
  [(UIStackView *)self->_infoStackView setHidden:v15];
LABEL_6:
}

- (void)_updateSceneIfNeeded
{
  if (self->_needsSceneUpdate)
  {
    lookAroundView = self->_lookAroundView;
    if (lookAroundView)
    {
      if (self->_scene)
      {
        [(MKLookAroundViewController *)self setDidBecomeFullyDrawn:0];
        _type = [(MKLookAroundScene *)self->_scene _type];
        if (_type)
        {
          if (_type != 1)
          {
            lookAroundView = self->_lookAroundView;
            goto LABEL_11;
          }

          _muninViewState = [(MKLookAroundScene *)self->_scene _muninViewState];
          v6 = [MKLookAroundEntryPoint entryPointWithMuninViewState:_muninViewState];
        }

        else
        {
          _muninViewState = [(MKLookAroundScene *)self->_scene _mapItem];
          _wantsCloseUpView = [(MKLookAroundScene *)self->_scene _wantsCloseUpView];
          _cameraFrameOverride = [(MKLookAroundScene *)self->_scene _cameraFrameOverride];
          v6 = [MKLookAroundEntryPoint entryPointWithMapItem:_muninViewState wantsCloseUpView:_wantsCloseUpView cameraFrameOverride:_cameraFrameOverride];
        }

        lookAroundView = self->_lookAroundView;
        if (v6)
        {
          [(MKLookAroundView *)lookAroundView enterLookAroundWithEntryPoint:v6];

LABEL_12:
          self->_needsSceneUpdate = 0;
          return;
        }
      }

LABEL_11:
      [(MKLookAroundView *)lookAroundView reset];
      goto LABEL_12;
    }
  }
}

- (void)_updateLookAroundViewIfNeeded
{
  if (self->_needsLookAroundViewUpdate && self->_lookAroundView)
  {
    _shouldRestrictLookAroundViewOptionsForPreview = [(MKLookAroundViewController *)self _shouldRestrictLookAroundViewOptionsForPreview];
    [(MKLookAroundView *)self->_lookAroundView setCompassHidden:_shouldRestrictLookAroundViewOptionsForPreview];
    IsMacCatalyst = MapKitIdiomIsMacCatalyst();
    v5 = &OBJC_IVAR___MKLookAroundViewController__closeButtonView;
    if (IsMacCatalyst)
    {
      v5 = &OBJC_IVAR___MKLookAroundViewController__attributionButton;
    }

    [*(&self->super.super.super.isa + *v5) bounds];
    Height = CGRectGetHeight(v11);
    [(MKLookAroundView *)self->_lookAroundView setCompassInsets:Height + 24.0, 16.0, Height + 24.0, 16.0];
    if (_shouldRestrictLookAroundViewOptionsForPreview)
    {
      [(MKLookAroundView *)self->_lookAroundView setNavigatingEnabled:0];
      [(MKLookAroundView *)self->_lookAroundView setPanningEnabled:0];
      [(MKLookAroundView *)self->_lookAroundView setZoomingEnabled:0];
      v7 = +[MKPointOfInterestFilter filterExcludingAllCategories];
      [(MKLookAroundView *)self->_lookAroundView setPointOfInterestFilter:v7];

      showsRoadLabels = 0;
    }

    else
    {
      [(MKLookAroundView *)self->_lookAroundView setNavigatingEnabled:self->_navigationEnabled];
      [(MKLookAroundView *)self->_lookAroundView setPanningEnabled:1];
      [(MKLookAroundView *)self->_lookAroundView setZoomingEnabled:1];
      [(MKLookAroundView *)self->_lookAroundView setPointOfInterestFilter:self->_pointOfInterestFilter];
      showsRoadLabels = self->_showsRoadLabels;
    }

    lookAroundView = self->_lookAroundView;

    [(MKLookAroundView *)lookAroundView setShowsRoadLabels:showsRoadLabels];
  }
}

- (void)_updateBadgeViewIfNeeded
{
  v56[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  badgeViewVerticalConstraint = self->_badgeViewVerticalConstraint;
  v56[0] = self->_badgeViewHorizontalConstraint;
  v56[1] = badgeViewVerticalConstraint;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  [v3 deactivateConstraints:v5];

  badgePosition = self->_badgePosition;
  if (badgePosition == 2)
  {
    bottomAnchor = [(UIVisualEffectView *)self->_badgeView bottomAnchor];
    overlayView = [(MKLookAroundView *)self->_lookAroundView overlayView];
    safeAreaLayoutGuide = [overlayView safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
    v34 = self->_badgeViewVerticalConstraint;
    self->_badgeViewVerticalConstraint = v33;

    trailingAnchor = [(UIVisualEffectView *)self->_badgeView trailingAnchor];
    overlayView2 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    safeAreaLayoutGuide2 = [overlayView2 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    badgeViewHorizontalConstraint = self->_badgeViewHorizontalConstraint;
    self->_badgeViewHorizontalConstraint = v39;

    image = [(UIImageView *)self->_appleLogoImageView image];
    [image size];
    v7 = v41 + 8.0;
  }

  else if (badgePosition == 1)
  {
    topAnchor = [(UIVisualEffectView *)self->_badgeView topAnchor];
    overlayView3 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    topAnchor2 = [overlayView3 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
    v23 = self->_badgeViewVerticalConstraint;
    self->_badgeViewVerticalConstraint = v22;

    image = [(UIVisualEffectView *)self->_badgeView trailingAnchor];
    overlayView4 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    safeAreaLayoutGuide3 = [overlayView4 safeAreaLayoutGuide];
    trailingAnchor3 = [safeAreaLayoutGuide3 trailingAnchor];
    v27 = [image constraintEqualToAnchor:trailingAnchor3 constant:-14.0];
    v28 = self->_badgeViewHorizontalConstraint;
    self->_badgeViewHorizontalConstraint = v27;

    v7 = 0.0;
  }

  else
  {
    v7 = 0.0;
    if (badgePosition)
    {
      goto LABEL_8;
    }

    topAnchor3 = [(UIVisualEffectView *)self->_badgeView topAnchor];
    overlayView5 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    topAnchor4 = [overlayView5 topAnchor];
    v11 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:14.0];
    v12 = self->_badgeViewVerticalConstraint;
    self->_badgeViewVerticalConstraint = v11;

    image = [(UIVisualEffectView *)self->_badgeView leadingAnchor];
    overlayView6 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    safeAreaLayoutGuide4 = [overlayView6 safeAreaLayoutGuide];
    leadingAnchor = [safeAreaLayoutGuide4 leadingAnchor];
    v17 = [image constraintEqualToAnchor:leadingAnchor constant:14.0];
    v18 = self->_badgeViewHorizontalConstraint;
    self->_badgeViewHorizontalConstraint = v17;
  }

LABEL_8:
  v42 = MEMORY[0x1E696ACD8];
  v43 = self->_badgeViewVerticalConstraint;
  v55[0] = self->_badgeViewHorizontalConstraint;
  v55[1] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  [v42 activateConstraints:v44];

  overlayView7 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [overlayView7 bounds];
  v47 = v46;

  if (v47 + -28.0 <= v7)
  {
    v48 = v47 + -28.0;
  }

  else
  {
    v48 = v47 + -28.0 - v7;
  }

  badgeLabelTitle = [(MKLookAroundViewController *)self badgeLabelTitle];
  [badgeLabelTitle size];
  if (v50 + 14.0 > v48)
  {
    badgeLabelGlyph = [(MKLookAroundViewController *)self badgeLabelGlyph];

    badgeLabelTitle = badgeLabelGlyph;
  }

  [(UILabel *)self->_badgeLabel setAttributedText:badgeLabelTitle];
  presentationType = self->_presentationType;
  if (!presentationType)
  {
    v53 = 0;
    v54 = 1.0;
    goto LABEL_17;
  }

  if (presentationType == 1)
  {
    v53 = 1;
    v54 = 0.0;
LABEL_17:
    [(UIVisualEffectView *)self->_badgeView setAlpha:v54];
    [(UIVisualEffectView *)self->_badgeView setHidden:v53];
  }
}

- (void)_updateGradientIfNeeded
{
  presentationType = self->_presentationType;
  if (presentationType)
  {
    if (presentationType != 1)
    {
      return;
    }

    v3 = &unk_1F1612168;
  }

  else
  {
    v3 = &unk_1F1612150;
  }

  [(_MKGradientView *)self->_gradientView setLocations:v3];
}

- (void)_updateCloseButtonIfNeeded
{
  v3 = MEMORY[0x1E69DCAD8];
  buttonFont = [(MKLookAroundViewController *)self buttonFont];
  v11 = [v3 configurationWithFont:buttonFont];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v11];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7 = [v5 imageWithTintColor:labelColor];

  [(UIButton *)self->_closeButton setImage:v7 forState:0];
  [(UIView *)self->_closeButtonView bounds];
  [(UIView *)self->_closeButtonView _setContinuousCornerRadius:CGRectGetHeight(v13) * 0.5];
  presentationType = self->_presentationType;
  if (presentationType)
  {
    if (presentationType != 1)
    {
      goto LABEL_6;
    }

    v9 = 0;
    v10 = 1.0;
  }

  else
  {
    v9 = 1;
    v10 = 0.0;
  }

  [(UIView *)self->_closeButtonView setAlpha:v10];
  [(UIView *)self->_closeButtonView setHidden:v9];
LABEL_6:
}

- (void)_transitionToFullScreenAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (![(MKLookAroundViewController *)self _isDescendantOfRootViewController])
  {
    v7 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "*** Warning: %@ is trying to enter full screen, but is not in its view's window's view controller hierarchy. This results in undefined behavior.", buf, 0xCu);
    }
  }

  if (![(MKLookAroundViewController *)self _isPresentingFullScreen]&& ![(MKLookAroundViewController *)self _isPresentedFullScreen]&& ![(MKLookAroundViewController *)self _isTransitioningToOrFromFullScreen])
  {
    _fullScreenViewController = [(MKLookAroundViewController *)self _fullScreenViewController];
    _transitionController = [(MKLookAroundViewController *)self _transitionController];
    lookAroundView = self->_lookAroundView;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__MKLookAroundViewController__transitionToFullScreenAnimated_completionHandler___block_invoke;
    v14[3] = &unk_1E76C9DD8;
    v15 = handlerCopy;
    [_transitionController beginFullScreenPresentationOfViewController:_fullScreenViewController fromView:lookAroundView animated:animatedCopy completion:v14];

    v10 = v15;
    goto LABEL_10;
  }

  if (handlerCopy)
  {
    v8 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    _fullScreenViewController = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid method call"];
    v17 = _fullScreenViewController;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [v8 errorWithDomain:@"MKErrorDomain" code:1 userInfo:v10];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);

LABEL_10:
  }
}

uint64_t __80__MKLookAroundViewController__transitionToFullScreenAnimated_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)_transitionFromFullScreenAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (![(MKLookAroundViewController *)self _isDescendantOfRootViewController])
  {
    v7 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "*** Warning: %@ is trying to exit full screen, but is not in its view's window's view controller hierarchy. This results in undefined behavior.", buf, 0xCu);
    }
  }

  if (([(MKLookAroundViewController *)self _isPresentingFullScreen]|| [(MKLookAroundViewController *)self _isPresentedFullScreen]) && ![(MKLookAroundViewController *)self _isTransitioningToOrFromFullScreen])
  {
    _fullScreenViewControllerIfLoaded = [(MKLookAroundViewController *)self _fullScreenViewControllerIfLoaded];
    presentingViewController = [_fullScreenViewControllerIfLoaded presentingViewController];
    if (presentingViewController)
    {
      selfCopy2 = [(MKLookAroundViewController *)self _fullScreenViewControllerIfLoaded];
    }

    else
    {
      selfCopy2 = self;
    }

    v10 = selfCopy2;

    _transitionController = [(MKLookAroundViewController *)self _transitionController];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __82__MKLookAroundViewController__transitionFromFullScreenAnimated_completionHandler___block_invoke;
    v23[3] = &unk_1E76C9B20;
    v23[4] = self;
    v24 = handlerCopy;
    [_transitionController beginFullScreenDismissalOfViewController:v10 animated:animatedCopy completion:v23];

    goto LABEL_19;
  }

  presentingViewController2 = [(MKLookAroundViewController *)self presentingViewController];
  if (presentingViewController2 && ![(MKLookAroundViewController *)self _isTransitioningToOrFromFullScreen])
  {
    presentingViewController3 = [(MKLookAroundViewController *)self presentingViewController];
    presentedViewController = [presentingViewController3 presentedViewController];
    isBeingDismissed = [presentedViewController isBeingDismissed];

    if ((isBeingDismissed & 1) == 0)
    {
      presentingViewController4 = [(MKLookAroundViewController *)self presentingViewController];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __82__MKLookAroundViewController__transitionFromFullScreenAnimated_completionHandler___block_invoke_2;
      v21[3] = &unk_1E76CD4D0;
      v22 = handlerCopy;
      [presentingViewController4 dismissViewControllerAnimated:animatedCopy completion:v21];

      v10 = v22;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (handlerCopy)
  {
    v9 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid method call"];
    v26 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v12 = [v9 errorWithDomain:@"MKErrorDomain" code:1 userInfo:v11];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);

LABEL_19:
  }
}

void __82__MKLookAroundViewController__transitionFromFullScreenAnimated_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, a2, 0);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 992);
  *(v4 + 992) = 0;
}

uint64_t __82__MKLookAroundViewController__transitionFromFullScreenAnimated_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)_transitionController
{
  transitionController = self->_transitionController;
  if (!transitionController)
  {
    v4 = objc_alloc_init(MKLookAroundTransitionController);
    v5 = self->_transitionController;
    self->_transitionController = v4;

    transitionController = self->_transitionController;
  }

  return transitionController;
}

- (void)_setupSubviews
{
  v91[3] = *MEMORY[0x1E69E9840];
  view = [(MKLookAroundViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view _mapkit_setBackgroundColor:clearColor];

  v5 = [MKLookAroundView alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(MKLookAroundView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  lookAroundView = self->_lookAroundView;
  self->_lookAroundView = v10;

  [(MKLookAroundView *)self->_lookAroundView setDelegate:self];
  view2 = [(MKLookAroundViewController *)self view];
  [view2 addSubview:self->_lookAroundView];

  v13 = [[_MKGradientView alloc] initWithFrame:v6, v7, v8, v9];
  gradientView = self->_gradientView;
  self->_gradientView = v13;

  [(_MKGradientView *)self->_gradientView setAccessibilityIdentifier:@"LookAroundGradientView"];
  [(_MKGradientView *)self->_gradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKGradientView *)self->_gradientView setStartPoint:0.5, 0.0];
  [(_MKGradientView *)self->_gradientView setEndPoint:0.5, 1.0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v87 = [blackColor colorWithAlphaComponent:0.0];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  v86 = [blackColor2 colorWithAlphaComponent:0.0];

  blackColor3 = [MEMORY[0x1E69DC888] blackColor];
  v84 = [blackColor3 colorWithAlphaComponent:0.68];

  v91[0] = v87;
  v91[1] = v86;
  v91[2] = v84;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
  [(_MKGradientView *)self->_gradientView setColors:v18];

  [(_MKGradientView *)self->_gradientView setLocations:&unk_1F1612138];
  overlayView = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [overlayView _mapkit_insertSubview:self->_gradientView atIndex:0];

  v20 = [MEMORY[0x1E69DC738] buttonWithType:0];
  closeButton = self->_closeButton;
  self->_closeButton = v20;

  [(UIView *)self->_closeButtonView setAccessibilityIdentifier:@"LookAroundCloseButton"];
  [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_closeButton addTarget:self action:sel__didTapCloseButton_ forControlEvents:64];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UIButton *)self->_closeButton setTintColor:labelColor];

  v23 = +[MKSystemController sharedInstance];
  isGlassEnabled = [v23 isGlassEnabled];

  if (isGlassEnabled)
  {
    contentView2 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    [contentView2 _mapkit_setGlassBackground];
    objc_storeStrong(&self->_closeButtonView, contentView2);
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x1E69DD298]);
    v27 = [MEMORY[0x1E69DC730] effectWithStyle:18];
    v28 = [v26 initWithEffect:v27];

    blackColor4 = [MEMORY[0x1E69DC888] blackColor];
    v30 = [blackColor4 colorWithAlphaComponent:0.24];
    contentView = [(UIView *)v28 contentView];
    [contentView setBackgroundColor:v30];

    closeButtonView = self->_closeButtonView;
    self->_closeButtonView = v28;
    v33 = v28;

    contentView2 = [(UIView *)v33 contentView];
  }

  [(UIView *)self->_closeButtonView setAccessibilityIdentifier:@"LookAroundCloseButtonView", v84];
  [(UIView *)self->_closeButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_closeButtonView setBackgroundColor:clearColor2];

  v35 = *MEMORY[0x1E695F060];
  v36 = *(MEMORY[0x1E695F060] + 8);
  LODWORD(v37) = 1041865114;
  [(MKLookAroundViewController *)self applyShadowToView:contentView2 withRadius:5.0 offset:*MEMORY[0x1E695F060] opacity:v36, v37];
  overlayView2 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [overlayView2 addSubview:self->_closeButtonView];

  [contentView2 addSubview:self->_closeButton];
  v39 = objc_alloc(MEMORY[0x1E69DD298]);
  v40 = [MEMORY[0x1E69DC730] effectWithStyle:17];
  v41 = [v39 initWithEffect:v40];
  badgeView = self->_badgeView;
  self->_badgeView = v41;

  [(UIVisualEffectView *)self->_badgeView setAccessibilityIdentifier:@"LookAroundBadgeView"];
  [(UIVisualEffectView *)self->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  [(UIVisualEffectView *)self->_badgeView setBackgroundColor:clearColor3];

  [(UIVisualEffectView *)self->_badgeView _setContinuousCornerRadius:6.0];
  contentView3 = [(UIVisualEffectView *)self->_badgeView contentView];
  LODWORD(v45) = 1041865114;
  [(MKLookAroundViewController *)self applyShadowToView:contentView3 withRadius:5.0 offset:v35 opacity:v36, v45];

  overlayView3 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [overlayView3 addSubview:self->_badgeView];

  v47 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  badgeLabel = self->_badgeLabel;
  self->_badgeLabel = v47;

  [(UIVisualEffectView *)self->_badgeView setAccessibilityIdentifier:@"LookAroundBadgeLabel"];
  [(UILabel *)self->_badgeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_badgeLabel setTextColor:whiteColor];

  LODWORD(v50) = 1148846080;
  [(UILabel *)self->_badgeLabel setContentCompressionResistancePriority:0 forAxis:v50];
  [(UILabel *)self->_badgeLabel setNumberOfLines:1];
  [(UILabel *)self->_badgeLabel setTextAlignment:1];
  contentView4 = [(UIVisualEffectView *)self->_badgeView contentView];
  [contentView4 addSubview:self->_badgeLabel];

  v52 = [[MKAppleLogoImageView alloc] initForMapType:107 forDarkMode:1];
  appleLogoImageView = self->_appleLogoImageView;
  self->_appleLogoImageView = v52;

  [(UIImageView *)self->_appleLogoImageView setAccessibilityIdentifier:@"LookAroundAppleLogo"];
  [(UIImageView *)self->_appleLogoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  overlayView4 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [overlayView4 addSubview:self->_appleLogoImageView];

  v55 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v6, v7, v8, v9}];
  infoStackView = self->_infoStackView;
  self->_infoStackView = v55;

  [(UIStackView *)self->_infoStackView setAccessibilityIdentifier:@"LookAroundInfoStackView"];
  [(UIStackView *)self->_infoStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_infoStackView setAxis:1];
  [(UIStackView *)self->_infoStackView setDistribution:0];
  [(UIStackView *)self->_infoStackView setAlignment:1];
  [(UIStackView *)self->_infoStackView setSpacing:6.0];
  overlayView5 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [overlayView5 addSubview:self->_infoStackView];

  v58 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  locationLabel = self->_locationLabel;
  self->_locationLabel = v58;

  [(UILabel *)self->_locationLabel setAccessibilityIdentifier:@"LookAroundLocationLabel"];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_locationLabel setTextColor:whiteColor2];

  [(UILabel *)self->_locationLabel setNumberOfLines:0];
  LODWORD(v61) = 1034147594;
  [(MKLookAroundViewController *)self applyShadowToView:self->_locationLabel withRadius:4.0 offset:0.0 opacity:1.0, v61];
  [(UIStackView *)self->_infoStackView addArrangedSubview:self->_locationLabel];
  v62 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  localityLabel = self->_localityLabel;
  self->_localityLabel = v62;

  [(UILabel *)self->_localityLabel setAccessibilityIdentifier:@"LookAroundLocalityLabel"];
  whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_localityLabel setTextColor:whiteColor3];

  [(UILabel *)self->_localityLabel setNumberOfLines:0];
  LODWORD(v65) = 1034147594;
  [(MKLookAroundViewController *)self applyShadowToView:self->_localityLabel withRadius:4.0 offset:0.0 opacity:1.0, v65];
  [(UIStackView *)self->_infoStackView addArrangedSubview:self->_localityLabel];
  v66 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v6, v7, v8, v9}];
  tertiaryLineStackView = self->_tertiaryLineStackView;
  self->_tertiaryLineStackView = v66;

  [(UIStackView *)self->_tertiaryLineStackView setAccessibilityIdentifier:@"LookAroundTertiaryLineStackView"];
  [(UIStackView *)self->_tertiaryLineStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_tertiaryLineStackView setAxis:0];
  [(UIStackView *)self->_tertiaryLineStackView setDistribution:0];
  [(UIStackView *)self->_tertiaryLineStackView setAlignment:5];
  [(UIStackView *)self->_tertiaryLineStackView setSpacing:0.0];
  [(UIStackView *)self->_infoStackView addArrangedSubview:self->_tertiaryLineStackView];
  v68 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  imageryCollectionDateLabel = self->_imageryCollectionDateLabel;
  self->_imageryCollectionDateLabel = v68;

  [(UILabel *)self->_imageryCollectionDateLabel setAccessibilityIdentifier:@"LookAroundImageryDateLabel"];
  [(UILabel *)self->_imageryCollectionDateLabel setNumberOfLines:0];
  LODWORD(v70) = 1034147594;
  [(MKLookAroundViewController *)self applyShadowToView:self->_imageryCollectionDateLabel withRadius:4.0 offset:0.0 opacity:1.0, v70];
  [(UIStackView *)self->_tertiaryLineStackView addArrangedSubview:self->_imageryCollectionDateLabel];
  v71 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
  widthAnchor = [v71 widthAnchor];
  v73 = [widthAnchor constraintEqualToConstant:9.22337204e18];

  LODWORD(v74) = 1132068864;
  [v73 setPriority:v74];
  [v73 setActive:1];
  [(UIStackView *)self->_tertiaryLineStackView addArrangedSubview:v71];
  v75 = [MEMORY[0x1E69DC738] buttonWithType:0];
  attributionButton = self->_attributionButton;
  self->_attributionButton = v75;

  [(UIButton *)self->_attributionButton setAccessibilityIdentifier:@"LookAroundAttributionButton"];
  [(UIButton *)self->_attributionButton _setTouchInsets:-9.0, -9.0, -9.0, -9.0];
  [(UIButton *)self->_attributionButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_attributionButton addTarget:self action:sel__didTapAttributionButton_ forControlEvents:64];
  [(UIStackView *)self->_tertiaryLineStackView addArrangedSubview:self->_attributionButton];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  v78 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__didSelectView_];
  selectGestureRecognizer = self->_selectGestureRecognizer;
  self->_selectGestureRecognizer = v78;

  [(MKLookAroundView *)self->_lookAroundView addGestureRecognizer:self->_selectGestureRecognizer];
  objc_initWeak(&location, self);
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v81 = self->_lookAroundView;
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __44__MKLookAroundViewController__setupSubviews__block_invoke;
  v88[3] = &unk_1E76C91F0;
  objc_copyWeak(&v89, &location);
  v82 = [defaultCenter2 addObserverForName:@"MKLookAroundViewDidBecomeFullyDrawn" object:v81 queue:0 usingBlock:v88];
  didBecomeFullyDrawnObserver = self->_didBecomeFullyDrawnObserver;
  self->_didBecomeFullyDrawnObserver = v82;

  objc_destroyWeak(&v89);
  objc_destroyWeak(&location);
}

void __44__MKLookAroundViewController__setupSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __44__MKLookAroundViewController__setupSubviews__block_invoke_2;
  v13 = &unk_1E76CD1C0;
  objc_copyWeak(&v14, (a1 + 32));
  v6 = v4;
  v7 = MEMORY[0x1E696AF00];
  v8 = v11;
  if ([v7 isMainThread])
  {
    v12(v8);
  }

  else
  {
    v9 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    v8 = v9;
  }

  v10 = MEMORY[0x1E69E96A0];
  objc_destroyWeak(&v14);
}

void __44__MKLookAroundViewController__setupSubviews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setDidBecomeFullyDrawn:1];
    WeakRetained = v2;
  }
}

- (void)_setupConstraints
{
  v102[23] = *MEMORY[0x1E69E9840];
  topAnchor = [(UIVisualEffectView *)self->_badgeView topAnchor];
  overlayView = [(MKLookAroundView *)self->_lookAroundView overlayView];
  topAnchor2 = [overlayView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
  badgeViewVerticalConstraint = self->_badgeViewVerticalConstraint;
  self->_badgeViewVerticalConstraint = v6;

  leadingAnchor = [(UIVisualEffectView *)self->_badgeView leadingAnchor];
  overlayView2 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  safeAreaLayoutGuide = [overlayView2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:14.0];
  badgeViewHorizontalConstraint = self->_badgeViewHorizontalConstraint;
  self->_badgeViewHorizontalConstraint = v12;

  trailingAnchor = [(UIStackView *)self->_infoStackView trailingAnchor];
  overlayView3 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  safeAreaLayoutGuide2 = [overlayView3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v18 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-16.0];

  LODWORD(v19) = 1144750080;
  v20 = v18;
  v55 = v18;
  [v18 setPriority:v19];
  v21 = +[MKSystemController sharedInstance];
  if ([v21 isGlassEnabled])
  {
    v22 = 48.0;
  }

  else
  {
    v22 = 44.0;
  }

  v72 = MEMORY[0x1E696ACD8];
  topAnchor3 = [(_MKGradientView *)self->_gradientView topAnchor];
  overlayView4 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  topAnchor4 = [overlayView4 topAnchor];
  v98 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v102[0] = v98;
  bottomAnchor = [(_MKGradientView *)self->_gradientView bottomAnchor];
  overlayView5 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  bottomAnchor2 = [overlayView5 bottomAnchor];
  v94 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v102[1] = v94;
  leadingAnchor3 = [(_MKGradientView *)self->_gradientView leadingAnchor];
  overlayView6 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  leadingAnchor4 = [overlayView6 leadingAnchor];
  v90 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v102[2] = v90;
  trailingAnchor3 = [(_MKGradientView *)self->_gradientView trailingAnchor];
  overlayView7 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  trailingAnchor4 = [overlayView7 trailingAnchor];
  v86 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v102[3] = v86;
  topAnchor5 = [(UIView *)self->_closeButtonView topAnchor];
  overlayView8 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  safeAreaLayoutGuide3 = [overlayView8 safeAreaLayoutGuide];
  topAnchor6 = [safeAreaLayoutGuide3 topAnchor];
  v81 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:12.0];
  v102[4] = v81;
  trailingAnchor5 = [(UIView *)self->_closeButtonView trailingAnchor];
  overlayView9 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  safeAreaLayoutGuide4 = [overlayView9 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide4 trailingAnchor];
  v76 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v102[5] = v76;
  heightAnchor = [(UIView *)self->_closeButtonView heightAnchor];
  v74 = [heightAnchor constraintEqualToConstant:v22];
  v102[6] = v74;
  widthAnchor = [(UIView *)self->_closeButtonView widthAnchor];
  v71 = [widthAnchor constraintEqualToConstant:v22];
  v102[7] = v71;
  topAnchor7 = [(UIButton *)self->_closeButton topAnchor];
  topAnchor8 = [(UIView *)self->_closeButtonView topAnchor];
  v68 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v102[8] = v68;
  bottomAnchor3 = [(UIButton *)self->_closeButton bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_closeButtonView bottomAnchor];
  v65 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v102[9] = v65;
  leadingAnchor5 = [(UIButton *)self->_closeButton leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_closeButtonView leadingAnchor];
  v62 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v102[10] = v62;
  trailingAnchor7 = [(UIButton *)self->_closeButton trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_closeButtonView trailingAnchor];
  v59 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v23 = self->_badgeViewVerticalConstraint;
  v24 = self->_badgeViewHorizontalConstraint;
  v102[11] = v59;
  v102[12] = v23;
  v102[13] = v24;
  topAnchor9 = [(UILabel *)self->_badgeLabel topAnchor];
  topAnchor10 = [(UIVisualEffectView *)self->_badgeView topAnchor];
  v56 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:7.0];
  v102[14] = v56;
  bottomAnchor5 = [(UILabel *)self->_badgeLabel bottomAnchor];
  bottomAnchor6 = [(UIVisualEffectView *)self->_badgeView bottomAnchor];
  v52 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-7.0];
  v102[15] = v52;
  leadingAnchor7 = [(UILabel *)self->_badgeLabel leadingAnchor];
  leadingAnchor8 = [(UIVisualEffectView *)self->_badgeView leadingAnchor];
  v49 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:10.0];
  v102[16] = v49;
  trailingAnchor9 = [(UILabel *)self->_badgeLabel trailingAnchor];
  trailingAnchor10 = [(UIVisualEffectView *)self->_badgeView trailingAnchor];
  v46 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-10.0];
  v102[17] = v46;
  bottomAnchor7 = [(UIImageView *)self->_appleLogoImageView bottomAnchor];
  overlayView10 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  safeAreaLayoutGuide5 = [overlayView10 safeAreaLayoutGuide];
  bottomAnchor8 = [safeAreaLayoutGuide5 bottomAnchor];
  v41 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-12.0];
  v102[18] = v41;
  leadingAnchor9 = [(UIImageView *)self->_appleLogoImageView leadingAnchor];
  overlayView11 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  safeAreaLayoutGuide6 = [overlayView11 safeAreaLayoutGuide];
  leadingAnchor10 = [safeAreaLayoutGuide6 leadingAnchor];
  v36 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:14.0];
  v102[19] = v36;
  bottomAnchor9 = [(UIStackView *)self->_infoStackView bottomAnchor];
  overlayView12 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  safeAreaLayoutGuide7 = [overlayView12 safeAreaLayoutGuide];
  bottomAnchor10 = [safeAreaLayoutGuide7 bottomAnchor];
  v28 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-12.0];
  v102[20] = v28;
  leadingAnchor11 = [(UIStackView *)self->_infoStackView leadingAnchor];
  overlayView13 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  safeAreaLayoutGuide8 = [overlayView13 safeAreaLayoutGuide];
  leadingAnchor12 = [safeAreaLayoutGuide8 leadingAnchor];
  v33 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:16.0];
  v102[21] = v33;
  v102[22] = v20;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:23];
  [v72 activateConstraints:v34];
}

- (BOOL)_isTransitioningToOrFromFullScreen
{
  if (([(MKLookAroundViewController *)self isBeingDismissed]& 1) != 0)
  {
    isBeingPresented = 1;
  }

  else
  {
    isBeingPresented = [(MKLookAroundViewController *)self isBeingPresented];
  }

  _fullScreenViewControllerIfLoaded = [(MKLookAroundViewController *)self _fullScreenViewControllerIfLoaded];
  if ([_fullScreenViewControllerIfLoaded isBeingDismissed] & 1) != 0 || (objc_msgSend(_fullScreenViewControllerIfLoaded, "isBeingPresented"))
  {
    v5 = 1;
  }

  else if (_fullScreenViewControllerIfLoaded)
  {
    presentingViewController = [_fullScreenViewControllerIfLoaded presentingViewController];
    v5 = presentingViewController == 0;
  }

  else
  {
    v5 = 0;
  }

  return (isBeingPresented | v5) & 1;
}

- (BOOL)_isPresentingFullScreen
{
  _fullScreenViewControllerIfLoaded = [(MKLookAroundViewController *)self _fullScreenViewControllerIfLoaded];
  presentingViewController = [_fullScreenViewControllerIfLoaded presentingViewController];
  v4 = presentingViewController != 0;

  return v4;
}

- (BOOL)_isPresentedFullScreen
{
  parentViewController = [(MKLookAroundViewController *)self parentViewController];
  v4 = !parentViewController && [(MKLookAroundViewController *)self _isDescendantOfRootViewController]&& [(MKLookAroundViewController *)self _modalPresentationStyleIsFullScreen];

  return v4;
}

- (BOOL)_isDescendantOfRootViewController
{
  selfCopy = self;
  parentViewController = [(MKLookAroundViewController *)selfCopy parentViewController];

  parentViewController2 = selfCopy;
  if (parentViewController)
  {
    v5 = selfCopy;
    do
    {
      parentViewController2 = [(MKLookAroundViewController *)v5 parentViewController];

      v4ParentViewController = [(MKLookAroundViewController *)parentViewController2 parentViewController];

      v5 = parentViewController2;
    }

    while (v4ParentViewController);
  }

  presentingViewController = [(MKLookAroundViewController *)parentViewController2 presentingViewController];

  if (presentingViewController)
  {
    do
    {
      presentingViewController2 = [(MKLookAroundViewController *)parentViewController2 presentingViewController];

      v8PresentingViewController = [(MKLookAroundViewController *)presentingViewController2 presentingViewController];

      parentViewController2 = presentingViewController2;
    }

    while (v8PresentingViewController);
    if (presentingViewController2)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  presentingViewController2 = parentViewController2;
  if (!parentViewController2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = [(MKLookAroundViewController *)presentingViewController2 isEqual:selfCopy]^ 1;
LABEL_10:

  return v10;
}

- (id)_fullScreenViewController
{
  fullScreenViewController = self->_fullScreenViewController;
  if (!fullScreenViewController)
  {
    v4 = objc_alloc_init(MKLookAroundFullScreenViewController);
    [(MKLookAroundFullScreenViewController *)v4 setModalPresentationStyle:0];
    _transitionController = [(MKLookAroundViewController *)self _transitionController];
    [(MKLookAroundFullScreenViewController *)v4 setTransitioningDelegate:_transitionController];

    [(MKLookAroundFullScreenViewController *)v4 setDelegate:self];
    v6 = self->_fullScreenViewController;
    self->_fullScreenViewController = v4;

    fullScreenViewController = self->_fullScreenViewController;
  }

  return fullScreenViewController;
}

- (void)_didTapAttributionButton:(id)button
{
  _urlForMapAttribution = [(MKLookAroundViewController *)self _urlForMapAttribution];
  if (_urlForMapAttribution)
  {
    v5 = _urlForMapAttribution;
    v4 = +[MKSystemController sharedInstance];
    [v4 openURL:v5 completionHandler:0];

    _urlForMapAttribution = v5;
  }
}

- (void)_didSelectView:(id)view
{
  if ([(MKLookAroundViewController *)self _isPresentingFullScreen])
  {

    [(MKLookAroundViewController *)self _transitionFromFullScreenAnimated:1 completionHandler:0];
  }

  else
  {

    [(MKLookAroundViewController *)self _transitionToFullScreenAnimated:1 completionHandler:0];
  }
}

- (void)_contentSizeDidChange
{
  [(MKLookAroundViewController *)self _updateBadgeViewIfNeeded];
  [(MKLookAroundViewController *)self _updateCloseButtonIfNeeded];

  [(MKLookAroundViewController *)self _updateStackViewIfNeeded];
}

- (void)applyShadowToView:(id)view withRadius:(double)radius offset:(CGSize)offset opacity:(float)opacity
{
  height = offset.height;
  width = offset.width;
  viewCopy = view;
  layer = [viewCopy layer];
  [layer setMasksToBounds:0];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor CGColor];
  layer2 = [viewCopy layer];
  [layer2 setShadowColor:cGColor];

  layer3 = [viewCopy layer];
  [layer3 setShadowRadius:radius];

  layer4 = [viewCopy layer];
  [layer4 setShadowOffset:{width, height}];

  layer5 = [viewCopy layer];
  *&v18 = opacity;
  [layer5 setShadowOpacity:v18];

  layer6 = [viewCopy layer];

  [layer6 setShadowPathIsBounds:1];
}

- (CGRect)attributionButtonFrame
{
  overlayView = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [(UIButton *)self->_attributionButton bounds];
  [overlayView convertRect:self->_attributionButton fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;

  return CGRectInset(*&v12, -9.0, -9.0);
}

- (UIFont)attributionButtonFont
{
  v2 = +[MKFontManager sharedManager];
  lookAroundAttributionButtonFont = [v2 lookAroundAttributionButtonFont];

  [lookAroundAttributionButtonFont pointSize];
  if (v4 <= 9.0)
  {
    v8 = lookAroundAttributionButtonFont;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    fontDescriptor = [lookAroundAttributionButtonFont fontDescriptor];
    v7 = [fontDescriptor fontDescriptorWithSize:9.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (UIFont)tertiaryLabelFont
{
  v2 = +[MKFontManager sharedManager];
  lookAroundTertiaryLabelFont = [v2 lookAroundTertiaryLabelFont];

  [lookAroundTertiaryLabelFont pointSize];
  if (v4 <= 13.0)
  {
    v8 = lookAroundTertiaryLabelFont;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    fontDescriptor = [lookAroundTertiaryLabelFont fontDescriptor];
    v7 = [fontDescriptor fontDescriptorWithSize:13.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (UIFont)secondaryLabelFont
{
  v2 = +[MKFontManager sharedManager];
  lookAroundSecondaryLabelFont = [v2 lookAroundSecondaryLabelFont];

  [lookAroundSecondaryLabelFont pointSize];
  if (v4 <= 15.0)
  {
    v8 = lookAroundSecondaryLabelFont;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    fontDescriptor = [lookAroundSecondaryLabelFont fontDescriptor];
    v7 = [fontDescriptor fontDescriptorWithSize:15.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (NSAttributedString)badgeLabelTitle
{
  v3 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F15B23C0];
  badgeLabelGlyph = [(MKLookAroundViewController *)self badgeLabelGlyph];
  [v3 appendAttributedString:badgeLabelGlyph];

  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v3 appendAttributedString:v5];

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = _MKLocalizedStringFromThisBundle(@"[Look Around] Look Around Badge Text");
  v8 = [v6 initWithString:v7];

  [v3 appendAttributedString:v8];
  v9 = *MEMORY[0x1E69DB648];
  buttonFont = [(MKLookAroundViewController *)self buttonFont];
  [v3 addAttribute:v9 value:buttonFont range:{0, objc_msgSend(v3, "length")}];

  v11 = [v3 copy];

  return v11;
}

- (NSAttributedString)badgeLabelGlyph
{
  v3 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v4 = MEMORY[0x1E69DCAB8];
  v5 = MEMORY[0x1E69DCAD8];
  buttonFont = [(MKLookAroundViewController *)self buttonFont];
  v7 = [v5 configurationWithFont:buttonFont];
  v8 = [v4 systemImageNamed:@"binoculars.fill" withConfiguration:v7];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v10 = [v8 imageWithTintColor:whiteColor];
  [v3 setImage:v10];

  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v3];

  return v11;
}

- (UIFont)labelFont
{
  v2 = +[MKFontManager sharedManager];
  lookAroundLabelFont = [v2 lookAroundLabelFont];

  [lookAroundLabelFont pointSize];
  if (v4 <= 22.0)
  {
    v8 = lookAroundLabelFont;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    fontDescriptor = [lookAroundLabelFont fontDescriptor];
    v7 = [fontDescriptor fontDescriptorWithSize:22.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (UIFont)buttonFont
{
  v2 = +[MKFontManager sharedManager];
  lookAroundButtonFont = [v2 lookAroundButtonFont];

  [lookAroundButtonFont pointSize];
  if (v4 <= 18.0)
  {
    v8 = lookAroundButtonFont;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    fontDescriptor = [lookAroundButtonFont fontDescriptor];
    v7 = [fontDescriptor fontDescriptorWithSize:18.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (BOOL)lookAroundView:(id)view shouldReceiveTouch:(id)touch
{
  [touch locationInView:view];
  v6 = v5;
  v8 = v7;
  [(UIView *)self->_closeButtonView frame];
  v10.x = v6;
  v10.y = v8;
  if (CGRectContainsPoint(v12, v10))
  {
    return 0;
  }

  [(MKLookAroundViewController *)self attributionButtonFrame];
  v11.x = v6;
  v11.y = v8;
  return !CGRectContainsPoint(v13, v11);
}

- (void)lookAroundViewDidChangeRegion:(id)region
{
  regionCopy = region;
  v20 = regionCopy;
  if (self->_initialScene)
  {
    self->_initialScene = 0;
    goto LABEL_8;
  }

  mapItem = [regionCopy mapItem];

  if (mapItem)
  {
    v6 = [MKLookAroundScene alloc];
    mapItem2 = [v20 mapItem];
    muninViewState = [v20 muninViewState];
    cameraFrame = [muninViewState cameraFrame];
    v10 = [(MKLookAroundScene *)v6 initWithMapItem:mapItem2 cameraFrameOverride:cameraFrame];
    scene = self->_scene;
    self->_scene = v10;

LABEL_7:
    goto LABEL_8;
  }

  revGeoMapItem = [v20 revGeoMapItem];

  if (revGeoMapItem)
  {
    v13 = [MKLookAroundScene alloc];
    mapItem2 = [v20 muninViewState];
    v14 = [(MKLookAroundScene *)v13 initWithMuninViewState:mapItem2];
    v15 = self->_scene;
    self->_scene = v14;

    goto LABEL_7;
  }

  v19 = self->_scene;
  self->_scene = 0;

LABEL_8:
  delegate = [(MKLookAroundViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(MKLookAroundViewController *)self delegate];
    [delegate2 lookAroundViewControllerDidUpdateScene:self];
  }
}

- (void)lookAroundViewWillChangeRegion:(id)region
{
  delegate = [(MKLookAroundViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MKLookAroundViewController *)self delegate];
    [delegate2 lookAroundViewControllerWillUpdateScene:self];
  }
}

- (void)lookAroundView:(id)view didChangeLocationInfo:(id)info
{
  v49[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  _mapkit_locationTitle = [viewCopy _mapkit_locationTitle];
  [(UILabel *)self->_locationLabel setText:_mapkit_locationTitle];

  _mapkit_locationSubtitle = [viewCopy _mapkit_locationSubtitle];
  [(UILabel *)self->_localityLabel setText:_mapkit_locationSubtitle];

  collectionDate = [viewCopy collectionDate];

  if (collectionDate)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v10 = MEMORY[0x1E69DCAD8];
    tertiaryLabelFont = [(MKLookAroundViewController *)self tertiaryLabelFont];
    [tertiaryLabelFont pointSize];
    v44 = [v10 configurationWithPointSize:*MEMORY[0x1E69DB978] weight:1 scale:?];

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"applelogo" withConfiguration:v44];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v14 = [v12 imageWithTintColor:secondaryLabelColor];
    [v9 setImage:v14];

    v15 = objc_opt_new();
    v16 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
    [v15 appendAttributedString:v16];

    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v18 = _MKLocalizedStringFromThisBundle(@"[Look Around] Apple Maps Logo");
    v19 = [v17 initWithString:v18];
    [v15 appendAttributedString:v19];

    dateFormatter = self->_dateFormatter;
    v21 = MEMORY[0x1E696AB78];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v23 = [v21 dateFormatFromTemplate:@"MMMMyyyy" options:0 locale:currentLocale];
    [(NSDateFormatter *)dateFormatter setLocalizedDateFormatFromTemplate:v23];

    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    v25 = self->_dateFormatter;
    collectionDate2 = [viewCopy collectionDate];
    v27 = [(NSDateFormatter *)v25 stringFromDate:collectionDate2];
    v28 = [v24 initWithString:v27];
    [v15 appendAttributedString:v28];

    v47 = *MEMORY[0x1E69DB648];
    v29 = v47;
    tertiaryLabelFont2 = [(MKLookAroundViewController *)self tertiaryLabelFont];
    v49[0] = tertiaryLabelFont2;
    v48 = *MEMORY[0x1E69DB650];
    v31 = v48;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v49[1] = secondaryLabelColor2;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v47 count:2];
    [v15 addAttributes:v33 range:{0, objc_msgSend(v15, "length")}];

    v34 = [v15 copy];
    [(UILabel *)self->_imageryCollectionDateLabel setAttributedText:v34];

    v35 = objc_alloc(MEMORY[0x1E696AD40]);
    v36 = _MKLocalizedStringFromThisBundle(@"Legal");
    v37 = [v35 initWithString:v36];

    v45[0] = v29;
    attributionButtonFont = [(MKLookAroundViewController *)self attributionButtonFont];
    v46[0] = attributionButtonFont;
    v45[1] = v31;
    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v46[1] = secondaryLabelColor3;
    v45[2] = *MEMORY[0x1E69DB758];
    v40 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v46[2] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
    [v37 addAttributes:v41 range:{0, objc_msgSend(v37, "length")}];

    attributionButton = self->_attributionButton;
    v43 = [v37 copy];
    [(UIButton *)attributionButton setAttributedTitle:v43 forState:0];
  }
}

- (void)fullScreenViewControllerDidDismiss:(id)dismiss
{
  self->_presentationType = 0;
  [(UITapGestureRecognizer *)self->_selectGestureRecognizer setEnabled:1];
  view = [(MKLookAroundViewController *)self view];
  _contentView = [(MKLookAroundViewController *)self _contentView];
  [view addSubview:_contentView];

  view2 = [(MKLookAroundViewController *)self view];
  [view2 needsUpdateConstraints];

  view3 = [(MKLookAroundViewController *)self view];
  [view3 layoutIfNeeded];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MKLookAroundViewController_fullScreenViewControllerDidDismiss___block_invoke;
  v10[3] = &unk_1E76CDB38;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:0 completion:0.2];
  delegate = [(MKLookAroundViewController *)self delegate];
  LOBYTE(_contentView) = objc_opt_respondsToSelector();

  if (_contentView)
  {
    delegate2 = [(MKLookAroundViewController *)self delegate];
    [delegate2 lookAroundViewControllerDidDismissFullScreen:self];
  }
}

void __65__MKLookAroundViewController_fullScreenViewControllerDidDismiss___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1136) overlayView];
  [v1 setAlpha:1.0];
}

- (void)fullScreenViewControllerWillDismiss:(id)dismiss
{
  overlayView = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [overlayView setAlpha:0.0];

  delegate = [(MKLookAroundViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MKLookAroundViewController *)self delegate];
    [delegate2 lookAroundViewControllerWillDismissFullScreen:self];
  }
}

- (void)fullScreenViewControllerDidPresent:(id)present
{
  self->_presentationType = 1;
  [(MKLookAroundViewController *)self _updateBadgeViewIfNeeded];
  [(MKLookAroundViewController *)self _updateCloseButtonIfNeeded];
  [(MKLookAroundViewController *)self _updateGradientIfNeeded];
  [(MKLookAroundViewController *)self _updateLookAroundViewIfNeeded];
  [(MKLookAroundViewController *)self _updateStackViewIfNeeded];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MKLookAroundViewController_fullScreenViewControllerDidPresent___block_invoke;
  v7[3] = &unk_1E76CDB38;
  v7[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0 completion:0.2];
  delegate = [(MKLookAroundViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MKLookAroundViewController *)self delegate];
    [delegate2 lookAroundViewControllerDidPresentFullScreen:self];
  }
}

void __65__MKLookAroundViewController_fullScreenViewControllerDidPresent___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1136) overlayView];
  [v1 setAlpha:1.0];
}

- (void)fullScreenViewControllerWillPresent:(id)present
{
  overlayView = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [overlayView setAlpha:0.0];

  [(UITapGestureRecognizer *)self->_selectGestureRecognizer setEnabled:0];
  delegate = [(MKLookAroundViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MKLookAroundViewController *)self delegate];
    [delegate2 lookAroundViewControllerWillPresentFullScreen:self];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MKLookAroundViewController;
  [(MKLookAroundViewController *)&v3 viewDidLoad];
  [(MKLookAroundViewController *)self _setupSubviews];
  [(MKLookAroundViewController *)self _setupConstraints];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = MKLookAroundViewController;
  [(MKLookAroundViewController *)&v14 viewDidLayoutSubviews];
  superview = [(MKLookAroundView *)self->_lookAroundView superview];
  view = [(MKLookAroundViewController *)self view];

  if (superview == view)
  {
    view2 = [(MKLookAroundViewController *)self view];
    [view2 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(MKLookAroundView *)self->_lookAroundView setFrame:v7, v9, v11, v13];
    [(MKLookAroundViewController *)self _updateBadgeViewIfNeeded];
    [(MKLookAroundViewController *)self _updateCloseButtonIfNeeded];
    [(MKLookAroundViewController *)self _updateGradientIfNeeded];
    [(MKLookAroundViewController *)self _updateLookAroundViewIfNeeded];
    [(MKLookAroundViewController *)self _updateStackViewIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MKLookAroundViewController;
  [(MKLookAroundViewController *)&v4 viewDidAppear:appear];
  [(MKLookAroundViewController *)self _updateSceneIfNeeded];
  if (self->_presentationType == 1)
  {
    [(MKLookAroundViewController *)self _updateBadgeViewIfNeeded];
    [(MKLookAroundViewController *)self _updateCloseButtonIfNeeded];
    [(MKLookAroundViewController *)self _updateGradientIfNeeded];
    [(MKLookAroundViewController *)self _updateLookAroundViewIfNeeded];
    [(MKLookAroundViewController *)self _updateStackViewIfNeeded];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MKLookAroundViewController;
  [(MKLookAroundViewController *)&v4 viewWillAppear:appear];
  if (![(MKLookAroundViewController *)self modalPresentationStyle]&& ([(MKLookAroundViewController *)self isBeingPresented]& 1) != 0 || [(MKLookAroundViewController *)self _isFullScreenCover])
  {
    self->_presentationType = 1;
    [(UITapGestureRecognizer *)self->_selectGestureRecognizer setEnabled:0];
  }
}

- (void)setBadgePosition:(MKLookAroundBadgePosition)badgePosition
{
  if (badgePosition >= (MKLookAroundBadgePositionBottomTrailing|MKLookAroundBadgePositionTopTrailing))
  {
    v3 = MKLookAroundBadgePositionTopLeading;
  }

  else
  {
    v3 = badgePosition;
  }

  if (self->_badgePosition != v3)
  {
    self->_badgePosition = v3;
    if ([(MKLookAroundViewController *)self isViewLoaded])
    {

      [(MKLookAroundViewController *)self _updateBadgeViewIfNeeded];
    }
  }
}

- (void)setPointOfInterestFilter:(MKPointOfInterestFilter *)pointOfInterestFilter
{
  v5 = pointOfInterestFilter;
  if (self->_pointOfInterestFilter != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pointOfInterestFilter, pointOfInterestFilter);
    self->_needsLookAroundViewUpdate = 1;
    [(MKLookAroundViewController *)self _updateLookAroundViewIfNeeded];
    v5 = v6;
  }
}

- (void)setShowsRoadLabels:(BOOL)showsRoadLabels
{
  if (self->_showsRoadLabels != showsRoadLabels)
  {
    self->_showsRoadLabels = showsRoadLabels;
    self->_needsLookAroundViewUpdate = 1;
    [(MKLookAroundViewController *)self _updateLookAroundViewIfNeeded];
  }
}

- (void)setNavigationEnabled:(BOOL)navigationEnabled
{
  v3 = navigationEnabled;
  if (self->_navigationEnabled != navigationEnabled)
  {
    self->_navigationEnabled = navigationEnabled;
    self->_needsLookAroundViewUpdate = 1;
    [(MKLookAroundViewController *)self _updateLookAroundViewIfNeeded];
  }

  lookAroundView = self->_lookAroundView;

  [(MKLookAroundView *)lookAroundView setNavigatingEnabled:v3];
}

- (void)setScene:(MKLookAroundScene *)scene
{
  v5 = scene;
  if (self->_scene != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_scene, scene);
    self->_needsSceneUpdate = 1;
    [(MKLookAroundViewController *)self _updateSceneIfNeeded];
    v5 = v6;
  }
}

- (void)dealloc
{
  if (self->_didBecomeFullyDrawnObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_didBecomeFullyDrawnObserver];
  }

  v4.receiver = self;
  v4.super_class = MKLookAroundViewController;
  [(MKLookAroundViewController *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MKLookAroundViewController;
  coderCopy = coder;
  [(MKLookAroundViewController *)&v7 encodeWithCoder:coderCopy];
  v5 = [(MKLookAroundViewController *)self delegate:v7.receiver];
  [coderCopy encodeConditionalObject:v5 forKey:@"MKDelegate"];

  [coderCopy encodeBool:-[MKLookAroundViewController isNavigationEnabled](self forKey:{"isNavigationEnabled"), @"MKNavigationEnabled"}];
  [coderCopy encodeBool:-[MKLookAroundViewController showsRoadLabels](self forKey:{"showsRoadLabels"), @"MKShowsRoadLabels"}];
  pointOfInterestFilter = [(MKLookAroundViewController *)self pointOfInterestFilter];
  [coderCopy encodeObject:pointOfInterestFilter forKey:@"MKPointOfInterestFilter"];
}

- (MKLookAroundViewController)initWithScene:(MKLookAroundScene *)scene
{
  v5 = scene;
  v9.receiver = self;
  v9.super_class = MKLookAroundViewController;
  v6 = [(MKLookAroundViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(MKLookAroundViewController *)v6 _commonInit];
    objc_storeStrong(&v7->_scene, scene);
  }

  return v7;
}

- (MKLookAroundViewController)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v10.receiver = self;
  v10.super_class = MKLookAroundViewController;
  v5 = [(MKLookAroundViewController *)&v10 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(MKLookAroundViewController *)v5 _commonInit];
    if ([(NSCoder *)v4 containsValueForKey:@"MKDelegate"])
    {
      v7 = [(NSCoder *)v4 decodeObjectForKey:@"MKDelegate"];
      [(MKLookAroundViewController *)v6 setDelegate:v7];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MKNavigationEnabled"])
    {
      [(MKLookAroundViewController *)v6 setNavigationEnabled:[(NSCoder *)v4 decodeBoolForKey:@"MKNavigationEnabled"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MKShowsRoadLabels"])
    {
      [(MKLookAroundViewController *)v6 setShowsRoadLabels:[(NSCoder *)v4 decodeBoolForKey:@"MKShowsRoadLabels"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MKPointOfInterestFilter"])
    {
      v8 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPointOfInterestFilter"];
      [(MKLookAroundViewController *)v6 setPointOfInterestFilter:v8];
    }
  }

  return v6;
}

- (MKLookAroundViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  v7.receiver = self;
  v7.super_class = MKLookAroundViewController;
  v4 = [(MKLookAroundViewController *)&v7 initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  v5 = v4;
  if (v4)
  {
    [(MKLookAroundViewController *)v4 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  self->_initialScene = 1;
  self->_navigationEnabled = 1;
  self->_needsLookAroundViewUpdate = 1;
  self->_needsSceneUpdate = 1;
  self->_presentationType = 0;
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  dateFormatter = self->_dateFormatter;
  self->_dateFormatter = v3;

  self->_showsRoadLabels = 1;
}

@end