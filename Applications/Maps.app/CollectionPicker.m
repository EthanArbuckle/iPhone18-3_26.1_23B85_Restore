@interface CollectionPicker
- (CollectionPicker)initWithCollectionEditSession:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (CollectionPickerDelegate)delegate;
- (id)alertController;
- (id)collectionPickerContaineeViewController;
- (id)guidesPickerContaineeViewController;
- (void)_collectionPickerDismissedAfterSelectingCollection:(id)a3 parentVC:(id)a4;
- (void)_collectionPickerDismissedAfterSelectingCollectionsConfirmation:(id)a3 parentVC:(id)a4 addToLibrary:(BOOL)a5;
- (void)cleanControllers;
- (void)collectionPickerContaineeViewController:(id)a3 selectCollection:(id)a4;
- (void)collectionPickerContaineeViewControllerCancelTapped:(id)a3;
- (void)collectionPickerViewController:(id)a3 selectCollection:(id)a4;
- (void)collectionPickerViewController:(id)a3 unselectCollection:(id)a4;
- (void)guidesPickerContaineeViewControllerCancelTapped:(id)a3;
- (void)guidesPickerContaineeViewControllerConfirmationTapped:(id)a3 forCollections:(id)a4 addToLibrary:(BOOL)a5;
- (void)guidesPickerContaineeViewControllerDidSelectAdd:(id)a3;
- (void)viewControllerToPresentIfContainee:(id)a3 ifAlertController:(id)a4;
@end

@implementation CollectionPicker

- (CollectionPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)guidesPickerContaineeViewControllerDidSelectAdd:(id)a3
{
  v4 = a3;
  v6 = +[CollectionHandler addToCollection];
  v5 = [NSSet setWithObject:v6];
  [(CollectionPicker *)self guidesPickerContaineeViewControllerConfirmationTapped:v4 forCollections:v5 addToLibrary:1];
}

- (void)guidesPickerContaineeViewControllerCancelTapped:(id)a3
{
  [a3 handleDismissAction:0];
  [(CollectionPicker *)self cleanControllers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionPickerClosed:self];
}

- (void)guidesPickerContaineeViewControllerConfirmationTapped:(id)a3 forCollections:(id)a4 addToLibrary:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [v8 handleDismissAction:0];
  v10 = [v8 transitionCoordinator];

  if (v10)
  {
    v11 = [v8 transitionCoordinator];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100609F28;
    v12[3] = &unk_101623E58;
    v12[4] = self;
    v13 = v9;
    v14 = v8;
    v15 = v5;
    [v11 animateAlongsideTransition:0 completion:v12];
  }

  else
  {
    [(CollectionPicker *)self _collectionPickerDismissedAfterSelectingCollectionsConfirmation:v9 parentVC:v8 addToLibrary:v5];
  }
}

- (void)collectionPickerContaineeViewControllerCancelTapped:(id)a3
{
  [a3 handleDismissAction:0];
  [(CollectionPicker *)self cleanControllers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionPickerClosed:self];
}

- (void)collectionPickerContaineeViewController:(id)a3 selectCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 presentingViewController];
  [v6 handleDismissAction:0];
  v9 = [v6 transitionCoordinator];

  if (v9)
  {
    v10 = [v6 transitionCoordinator];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10060A0CC;
    v11[3] = &unk_101623E30;
    v11[4] = self;
    v12 = v7;
    v13 = v8;
    [v10 animateAlongsideTransition:0 completion:v11];
  }

  else
  {
    [(CollectionPicker *)self _collectionPickerDismissedAfterSelectingCollection:v7 parentVC:v8];
  }
}

- (void)collectionPickerViewController:(id)a3 unselectCollection:(id)a4
{
  [(UIAlertController *)self->_alertController dismissViewControllerAnimated:1 completion:0];
  [(CollectionPicker *)self cleanControllers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionPickerClosed:self];
}

- (void)collectionPickerViewController:(id)a3 selectCollection:(id)a4
{
  v5 = a4;
  v6 = [(UIAlertController *)self->_alertController presentingViewController];
  alertController = self->_alertController;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10060A210;
  v10[3] = &unk_101661A40;
  v10[4] = self;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [(UIAlertController *)alertController dismissViewControllerAnimated:1 completion:v10];
}

- (void)_collectionPickerDismissedAfterSelectingCollectionsConfirmation:(id)a3 parentVC:(id)a4 addToLibrary:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10060A464;
  v27[3] = &unk_101661A90;
  v10 = v8;
  v28 = v10;
  v29 = self;
  v11 = objc_retainBlock(v27);
  if (a5)
  {
    if ([v10 count] != 1 || (editSession = self->_editSession, objc_msgSend(v10, "anyObject"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(editSession) = -[CollectionSaveSession canRenameSelectedObjectInCollection:](editSession, "canRenameSelectedObjectInCollection:", v13), v13, !editSession))
    {
      (v11[2])(v11);
      goto LABEL_8;
    }

    v14 = [(CollectionSaveSession *)self->_editSession mapItem];
    v15 = [(CollectionPicker *)self delegate];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10060A5B4;
    v24 = &unk_10165F618;
    v25 = v14;
    v26 = v11;
    WeakRetained = v14;
    [v15 viewController:v9 editNameOfMapItem:WeakRetained saveHandler:&v21 cancelHandler:&stru_101623E08];
  }

  else
  {
    v17 = [_TtC4Maps29LibraryDataOperationsProvider alloc];
    v18 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v19 = [(LibraryDataOperationsProvider *)v17 initWithMapsSyncStore:v18];
    v20 = [(CollectionSaveSession *)self->_editSession mapItem];
    [(LibraryDataOperationsProvider *)v19 deletePlacesMatchingMapItem:v20];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionPickerClosed:self];
  }

LABEL_8:
  [(CollectionPicker *)self cleanControllers:v21];
}

- (void)_collectionPickerDismissedAfterSelectingCollection:(id)a3 parentVC:(id)a4
{
  v6 = a4;
  v7 = [NSSet setWithObject:a3];
  [(CollectionPicker *)self _collectionPickerDismissedAfterSelectingCollectionsConfirmation:v7 parentVC:v6 addToLibrary:1];
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

    v6 = [(CollectionEditSession *)self->_editSession selectedObjectSet];
    v7 = [v6 count];

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
    v14 = [(UIAlertController *)v12 popoverPresentationController];
    [v14 setSourceView:sourceView];

    x = self->_sourceRect.origin.x;
    y = self->_sourceRect.origin.y;
    width = self->_sourceRect.size.width;
    height = self->_sourceRect.size.height;
    v19 = [(UIAlertController *)v12 popoverPresentationController];
    [v19 setSourceRect:{x, y, width, height}];

    [(UIAlertController *)v12 setContentViewController:self->_pickerViewController];
    v20 = [(UIAlertController *)v12 view];
    [v20 setAccessibilityIdentifier:@"CollectionPickerAlert"];

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

- (void)viewControllerToPresentIfContainee:(id)a3 ifAlertController:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v6 && self->_sourceView && (v8 != 6 ? (v9 = v8 == 1) : (v9 = 1), v9))
  {
    v10 = [(CollectionPicker *)self alertController];
    v6[2](v6, v10);
  }

  else
  {
    if (!v11)
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
    v10 = ;
    v11[2](v11, v10);
  }

LABEL_15:
}

- (CollectionPicker)initWithCollectionEditSession:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  v17.receiver = self;
  v17.super_class = CollectionPicker;
  v14 = [(CollectionPicker *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_editSession, a3);
    objc_storeStrong(&v15->_sourceView, a4);
    v15->_sourceRect.origin.x = x;
    v15->_sourceRect.origin.y = y;
    v15->_sourceRect.size.width = width;
    v15->_sourceRect.size.height = height;
  }

  return v15;
}

@end