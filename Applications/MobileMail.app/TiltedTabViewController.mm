@interface TiltedTabViewController
- (CATransform3D)tiltedTabView:(SEL)view expanded:(id)expanded layerTransformForItemAtIndex:(BOOL)index;
- (CGRect)tiltedTabView:(id)view frameForItemAtIndex:(unint64_t)index;
- (TiltedTabViewController)initWithInitialDockedStates:(id)states persistence:(id)persistence primaryViewController:(id)controller daemonInterface:(id)interface;
- (TiltedTabViewControllerDelegate)delegate;
- (UIEdgeInsets)tiltedTabView:(id)view expanded:(BOOL)expanded edgeInsetsForItemAtIndex:(unint64_t)index;
- (double)tiltedTabView:(id)view headerHeightForItemAtIndex:(unint64_t)index;
- (id)placeholderFactoryForState:(id)state;
- (id)tiltedTabView:(id)view snapshotViewForItemAtIndex:(unint64_t)index;
- (int64_t)numberOfItemsInTiltedTabView:(id)view;
- (void)dismiss;
- (void)dockContainerPersistence:(id)persistence observer:(id)observer updatedDockedStates:(id)states;
- (void)presentAnimated:(BOOL)animated;
- (void)tiltedTabView:(id)view closeItemAtIndex:(unint64_t)index;
- (void)tiltedTabView:(id)view didSelectItemAtIndex:(unint64_t)index;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TiltedTabViewController

- (TiltedTabViewController)initWithInitialDockedStates:(id)states persistence:(id)persistence primaryViewController:(id)controller daemonInterface:(id)interface
{
  statesCopy = states;
  persistenceCopy = persistence;
  controllerCopy = controller;
  interfaceCopy = interface;
  v23.receiver = self;
  v23.super_class = TiltedTabViewController;
  v14 = [(TiltedTabViewController *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_primaryViewController, controller);
    objc_storeStrong(&v15->_persistence, persistence);
    reverseObjectEnumerator = [statesCopy reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v18 = [allObjects mutableCopy];
    dockedStates = v15->_dockedStates;
    v15->_dockedStates = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    placeholderFactories = v15->_placeholderFactories;
    v15->_placeholderFactories = v20;

    objc_storeStrong(&v15->_daemonInterface, interface);
  }

  return v15;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TiltedTabViewController;
  [(TiltedTabViewController *)&v9 viewDidLoad];
  v3 = +[UIColor blackColor];
  view = [(TiltedTabViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [MFTiltedTabView alloc];
  view2 = [(TiltedTabViewController *)self view];
  [view2 bounds];
  v7 = [(MFTiltedTabView *)v5 initWithFrame:?];

  [(MFTiltedTabView *)v7 setReorderingEnabled:0];
  [(MFTiltedTabView *)v7 setDelegate:self];
  view3 = [(TiltedTabViewController *)self view];
  [view3 addSubview:v7];

  [(TiltedTabViewController *)self setTiltedTabView:v7];
}

- (void)viewWillLayoutSubviews
{
  view = [(TiltedTabViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tiltedTabView = [(TiltedTabViewController *)self tiltedTabView];
  [tiltedTabView setFrame:{v5, v7, v9, v11}];

  v13.receiver = self;
  v13.super_class = TiltedTabViewController;
  [(TiltedTabViewController *)&v13 viewWillLayoutSubviews];
}

- (void)presentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  tiltedTabView = [(TiltedTabViewController *)self tiltedTabView];
  [tiltedTabView setPresented:1 animated:animatedCopy];
}

- (void)dismiss
{
  tiltedTabView = [(TiltedTabViewController *)self tiltedTabView];
  [tiltedTabView setPresented:0 animated:0];

  tiltedTabView2 = [(TiltedTabViewController *)self tiltedTabView];
  [tiltedTabView2 layoutIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = TiltedTabViewController;
  [(TiltedTabViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10025200C;
  v9[3] = &unk_10064CC00;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100252070;
  v8[3] = &unk_10064CC00;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (int64_t)numberOfItemsInTiltedTabView:(id)view
{
  dockedStates = [(TiltedTabViewController *)self dockedStates];
  v4 = [dockedStates count];

  return v4 + 1;
}

- (void)tiltedTabView:(id)view closeItemAtIndex:(unint64_t)index
{
  dockedStates = [(TiltedTabViewController *)self dockedStates];
  v15 = [dockedStates objectAtIndex:index - 1];

  dockedStates2 = [(TiltedTabViewController *)self dockedStates];
  [dockedStates2 removeObject:v15];

  persistence = [(TiltedTabViewController *)self persistence];
  dockIdentifier = [v15 dockIdentifier];
  [persistence removeDockedStateWithIdentifier:dockIdentifier sender:self];

  v10 = +[MSAutosave autosave];
  dockIdentifier2 = [v15 dockIdentifier];
  [v10 removeAutosavedMessageWithIdentifier:dockIdentifier2];

  dockedStates3 = [(TiltedTabViewController *)self dockedStates];
  v13 = [dockedStates3 count];

  if (!v13)
  {
    delegate = [(TiltedTabViewController *)self delegate];
    [delegate tiltedTabViewControllerDidCancel:self];
  }
}

- (void)tiltedTabView:(id)view didSelectItemAtIndex:(unint64_t)index
{
  viewCopy = view;
  delegate = [(TiltedTabViewController *)self delegate];
  v7 = delegate;
  if (index)
  {
    dockedStates = [(TiltedTabViewController *)self dockedStates];
    v9 = [dockedStates objectAtIndex:index - 1];

    v10 = [viewCopy tabItemAtIndex:index];
    [v7 tiltedTabViewController:self didSelectView:v10 representingState:v9];
  }

  else
  {
    [delegate tiltedTabViewControllerDidCancel:self];
  }
}

- (UIEdgeInsets)tiltedTabView:(id)view expanded:(BOOL)expanded edgeInsetsForItemAtIndex:(unint64_t)index
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CATransform3D)tiltedTabView:(SEL)view expanded:(id)expanded layerTransformForItemAtIndex:(BOOL)index
{
  v6 = *&CATransform3DIdentity.m33;
  *&retstr->m31 = *&CATransform3DIdentity.m31;
  *&retstr->m33 = v6;
  v7 = *&CATransform3DIdentity.m43;
  *&retstr->m41 = *&CATransform3DIdentity.m41;
  *&retstr->m43 = v7;
  v8 = *&CATransform3DIdentity.m13;
  *&retstr->m11 = *&CATransform3DIdentity.m11;
  *&retstr->m13 = v8;
  v9 = *&CATransform3DIdentity.m23;
  *&retstr->m21 = *&CATransform3DIdentity.m21;
  *&retstr->m23 = v9;
  return self;
}

- (CGRect)tiltedTabView:(id)view frameForItemAtIndex:(unint64_t)index
{
  viewCopy = view;
  v7 = viewCopy;
  if (!index)
  {
    primaryViewController = [(TiltedTabViewController *)self primaryViewController];
    view = [primaryViewController view];
    [view frame];
LABEL_6:
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;

    goto LABEL_7;
  }

  if (([viewCopy isPresented] & 1) == 0)
  {
    dockedStates = [(TiltedTabViewController *)self dockedStates];
    primaryViewController = [dockedStates objectAtIndex:index - 1];

    view = [(TiltedTabViewController *)self delegate];
    [view tiltedTabViewController:self dockedFrameForViewRepresentingState:primaryViewController];
    goto LABEL_6;
  }

  primaryViewController = [(TiltedTabViewController *)self view];
  [SheetMetrics frameForPresentedSheetIn:primaryViewController];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
LABEL_7:

  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (double)tiltedTabView:(id)view headerHeightForItemAtIndex:(unint64_t)index
{
  result = 40.0;
  if (!index)
  {
    return 0.0;
  }

  return result;
}

- (id)tiltedTabView:(id)view snapshotViewForItemAtIndex:(unint64_t)index
{
  viewCopy = view;
  if (index)
  {
    view = [(TiltedTabViewController *)self view];
    [SheetMetrics frameForPresentedSheetIn:view];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    dockedStates = [(TiltedTabViewController *)self dockedStates];
    primaryViewController = [dockedStates objectAtIndex:index - 1];

    view3 = [(TiltedTabViewController *)self placeholderFactoryForState:primaryViewController];
    storedUserActivity = [primaryViewController storedUserActivity];
    view2 = [(TiltedTabViewController *)self view];
    [view2 layoutMargins];
    v25 = [view3 placeholderViewForUserActivity:storedUserActivity frame:v9 parentMargins:{v11, v13, v15, v21, v22, v23, v24}];
  }

  else
  {
    primaryViewController = [(TiltedTabViewController *)self primaryViewController];
    view3 = [primaryViewController view];
    v25 = [view3 snapshotViewAfterScreenUpdates:0];
  }

  [v25 setClipsToBounds:1];
  +[SheetMetrics cornerRadius];
  [v25 _setContinuousCornerRadius:?];
  v26 = +[UIColor systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  return v25;
}

- (id)placeholderFactoryForState:(id)state
{
  stateCopy = state;
  v5 = NSStringFromClass([stateCopy storedViewControllerClass]);
  placeholderFactories = [(TiltedTabViewController *)self placeholderFactories];
  v7 = [placeholderFactories objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_alloc([objc_msgSend(stateCopy "storedViewControllerClass")]);
    daemonInterface = [(TiltedTabViewController *)self daemonInterface];
    v7 = [v8 initWithDaemonInterface:daemonInterface];

    placeholderFactories2 = [(TiltedTabViewController *)self placeholderFactories];
    [placeholderFactories2 setObject:v7 forKeyedSubscript:v5];
  }

  return v7;
}

- (void)dockContainerPersistence:(id)persistence observer:(id)observer updatedDockedStates:(id)states
{
  statesCopy = states;
  dockedStates = [(TiltedTabViewController *)self dockedStates];
  v7 = [dockedStates isEqualToArray:statesCopy];

  dockedStates2 = [(TiltedTabViewController *)self dockedStates];
  [dockedStates2 setArray:statesCopy];

  if ([statesCopy count])
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    tiltedTabView = [(TiltedTabViewController *)self tiltedTabView];
    [tiltedTabView layoutItemsAnimated:1];
  }

  else
  {
    tiltedTabView = [(TiltedTabViewController *)self delegate];
    [tiltedTabView tiltedTabViewControllerDidCancel:self];
  }

LABEL_6:
}

- (TiltedTabViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end