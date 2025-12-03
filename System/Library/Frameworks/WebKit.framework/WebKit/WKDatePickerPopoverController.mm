@interface WKDatePickerPopoverController
- (WKDatePickerPopoverController)initWithCalendarView:(id)view selectionWeekOfYear:(id)year delegate:(id)delegate;
- (WKDatePickerPopoverController)initWithDatePicker:(id)picker delegate:(id)delegate;
- (id).cxx_construct;
- (void)_dispatchPopoverControllerDidDismissIfNeeded;
- (void)_scaleDownToFitHeightIfNeeded;
- (void)assertAccessoryViewCanBeHitTestedForTesting;
- (void)dismissDatePickerAnimated:(BOOL)animated;
- (void)presentInView:(id)view sourceRect:(CGRect)rect completion:(id)completion;
- (void)resetDatePicker;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WKDatePickerPopoverController

- (WKDatePickerPopoverController)initWithDatePicker:(id)picker delegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = WKDatePickerPopoverController;
  v6 = [(WKDatePickerPopoverController *)&v10 init];
  if (v6)
  {
    v7 = [[WKDatePickerContentView alloc] initWithDatePicker:picker];
    m_ptr = v6->_contentView.m_ptr;
    v6->_contentView.m_ptr = v7;
    if (m_ptr)
    {
    }

    objc_storeWeak(&v6->_delegate, delegate);
    [(WKDatePickerPopoverController *)v6 setModalPresentationStyle:7];
    [-[WKDatePickerPopoverController popoverPresentationController](v6 "popoverPresentationController")];
  }

  return v6;
}

- (WKDatePickerPopoverController)initWithCalendarView:(id)view selectionWeekOfYear:(id)year delegate:(id)delegate
{
  v12.receiver = self;
  v12.super_class = WKDatePickerPopoverController;
  v8 = [(WKDatePickerPopoverController *)&v12 init];
  if (v8)
  {
    v9 = [[WKDatePickerContentView alloc] initWithCalendarView:view selectionWeekOfYear:year];
    m_ptr = v8->_contentView.m_ptr;
    v8->_contentView.m_ptr = v9;
    if (m_ptr)
    {
    }

    objc_storeWeak(&v8->_delegate, delegate);
    [(WKDatePickerPopoverController *)v8 setModalPresentationStyle:7];
    [-[WKDatePickerPopoverController popoverPresentationController](v8 "popoverPresentationController")];
  }

  return v8;
}

- (void)resetDatePicker
{
  Weak = objc_loadWeak(&self->_delegate);

  [Weak datePickerPopoverControllerDidReset:self];
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = WKDatePickerPopoverController;
  [(WKDatePickerPopoverController *)&v5 viewSafeAreaInsetsDidChange];
  if (_UISolariumEnabled())
  {
    [-[WKDatePickerPopoverController view](self "view")];
    [(NSLayoutConstraint *)[(WKDatePickerContentView *)self->_contentView.m_ptr toolbarLeadingConstraint] setConstant:v3 + 10.0];
    [-[WKDatePickerPopoverController view](self "view")];
    [(NSLayoutConstraint *)[(WKDatePickerContentView *)self->_contentView.m_ptr toolbarTrailingConstraint] setConstant:-10.0 - v4];
  }
}

- (void)assertAccessoryViewCanBeHitTestedForTesting
{
  accessoryView = [(WKDatePickerContentView *)self->_contentView.m_ptr accessoryView];
  viewIfLoaded = [(WKDatePickerPopoverController *)self viewIfLoaded];
  if (!accessoryView)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE89D4CLL);
  }

  v5 = viewIfLoaded;
  if (!viewIfLoaded || (-[UIToolbar bounds](accessoryView, "bounds"), [v5 convertRect:accessoryView fromView:?], x = v12.origin.x, y = v12.origin.y, width = v12.size.width, height = v12.size.height, MidX = CGRectGetMidX(v12), v13.origin.x = x, v13.origin.y = y, v13.size.width = width, v13.size.height = height, (superview = objc_msgSend(v5, "hitTest:withEvent:", 0, MidX, CGRectGetMidY(v13))) == 0))
  {
LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19DE89D14);
  }

  while (superview != accessoryView)
  {
    superview = [(UIToolbar *)superview superview];
    if (!superview)
    {
      goto LABEL_9;
    }
  }
}

- (void)dismissDatePickerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentingViewController = [(WKDatePickerPopoverController *)self presentingViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __59__WKDatePickerPopoverController_dismissDatePickerAnimated___block_invoke;
  v9[3] = &__block_descriptor_40_e8_32c72_ZTSKZ59__WKDatePickerPopoverController_dismissDatePickerAnimated__E3__1_e5_v8__0l;
  if (self)
  {
    selfCopy = self;
    selfCopy2 = self;
    selfCopy3 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v9];
  if (self)
  {
  }

  v8 = selfCopy2;
  selfCopy2 = 0;
  if (v8)
  {
  }
}

- (void)viewDidLoad
{
  v22[3] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = WKDatePickerPopoverController;
  [(WKDatePickerPopoverController *)&v20 viewDidLoad];
  [(WKDatePickerContentView *)self->_contentView.m_ptr setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  WebCore::localizedString(&v18, @"Reset Button Date/Time Context Menu", v4);
  v5 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v19, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v19 = &stru_1F1147748;
    v7 = &stru_1F1147748;
  }

  v9 = [v3 initWithTitle:v19 style:0 target:self action:sel_resetDatePicker];
  v10 = v19;
  v19 = 0;
  if (v10)
  {
  }

  v11 = v18;
  v18 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissDatePicker];
  v22[0] = v9;
  v22[1] = [MEMORY[0x1E69DC708] flexibleSpaceItem];
  v22[2] = v12;
  -[UIToolbar setItems:](-[WKDatePickerContentView accessoryView](self->_contentView.m_ptr, "accessoryView"), "setItems:", [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3]);
  [-[WKDatePickerPopoverController view](self "view")];
  v13 = [-[WKDatePickerContentView widthAnchor](self->_contentView.m_ptr "widthAnchor")];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  m_ptr = self->_untransformedContentWidthConstraint.m_ptr;
  self->_untransformedContentWidthConstraint.m_ptr = v14;
  if (m_ptr)
  {

    v14 = self->_untransformedContentWidthConstraint.m_ptr;
  }

  v17 = MEMORY[0x1E696ACD8];
  v21[0] = v14;
  v21[1] = [-[WKDatePickerContentView leadingAnchor](self->_contentView.m_ptr "leadingAnchor")];
  v21[2] = [-[WKDatePickerContentView trailingAnchor](self->_contentView.m_ptr "trailingAnchor")];
  v21[3] = [-[WKDatePickerContentView topAnchor](self->_contentView.m_ptr "topAnchor")];
  v21[4] = [-[WKDatePickerContentView bottomAnchor](self->_contentView.m_ptr "bottomAnchor")];
  [v17 activateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v21, 5)}];
  [(WKDatePickerContentView *)self->_contentView.m_ptr systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
  [(WKDatePickerPopoverController *)self setPreferredContentSize:?];
  if (v12)
  {
  }

  if (v9)
  {
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WKDatePickerPopoverController;
  [(WKDatePickerPopoverController *)&v3 viewWillLayoutSubviews];
  if (([(WKDatePickerPopoverController *)self isBeingDismissed]& 1) == 0)
  {
    [(WKDatePickerPopoverController *)self _scaleDownToFitHeightIfNeeded];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = WKDatePickerPopoverController;
  [(WKDatePickerPopoverController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  if (([(WKDatePickerPopoverController *)self isBeingPresented]& 1) == 0 && ([(WKDatePickerPopoverController *)self isBeingDismissed]& 1) == 0)
  {
    [(WKDatePickerPopoverController *)self dismissDatePickerAnimated:0];
  }
}

- (void)_scaleDownToFitHeightIfNeeded
{
  [-[WKDatePickerPopoverController view](self "view")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(WKDatePickerContentView *)self->_contentView.m_ptr frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  if (!CGRectIsEmpty(v44))
  {
    v45.origin.x = v12;
    v45.origin.y = v14;
    v45.size.width = v16;
    v45.size.height = v18;
    if (!CGRectIsEmpty(v45))
    {
      v46.origin.x = v12;
      v46.origin.y = v14;
      v46.size.width = v16;
      v46.size.height = v18;
      rect.origin.x = v12;
      Height = CGRectGetHeight(v46);
      v47.origin.x = v4;
      v47.origin.y = v6;
      v47.size.width = v8;
      v47.size.height = v10;
      if (Height > CGRectGetHeight(v47))
      {
        v48.origin.x = v4;
        v48.origin.y = v6;
        v48.size.width = v8;
        v48.size.height = v10;
        Width = CGRectGetWidth(v48);
        v49.origin.x = rect.origin.x;
        v49.origin.y = v14;
        v49.size.width = v16;
        v49.size.height = v18;
        v21 = Width / CGRectGetWidth(v49);
        v50.origin.x = v4;
        v50.origin.y = v6;
        v50.size.width = v8;
        v50.size.height = v10;
        v22 = CGRectGetHeight(v50);
        v51.origin.x = rect.origin.x;
        v51.origin.y = v14;
        v51.size.width = v16;
        v51.size.height = v18;
        v23 = v22 / CGRectGetHeight(v51);
        v24 = v23 >= v21 ? v21 : v23;
        if (v24 > 2.22044605e-16 && (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v52.origin.x = rect.origin.x;
          v52.origin.y = v14;
          v52.size.width = v16;
          v52.size.height = v18;
          v26 = v24 * CGRectGetWidth(v52);
          v53.origin.x = rect.origin.x;
          v53.origin.y = v14;
          v53.size.width = v16;
          v53.size.height = v18;
          v27 = CGRectGetHeight(v53);
          m_ptr = self->_contentView.m_ptr;
          *&rect.origin.y = MEMORY[0x1E69E9820];
          *&rect.size.width = 3221225472;
          *&rect.size.height = __62__WKDatePickerPopoverController__scaleDownToFitHeightIfNeeded__block_invoke;
          v35 = &__block_descriptor_88_e30__CGAffineTransform_dddddd_8__0l;
          v29 = v24 * v27;
          v36 = v26;
          v37 = v24 * v27;
          x = rect.origin.x;
          v39 = v14;
          v40 = v16;
          v41 = v18;
          v42 = v24;
          __62__WKDatePickerPopoverController__scaleDownToFitHeightIfNeeded__block_invoke(&rect.origin.y, &v43);
          [(WKDatePickerContentView *)m_ptr setTransform:&v43];
          [(WKDatePickerPopoverController *)self setPreferredContentSize:v26, v29];
          [(NSLayoutConstraint *)self->_untransformedContentWidthConstraint.m_ptr setActive:0];
          [(NSLayoutConstraint *)self->_transformedContentWidthConstraint.m_ptr setActive:0];
          v30 = [-[WKDatePickerContentView widthAnchor](self->_contentView.m_ptr "widthAnchor")];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          v33 = self->_transformedContentWidthConstraint.m_ptr;
          self->_transformedContentWidthConstraint.m_ptr = v31;
          if (v33)
          {

            v31 = self->_transformedContentWidthConstraint.m_ptr;
          }

          [(NSLayoutConstraint *)v31 setActive:1, *&rect.origin.x];
        }
      }
    }
  }
}

CGAffineTransform *__62__WKDatePickerPopoverController__scaleDownToFitHeightIfNeeded__block_invoke@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  memset(&v10, 0, sizeof(v10));
  v4 = *(a1 + 32);
  v5 = (v4 - CGRectGetWidth(*(a1 + 48))) * 0.5;
  v6 = *(a1 + 40);
  Height = CGRectGetHeight(*(a1 + 48));
  CGAffineTransformMakeTranslation(&v10, v5, (v6 - Height) * 0.5);
  v9 = v10;
  return CGAffineTransformScale(a2, &v9, *(a1 + 80), *(a1 + 80));
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = WKDatePickerPopoverController;
  [(WKDatePickerPopoverController *)&v4 viewDidDisappear:disappear];
  [(WKDatePickerPopoverController *)self _dispatchPopoverControllerDidDismissIfNeeded];
}

- (void)presentInView:(id)view sourceRect:(CGRect)rect completion:(id)completion
{
  _wk_viewControllerForFullScreenPresentation = [view _wk_viewControllerForFullScreenPresentation];
  v9 = _wk_viewControllerForFullScreenPresentation;
  if (_wk_viewControllerForFullScreenPresentation)
  {
    v10 = _wk_viewControllerForFullScreenPresentation;
  }

  while (1)
  {
    v59 = v9;
    if (![v9 isBeingDismissed])
    {
      break;
    }

    presentingViewController = [v9 presentingViewController];
    v9 = presentingViewController;
    if (presentingViewController)
    {
      v12 = presentingViewController;
    }

    if (v59)
    {
    }
  }

  if (v9)
  {
    self->_canSendPopoverControllerDidDismiss = 1;
    [view convertRect:objc_msgSend(view toCoordinateSpace:{"window"), rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [objc_msgSend(view "window")];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v61.origin.x = v14;
    v61.origin.y = v16;
    v61.size.width = v18;
    v61.size.height = v20;
    MinY = CGRectGetMinY(v61);
    v62.origin.x = v22;
    v62.origin.y = v24;
    v62.size.width = v26;
    v62.size.height = v28;
    v56 = CGRectGetMinY(v62);
    v63.origin.x = v14;
    v63.origin.y = v16;
    v63.size.width = v18;
    v63.size.height = v20;
    MinX = CGRectGetMinX(v63);
    v64.origin.x = v22;
    v64.origin.y = v24;
    v64.size.width = v26;
    v64.size.height = v28;
    v54 = CGRectGetMinX(v64);
    v65.origin.x = v22;
    v65.origin.y = v24;
    v65.size.width = v26;
    v65.size.height = v28;
    MaxX = CGRectGetMaxX(v65);
    v66.origin.x = v14;
    v66.origin.y = v16;
    v66.size.width = v18;
    v66.size.height = v20;
    v29 = CGRectGetMaxX(v66);
    [(WKDatePickerContentView *)self->_contentView.m_ptr estimatedMaximumPopoverSize];
    v31 = v30;
    v33 = v32;
    v52 = v29;
    popoverPresentationController = [(WKDatePickerPopoverController *)self popoverPresentationController];
    v67.origin.x = v22;
    v67.origin.y = v24;
    v67.size.width = v26;
    v67.size.height = v28;
    Width = CGRectGetWidth(v67);
    v68.origin.x = v22;
    v68.origin.y = v24;
    v68.size.width = v26;
    v68.size.height = v28;
    Height = CGRectGetHeight(v68);
    v69.origin.x = v22;
    v69.origin.y = v24;
    v69.size.width = v26;
    v69.size.height = v28;
    v37 = CGRectGetHeight(v69);
    v38 = v31 < Width && v33 < MinY - v56;
    v39 = 2;
    if (!v38)
    {
      v39 = 0;
    }

    if (v33 < Height && v31 < MinX - v54)
    {
      v39 |= 8uLL;
    }

    if (v33 < v37 && v31 < MaxX - v52)
    {
      v42 = v39 | 4;
    }

    else
    {
      v42 = v39;
    }

    [popoverPresentationController setPermittedArrowDirections:v42];
    [popoverPresentationController setSourceView:view];
    if (!v42)
    {
      [objc_msgSend(view "window")];
      [view convertRect:objc_msgSend(view fromCoordinateSpace:{"window"), v43, v44, v45, v46}];
      rect.origin.x = v47;
      rect.origin.y = v48;
      rect.size.width = v49;
      rect.size.height = v50;
    }

    [popoverPresentationController setSourceRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    [v59 presentViewController:self animated:1 completion:completion];
  }

  else
  {
    v51 = *(completion + 2);

    v51(completion);
  }
}

- (void)_dispatchPopoverControllerDidDismissIfNeeded
{
  canSendPopoverControllerDidDismiss = self->_canSendPopoverControllerDidDismiss;
  self->_canSendPopoverControllerDidDismiss = 0;
  if (canSendPopoverControllerDidDismiss)
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak datePickerPopoverControllerDidDismiss:self];
  }
}

- (id).cxx_construct
{
  *(self + 124) = 0;
  *(self + 125) = 0;
  *(self + 126) = 0;
  return self;
}

@end