@interface CollectionPicker
- (CollectionPicker)initWithCollectionEditSession:(id)session sourceView:(id)view sourceRect:(CGRect)rect;
- (CollectionPickerDelegate)delegate;
- (id)alertController;
- (id)collectionPickerContaineeViewController;
- (id)guidesPickerContaineeViewController;
- (void)_collectionPickerDismissedAfterSelectingCollection:(id)collection parentVC:(id)c;
- (void)_collectionPickerDismissedAfterSelectingCollectionsConfirmation:(id)confirmation parentVC:(id)c addToLibrary:(BOOL)library;
- (void)cleanControllers;
- (void)collectionPickerContaineeViewController:(id)controller selectCollection:(id)collection;
- (void)collectionPickerContaineeViewControllerCancelTapped:(id)tapped;
- (void)collectionPickerViewController:(id)controller selectCollection:(id)collection;
- (void)collectionPickerViewController:(id)controller unselectCollection:(id)collection;
- (void)guidesPickerContaineeViewControllerCancelTapped:(id)tapped;
- (void)guidesPickerContaineeViewControllerConfirmationTapped:(id)tapped forCollections:(id)collections addToLibrary:(BOOL)library;
- (void)guidesPickerContaineeViewControllerDidSelectAdd:(id)add;
- (void)viewControllerToPresentIfContainee:(id)containee ifAlertController:(id)controller;
@end

@implementation CollectionPicker

- (CollectionPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)guidesPickerContaineeViewControllerDidSelectAdd:(id)add
{
  addCopy = add;
  v6 = +[CollectionHandler addToCollection];
  v5 = [NSSet setWithObject:v6];
  [(CollectionPicker *)self guidesPickerContaineeViewControllerConfirmationTapped:addCopy forCollections:v5 addToLibrary:1];
}

- (void)guidesPickerContaineeViewControllerCancelTapped:(id)tapped
{
  [tapped handleDismissAction:0];
  [(CollectionPicker *)self cleanControllers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionPickerClosed:self];
}

- (void)guidesPickerContaineeViewControllerConfirmationTapped:(id)tapped forCollections:(id)collections addToLibrary:(BOOL)library
{
  libraryCopy = library;
  tappedCopy = tapped;
  collectionsCopy = collections;
  [tappedCopy handleDismissAction:0];
  transitionCoordinator = [tappedCopy transitionCoordinator];

  if (transitionCoordinator)
  {
    transitionCoordinator2 = [tappedCopy transitionCoordinator];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100609F28;
    v12[3] = &unk_101623E58;
    v12[4] = self;
    v13 = collectionsCopy;
    v14 = tappedCopy;
    v15 = libraryCopy;
    [transitionCoordinator2 animateAlongsideTransition:0 completion:v12];
  }

  else
  {
    [(CollectionPicker *)self _collectionPickerDismissedAfterSelectingCollectionsConfirmation:collectionsCopy parentVC:tappedCopy addToLibrary:libraryCopy];
  }
}

- (void)collectionPickerContaineeViewControllerCancelTapped:(id)tapped
{
  [tapped handleDismissAction:0];
  [(CollectionPicker *)self cleanControllers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionPickerClosed:self];
}

- (void)collectionPickerContaineeViewController:(id)controller selectCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  presentingViewController = [controllerCopy presentingViewController];
  [controllerCopy handleDismissAction:0];
  transitionCoordinator = [controllerCopy transitionCoordinator];

  if (transitionCoordinator)
  {
    transitionCoordinator2 = [controllerCopy transitionCoordinator];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10060A0CC;
    v11[3] = &unk_101623E30;
    v11[4] = self;
    v12 = collectionCopy;
    v13 = presentingViewController;
    [transitionCoordinator2 animateAlongsideTransition:0 completion:v11];
  }

  else
  {
    [(CollectionPicker *)self _collectionPickerDismissedAfterSelectingCollection:collectionCopy parentVC:presentingViewController];
  }
}

- (void)collectionPickerViewController:(id)controller unselectCollection:(id)collection
{
  [(UIAlertController *)self->_alertController dismissViewControllerAnimated:1 completion:0];
  [(CollectionPicker *)self cleanControllers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionPickerClosed:self];
}

- (void)collectionPickerViewController:(id)controller selectCollection:(id)collection
{
  collectionCopy = collection;
  presentingViewController = [(UIAlertController *)self->_alertController presentingViewController];
  alertController = self->_alertController;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10060A210;
  v10[3] = &unk_101661A40;
  v10[4] = self;
  v11 = collectionCopy;
  v12 = presentingViewController;
  v8 = presentingViewController;
  v9 = collectionCopy;
  [(UIAlertController *)alertController dismissViewControllerAnimated:1 completion:v10];
}

- (void)_collectionPickerDismissedAfterSelectingCollectionsConfirmation:(id)confirmation parentVC:(id)c addToLibrary:(BOOL)library
{
  confirmationCopy = confirmation;
  cCopy = c;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10060A464;
  v27[3] = &unk_101661A90;
  v10 = confirmationCopy;
  v28 = v10;
  selfCopy = self;
  v11 = objc_retainBlock(v27);
  if (library)
  {
    if ([v10 count] != 1 || (editSession = self->_editSession, objc_msgSend(v10, "anyObject"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(editSession) = -[CollectionSaveSession canRenameSelectedObjectInCollection:](editSession, "canRenameSelectedObjectInCollection:", v13), v13, !editSession))
    {
      (v11[2])(v11);
      goto LABEL_8;
    }

    mapItem = [(CollectionSaveSession *)self->_editSession mapItem];
    delegate = [(CollectionPicker *)self delegate];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10060A5B4;
    v24 = &unk_10165F618;
    v25 = mapItem;
    v26 = v11;
    WeakRetained = mapItem;
    [delegate viewController:cCopy editNameOfMapItem:WeakRetained saveHandler:&v21 cancelHandler:&stru_101623E08];
  }

  else
  {
    v17 = [_TtC4Maps29LibraryDataOperationsProvider alloc];
    v18 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v19 = [(LibraryDataOperationsProvider *)v17 initWithMapsSyncStore:v18];
    mapItem2 = [(CollectionSaveSession *)self->_editSession mapItem];
    [(LibraryDataOperationsProvider *)v19 deletePlacesMatchingMapItem:mapItem2];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionPickerClosed:self];
  }

LABEL_8:
  [(CollectionPicker *)self cleanControllers:v21];
}

- (void)_collectionPickerDismissedAfterSelectingCollection:(id)collection parentVC:(id)c
{
  cCopy = c;
  v7 = [NSSet setWithObject:collection];
  [(CollectionPicker *)self _collectionPickerDismissedAfterSelectingCollectionsConfirmation:v7 parentVC:cCopy addToLibrary:1];
}

- (void)cleanControllers
{
  alertController = self->_alertController;
  self->_alertController = 0;

  pickerViewController = self->_pickerViewController;
  self->_pickerViewController = 0;

  collectionPickerContaineeController = self->_collectionPickerContaineeController;
  self->_collectionPickerContaineeController = 0;
}

- (id)alertController
{
  alertController = self->_alertController;
  if (!alertController)
  {
    if (!self->_pickerViewController)
    {
      v4 = [[CollectionPickerViewController alloc] initWithCollectionEditSession:self->_editSession];
      pickerViewController = self->_pickerViewController;
      self->_pickerViewController = v4;

      [(CollectionPickerViewController *)self->_pickerViewController setDelegate:self];
    }

    selectedObjectSet = [(CollectionEditSession *)self->_editSession selectedObjectSet];
    v7 = [selectedObjectSet count];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7 <= 1)
    {
      v10 = @"[Collection] Alert's title";
    }

    else
    {
      v10 = @"[Collection] Alert's title (plural)";
    }

    v11 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];

    v12 = [UIAlertController alertControllerWithTitle:0 message:v11 preferredStyle:0];
    sourceView = self->_sourceView;
    popoverPresentationController = [(UIAlertController *)v12 popoverPresentationController];
    [popoverPresentationController setSourceView:sourceView];

    x = self->_sourceRect.origin.x;
    y = self->_sourceRect.origin.y;
    width = self->_sourceRect.size.width;
    height = self->_sourceRect.size.height;
    popoverPresentationController2 = [(UIAlertController *)v12 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{x, y, width, height}];

    [(UIAlertController *)v12 setContentViewController:self->_pickerViewController];
    view = [(UIAlertController *)v12 view];
    [view setAccessibilityIdentifier:@"CollectionPickerAlert"];

    objc_initWeak(&location, self);
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"[Collection] Alert's cancel button title" value:@"localized string not found" table:0];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_10060A990;
    v29 = &unk_101658AF0;
    objc_copyWeak(&v30, &location);
    v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:&v26];

    [v23 setAccessibilityIdentifier:{@"CollectionPickerCancelAction", v26, v27, v28, v29}];
    [(UIAlertController *)v12 addAction:v23];
    v24 = self->_alertController;
    self->_alertController = v12;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);

    alertController = self->_alertController;
  }

  return alertController;
}

- (id)guidesPickerContaineeViewController
{
  guidesPickerContaineeViewController = self->_guidesPickerContaineeViewController;
  if (!guidesPickerContaineeViewController)
  {
    v4 = [[_TtC4Maps35GuidesPickerContaineeViewController alloc] initWithCollectionEditSession:self->_editSession delegate:self showsAddToLibrarySection:[(CollectionSaveSession *)self->_editSession showsAddToLibrarySection]];
    v5 = self->_guidesPickerContaineeViewController;
    self->_guidesPickerContaineeViewController = v4;

    guidesPickerContaineeViewController = self->_guidesPickerContaineeViewController;
  }

  return guidesPickerContaineeViewController;
}

- (id)collectionPickerContaineeViewController
{
  collectionPickerContaineeController = self->_collectionPickerContaineeController;
  if (!collectionPickerContaineeController)
  {
    v4 = [[_TtC4Maps39CollectionPickerContaineeViewController alloc] initWithCollectionEditSession:self->_editSession];
    v5 = self->_collectionPickerContaineeController;
    self->_collectionPickerContaineeController = v4;

    [(CollectionPickerContaineeViewController *)self->_collectionPickerContaineeController setDelegate:self];
    collectionPickerContaineeController = self->_collectionPickerContaineeController;
  }

  return collectionPickerContaineeController;
}

- (void)viewControllerToPresentIfContainee:(id)containee ifAlertController:(id)controller
{
  containeeCopy = containee;
  controllerCopy = controller;
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (controllerCopy && self->_sourceView && (userInterfaceIdiom != 6 ? (v9 = userInterfaceIdiom == 1) : (v9 = 1), v9))
  {
    alertController = [(CollectionPicker *)self alertController];
    controllerCopy[2](controllerCopy, alertController);
  }

  else
  {
    if (!containeeCopy)
    {
      goto LABEL_15;
    }

    if (_UISolariumEnabled())
    {
      [(CollectionPicker *)self guidesPickerContaineeViewController];
    }

    else
    {
      [(CollectionPicker *)self collectionPickerContaineeViewController];
    }
    alertController = ;
    containeeCopy[2](containeeCopy, alertController);
  }

LABEL_15:
}

- (CollectionPicker)initWithCollectionEditSession:(id)session sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sessionCopy = session;
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = CollectionPicker;
  v14 = [(CollectionPicker *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_editSession, session);
    objc_storeStrong(&v15->_sourceView, view);
    v15->_sourceRect.origin.x = x;
    v15->_sourceRect.origin.y = y;
    v15->_sourceRect.size.width = width;
    v15->_sourceRect.size.height = height;
  }

  return v15;
}

@end