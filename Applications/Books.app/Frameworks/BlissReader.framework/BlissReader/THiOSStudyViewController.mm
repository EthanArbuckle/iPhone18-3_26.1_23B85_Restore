@interface THiOSStudyViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (THiOSStudyViewController)initWithDocumentRoot:(id)root;
- (UIEdgeInsets)p_cardEdgeInsets;
- (UIEdgeInsets)p_scaledInsetsFromInsets:(UIEdgeInsets)insets referenceSize:(CGSize)size;
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)interfaceOrientation;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)p_styleForPresentation:(id)presentation;
- (void)dealloc;
- (void)dismissStudyOptionsMenu:(BOOL)menu completion:(id)completion;
- (void)done:(id)done;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)p_animateTransitionInWithCompletion:(id)completion;
- (void)p_animateTransitionOutWithCompletion:(id)completion;
- (void)p_handleFlickGesture:(id)gesture;
- (void)p_handlePanGesture:(id)gesture;
- (void)p_handleTapGesture:(id)gesture;
- (void)p_layoutViewsWithDuration:(double)duration;
- (void)p_setupGestureRecognizers;
- (void)p_stageTransitionAnimationIn:(BOOL)in;
- (void)p_updateDarkMode;
- (void)p_updateFlipGlyphWithTouches:(id)touches;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setTheme:(id)theme;
- (void)showOptions:(id)options;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)transitionInWithCompletion:(id)completion;
- (void)transitionOutWithCompletion:(id)completion;
- (void)updateWithNavigationUnit:(id)unit title:(id)title;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation THiOSStudyViewController

- (THiOSStudyViewController)initWithDocumentRoot:(id)root
{
  v4 = [(THiOSStudyViewController *)self initWithNibName:0 bundle:THBundle()];
  if (v4)
  {
    v5 = [[THNoteCardsController alloc] initWithDocumentRoot:root];
    v4->_noteCardsController = v5;
    [(THNoteCardsController *)v5 setDelegate:v4];
    [(THiOSStudyViewController *)v4 p_setupGestureRecognizers];
    [(THiOSStudyViewController *)v4 addKeyCommand:[UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0 action:"_keyLeft:"]];
    [(THiOSStudyViewController *)v4 addKeyCommand:[UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:"_keyRight:"]];
    [(THiOSStudyViewController *)v4 addKeyCommand:[UIKeyCommand keyCommandWithInput:@" " modifierFlags:0 action:"_keySpace:"]];
    [(THiOSStudyViewController *)v4 addKeyCommand:[UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"_keyEnter:"]];
    [(THiOSStudyViewController *)v4 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)dealloc
{
  [(THNoteCardsController *)self->_noteCardsController detachFromView:[(THiOSStudyViewController *)self view]];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];

  self->_theme = 0;
  self->_panGR = 0;

  self->_flickGR = 0;
  self->_tapGR = 0;

  self->_indirectPanGR = 0;
  self->_optionsPopoverController = 0;

  self->_titleLabel = 0;
  self->_doneButton = 0;

  self->_optionsButton = 0;
  self->_backdrop = 0;

  self->_noteCardsController = 0;
  v3.receiver = self;
  v3.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v3 dealloc];
}

- (UIEdgeInsets)p_scaledInsetsFromInsets:(UIEdgeInsets)insets referenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [-[THiOSStudyViewController view](self "view")];
  v11 = round(left / width * v10);
  v12 = round(right / width * v10);
  v14 = round(bottom / height * v13);
  v15 = top;
  v16 = v12;
  result.right = v16;
  result.bottom = v14;
  result.left = v11;
  result.top = v15;
  return result;
}

- (UIEdgeInsets)p_cardEdgeInsets
{
  im_isCompactWidth = [(THiOSStudyViewController *)self im_isCompactWidth];
  im_isCompactHeight = [(THiOSStudyViewController *)self im_isCompactHeight];
  if ([(THNoteCardsController *)self->_noteCardsController noteCardCount]<= 1)
  {
    goto LABEL_2;
  }

  v12 = im_isCompactHeight ^ 1;
  if ((im_isCompactWidth ^ 1) & 1) != 0 || (v12)
  {
    if ((im_isCompactWidth ^ 1 | im_isCompactHeight))
    {
      if (((im_isCompactWidth | v12) & 1) == 0)
      {
        v5 = 38.0;
        v6 = 64.0;
        v7 = 736.0;
        v8 = 414.0;
        v9 = 20.0;
        goto LABEL_3;
      }

LABEL_2:
      v5 = 58.0;
      v6 = 64.0;
      v7 = 1024.0;
      v8 = 768.0;
      v9 = 30.0;
LABEL_3:
      selfCopy2 = self;
      v11 = 64.0;
      goto LABEL_12;
    }

    v5 = 58.0;
    v11 = 32.0;
    v7 = 375.0;
    v8 = 667.0;
    v6 = 8.0;
    v9 = 20.0;
  }

  else
  {
    v5 = 38.0;
    v7 = 667.0;
    v8 = 375.0;
    v6 = 20.0;
    v9 = 22.0;
    v11 = 20.0;
  }

  selfCopy2 = self;
LABEL_12:

  [(THiOSStudyViewController *)selfCopy2 p_scaledInsetsFromInsets:v5 referenceSize:v6, v9, v11, v7, v8];
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v4 viewDidLoad];
  [-[NSLayoutXAxisAnchor constraintEqualToAnchor:](-[UIView leftAnchor](-[THiOSStudyViewController contentView](self "contentView")];
  [-[NSLayoutXAxisAnchor constraintEqualToAnchor:](-[UIView rightAnchor](-[THiOSStudyViewController contentView](self "contentView")];
  [-[NSLayoutYAxisAnchor constraintEqualToAnchor:](-[UIView topAnchor](-[THiOSStudyViewController contentView](self "contentView")];
  [-[NSLayoutYAxisAnchor constraintEqualToAnchor:](-[UIView bottomAnchor](-[THiOSStudyViewController contentView](self "contentView")];
  v3 = [UIView alloc];
  [-[THiOSStudyViewController view](self "view")];
  -[THiOSStudyViewController setBackdrop:](self, "setBackdrop:", [v3 initWithFrame:?]);
  [(UIView *)[(THiOSStudyViewController *)self backdrop] setBackgroundColor:+[UIColor bc_booksBackground]];
  [-[THiOSStudyViewController view](self "view")];
  -[UIButton setTitle:forState:](-[THiOSStudyViewController doneButton](self, "doneButton"), "setTitle:forState:", [THBundle() localizedStringForKey:@"Done" value:&stru_471858 table:0], 0);
  [(UIButton *)[(THiOSStudyViewController *)self doneButton] sizeToFit];
  [(UIButton *)[(THiOSStudyViewController *)self doneButton] setTitleColor:+[UIColor forState:"bc_booksLabelColor"], 0];
  [(UIButton *)[(THiOSStudyViewController *)self doneButton] setPointerInteractionEnabled:1];
  -[UIButton setTitle:forState:](-[THiOSStudyViewController optionsButton](self, "optionsButton"), "setTitle:forState:", [THBundle() localizedStringForKey:@"Options" value:&stru_471858 table:0], 0);
  [(UIButton *)[(THiOSStudyViewController *)self optionsButton] setTitleColor:+[UIColor forState:"bc_booksLabelColor"], 0];
  [(UIButton *)[(THiOSStudyViewController *)self optionsButton] sizeToFit];
  [(UIButton *)[(THiOSStudyViewController *)self optionsButton] setPointerInteractionEnabled:1];
  [-[THiOSStudyViewController view](self "view")];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v4 viewWillAppear:appear];
  [(THiOSStudyViewController *)self p_updateDarkMode];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v3 viewWillLayoutSubviews];
  [(THiOSStudyViewController *)self p_layoutViewsWithDuration:0.0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v8 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  noteCardsController = self->_noteCardsController;
  view = [(THiOSStudyViewController *)self view];
  if (window)
  {
    [(THNoteCardsController *)noteCardsController attachToView:view];
    [-[THiOSStudyViewController view](self "view")];
  }

  else
  {
    [(THNoteCardsController *)noteCardsController detachFromView:view];
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  v4.receiver = self;
  v4.super_class = THiOSStudyViewController;
  result = [(THiOSStudyViewController *)&v4 overrideUserInterfaceStyle];
  if (!result)
  {
    objc_opt_class();
    [(THiOSStudyViewController *)self theme];
    result = TSUDynamicCast();
    if (result)
    {
      return [result userInterfaceStyle];
    }
  }

  return result;
}

- (void)p_updateFlipGlyphWithTouches:(id)touches
{
  if ([touches count] == &dword_0 + 1)
  {
    noteCardsController = self->_noteCardsController;
    [objc_msgSend(touches "anyObject")];
    v6 = [(THNoteCardsController *)noteCardsController isPointInsideTopCardFlipGlyph:?];
    v7 = self->_noteCardsController;

    [(THNoteCardsController *)v7 handleTopCardFlipAffordancePressed:v6];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [(THiOSStudyViewController *)self p_updateFlipGlyphWithTouches:?];
  v7.receiver = self;
  v7.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v7 touchesBegan:began withEvent:event];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [(THiOSStudyViewController *)self p_updateFlipGlyphWithTouches:?];
  v7.receiver = self;
  v7.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v7 touchesMoved:moved withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(THNoteCardsController *)self->_noteCardsController handleTopCardFlipAffordancePressed:0];
  v7.receiver = self;
  v7.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v7 touchesEnded:ended withEvent:event];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(THNoteCardsController *)self->_noteCardsController handleTopCardFlipAffordancePressed:0];
  v7.receiver = self;
  v7.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v7 touchesCancelled:cancelled withEvent:event];
}

- (int64_t)interfaceOrientation
{
  v2 = [-[THiOSStudyViewController bc_windowForViewController](self "bc_windowForViewController")];

  return [v2 interfaceOrientation];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v13.receiver = self;
  v13.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v13 viewWillTransitionToSize:size.width withTransitionCoordinator:size.height];
  if (coordinator)
  {
    [coordinator targetTransform];
    IsIdentity = CGAffineTransformIsIdentity(&v12);
    v12.a = 0.0;
    *&v12.b = &v12;
    *&v12.c = 0x2020000000;
    LOBYTE(v12.d) = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_DE038;
    v10[3] = &unk_45D320;
    v11 = !IsIdentity;
    v10[4] = self;
    v10[5] = &v12;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_DE0C0;
    v8[3] = &unk_45D320;
    v9 = !IsIdentity;
    v8[4] = self;
    v8[5] = &v12;
    v7 = [coordinator animateAlongsideTransition:v10 completion:v8];
    *(*&v12.b + 24) = v7;
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    [0 transitionDuration];
    [(THiOSStudyViewController *)self p_layoutViewsWithDuration:?];
  }
}

- (void)p_updateDarkMode
{
  v3 = [(THiOSStudyViewController *)self overrideUserInterfaceStyle]== &dword_0 + 2;
  noteCardsController = self->_noteCardsController;

  [(THNoteCardsController *)noteCardsController setDarkMode:v3];
}

- (void)setTheme:(id)theme
{
  theme = self->_theme;
  if (theme)
  {

    self->_theme = 0;
  }

  self->_theme = theme;

  [(THiOSStudyViewController *)self p_updateDarkMode];
}

- (void)done:(id)done
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_DE294;
  v6 = &unk_45AE00;
  selfCopy = self;
  if ([(THiOSStudyViewController *)self optionsPopoverController])
  {
    [(THiOSStudyViewController *)self dismissStudyOptionsMenu:0 completion:v4];
  }

  else
  {
    v5(v4);
  }
}

- (void)showOptions:(id)options
{
  if ([(THiOSStudyViewController *)self optionsPopoverController])
  {

    [(THiOSStudyViewController *)self dismissStudyOptionsMenu:1 completion:0];
  }

  else
  {
    v5 = [[THStudyOptionsPopoverController alloc] initWithOptions:[(THNoteCardsController *)self->_noteCardsController studyOptions]];
    [(THStudyOptionsPopoverController *)v5 setOverrideUserInterfaceStyle:[(THiOSStudyViewController *)self overrideUserInterfaceStyle]];
    [(THiOSStudyViewController *)self setOptionsPopoverController:v5];
    objc_opt_class();
    [IMTheme themeWithIdentifier:kIMThemeIdentifierDynamicTheme];
    [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] setTheme:TSUDynamicCast()];
    [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] setDelegate:self];
    v9 = [[UINavigationController alloc] initWithRootViewController:{-[THiOSStudyViewController optionsPopoverController](self, "optionsPopoverController")}];
    [v9 setOverrideUserInterfaceStyle:{-[THiOSStudyViewController overrideUserInterfaceStyle](self, "overrideUserInterfaceStyle")}];
    [v9 setNavigationBarHidden:0];
    [v9 setToolbarHidden:1];
    [v9 setDelegate:{-[THiOSStudyViewController optionsPopoverController](self, "optionsPopoverController")}];
    [v9 setModalPresentationStyle:7];
    popoverPresentationController = [v9 popoverPresentationController];
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      [popoverPresentationController setBarButtonItem:v7];
    }

    else
    {
      [popoverPresentationController setSourceView:{objc_msgSend(options, "superview")}];
      [options frame];
      [popoverPresentationController setSourceRect:?];
    }

    [popoverPresentationController setPermittedArrowDirections:15];
    [popoverPresentationController setDelegate:self];
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed:"];
    [-[THStudyOptionsPopoverController navigationItem](-[THiOSStudyViewController optionsPopoverController](self "optionsPopoverController")];
    [popoverPresentationController setPassthroughViews:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", -[THiOSStudyViewController optionsButton](self, "optionsButton"), -[THiOSStudyViewController doneButton](self, "doneButton"), 0)}];
    [popoverPresentationController bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v5];
    [(THiOSStudyViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentedViewController = [presentation presentedViewController];
  if (presentedViewController == [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] navigationController])
  {
    navigationItem = [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] navigationItem];

    [navigationItem setRightBarButtonItem:0 animated:0];
  }
}

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  presentedViewController = [controller presentedViewController];
  if (presentedViewController == [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] navigationController])
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed:"];
    [-[THStudyOptionsPopoverController navigationItem](-[THiOSStudyViewController optionsPopoverController](self "optionsPopoverController")];
  }

  return 0;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  if (presentedViewController == [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] navigationController])
  {

    [(THiOSStudyViewController *)self dismissStudyOptionsMenu:1 completion:0];
  }
}

- (int64_t)p_styleForPresentation:(id)presentation
{
  if (presentation)
  {
    im_isCompactWidth = [presentation horizontalSizeClass] == &dword_0 + 1;
    im_isCompactHeight = [presentation verticalSizeClass] == &dword_0 + 1;
  }

  else
  {
    im_isCompactWidth = [(THiOSStudyViewController *)self im_isCompactWidth];
    im_isCompactHeight = [(THiOSStudyViewController *)self im_isCompactHeight];
  }

  v7 = 7;
  if (im_isCompactHeight)
  {
    v7 = 1;
  }

  if (im_isCompactWidth)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  presentedViewController = [controller presentedViewController];
  if (presentedViewController != [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] navigationController])
  {
    return 7;
  }

  return [(THiOSStudyViewController *)self p_styleForPresentation:0];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  presentedViewController = [controller presentedViewController];
  if (presentedViewController != [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] navigationController])
  {
    return 7;
  }

  return [(THiOSStudyViewController *)self p_styleForPresentation:collection];
}

- (void)dismissStudyOptionsMenu:(BOOL)menu completion:(id)completion
{
  [(THStudyOptionsPopoverController *)[(THiOSStudyViewController *)self optionsPopoverController] dismissViewControllerAnimated:menu completion:completion];

  [(THiOSStudyViewController *)self setOptionsPopoverController:0];
}

- (void)updateWithNavigationUnit:(id)unit title:(id)title
{
  [(THNoteCardsController *)self->_noteCardsController updateWithNavigationUnit:unit contentNode:0];
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setText:title];
}

- (void)p_stageTransitionAnimationIn:(BOOL)in
{
  inCopy = in;
  if (in)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(UIView *)[(THiOSStudyViewController *)self backdrop] setAlpha:v5];
  [(UIButton *)[(THiOSStudyViewController *)self optionsButton] setAlpha:v5];
  [(UIButton *)[(THiOSStudyViewController *)self doneButton] setAlpha:v5];
  [(UILabel *)[(THiOSStudyViewController *)self titleLabel] setAlpha:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  noteCards = [(THNoteCardsController *)self->_noteCardsController noteCards];
  v7 = [(NSArray *)noteCards countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    if (inCopy)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = -2.0;
    }

    v10 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(noteCards);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [v12 setFlownOut:inCopy direction:{v9, 0.0}];
        [v12 updateTransformAnimated:0 duration:0.0];
      }

      v8 = [(NSArray *)noteCards countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  self->_isTransitioningInOut = 1;
}

- (void)transitionInWithCompletion:(id)completion
{
  [(THiOSStudyViewController *)self p_stageTransitionAnimationIn:1];

  [(THiOSStudyViewController *)self p_animateTransitionInWithCompletion:completion];
}

- (void)p_animateTransitionInWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_DEC4C;
  v9[3] = &unk_45AE00;
  v9[4] = self;
  [UIView animateWithDuration:0x10000 delay:v9 options:0 animations:0.67 completion:0.0];
  v7[5] = completion;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_DEC7C;
  v8[3] = &unk_45AE00;
  v8[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_DECE0;
  v7[3] = &unk_45D348;
  v7[4] = self;
  [UIView animateWithDuration:0x20000 delay:v8 options:v7 animations:0.33 completion:0.67];
  v5 = dispatch_time(0, 400000005);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DED24;
  block[3] = &unk_45AE00;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)transitionOutWithCompletion:(id)completion
{
  [(THiOSStudyViewController *)self p_stageTransitionAnimationIn:0];

  [(THiOSStudyViewController *)self p_animateTransitionOutWithCompletion:completion];
}

- (void)p_animateTransitionOutWithCompletion:(id)completion
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  noteCards = [(THNoteCardsController *)self->_noteCardsController noteCards];
  v6 = [(NSArray *)noteCards countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(noteCards);
        }

        [*(*(&v13 + 1) + 8 * v9) setFlownOut:1 direction:1 animated:-2.0 duration:{0.0, 0.670000017}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)noteCards countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_DF0BC;
  v12[3] = &unk_45AE00;
  v12[4] = self;
  [UIView animateWithDuration:0x10000 delay:v12 options:0 animations:0.33 completion:0.0];
  v10[5] = completion;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DF120;
  v11[3] = &unk_45AE00;
  v11[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_DF150;
  v10[3] = &unk_45D348;
  v10[4] = self;
  [UIView animateWithDuration:0x20000 delay:v11 options:v10 animations:0.67 completion:0.33];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THiOSStudyViewController;
  [(THiOSStudyViewController *)&v4 viewDidAppear:appear];
  [(THiOSStudyViewController *)self becomeFirstResponder];
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  if (ended == 1 && [(THStudyOptions *)[(THNoteCardsController *)self->_noteCardsController studyOptions:1] shuffle])
  {
    noteCardsController = self->_noteCardsController;

    [(THNoteCardsController *)noteCardsController shuffleCards];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  [touch locationInView:{-[THiOSStudyViewController view](self, "view")}];
  v7 = v6;
  v9 = v8;
  v10 = [(THNoteCardsController *)self->_noteCardsController isTopCardAtPoint:?];
  v11 = [(THNoteCardsController *)self->_noteCardsController isBottomCardAtPoint:v7, v9];
  v12 = v11;
  if (self->_tapGR != recognizer)
  {
    if (self->_panGR == recognizer || self->_flickGR == recognizer)
    {
      canFlipTopCard = v10 | v11;
      return canFlipTopCard & 1;
    }

LABEL_13:
    canFlipTopCard = 0;
    return canFlipTopCard & 1;
  }

  if (v10)
  {
    canFlipTopCard = [(THNoteCardsController *)self->_noteCardsController canFlipTopCard];
    if (canFlipTopCard & 1) != 0 || ((v12 ^ 1))
    {
      return canFlipTopCard & 1;
    }
  }

  else if (!v11)
  {
    goto LABEL_13;
  }

  noteCardsController = self->_noteCardsController;

  return [(THNoteCardsController *)noteCardsController showingMultipleCards];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_panGR == recognizer)
  {
    [gestureRecognizer view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)p_layoutViewsWithDuration:(double)duration
{
  [(THiOSStudyViewController *)self p_cardEdgeInsets];
  noteCardsController = self->_noteCardsController;
  [-[THiOSStudyViewController view](self "view")];
  [THNoteCardsController updateFrame:"updateFrame:insets:animated:duration:" insets:duration != 0.0 animated:*&duration duration:?];
  [-[THiOSStudyViewController view](self "view")];
  TSDRectGetMaxPoint();
  TSDPointLength();
  [-[THiOSStudyViewController view](self "view")];
  TSDCenterOfRect();
  TSDRectWithCenterAndSize();
  [(UIView *)[(THiOSStudyViewController *)self backdrop] setFrame:v6, v7, v8, v9];
  if ([(THiOSStudyViewController *)self im_isCompactWidth])
  {
    if ([(THiOSStudyViewController *)self im_isCompactHeight])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 1;
  }

  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setNumberOfLines:v10];
}

- (void)p_setupGestureRecognizers
{
  v3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"p_handlePanGesture:"];
  self->_panGR = v3;
  [(UIPanGestureRecognizer *)v3 setDelegate:self];
  [(UIPanGestureRecognizer *)self->_panGR setMinimumNumberOfTouches:1];
  [(UIPanGestureRecognizer *)self->_panGR setMaximumNumberOfTouches:1];
  [-[THiOSStudyViewController view](self "view")];
  v4 = [[THFlickGestureRecognizer alloc] initWithTarget:self action:"p_handleFlickGesture:"];
  self->_flickGR = v4;
  [(THFlickGestureRecognizer *)v4 setDelegate:self];
  [(THFlickGestureRecognizer *)self->_flickGR setDelaysTouchesBegan:1];
  [-[THiOSStudyViewController view](self "view")];
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"p_handleTapGesture:"];
  self->_tapGR = v5;
  [(UITapGestureRecognizer *)v5 setDelegate:self];
  [(UITapGestureRecognizer *)self->_tapGR setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_tapGR setNumberOfTouchesRequired:1];
  [(UITapGestureRecognizer *)self->_tapGR setCancelsTouchesInView:0];
  [(UITapGestureRecognizer *)self->_tapGR setDelaysTouchesEnded:0];
  [-[THiOSStudyViewController view](self "view")];
  [(UIPanGestureRecognizer *)self->_panGR requireGestureRecognizerToFail:self->_flickGR];
  v6 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"p_handlePanGesture:"];
  self->_indirectPanGR = v6;
  [(UIPanGestureRecognizer *)v6 setAllowedTouchTypes:&off_49D920];
  [(UIPanGestureRecognizer *)self->_indirectPanGR setAllowedScrollTypesMask:3];
  [(UIPanGestureRecognizer *)self->_indirectPanGR setDelegate:self];
  [(UIPanGestureRecognizer *)self->_indirectPanGR setCancelsTouchesInView:0];
  view = [(THiOSStudyViewController *)self view];
  indirectPanGR = self->_indirectPanGR;

  [view addGestureRecognizer:indirectPanGR];
}

- (void)p_handleTapGesture:(id)gesture
{
  if ([gesture state] == &dword_0 + 3)
  {
    [gesture locationInView:{-[THiOSStudyViewController view](self, "view")}];
    v6 = v5;
    v8 = v7;
    v9 = [(THNoteCardsController *)self->_noteCardsController isTopCardAtPoint:?];
    noteCardsController = self->_noteCardsController;
    if (v9)
    {

      [(THNoteCardsController *)noteCardsController flipTopCard:v10];
    }

    else if ([(THNoteCardsController *)noteCardsController isBottomCardAtPoint:v6, v8])
    {
      v13 = self->_noteCardsController;

      [(THNoteCardsController *)v13 animateBottomCardToTopInDirection:1.0, 0.0];
    }
  }
}

- (void)p_handlePanGesture:(id)gesture
{
  state = [gesture state];
  if (state == &dword_0 + 1)
  {
    [gesture locationInView:{-[THiOSStudyViewController view](self, "view")}];
    self->_dragStartLocation.x = v6;
    self->_dragStartLocation.y = v7;
  }

  else if ((state - 1) > 1)
  {
    if ((state - 3) <= 1)
    {
      if (self->_dragging)
      {
        noteCardsController = self->_noteCardsController;
        [gesture direction];
        [(THNoteCardsController *)noteCardsController endDragInDirection:?];
      }

      self->_dragging = 0;
    }

    return;
  }

  [gesture translationInView:{-[THiOSStudyViewController view](self, "view")}];
  v9 = v8;
  v11 = v10;
  if ([(THNoteCardsController *)self->_noteCardsController isTopCardAtPoint:self->_dragStartLocation.x, self->_dragStartLocation.y])
  {
    topScrollView = [(THNoteCardsController *)self->_noteCardsController topScrollView];
    if ([topScrollView canScroll])
    {
      if (fabs(v9) <= 50.0)
      {
        return;
      }

      [topScrollView contentOffset];
      v14 = v13;
      v16 = v15;
      [topScrollView setScrollEnabled:0];
      [topScrollView setContentOffset:{v14, v16}];
    }
  }

  if (!self->_dragging)
  {
    self->_dragStartOffset.x = v9;
    self->_dragStartOffset.y = v11;
    v17 = self->_noteCardsController;
    TSDAddPoints();
    [(THNoteCardsController *)v17 beginDragAtPoint:?];
    self->_dragging = 1;
  }

  v18 = self->_noteCardsController;
  TSDSubtractPoints();

  [(THNoteCardsController *)v18 setDragOffset:?];
}

- (void)p_handleFlickGesture:(id)gesture
{
  if ([gesture state] == &dword_0 + 3)
  {
    [gesture translationInView:{-[THiOSStudyViewController view](self, "view")}];
    v6 = v5;
    v8 = v7;
    [gesture initialLocationInView:{-[THiOSStudyViewController view](self, "view")}];
    v10 = v9;
    v12 = v11;
    v13 = [(THNoteCardsController *)self->_noteCardsController isTopCardAtPoint:?];
    noteCardsController = self->_noteCardsController;
    if (v13)
    {

      [(THNoteCardsController *)noteCardsController animateTopCardToBottomInDirection:v6, v8];
    }

    else if ([(THNoteCardsController *)noteCardsController isBottomCardAtPoint:v10, v12])
    {
      v15 = self->_noteCardsController;

      [(THNoteCardsController *)v15 animateBottomCardToTopInDirection:v6, v8];
    }
  }
}

@end