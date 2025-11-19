@interface MKLookAroundViewController
- (BOOL)_isDescendantOfRootViewController;
- (BOOL)_isPresentedFullScreen;
- (BOOL)_isPresentingFullScreen;
- (BOOL)_isTransitioningToOrFromFullScreen;
- (BOOL)lookAroundView:(id)a3 shouldReceiveTouch:(id)a4;
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
- (void)_didSelectView:(id)a3;
- (void)_didTapAttributionButton:(id)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_transitionFromFullScreenAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)_transitionToFullScreenAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)_updateBadgeViewIfNeeded;
- (void)_updateCloseButtonIfNeeded;
- (void)_updateGradientIfNeeded;
- (void)_updateLookAroundViewIfNeeded;
- (void)_updateSceneIfNeeded;
- (void)_updateStackViewIfNeeded;
- (void)applyShadowToView:(id)a3 withRadius:(double)a4 offset:(CGSize)a5 opacity:(float)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fullScreenViewControllerDidDismiss:(id)a3;
- (void)fullScreenViewControllerDidPresent:(id)a3;
- (void)fullScreenViewControllerWillDismiss:(id)a3;
- (void)fullScreenViewControllerWillPresent:(id)a3;
- (void)lookAroundView:(id)a3 didChangeLocationInfo:(id)a4;
- (void)lookAroundViewDidChangeRegion:(id)a3;
- (void)lookAroundViewWillChangeRegion:(id)a3;
- (void)setBadgePosition:(MKLookAroundBadgePosition)badgePosition;
- (void)setNavigationEnabled:(BOOL)navigationEnabled;
- (void)setPointOfInterestFilter:(MKPointOfInterestFilter *)pointOfInterestFilter;
- (void)setScene:(MKLookAroundScene *)scene;
- (void)setShowsRoadLabels:(BOOL)showsRoadLabels;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MKLookAroundViewController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_urlForMapAttribution
{
  v2 = [(MKLookAroundView *)self->_lookAroundView lookAroundView];
  v3 = [v2 attributionsForCurrentRegion];

  v4 = [MKMapAttribution attributionUrlFromRegionalAttributions:v3];

  return v4;
}

- (void)_updateStackViewIfNeeded
{
  v3 = [(MKLookAroundViewController *)self labelFont];
  [(UILabel *)self->_locationLabel setFont:v3];

  v4 = [(MKLookAroundViewController *)self secondaryLabelFont];
  [(UILabel *)self->_localityLabel setFont:v4];

  v5 = [(UILabel *)self->_imageryCollectionDateLabel attributedText];
  v19 = [v5 mutableCopy];

  v6 = *MEMORY[0x1E69DB648];
  v7 = [(MKLookAroundViewController *)self tertiaryLabelFont];
  [v19 addAttribute:v6 value:v7 range:{0, objc_msgSend(v19, "length")}];

  v8 = [v19 copy];
  [(UILabel *)self->_imageryCollectionDateLabel setAttributedText:v8];

  v9 = [(UIButton *)self->_attributionButton attributedTitleForState:0];
  v10 = [v9 mutableCopy];

  v11 = [(MKLookAroundViewController *)self attributionButtonFont];
  [v10 addAttribute:v6 value:v11 range:{0, objc_msgSend(v10, "length")}];

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
        v4 = [(MKLookAroundScene *)self->_scene _type];
        if (v4)
        {
          if (v4 != 1)
          {
            lookAroundView = self->_lookAroundView;
            goto LABEL_11;
          }

          v5 = [(MKLookAroundScene *)self->_scene _muninViewState];
          v6 = [MKLookAroundEntryPoint entryPointWithMuninViewState:v5];
        }

        else
        {
          v5 = [(MKLookAroundScene *)self->_scene _mapItem];
          v7 = [(MKLookAroundScene *)self->_scene _wantsCloseUpView];
          v8 = [(MKLookAroundScene *)self->_scene _cameraFrameOverride];
          v6 = [MKLookAroundEntryPoint entryPointWithMapItem:v5 wantsCloseUpView:v7 cameraFrameOverride:v8];
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
    v3 = [(MKLookAroundViewController *)self _shouldRestrictLookAroundViewOptionsForPreview];
    [(MKLookAroundView *)self->_lookAroundView setCompassHidden:v3];
    IsMacCatalyst = MapKitIdiomIsMacCatalyst();
    v5 = &OBJC_IVAR___MKLookAroundViewController__closeButtonView;
    if (IsMacCatalyst)
    {
      v5 = &OBJC_IVAR___MKLookAroundViewController__attributionButton;
    }

    [*(&self->super.super.super.isa + *v5) bounds];
    Height = CGRectGetHeight(v11);
    [(MKLookAroundView *)self->_lookAroundView setCompassInsets:Height + 24.0, 16.0, Height + 24.0, 16.0];
    if (v3)
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
    v29 = [(UIVisualEffectView *)self->_badgeView bottomAnchor];
    v30 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    v31 = [v30 safeAreaLayoutGuide];
    v32 = [v31 bottomAnchor];
    v33 = [v29 constraintEqualToAnchor:v32 constant:-12.0];
    v34 = self->_badgeViewVerticalConstraint;
    self->_badgeViewVerticalConstraint = v33;

    v35 = [(UIVisualEffectView *)self->_badgeView trailingAnchor];
    v36 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    v37 = [v36 safeAreaLayoutGuide];
    v38 = [v37 trailingAnchor];
    v39 = [v35 constraintEqualToAnchor:v38 constant:-10.0];
    badgeViewHorizontalConstraint = self->_badgeViewHorizontalConstraint;
    self->_badgeViewHorizontalConstraint = v39;

    v13 = [(UIImageView *)self->_appleLogoImageView image];
    [v13 size];
    v7 = v41 + 8.0;
  }

  else if (badgePosition == 1)
  {
    v19 = [(UIVisualEffectView *)self->_badgeView topAnchor];
    v20 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    v21 = [v20 topAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:14.0];
    v23 = self->_badgeViewVerticalConstraint;
    self->_badgeViewVerticalConstraint = v22;

    v13 = [(UIVisualEffectView *)self->_badgeView trailingAnchor];
    v24 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    v25 = [v24 safeAreaLayoutGuide];
    v26 = [v25 trailingAnchor];
    v27 = [v13 constraintEqualToAnchor:v26 constant:-14.0];
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

    v8 = [(UIVisualEffectView *)self->_badgeView topAnchor];
    v9 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    v10 = [v9 topAnchor];
    v11 = [v8 constraintEqualToAnchor:v10 constant:14.0];
    v12 = self->_badgeViewVerticalConstraint;
    self->_badgeViewVerticalConstraint = v11;

    v13 = [(UIVisualEffectView *)self->_badgeView leadingAnchor];
    v14 = [(MKLookAroundView *)self->_lookAroundView overlayView];
    v15 = [v14 safeAreaLayoutGuide];
    v16 = [v15 leadingAnchor];
    v17 = [v13 constraintEqualToAnchor:v16 constant:14.0];
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

  v45 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [v45 bounds];
  v47 = v46;

  if (v47 + -28.0 <= v7)
  {
    v48 = v47 + -28.0;
  }

  else
  {
    v48 = v47 + -28.0 - v7;
  }

  v49 = [(MKLookAroundViewController *)self badgeLabelTitle];
  [v49 size];
  if (v50 + 14.0 > v48)
  {
    v51 = [(MKLookAroundViewController *)self badgeLabelGlyph];

    v49 = v51;
  }

  [(UILabel *)self->_badgeLabel setAttributedText:v49];
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
  v4 = [(MKLookAroundViewController *)self buttonFont];
  v11 = [v3 configurationWithFont:v4];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v11];
  v6 = [MEMORY[0x1E69DC888] labelColor];
  v7 = [v5 imageWithTintColor:v6];

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

- (void)_transitionToFullScreenAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![(MKLookAroundViewController *)self _isDescendantOfRootViewController])
  {
    v7 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = self;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "*** Warning: %@ is trying to enter full screen, but is not in its view's window's view controller hierarchy. This results in undefined behavior.", buf, 0xCu);
    }
  }

  if (![(MKLookAroundViewController *)self _isPresentingFullScreen]&& ![(MKLookAroundViewController *)self _isPresentedFullScreen]&& ![(MKLookAroundViewController *)self _isTransitioningToOrFromFullScreen])
  {
    v9 = [(MKLookAroundViewController *)self _fullScreenViewController];
    v12 = [(MKLookAroundViewController *)self _transitionController];
    lookAroundView = self->_lookAroundView;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__MKLookAroundViewController__transitionToFullScreenAnimated_completionHandler___block_invoke;
    v14[3] = &unk_1E76C9DD8;
    v15 = v6;
    [v12 beginFullScreenPresentationOfViewController:v9 fromView:lookAroundView animated:v4 completion:v14];

    v10 = v15;
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid method call"];
    v17 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [v8 errorWithDomain:@"MKErrorDomain" code:1 userInfo:v10];
    (*(v6 + 2))(v6, 0, v11);

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

- (void)_transitionFromFullScreenAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![(MKLookAroundViewController *)self _isDescendantOfRootViewController])
  {
    v7 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = self;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "*** Warning: %@ is trying to exit full screen, but is not in its view's window's view controller hierarchy. This results in undefined behavior.", buf, 0xCu);
    }
  }

  if (([(MKLookAroundViewController *)self _isPresentingFullScreen]|| [(MKLookAroundViewController *)self _isPresentedFullScreen]) && ![(MKLookAroundViewController *)self _isTransitioningToOrFromFullScreen])
  {
    v13 = [(MKLookAroundViewController *)self _fullScreenViewControllerIfLoaded];
    v14 = [v13 presentingViewController];
    if (v14)
    {
      v15 = [(MKLookAroundViewController *)self _fullScreenViewControllerIfLoaded];
    }

    else
    {
      v15 = self;
    }

    v10 = v15;

    v20 = [(MKLookAroundViewController *)self _transitionController];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __82__MKLookAroundViewController__transitionFromFullScreenAnimated_completionHandler___block_invoke;
    v23[3] = &unk_1E76C9B20;
    v23[4] = self;
    v24 = v6;
    [v20 beginFullScreenDismissalOfViewController:v10 animated:v4 completion:v23];

    goto LABEL_19;
  }

  v8 = [(MKLookAroundViewController *)self presentingViewController];
  if (v8 && ![(MKLookAroundViewController *)self _isTransitioningToOrFromFullScreen])
  {
    v16 = [(MKLookAroundViewController *)self presentingViewController];
    v17 = [v16 presentedViewController];
    v18 = [v17 isBeingDismissed];

    if ((v18 & 1) == 0)
    {
      v19 = [(MKLookAroundViewController *)self presentingViewController];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __82__MKLookAroundViewController__transitionFromFullScreenAnimated_completionHandler___block_invoke_2;
      v21[3] = &unk_1E76CD4D0;
      v22 = v6;
      [v19 dismissViewControllerAnimated:v4 completion:v21];

      v10 = v22;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v6)
  {
    v9 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid method call"];
    v26 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v12 = [v9 errorWithDomain:@"MKErrorDomain" code:1 userInfo:v11];
    (*(v6 + 2))(v6, 0, v12);

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
  v3 = [(MKLookAroundViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 _mapkit_setBackgroundColor:v4];

  v5 = [MKLookAroundView alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(MKLookAroundView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  lookAroundView = self->_lookAroundView;
  self->_lookAroundView = v10;

  [(MKLookAroundView *)self->_lookAroundView setDelegate:self];
  v12 = [(MKLookAroundViewController *)self view];
  [v12 addSubview:self->_lookAroundView];

  v13 = [[_MKGradientView alloc] initWithFrame:v6, v7, v8, v9];
  gradientView = self->_gradientView;
  self->_gradientView = v13;

  [(_MKGradientView *)self->_gradientView setAccessibilityIdentifier:@"LookAroundGradientView"];
  [(_MKGradientView *)self->_gradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKGradientView *)self->_gradientView setStartPoint:0.5, 0.0];
  [(_MKGradientView *)self->_gradientView setEndPoint:0.5, 1.0];
  v15 = [MEMORY[0x1E69DC888] blackColor];
  v87 = [v15 colorWithAlphaComponent:0.0];

  v16 = [MEMORY[0x1E69DC888] blackColor];
  v86 = [v16 colorWithAlphaComponent:0.0];

  v17 = [MEMORY[0x1E69DC888] blackColor];
  v84 = [v17 colorWithAlphaComponent:0.68];

  v91[0] = v87;
  v91[1] = v86;
  v91[2] = v84;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
  [(_MKGradientView *)self->_gradientView setColors:v18];

  [(_MKGradientView *)self->_gradientView setLocations:&unk_1F1612138];
  v19 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [v19 _mapkit_insertSubview:self->_gradientView atIndex:0];

  v20 = [MEMORY[0x1E69DC738] buttonWithType:0];
  closeButton = self->_closeButton;
  self->_closeButton = v20;

  [(UIView *)self->_closeButtonView setAccessibilityIdentifier:@"LookAroundCloseButton"];
  [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_closeButton addTarget:self action:sel__didTapCloseButton_ forControlEvents:64];
  v22 = [MEMORY[0x1E69DC888] labelColor];
  [(UIButton *)self->_closeButton setTintColor:v22];

  v23 = +[MKSystemController sharedInstance];
  v24 = [v23 isGlassEnabled];

  if (v24)
  {
    v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    [v25 _mapkit_setGlassBackground];
    objc_storeStrong(&self->_closeButtonView, v25);
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x1E69DD298]);
    v27 = [MEMORY[0x1E69DC730] effectWithStyle:18];
    v28 = [v26 initWithEffect:v27];

    v29 = [MEMORY[0x1E69DC888] blackColor];
    v30 = [v29 colorWithAlphaComponent:0.24];
    v31 = [(UIView *)v28 contentView];
    [v31 setBackgroundColor:v30];

    closeButtonView = self->_closeButtonView;
    self->_closeButtonView = v28;
    v33 = v28;

    v25 = [(UIView *)v33 contentView];
  }

  [(UIView *)self->_closeButtonView setAccessibilityIdentifier:@"LookAroundCloseButtonView", v84];
  [(UIView *)self->_closeButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_closeButtonView setBackgroundColor:v34];

  v35 = *MEMORY[0x1E695F060];
  v36 = *(MEMORY[0x1E695F060] + 8);
  LODWORD(v37) = 1041865114;
  [(MKLookAroundViewController *)self applyShadowToView:v25 withRadius:5.0 offset:*MEMORY[0x1E695F060] opacity:v36, v37];
  v38 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [v38 addSubview:self->_closeButtonView];

  [v25 addSubview:self->_closeButton];
  v39 = objc_alloc(MEMORY[0x1E69DD298]);
  v40 = [MEMORY[0x1E69DC730] effectWithStyle:17];
  v41 = [v39 initWithEffect:v40];
  badgeView = self->_badgeView;
  self->_badgeView = v41;

  [(UIVisualEffectView *)self->_badgeView setAccessibilityIdentifier:@"LookAroundBadgeView"];
  [(UIVisualEffectView *)self->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = [MEMORY[0x1E69DC888] clearColor];
  [(UIVisualEffectView *)self->_badgeView setBackgroundColor:v43];

  [(UIVisualEffectView *)self->_badgeView _setContinuousCornerRadius:6.0];
  v44 = [(UIVisualEffectView *)self->_badgeView contentView];
  LODWORD(v45) = 1041865114;
  [(MKLookAroundViewController *)self applyShadowToView:v44 withRadius:5.0 offset:v35 opacity:v36, v45];

  v46 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [v46 addSubview:self->_badgeView];

  v47 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  badgeLabel = self->_badgeLabel;
  self->_badgeLabel = v47;

  [(UIVisualEffectView *)self->_badgeView setAccessibilityIdentifier:@"LookAroundBadgeLabel"];
  [(UILabel *)self->_badgeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_badgeLabel setTextColor:v49];

  LODWORD(v50) = 1148846080;
  [(UILabel *)self->_badgeLabel setContentCompressionResistancePriority:0 forAxis:v50];
  [(UILabel *)self->_badgeLabel setNumberOfLines:1];
  [(UILabel *)self->_badgeLabel setTextAlignment:1];
  v51 = [(UIVisualEffectView *)self->_badgeView contentView];
  [v51 addSubview:self->_badgeLabel];

  v52 = [[MKAppleLogoImageView alloc] initForMapType:107 forDarkMode:1];
  appleLogoImageView = self->_appleLogoImageView;
  self->_appleLogoImageView = v52;

  [(UIImageView *)self->_appleLogoImageView setAccessibilityIdentifier:@"LookAroundAppleLogo"];
  [(UIImageView *)self->_appleLogoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [v54 addSubview:self->_appleLogoImageView];

  v55 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v6, v7, v8, v9}];
  infoStackView = self->_infoStackView;
  self->_infoStackView = v55;

  [(UIStackView *)self->_infoStackView setAccessibilityIdentifier:@"LookAroundInfoStackView"];
  [(UIStackView *)self->_infoStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_infoStackView setAxis:1];
  [(UIStackView *)self->_infoStackView setDistribution:0];
  [(UIStackView *)self->_infoStackView setAlignment:1];
  [(UIStackView *)self->_infoStackView setSpacing:6.0];
  v57 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [v57 addSubview:self->_infoStackView];

  v58 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  locationLabel = self->_locationLabel;
  self->_locationLabel = v58;

  [(UILabel *)self->_locationLabel setAccessibilityIdentifier:@"LookAroundLocationLabel"];
  v60 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_locationLabel setTextColor:v60];

  [(UILabel *)self->_locationLabel setNumberOfLines:0];
  LODWORD(v61) = 1034147594;
  [(MKLookAroundViewController *)self applyShadowToView:self->_locationLabel withRadius:4.0 offset:0.0 opacity:1.0, v61];
  [(UIStackView *)self->_infoStackView addArrangedSubview:self->_locationLabel];
  v62 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  localityLabel = self->_localityLabel;
  self->_localityLabel = v62;

  [(UILabel *)self->_localityLabel setAccessibilityIdentifier:@"LookAroundLocalityLabel"];
  v64 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_localityLabel setTextColor:v64];

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
  v72 = [v71 widthAnchor];
  v73 = [v72 constraintEqualToConstant:9.22337204e18];

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
  v77 = [MEMORY[0x1E696AD88] defaultCenter];
  [v77 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  v78 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__didSelectView_];
  selectGestureRecognizer = self->_selectGestureRecognizer;
  self->_selectGestureRecognizer = v78;

  [(MKLookAroundView *)self->_lookAroundView addGestureRecognizer:self->_selectGestureRecognizer];
  objc_initWeak(&location, self);
  v80 = [MEMORY[0x1E696AD88] defaultCenter];
  v81 = self->_lookAroundView;
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __44__MKLookAroundViewController__setupSubviews__block_invoke;
  v88[3] = &unk_1E76C91F0;
  objc_copyWeak(&v89, &location);
  v82 = [v80 addObserverForName:@"MKLookAroundViewDidBecomeFullyDrawn" object:v81 queue:0 usingBlock:v88];
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
  v3 = [(UIVisualEffectView *)self->_badgeView topAnchor];
  v4 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:14.0];
  badgeViewVerticalConstraint = self->_badgeViewVerticalConstraint;
  self->_badgeViewVerticalConstraint = v6;

  v8 = [(UIVisualEffectView *)self->_badgeView leadingAnchor];
  v9 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v10 = [v9 safeAreaLayoutGuide];
  v11 = [v10 leadingAnchor];
  v12 = [v8 constraintEqualToAnchor:v11 constant:14.0];
  badgeViewHorizontalConstraint = self->_badgeViewHorizontalConstraint;
  self->_badgeViewHorizontalConstraint = v12;

  v14 = [(UIStackView *)self->_infoStackView trailingAnchor];
  v15 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v16 = [v15 safeAreaLayoutGuide];
  v17 = [v16 trailingAnchor];
  v18 = [v14 constraintLessThanOrEqualToAnchor:v17 constant:-16.0];

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
  v100 = [(_MKGradientView *)self->_gradientView topAnchor];
  v101 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v99 = [v101 topAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v102[0] = v98;
  v96 = [(_MKGradientView *)self->_gradientView bottomAnchor];
  v97 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v95 = [v97 bottomAnchor];
  v94 = [v96 constraintEqualToAnchor:v95];
  v102[1] = v94;
  v92 = [(_MKGradientView *)self->_gradientView leadingAnchor];
  v93 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v91 = [v93 leadingAnchor];
  v90 = [v92 constraintEqualToAnchor:v91];
  v102[2] = v90;
  v88 = [(_MKGradientView *)self->_gradientView trailingAnchor];
  v89 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v87 = [v89 trailingAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v102[3] = v86;
  v84 = [(UIView *)self->_closeButtonView topAnchor];
  v85 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v83 = [v85 safeAreaLayoutGuide];
  v82 = [v83 topAnchor];
  v81 = [v84 constraintEqualToAnchor:v82 constant:12.0];
  v102[4] = v81;
  v79 = [(UIView *)self->_closeButtonView trailingAnchor];
  v80 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v78 = [v80 safeAreaLayoutGuide];
  v77 = [v78 trailingAnchor];
  v76 = [v79 constraintEqualToAnchor:v77 constant:-16.0];
  v102[5] = v76;
  v75 = [(UIView *)self->_closeButtonView heightAnchor];
  v74 = [v75 constraintEqualToConstant:v22];
  v102[6] = v74;
  v73 = [(UIView *)self->_closeButtonView widthAnchor];
  v71 = [v73 constraintEqualToConstant:v22];
  v102[7] = v71;
  v70 = [(UIButton *)self->_closeButton topAnchor];
  v69 = [(UIView *)self->_closeButtonView topAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v102[8] = v68;
  v67 = [(UIButton *)self->_closeButton bottomAnchor];
  v66 = [(UIView *)self->_closeButtonView bottomAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v102[9] = v65;
  v64 = [(UIButton *)self->_closeButton leadingAnchor];
  v63 = [(UIView *)self->_closeButtonView leadingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v102[10] = v62;
  v61 = [(UIButton *)self->_closeButton trailingAnchor];
  v60 = [(UIView *)self->_closeButtonView trailingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v23 = self->_badgeViewVerticalConstraint;
  v24 = self->_badgeViewHorizontalConstraint;
  v102[11] = v59;
  v102[12] = v23;
  v102[13] = v24;
  v58 = [(UILabel *)self->_badgeLabel topAnchor];
  v57 = [(UIVisualEffectView *)self->_badgeView topAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:7.0];
  v102[14] = v56;
  v54 = [(UILabel *)self->_badgeLabel bottomAnchor];
  v53 = [(UIVisualEffectView *)self->_badgeView bottomAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:-7.0];
  v102[15] = v52;
  v51 = [(UILabel *)self->_badgeLabel leadingAnchor];
  v50 = [(UIVisualEffectView *)self->_badgeView leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:10.0];
  v102[16] = v49;
  v48 = [(UILabel *)self->_badgeLabel trailingAnchor];
  v47 = [(UIVisualEffectView *)self->_badgeView trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 constant:-10.0];
  v102[17] = v46;
  v44 = [(UIImageView *)self->_appleLogoImageView bottomAnchor];
  v45 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v43 = [v45 safeAreaLayoutGuide];
  v42 = [v43 bottomAnchor];
  v41 = [v44 constraintEqualToAnchor:v42 constant:-12.0];
  v102[18] = v41;
  v39 = [(UIImageView *)self->_appleLogoImageView leadingAnchor];
  v40 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v38 = [v40 safeAreaLayoutGuide];
  v37 = [v38 leadingAnchor];
  v36 = [v39 constraintEqualToAnchor:v37 constant:14.0];
  v102[19] = v36;
  v35 = [(UIStackView *)self->_infoStackView bottomAnchor];
  v25 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v26 = [v25 safeAreaLayoutGuide];
  v27 = [v26 bottomAnchor];
  v28 = [v35 constraintEqualToAnchor:v27 constant:-12.0];
  v102[20] = v28;
  v29 = [(UIStackView *)self->_infoStackView leadingAnchor];
  v30 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  v31 = [v30 safeAreaLayoutGuide];
  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor:v32 constant:16.0];
  v102[21] = v33;
  v102[22] = v20;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:23];
  [v72 activateConstraints:v34];
}

- (BOOL)_isTransitioningToOrFromFullScreen
{
  if (([(MKLookAroundViewController *)self isBeingDismissed]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(MKLookAroundViewController *)self isBeingPresented];
  }

  v4 = [(MKLookAroundViewController *)self _fullScreenViewControllerIfLoaded];
  if ([v4 isBeingDismissed] & 1) != 0 || (objc_msgSend(v4, "isBeingPresented"))
  {
    v5 = 1;
  }

  else if (v4)
  {
    v7 = [v4 presentingViewController];
    v5 = v7 == 0;
  }

  else
  {
    v5 = 0;
  }

  return (v3 | v5) & 1;
}

- (BOOL)_isPresentingFullScreen
{
  v2 = [(MKLookAroundViewController *)self _fullScreenViewControllerIfLoaded];
  v3 = [v2 presentingViewController];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_isPresentedFullScreen
{
  v3 = [(MKLookAroundViewController *)self parentViewController];
  v4 = !v3 && [(MKLookAroundViewController *)self _isDescendantOfRootViewController]&& [(MKLookAroundViewController *)self _modalPresentationStyleIsFullScreen];

  return v4;
}

- (BOOL)_isDescendantOfRootViewController
{
  v2 = self;
  v3 = [(MKLookAroundViewController *)v2 parentViewController];

  v4 = v2;
  if (v3)
  {
    v5 = v2;
    do
    {
      v4 = [(MKLookAroundViewController *)v5 parentViewController];

      v6 = [(MKLookAroundViewController *)v4 parentViewController];

      v5 = v4;
    }

    while (v6);
  }

  v7 = [(MKLookAroundViewController *)v4 presentingViewController];

  if (v7)
  {
    do
    {
      v8 = [(MKLookAroundViewController *)v4 presentingViewController];

      v9 = [(MKLookAroundViewController *)v8 presentingViewController];

      v4 = v8;
    }

    while (v9);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  v8 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = [(MKLookAroundViewController *)v8 isEqual:v2]^ 1;
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
    v5 = [(MKLookAroundViewController *)self _transitionController];
    [(MKLookAroundFullScreenViewController *)v4 setTransitioningDelegate:v5];

    [(MKLookAroundFullScreenViewController *)v4 setDelegate:self];
    v6 = self->_fullScreenViewController;
    self->_fullScreenViewController = v4;

    fullScreenViewController = self->_fullScreenViewController;
  }

  return fullScreenViewController;
}

- (void)_didTapAttributionButton:(id)a3
{
  v3 = [(MKLookAroundViewController *)self _urlForMapAttribution];
  if (v3)
  {
    v5 = v3;
    v4 = +[MKSystemController sharedInstance];
    [v4 openURL:v5 completionHandler:0];

    v3 = v5;
  }
}

- (void)_didSelectView:(id)a3
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

- (void)applyShadowToView:(id)a3 withRadius:(double)a4 offset:(CGSize)a5 opacity:(float)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v11 = [v10 layer];
  [v11 setMasksToBounds:0];

  v12 = [MEMORY[0x1E69DC888] blackColor];
  v13 = [v12 CGColor];
  v14 = [v10 layer];
  [v14 setShadowColor:v13];

  v15 = [v10 layer];
  [v15 setShadowRadius:a4];

  v16 = [v10 layer];
  [v16 setShadowOffset:{width, height}];

  v17 = [v10 layer];
  *&v18 = a6;
  [v17 setShadowOpacity:v18];

  v19 = [v10 layer];

  [v19 setShadowPathIsBounds:1];
}

- (CGRect)attributionButtonFrame
{
  v3 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [(UIButton *)self->_attributionButton bounds];
  [v3 convertRect:self->_attributionButton fromView:?];
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
  v3 = [v2 lookAroundAttributionButtonFont];

  [v3 pointSize];
  if (v4 <= 9.0)
  {
    v8 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    v6 = [v3 fontDescriptor];
    v7 = [v6 fontDescriptorWithSize:9.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (UIFont)tertiaryLabelFont
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 lookAroundTertiaryLabelFont];

  [v3 pointSize];
  if (v4 <= 13.0)
  {
    v8 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    v6 = [v3 fontDescriptor];
    v7 = [v6 fontDescriptorWithSize:13.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (UIFont)secondaryLabelFont
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 lookAroundSecondaryLabelFont];

  [v3 pointSize];
  if (v4 <= 15.0)
  {
    v8 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    v6 = [v3 fontDescriptor];
    v7 = [v6 fontDescriptorWithSize:15.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (NSAttributedString)badgeLabelTitle
{
  v3 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F15B23C0];
  v4 = [(MKLookAroundViewController *)self badgeLabelGlyph];
  [v3 appendAttributedString:v4];

  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v3 appendAttributedString:v5];

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = _MKLocalizedStringFromThisBundle(@"[Look Around] Look Around Badge Text");
  v8 = [v6 initWithString:v7];

  [v3 appendAttributedString:v8];
  v9 = *MEMORY[0x1E69DB648];
  v10 = [(MKLookAroundViewController *)self buttonFont];
  [v3 addAttribute:v9 value:v10 range:{0, objc_msgSend(v3, "length")}];

  v11 = [v3 copy];

  return v11;
}

- (NSAttributedString)badgeLabelGlyph
{
  v3 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v4 = MEMORY[0x1E69DCAB8];
  v5 = MEMORY[0x1E69DCAD8];
  v6 = [(MKLookAroundViewController *)self buttonFont];
  v7 = [v5 configurationWithFont:v6];
  v8 = [v4 systemImageNamed:@"binoculars.fill" withConfiguration:v7];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = [v8 imageWithTintColor:v9];
  [v3 setImage:v10];

  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v3];

  return v11;
}

- (UIFont)labelFont
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 lookAroundLabelFont];

  [v3 pointSize];
  if (v4 <= 22.0)
  {
    v8 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    v6 = [v3 fontDescriptor];
    v7 = [v6 fontDescriptorWithSize:22.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (UIFont)buttonFont
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 lookAroundButtonFont];

  [v3 pointSize];
  if (v4 <= 18.0)
  {
    v8 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];
    v6 = [v3 fontDescriptor];
    v7 = [v6 fontDescriptorWithSize:18.0];
    v8 = [v5 fontWithDescriptor:v7 size:0.0];
  }

  return v8;
}

- (BOOL)lookAroundView:(id)a3 shouldReceiveTouch:(id)a4
{
  [a4 locationInView:a3];
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

- (void)lookAroundViewDidChangeRegion:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (self->_initialScene)
  {
    self->_initialScene = 0;
    goto LABEL_8;
  }

  v5 = [v4 mapItem];

  if (v5)
  {
    v6 = [MKLookAroundScene alloc];
    v7 = [v20 mapItem];
    v8 = [v20 muninViewState];
    v9 = [v8 cameraFrame];
    v10 = [(MKLookAroundScene *)v6 initWithMapItem:v7 cameraFrameOverride:v9];
    scene = self->_scene;
    self->_scene = v10;

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v20 revGeoMapItem];

  if (v12)
  {
    v13 = [MKLookAroundScene alloc];
    v7 = [v20 muninViewState];
    v14 = [(MKLookAroundScene *)v13 initWithMuninViewState:v7];
    v15 = self->_scene;
    self->_scene = v14;

    goto LABEL_7;
  }

  v19 = self->_scene;
  self->_scene = 0;

LABEL_8:
  v16 = [(MKLookAroundViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(MKLookAroundViewController *)self delegate];
    [v18 lookAroundViewControllerDidUpdateScene:self];
  }
}

- (void)lookAroundViewWillChangeRegion:(id)a3
{
  v4 = [(MKLookAroundViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKLookAroundViewController *)self delegate];
    [v6 lookAroundViewControllerWillUpdateScene:self];
  }
}

- (void)lookAroundView:(id)a3 didChangeLocationInfo:(id)a4
{
  v49[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 _mapkit_locationTitle];
  [(UILabel *)self->_locationLabel setText:v6];

  v7 = [v5 _mapkit_locationSubtitle];
  [(UILabel *)self->_localityLabel setText:v7];

  v8 = [v5 collectionDate];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v10 = MEMORY[0x1E69DCAD8];
    v11 = [(MKLookAroundViewController *)self tertiaryLabelFont];
    [v11 pointSize];
    v44 = [v10 configurationWithPointSize:*MEMORY[0x1E69DB978] weight:1 scale:?];

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"applelogo" withConfiguration:v44];
    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v14 = [v12 imageWithTintColor:v13];
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
    v22 = [MEMORY[0x1E695DF58] currentLocale];
    v23 = [v21 dateFormatFromTemplate:@"MMMMyyyy" options:0 locale:v22];
    [(NSDateFormatter *)dateFormatter setLocalizedDateFormatFromTemplate:v23];

    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    v25 = self->_dateFormatter;
    v26 = [v5 collectionDate];
    v27 = [(NSDateFormatter *)v25 stringFromDate:v26];
    v28 = [v24 initWithString:v27];
    [v15 appendAttributedString:v28];

    v47 = *MEMORY[0x1E69DB648];
    v29 = v47;
    v30 = [(MKLookAroundViewController *)self tertiaryLabelFont];
    v49[0] = v30;
    v48 = *MEMORY[0x1E69DB650];
    v31 = v48;
    v32 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v49[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v47 count:2];
    [v15 addAttributes:v33 range:{0, objc_msgSend(v15, "length")}];

    v34 = [v15 copy];
    [(UILabel *)self->_imageryCollectionDateLabel setAttributedText:v34];

    v35 = objc_alloc(MEMORY[0x1E696AD40]);
    v36 = _MKLocalizedStringFromThisBundle(@"Legal");
    v37 = [v35 initWithString:v36];

    v45[0] = v29;
    v38 = [(MKLookAroundViewController *)self attributionButtonFont];
    v46[0] = v38;
    v45[1] = v31;
    v39 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v46[1] = v39;
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

- (void)fullScreenViewControllerDidDismiss:(id)a3
{
  self->_presentationType = 0;
  [(UITapGestureRecognizer *)self->_selectGestureRecognizer setEnabled:1];
  v4 = [(MKLookAroundViewController *)self view];
  v5 = [(MKLookAroundViewController *)self _contentView];
  [v4 addSubview:v5];

  v6 = [(MKLookAroundViewController *)self view];
  [v6 needsUpdateConstraints];

  v7 = [(MKLookAroundViewController *)self view];
  [v7 layoutIfNeeded];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MKLookAroundViewController_fullScreenViewControllerDidDismiss___block_invoke;
  v10[3] = &unk_1E76CDB38;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:0 completion:0.2];
  v8 = [(MKLookAroundViewController *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [(MKLookAroundViewController *)self delegate];
    [v9 lookAroundViewControllerDidDismissFullScreen:self];
  }
}

void __65__MKLookAroundViewController_fullScreenViewControllerDidDismiss___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1136) overlayView];
  [v1 setAlpha:1.0];
}

- (void)fullScreenViewControllerWillDismiss:(id)a3
{
  v4 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [v4 setAlpha:0.0];

  v5 = [(MKLookAroundViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MKLookAroundViewController *)self delegate];
    [v7 lookAroundViewControllerWillDismissFullScreen:self];
  }
}

- (void)fullScreenViewControllerDidPresent:(id)a3
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
  v4 = [(MKLookAroundViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MKLookAroundViewController *)self delegate];
    [v6 lookAroundViewControllerDidPresentFullScreen:self];
  }
}

void __65__MKLookAroundViewController_fullScreenViewControllerDidPresent___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1136) overlayView];
  [v1 setAlpha:1.0];
}

- (void)fullScreenViewControllerWillPresent:(id)a3
{
  v4 = [(MKLookAroundView *)self->_lookAroundView overlayView];
  [v4 setAlpha:0.0];

  [(UITapGestureRecognizer *)self->_selectGestureRecognizer setEnabled:0];
  v5 = [(MKLookAroundViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MKLookAroundViewController *)self delegate];
    [v7 lookAroundViewControllerWillPresentFullScreen:self];
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
  v3 = [(MKLookAroundView *)self->_lookAroundView superview];
  v4 = [(MKLookAroundViewController *)self view];

  if (v3 == v4)
  {
    v5 = [(MKLookAroundViewController *)self view];
    [v5 bounds];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MKLookAroundViewController;
  [(MKLookAroundViewController *)&v4 viewDidAppear:a3];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MKLookAroundViewController;
  [(MKLookAroundViewController *)&v4 viewWillAppear:a3];
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_didBecomeFullyDrawnObserver];
  }

  v4.receiver = self;
  v4.super_class = MKLookAroundViewController;
  [(MKLookAroundViewController *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MKLookAroundViewController;
  v4 = a3;
  [(MKLookAroundViewController *)&v7 encodeWithCoder:v4];
  v5 = [(MKLookAroundViewController *)self delegate:v7.receiver];
  [v4 encodeConditionalObject:v5 forKey:@"MKDelegate"];

  [v4 encodeBool:-[MKLookAroundViewController isNavigationEnabled](self forKey:{"isNavigationEnabled"), @"MKNavigationEnabled"}];
  [v4 encodeBool:-[MKLookAroundViewController showsRoadLabels](self forKey:{"showsRoadLabels"), @"MKShowsRoadLabels"}];
  v6 = [(MKLookAroundViewController *)self pointOfInterestFilter];
  [v4 encodeObject:v6 forKey:@"MKPointOfInterestFilter"];
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