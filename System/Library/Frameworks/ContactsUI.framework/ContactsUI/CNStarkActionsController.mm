@interface CNStarkActionsController
- (BOOL)_isMessagesDefaultAppImpl;
- (CNStarkActionsController)initWithContact:(id)contact;
- (UINavigationControllerDelegate)phoneNavigationControllerDelegate;
- (UIViewController)disambiguationViewController;
- (id)viewForActionType:(id)type;
- (void)actionViewTapped:(id)tapped;
- (void)addForwardingDelegate;
- (void)contactQuickActionsController:(id)controller dismissDisambiguationViewController:(id)viewController forActionType:(id)type;
- (void)contactQuickActionsController:(id)controller presentDisambiguationViewController:(id)viewController forActionType:(id)type;
- (void)forwardDelegateForNavigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)removeForwardingDelegate;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)updateViews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNStarkActionsController

- (void)resetLayoutConstraints
{
  view = [(CNStarkActionsController *)self view];
  layoutConstraints = [(CNStarkActionsController *)self layoutConstraints];
  [view removeConstraints:layoutConstraints];

  [(CNStarkActionsController *)self setLayoutConstraints:0];
  view2 = [(CNStarkActionsController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  v5.receiver = self;
  v5.super_class = CNStarkActionsController;
  [(CNStarkActionsController *)&v5 updateViewConstraints];
  v3 = *MEMORY[0x1E6996530];
  layoutConstraints = [(CNStarkActionsController *)self layoutConstraints];
  LODWORD(v3) = (*(v3 + 16))(v3, layoutConstraints);

  if (v3)
  {
    [(CNStarkActionsController *)self setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v82[4] = *MEMORY[0x1E69E9840];
  [(CNStarkActionsController *)self willTransitionToBoundsWidth];
  if (v3)
  {
    [(CNStarkActionsController *)self willTransitionToBoundsWidth];
    v5 = v4;
  }

  else
  {
    view = [(CNStarkActionsController *)self view];
    [view bounds];
    v5 = v7;
  }

  [(CNStarkActionsController *)self setWillTransitionToBoundsWidth:0.0];
  v8 = (v5 + -150.0) * 0.25 + 50.0;
  messageActionView = [(CNStarkActionsController *)self messageActionView];
  topAnchor = [messageActionView topAnchor];
  view2 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v82[0] = v61;
  messageActionView2 = [(CNStarkActionsController *)self messageActionView];
  bottomAnchor = [messageActionView2 bottomAnchor];
  view3 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v82[1] = v43;
  messageActionView3 = [(CNStarkActionsController *)self messageActionView];
  centerXAnchor = [messageActionView3 centerXAnchor];
  view4 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide3 centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:-v8];
  v82[2] = v14;
  messageActionView4 = [(CNStarkActionsController *)self messageActionView];
  widthAnchor = [messageActionView4 widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:v8];
  v82[3] = v17;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];

  callActionView = [(CNStarkActionsController *)self callActionView];
  topAnchor3 = [callActionView topAnchor];
  view5 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide4 topAnchor];
  v59 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v81[0] = v59;
  callActionView2 = [(CNStarkActionsController *)self callActionView];
  bottomAnchor3 = [callActionView2 bottomAnchor];
  view6 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide5 = [view6 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide5 bottomAnchor];
  v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v81[1] = v41;
  callActionView3 = [(CNStarkActionsController *)self callActionView];
  centerXAnchor3 = [callActionView3 centerXAnchor];
  view7 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide6 = [view7 safeAreaLayoutGuide];
  centerXAnchor4 = [safeAreaLayoutGuide6 centerXAnchor];
  v23 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v81[2] = v23;
  callActionView4 = [(CNStarkActionsController *)self callActionView];
  widthAnchor2 = [callActionView4 widthAnchor];
  v26 = [widthAnchor2 constraintEqualToConstant:v8];
  v81[3] = v26;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:4];

  directionsActionView = [(CNStarkActionsController *)self directionsActionView];
  topAnchor5 = [directionsActionView topAnchor];
  view8 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide7 = [view8 safeAreaLayoutGuide];
  topAnchor6 = [safeAreaLayoutGuide7 topAnchor];
  v60 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v80[0] = v60;
  directionsActionView2 = [(CNStarkActionsController *)self directionsActionView];
  bottomAnchor5 = [directionsActionView2 bottomAnchor];
  view9 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide8 = [view9 safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide8 bottomAnchor];
  v42 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v80[1] = v42;
  directionsActionView3 = [(CNStarkActionsController *)self directionsActionView];
  centerXAnchor5 = [directionsActionView3 centerXAnchor];
  view10 = [(CNStarkActionsController *)self view];
  safeAreaLayoutGuide9 = [view10 safeAreaLayoutGuide];
  centerXAnchor6 = [safeAreaLayoutGuide9 centerXAnchor];
  v32 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6 constant:v8];
  v80[2] = v32;
  directionsActionView4 = [(CNStarkActionsController *)self directionsActionView];
  widthAnchor3 = [directionsActionView4 widthAnchor];
  v35 = [widthAnchor3 constraintEqualToConstant:v8];
  v80[3] = v35;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];

  v79[0] = v78;
  v79[1] = v77;
  v79[2] = v40;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
  _cn_flatten = [v36 _cn_flatten];
  [(CNStarkActionsController *)self setLayoutConstraints:_cn_flatten];

  view11 = [(CNStarkActionsController *)self view];
  layoutConstraints = [(CNStarkActionsController *)self layoutConstraints];
  [view11 addConstraints:layoutConstraints];
}

- (BOOL)_isMessagesDefaultAppImpl
{
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  applicationWorkspace = [v2 applicationWorkspace];
  v4 = [applicationWorkspace defaultApplicationForDefaultAppCategory:0];

  bundleIdentifier = [v4 bundleIdentifier];
  LOBYTE(applicationWorkspace) = [bundleIdentifier isEqualToString:*MEMORY[0x1E695C130]];

  return applicationWorkspace;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CNStarkActionsController;
  [(CNStarkActionsController *)&v5 viewDidLoad];
  [(CNStarkActionsController *)self setupViews];
  [(CNStarkActionsController *)self updateViews];
  if (![(CNStarkActionsController *)self isMessagesDefaultApp])
  {
    v3 = [(CNContactQuickActionsController *)self->_quickActionsController defaultTitleForActionType:*MEMORY[0x1E695C178]];
    messageActionView = [(CNStarkActionsController *)self messageActionView];
    [messageActionView setTitle:v3];
  }
}

- (void)setupViews
{
  messageActionView = [(CNStarkActionsController *)self messageActionView];
  [messageActionView setTranslatesAutoresizingMaskIntoConstraints:0];

  callActionView = [(CNStarkActionsController *)self callActionView];
  [callActionView setTranslatesAutoresizingMaskIntoConstraints:0];

  directionsActionView = [(CNStarkActionsController *)self directionsActionView];
  [directionsActionView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(CNStarkActionsController *)self view];
  messageActionView2 = [(CNStarkActionsController *)self messageActionView];
  [view addSubview:messageActionView2];

  view2 = [(CNStarkActionsController *)self view];
  callActionView2 = [(CNStarkActionsController *)self callActionView];
  [view2 addSubview:callActionView2];

  view3 = [(CNStarkActionsController *)self view];
  directionsActionView2 = [(CNStarkActionsController *)self directionsActionView];
  [view3 addSubview:directionsActionView2];
}

- (void)updateViews
{
  contact = [(CNStarkActionsController *)self contact];
  quickActionsController = [(CNStarkActionsController *)self quickActionsController];
  [quickActionsController setContact:contact];
}

- (UINavigationControllerDelegate)phoneNavigationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_phoneNavigationControllerDelegate);

  return WeakRetained;
}

- (UIViewController)disambiguationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_disambiguationViewController);

  return WeakRetained;
}

- (void)removeForwardingDelegate
{
  disambiguationViewController = [(CNStarkActionsController *)self disambiguationViewController];
  navigationController = [disambiguationViewController navigationController];

  phoneNavigationControllerDelegate = [(CNStarkActionsController *)self phoneNavigationControllerDelegate];
  [navigationController setDelegate:phoneNavigationControllerDelegate];

  [(CNStarkActionsController *)self setPhoneNavigationControllerDelegate:0];
}

- (void)forwardDelegateForNavigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  phoneNavigationControllerDelegate = [(CNStarkActionsController *)self phoneNavigationControllerDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    phoneNavigationControllerDelegate2 = [(CNStarkActionsController *)self phoneNavigationControllerDelegate];
    [phoneNavigationControllerDelegate2 navigationController:controllerCopy willShowViewController:viewControllerCopy animated:animatedCopy];
  }
}

- (void)addForwardingDelegate
{
  navigationController = [(CNStarkActionsController *)self navigationController];
  delegate = [navigationController delegate];
  [(CNStarkActionsController *)self setPhoneNavigationControllerDelegate:delegate];

  navigationController2 = [(CNStarkActionsController *)self navigationController];
  [navigationController2 setDelegate:self];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  [CNStarkActionsController forwardDelegateForNavigationController:"forwardDelegateForNavigationController:willShowViewController:animated:" willShowViewController:controller animated:?];
  disambiguationViewController = [(CNStarkActionsController *)self disambiguationViewController];

  if (disambiguationViewController)
  {
    disambiguationViewController2 = [(CNStarkActionsController *)self disambiguationViewController];

    if (disambiguationViewController2 != viewControllerCopy)
    {
      [(CNStarkActionsController *)self removeForwardingDelegate];
      quickActionsController = [(CNStarkActionsController *)self quickActionsController];
      disambiguationViewController3 = [(CNStarkActionsController *)self disambiguationViewController];
      [quickActionsController disambiguationViewControllerDismissedExternally:disambiguationViewController3];

      [(CNStarkActionsController *)self setDisambiguationViewController:0];
    }
  }
}

- (void)contactQuickActionsController:(id)controller dismissDisambiguationViewController:(id)viewController forActionType:(id)type
{
  viewControllerCopy = viewController;
  presentingViewController = [viewControllerCopy presentingViewController];

  if (presentingViewController == self)
  {
    [(CNStarkActionsController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController = [viewControllerCopy navigationController];
    if (navigationController)
    {
      v8 = navigationController;
      navigationController2 = [viewControllerCopy navigationController];
      topViewController = [navigationController2 topViewController];

      if (topViewController == viewControllerCopy)
      {
        navigationController3 = [viewControllerCopy navigationController];
        v12 = [navigationController3 popViewControllerAnimated:1];
      }
    }
  }

  [(CNStarkActionsController *)self removeForwardingDelegate];
  [(CNStarkActionsController *)self setDisambiguationViewController:0];
}

- (void)contactQuickActionsController:(id)controller presentDisambiguationViewController:(id)viewController forActionType:(id)type
{
  viewControllerCopy = viewController;
  [(CNStarkActionsController *)self addForwardingDelegate];
  [(CNStarkActionsController *)self showViewController:viewControllerCopy sender:0];
  [(CNStarkActionsController *)self setDisambiguationViewController:viewControllerCopy];
}

- (id)viewForActionType:(id)type
{
  v14[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  messageActionView = [(CNStarkActionsController *)self messageActionView];
  v14[0] = messageActionView;
  callActionView = [(CNStarkActionsController *)self callActionView];
  v14[1] = callActionView;
  directionsActionView = [(CNStarkActionsController *)self directionsActionView];
  v14[2] = directionsActionView;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CNStarkActionsController_viewForActionType___block_invoke;
  v12[3] = &unk_1E74E5450;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = [v8 _cn_firstObjectPassingTest:v12];

  return v10;
}

uint64_t __46__CNStarkActionsController_viewForActionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)actionViewTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = *MEMORY[0x1E6996568];
  v9 = tappedCopy;
  actionType = [tappedCopy actionType];
  LOBYTE(v5) = (*(v5 + 16))(v5, actionType);

  if ((v5 & 1) == 0)
  {
    quickActionsController = [(CNStarkActionsController *)self quickActionsController];
    actionType2 = [v9 actionType];
    [quickActionsController executeTapBehaviorForActionType:actionType2];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  width = size.width;
  v9.receiver = self;
  v9.super_class = CNStarkActionsController;
  [(CNStarkActionsController *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  view = [(CNStarkActionsController *)self view];
  [view bounds];
  v8 = v7;

  if (width != v8)
  {
    [(CNStarkActionsController *)self setWillTransitionToBoundsWidth:width];
    [(CNStarkActionsController *)self resetLayoutConstraints];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CNStarkActionsController;
  [(CNStarkActionsController *)&v4 traitCollectionDidChange:change];
  [(CNStarkActionsController *)self resetLayoutConstraints];
}

- (CNStarkActionsController)initWithContact:(id)contact
{
  v26[3] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v24.receiver = self;
  v24.super_class = CNStarkActionsController;
  v6 = [(CNStarkActionsController *)&v24 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    v7->_isMessagesDefaultApp = [(CNStarkActionsController *)v7 _isMessagesDefaultAppImpl];
    if ([(CNStarkActionsController *)v7 isMessagesDefaultApp])
    {
      v8 = *MEMORY[0x1E695C178];
      v9 = *MEMORY[0x1E695C150];
      v26[0] = *MEMORY[0x1E695C178];
      v26[1] = v9;
      v10 = *MEMORY[0x1E695C160];
      v26[2] = *MEMORY[0x1E695C160];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
    }

    else
    {
      v9 = *MEMORY[0x1E695C150];
      v10 = *MEMORY[0x1E695C160];
      v25[0] = *MEMORY[0x1E695C150];
      v25[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v8 = *MEMORY[0x1E695C178];
    }

    v12 = +[CNContactQuickActionsDisambiguationMenuPresentation modalPresentation];
    v13 = [[CNContactQuickActionsController alloc] initWithActionTypes:v11 contactQuickActionViewContainer:v7 disambiguationMenuPresentation:v12];
    quickActionsController = v7->_quickActionsController;
    v7->_quickActionsController = v13;

    v15 = +[CNUINavigationListStyleProvider carPlayStyle];
    [(CNContactQuickActionsController *)v7->_quickActionsController setNavigationListStyle:v15];

    [(CNContactQuickActionsController *)v7->_quickActionsController setIsCarPlay:1];
    [(CNContactQuickActionsController *)v7->_quickActionsController setDelegate:v7];
    v16 = [CNStarkActionView quickActionButtonWithDelegate:v7];
    messageActionView = v7->_messageActionView;
    v7->_messageActionView = v16;

    [(CNStarkActionView *)v7->_messageActionView setActionType:v8];
    v18 = [CNStarkActionView quickActionButtonWithDelegate:v7];
    callActionView = v7->_callActionView;
    v7->_callActionView = v18;

    [(CNStarkActionView *)v7->_callActionView setActionType:v9];
    v20 = [CNStarkActionView quickActionButtonWithDelegate:v7];
    directionsActionView = v7->_directionsActionView;
    v7->_directionsActionView = v20;

    [(CNStarkActionView *)v7->_directionsActionView setActionType:v10];
    v22 = v7;
  }

  return v7;
}

@end