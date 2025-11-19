@interface TiltedTabViewController
- (CATransform3D)tiltedTabView:(SEL)a3 expanded:(id)a4 layerTransformForItemAtIndex:(BOOL)a5;
- (CGRect)tiltedTabView:(id)a3 frameForItemAtIndex:(unint64_t)a4;
- (TiltedTabViewController)initWithInitialDockedStates:(id)a3 persistence:(id)a4 primaryViewController:(id)a5 daemonInterface:(id)a6;
- (TiltedTabViewControllerDelegate)delegate;
- (UIEdgeInsets)tiltedTabView:(id)a3 expanded:(BOOL)a4 edgeInsetsForItemAtIndex:(unint64_t)a5;
- (double)tiltedTabView:(id)a3 headerHeightForItemAtIndex:(unint64_t)a4;
- (id)placeholderFactoryForState:(id)a3;
- (id)tiltedTabView:(id)a3 snapshotViewForItemAtIndex:(unint64_t)a4;
- (int64_t)numberOfItemsInTiltedTabView:(id)a3;
- (void)dismiss;
- (void)dockContainerPersistence:(id)a3 observer:(id)a4 updatedDockedStates:(id)a5;
- (void)presentAnimated:(BOOL)a3;
- (void)tiltedTabView:(id)a3 closeItemAtIndex:(unint64_t)a4;
- (void)tiltedTabView:(id)a3 didSelectItemAtIndex:(unint64_t)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TiltedTabViewController

- (TiltedTabViewController)initWithInitialDockedStates:(id)a3 persistence:(id)a4 primaryViewController:(id)a5 daemonInterface:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = TiltedTabViewController;
  v14 = [(TiltedTabViewController *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_primaryViewController, a5);
    objc_storeStrong(&v15->_persistence, a4);
    v16 = [v10 reverseObjectEnumerator];
    v17 = [v16 allObjects];
    v18 = [v17 mutableCopy];
    dockedStates = v15->_dockedStates;
    v15->_dockedStates = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    placeholderFactories = v15->_placeholderFactories;
    v15->_placeholderFactories = v20;

    objc_storeStrong(&v15->_daemonInterface, a6);
  }

  return v15;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TiltedTabViewController;
  [(TiltedTabViewController *)&v9 viewDidLoad];
  v3 = +[UIColor blackColor];
  v4 = [(TiltedTabViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [MFTiltedTabView alloc];
  v6 = [(TiltedTabViewController *)self view];
  [v6 bounds];
  v7 = [(MFTiltedTabView *)v5 initWithFrame:?];

  [(MFTiltedTabView *)v7 setReorderingEnabled:0];
  [(MFTiltedTabView *)v7 setDelegate:self];
  v8 = [(TiltedTabViewController *)self view];
  [v8 addSubview:v7];

  [(TiltedTabViewController *)self setTiltedTabView:v7];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(TiltedTabViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TiltedTabViewController *)self tiltedTabView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13.receiver = self;
  v13.super_class = TiltedTabViewController;
  [(TiltedTabViewController *)&v13 viewWillLayoutSubviews];
}

- (void)presentAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(TiltedTabViewController *)self tiltedTabView];
  [v4 setPresented:1 animated:v3];
}

- (void)dismiss
{
  v3 = [(TiltedTabViewController *)self tiltedTabView];
  [v3 setPresented:0 animated:0];

  v4 = [(TiltedTabViewController *)self tiltedTabView];
  [v4 layoutIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = TiltedTabViewController;
  [(TiltedTabViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (int64_t)numberOfItemsInTiltedTabView:(id)a3
{
  v3 = [(TiltedTabViewController *)self dockedStates];
  v4 = [v3 count];

  return v4 + 1;
}

- (void)tiltedTabView:(id)a3 closeItemAtIndex:(unint64_t)a4
{
  v6 = [(TiltedTabViewController *)self dockedStates];
  v15 = [v6 objectAtIndex:a4 - 1];

  v7 = [(TiltedTabViewController *)self dockedStates];
  [v7 removeObject:v15];

  v8 = [(TiltedTabViewController *)self persistence];
  v9 = [v15 dockIdentifier];
  [v8 removeDockedStateWithIdentifier:v9 sender:self];

  v10 = +[MSAutosave autosave];
  v11 = [v15 dockIdentifier];
  [v10 removeAutosavedMessageWithIdentifier:v11];

  v12 = [(TiltedTabViewController *)self dockedStates];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = [(TiltedTabViewController *)self delegate];
    [v14 tiltedTabViewControllerDidCancel:self];
  }
}

- (void)tiltedTabView:(id)a3 didSelectItemAtIndex:(unint64_t)a4
{
  v11 = a3;
  v6 = [(TiltedTabViewController *)self delegate];
  v7 = v6;
  if (a4)
  {
    v8 = [(TiltedTabViewController *)self dockedStates];
    v9 = [v8 objectAtIndex:a4 - 1];

    v10 = [v11 tabItemAtIndex:a4];
    [v7 tiltedTabViewController:self didSelectView:v10 representingState:v9];
  }

  else
  {
    [v6 tiltedTabViewControllerDidCancel:self];
  }
}

- (UIEdgeInsets)tiltedTabView:(id)a3 expanded:(BOOL)a4 edgeInsetsForItemAtIndex:(unint64_t)a5
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

- (CATransform3D)tiltedTabView:(SEL)a3 expanded:(id)a4 layerTransformForItemAtIndex:(BOOL)a5
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

- (CGRect)tiltedTabView:(id)a3 frameForItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    v8 = [(TiltedTabViewController *)self primaryViewController];
    v17 = [v8 view];
    [v17 frame];
LABEL_6:
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;

    goto LABEL_7;
  }

  if (([v6 isPresented] & 1) == 0)
  {
    v22 = [(TiltedTabViewController *)self dockedStates];
    v8 = [v22 objectAtIndex:a4 - 1];

    v17 = [(TiltedTabViewController *)self delegate];
    [v17 tiltedTabViewController:self dockedFrameForViewRepresentingState:v8];
    goto LABEL_6;
  }

  v8 = [(TiltedTabViewController *)self view];
  [SheetMetrics frameForPresentedSheetIn:v8];
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

- (double)tiltedTabView:(id)a3 headerHeightForItemAtIndex:(unint64_t)a4
{
  result = 40.0;
  if (!a4)
  {
    return 0.0;
  }

  return result;
}

- (id)tiltedTabView:(id)a3 snapshotViewForItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(TiltedTabViewController *)self view];
    [SheetMetrics frameForPresentedSheetIn:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(TiltedTabViewController *)self dockedStates];
    v17 = [v16 objectAtIndex:a4 - 1];

    v18 = [(TiltedTabViewController *)self placeholderFactoryForState:v17];
    v19 = [v17 storedUserActivity];
    v20 = [(TiltedTabViewController *)self view];
    [v20 layoutMargins];
    v25 = [v18 placeholderViewForUserActivity:v19 frame:v9 parentMargins:{v11, v13, v15, v21, v22, v23, v24}];
  }

  else
  {
    v17 = [(TiltedTabViewController *)self primaryViewController];
    v18 = [v17 view];
    v25 = [v18 snapshotViewAfterScreenUpdates:0];
  }

  [v25 setClipsToBounds:1];
  +[SheetMetrics cornerRadius];
  [v25 _setContinuousCornerRadius:?];
  v26 = +[UIColor systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  return v25;
}

- (id)placeholderFactoryForState:(id)a3
{
  v4 = a3;
  v5 = NSStringFromClass([v4 storedViewControllerClass]);
  v6 = [(TiltedTabViewController *)self placeholderFactories];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_alloc([objc_msgSend(v4 "storedViewControllerClass")]);
    v9 = [(TiltedTabViewController *)self daemonInterface];
    v7 = [v8 initWithDaemonInterface:v9];

    v10 = [(TiltedTabViewController *)self placeholderFactories];
    [v10 setObject:v7 forKeyedSubscript:v5];
  }

  return v7;
}

- (void)dockContainerPersistence:(id)a3 observer:(id)a4 updatedDockedStates:(id)a5
{
  v10 = a5;
  v6 = [(TiltedTabViewController *)self dockedStates];
  v7 = [v6 isEqualToArray:v10];

  v8 = [(TiltedTabViewController *)self dockedStates];
  [v8 setArray:v10];

  if ([v10 count])
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    v9 = [(TiltedTabViewController *)self tiltedTabView];
    [v9 layoutItemsAnimated:1];
  }

  else
  {
    v9 = [(TiltedTabViewController *)self delegate];
    [v9 tiltedTabViewControllerDidCancel:self];
  }

LABEL_6:
}

- (TiltedTabViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end