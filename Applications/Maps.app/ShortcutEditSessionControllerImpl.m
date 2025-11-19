@interface ShortcutEditSessionControllerImpl
- (CNContact)meCardContact;
- (ContainerViewController)containerViewController;
- (ShortcutEditSessionControllerDelegate)delegate;
- (id)requestInitiator;
- (void)_closeLocationRefinement;
- (void)_createNewContactCard;
- (void)_doneLocationRefinement;
- (void)_presentContactVC:(id)a3;
- (void)_presentViewController:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (void)_showContactCard:(id)a3;
- (void)_showContactPicker;
- (void)addFavoriteButtonShortcut:(id)a3;
- (void)capturePresenter;
- (void)closeViewController:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)createOrUpdateMeCardWithFavorite:(id)a3 completion:(id)a4;
- (void)editShortcut:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (void)endSession;
- (void)presentChoicePickerFrom:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)presentedViewControllerWasDismissedBySwiping:(id)a3;
- (void)refinementCoordinator:(id)a3 finishedRefiningCoordinate:(CLLocationCoordinate2D)a4 withShortcut:(id)a5;
- (void)refinementCoordinator:(id)a3 presentViewController:(id)a4;
- (void)refinementCoordinatorDidComplete:(id)a3;
- (void)refinementCoordinatorRequestsChangeAddress:(id)a3 withShortcut:(id)a4;
- (void)removeShortcut:(id)a3;
- (void)showAddContact:(id)a3;
- (void)showAddShortcut:(id)a3;
- (void)showMeCard;
- (void)showMeCardWithAddress:(id)a3 from:(id)a4;
- (void)showRefineLocation:(id)a3;
- (void)viewController:(id)a3 didEditMapItemInSession:(id)a4;
@end

@implementation ShortcutEditSessionControllerImpl

- (id)requestInitiator
{
  WeakRetained = objc_loadWeakRetained(&self->_requestInitiator);

  return WeakRetained;
}

- (ContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (ShortcutEditSessionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  if (self->_popoverPresentationController == a3)
  {
    [(ShortcutEditSessionControllerImpl *)self closeViewController:self->_editShortcutViewController];
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v7 = a4;
  v8 = self->_meCardSetupViewController;
  objc_storeStrong(&self->_meCardContact, a4);
  v9 = a3;
  [(MeCardShortcutViewController *)self->_meCardSetupViewController updateContact];
  v10 = +[AddressBookManager sharedManager];
  v11 = [v10 contactStore];
  [v11 setMeContact:v7 error:0];

  v12 = [v9 presentingViewController];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B0D8F4;
  v15[3] = &unk_101661A40;
  v16 = v7;
  v17 = v8;
  v18 = self;
  v13 = v8;
  v14 = v7;
  [v12 dismissViewControllerAnimated:1 completion:v15];
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = [a3 presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  if (self->_addressToAdd)
  {
    editShortcutViewController = self->_editShortcutViewController;

    [(EditShortcutViewController *)editShortcutViewController resetToMapItemType];
  }
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_meCardSetupViewController;
  if (v7)
  {
    v9 = +[AddressBookManager sharedManager];
    v10 = [v9 meCardExists];

    if ((v10 & 1) == 0)
    {
      v11 = +[AddressBookManager sharedManager];
      v12 = [v11 contactStore];
      [v12 setMeContact:v7 error:0];
    }

    if (self->_addressToAdd)
    {
      [v7 postalAddresses];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v36 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v14)
      {
        v26 = a4;
        v27 = v8;
        v15 = *v34;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            v18 = [(CNLabeledValue *)self->_addressToAdd identifier:v26];
            v19 = [v17 identifier];
            v20 = [v18 isEqualToString:v19];

            if (v20)
            {
              v14 = 1;
              goto LABEL_17;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

LABEL_17:
        a4 = v26;
        v8 = v27;
      }

      [(EditShortcutViewController *)self->_editShortcutViewController didEditContactWithAddressAdded:v14];
      addressToAdd = self->_addressToAdd;
      self->_addressToAdd = 0;
    }

    objc_storeStrong(&self->_meCardContact, a4);
    [(MeCardShortcutViewController *)v8 updateContact];
  }

  else if (self->_addressToAdd)
  {
    [(EditShortcutViewController *)self->_editShortcutViewController resetToMapItemType];
  }

  v22 = [v6 presentingViewController];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100B0DCC4;
  v28[3] = &unk_101656A00;
  v29 = v7;
  v30 = v8;
  v31 = self;
  v32 = v6;
  v23 = v6;
  v24 = v8;
  v25 = v7;
  [v22 dismissViewControllerAnimated:1 completion:v28];
}

- (void)presentChoicePickerFrom:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Shortcut] No Existing Contact Card" value:@"localized string not found" table:0];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:0];

  v8 = [v7 popoverPresentationController];
  [v8 setSourceView:v4];

  objc_initWeak(&location, self);
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"[Shortcut] Create a new one" value:@"localized string not found" table:0];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100B0E0F0;
  v26[3] = &unk_101658AF0;
  objc_copyWeak(&v27, &location);
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v26];
  [v7 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Shortcut] Choose an existing one" value:@"localized string not found" table:0];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100B0E130;
  v24[3] = &unk_101658AF0;
  objc_copyWeak(&v25, &location);
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v24];
  [v7 addAction:v14];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"[Collection] Alert's cancel button title" value:@"localized string not found" table:0];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100B0E170;
  v22 = &unk_101658AF0;
  objc_copyWeak(&v23, &location);
  v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:&v19];
  [v7 addAction:{v17, v19, v20, v21, v22}];

  v18 = [(ShortcutEditSessionControllerImpl *)self containerViewController];
  [v18 _maps_topMostPresentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_presentContactVC:(id)a3
{
  v4 = a3;
  if (sub_10000FA08(v4) == 5)
  {
    [(EditShortcutViewController *)self->_editShortcutViewController setOpeningContactController:1];
    objc_initWeak(&location, self);
    v5 = [(ShortcutEditSessionControllerImpl *)self containerViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B0E300;
    v7[3] = &unk_101661340;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v5 dismissViewControllerAnimated:1 completion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = [(ShortcutEditSessionControllerImpl *)self containerViewController];
    [v6 _maps_topMostPresentViewController:v4 animated:1 completion:0];
  }
}

- (void)_showContactPicker
{
  v4 = objc_alloc_init(CNContactPickerViewController);
  [v4 setDelegate:self];
  if (sub_10000FA08(v4) == 5)
  {
    v3 = 2;
  }

  else
  {
    v3 = -2;
  }

  [v4 setModalPresentationStyle:v3];
  [(ShortcutEditSessionControllerImpl *)self _presentContactVC:v4];
}

- (void)_showContactCard:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  [v4 setDisplayMode:1];
  v6 = [[UINavigationController alloc] initWithRootViewController:v4];

  if (sub_10000FA08(v6) == 5)
  {
    v5 = 2;
  }

  else
  {
    v5 = -2;
  }

  [v6 setModalPresentationStyle:v5];
  [(ShortcutEditSessionControllerImpl *)self _presentContactVC:v6];
}

- (void)_createNewContactCard
{
  if (self->_addressToAdd)
  {
    v3 = objc_alloc_init(CNMutableContact);
    addressToAdd = self->_addressToAdd;
    v4 = [NSArray arrayWithObjects:&addressToAdd count:1];
    [v3 setPostalAddresses:v4];
  }

  else
  {
    v3 = 0;
  }

  v5 = [CNContactViewController viewControllerForNewContact:v3];
  [(ShortcutEditSessionControllerImpl *)self _showContactCard:v5];
}

- (void)createOrUpdateMeCardWithFavorite:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cnLabledAddress];
  if (v8 && ([v6 isMeCardWritebackEnabled] & 1) != 0)
  {
    v9 = +[AddressBookManager sharedManager];
    v10 = [v9 meCard];

    if (v10)
    {
      v11 = [v8 value];
      v12 = [v10 postalAddresses];
      v13 = [CNLabeledValue firstLabeledValueWithValue:v11 inArray:v12];

      if (v13)
      {
        v7[2](v7);
LABEL_14:

        goto LABEL_15;
      }

      v15 = [v10 mutableCopy];
      v24 = [v15 postalAddresses];
      v17 = [v24 mutableCopy];

      [v17 addObject:v8];
      [v15 setPostalAddresses:v17];
      v25 = +[AddressBookManager sharedManager];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100B0E944;
      v31[3] = &unk_1016382C0;
      v32 = v7;
      [v25 updateContact:v15 completion:v31];
    }

    else
    {
      v14 = +[GEOUserAccountInfo primaryICloudAccount];
      v15 = [v14 aa_firstName];

      v16 = +[GEOUserAccountInfo primaryICloudAccount];
      v17 = [v16 aa_lastName];

      if (v15 && v17)
      {
        v18 = objc_alloc_init(CNMutableContact);
        v34 = v8;
        v19 = [NSArray arrayWithObjects:&v34 count:1];
        [v18 setPostalAddresses:v19];

        [v18 setGivenName:v15];
        v20 = +[GEOUserAccountInfo primaryICloudAccount];
        v21 = [v20 aa_middleName];
        [v18 setMiddleName:v21];

        [v18 setFamilyName:v17];
        v22 = +[AddressBookManager sharedManager];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100B0E954;
        v29[3] = &unk_1016382C0;
        v30 = v7;
        [v22 createMeCardWithContact:v18 completion:v29];

        v23 = v30;
      }

      else
      {
        v26 = objc_retainBlock(v7);
        contactsSaveHandler = self->contactsSaveHandler;
        self->contactsSaveHandler = v26;

        v18 = objc_alloc_init(CNMutableContact);
        v33 = v8;
        v28 = [NSArray arrayWithObjects:&v33 count:1];
        [v18 setPostalAddresses:v28];

        v23 = [CNContactViewController viewControllerForNewContact:v18];
        [(ShortcutEditSessionControllerImpl *)self _showContactCard:v23];
      }
    }

    goto LABEL_14;
  }

  v7[2](v7);
LABEL_15:
}

- (void)showMeCardWithAddress:(id)a3 from:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ShortcutEditSessionControllerImpl *)self meCardContact];

  if (v9)
  {
    if (v7)
    {
      v10 = objc_alloc_init(CNMutableContact);
      v15 = v7;
      v11 = [NSArray arrayWithObjects:&v15 count:1];
      [v10 setPostalAddresses:v11];

      v12 = [(ShortcutEditSessionControllerImpl *)self meCardContact];
      v13 = [CNContactViewController viewControllerForUpdatingContact:v12 withPropertiesFromContact:v10];

      objc_storeStrong(&self->_addressToAdd, a3);
    }

    else
    {
      v14 = [(ShortcutEditSessionControllerImpl *)self meCardContact];
      v13 = [CNContactViewController viewControllerForContact:v14];

      [v13 setActions:{objc_msgSend(v13, "actions") | 0x100}];
    }

    [v13 setEditMode:2];
    [(ShortcutEditSessionControllerImpl *)self _showContactCard:v13];
  }

  else if (v8)
  {
    objc_storeStrong(&self->_addressToAdd, a3);
    [(ShortcutEditSessionControllerImpl *)self presentChoicePickerFrom:v8];
  }
}

- (void)showMeCard
{
  v3 = [(ShortcutEditSessionControllerImpl *)self meCardContact];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100B0ECB0;
  v11[3] = &unk_101661340;
  objc_copyWeak(&v13, &location);
  v4 = v3;
  v12 = v4;
  v5 = objc_retainBlock(v11);
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v7 = sub_10000FA08(WeakRetained);

  if (v7 == 5)
  {
    v8 = objc_loadWeakRetained(&self->_containerViewController);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100B0ED40;
    v9[3] = &unk_101661760;
    v10 = v5;
    [v8 dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    (v5[2])(v5);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (CNContact)meCardContact
{
  meCardContact = self->_meCardContact;
  if (!meCardContact)
  {
    v4 = +[AddressBookManager sharedManager];
    v5 = [v4 meCard];
    v6 = self->_meCardContact;
    self->_meCardContact = v5;

    meCardContact = self->_meCardContact;
  }

  return meCardContact;
}

- (void)closeViewController:(id)a3
{
  v11 = a3;
  if (self->_meCardSetupViewController == v11 && self->_editShortcutViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v7 = WeakRetained;
    editShortcutViewController = self->_editShortcutViewController;
LABEL_18:
    [WeakRetained presentController:editShortcutViewController animated:1];

    goto LABEL_19;
  }

  [(ShortcutEditSessionControllerImpl *)self endSession];
  popoverPresentationController = self->_popoverPresentationController;
  if (popoverPresentationController)
  {
    self->_popoverPresentationController = 0;

LABEL_4:
    v5 = objc_loadWeakRetained(&self->_containerViewController);
    [v5 dismissViewControllerAnimated:1 completion:0];

    goto LABEL_19;
  }

  if (self->_presentingViewController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v7 = WeakRetained;
      editShortcutViewController = self->_presentingViewController;
      goto LABEL_18;
    }

    v9 = sub_10000FA08(v11);
    presentingViewController = self->_presentingViewController;
    if (v9 == 5 && presentingViewController == v11)
    {
      if ([(MeCardShortcutViewController *)v11 modalPresentationStyle]== 2)
      {
        goto LABEL_4;
      }

      presentingViewController = self->_presentingViewController;
    }

    [(ContaineeProtocol *)presentingViewController handleDismissAction:self];
    goto LABEL_19;
  }

  if (sub_10000FA08(v11) == 5 && [(MeCardShortcutViewController *)v11 modalPresentationStyle]== 2)
  {
    goto LABEL_4;
  }

LABEL_19:
}

- (void)endSession
{
  if (self->_didReplaceShortcut)
  {
    v3 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  self->_didReplaceShortcut = 0;
  v4 = [(ShortcutEditSessionControllerImpl *)self delegate];
  [v4 shortcutEditSessionControllerFinished:self shortcutWasReplacedBy:v7];

  v5 = [(ShortcutEditSession *)self->_shortcutEditSession completionHandler];

  if (v5)
  {
    v6 = [(ShortcutEditSession *)self->_shortcutEditSession completionHandler];
    v6[2]();
  }
}

- (void)presentedViewControllerWasDismissedBySwiping:(id)a3
{
  v4 = a3;
  [(ShortcutEditSessionControllerImpl *)self endSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ContaineeProtocol *)self->_presentingViewController handleDismissAction:self];
    }
  }
}

- (void)removeShortcut:(id)a3
{
  [a3 removeFromShortcutsWithCompletion:&stru_101638298];
  if (self->_popoverPresentationController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v5 = [WeakRetained presentedViewController];
    editShortcutViewController = self->_editShortcutViewController;

    if (v5 == editShortcutViewController)
    {
      v7 = objc_loadWeakRetained(&self->_containerViewController);
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }

  if (self->_editShortcutViewController)
  {

    [(ShortcutEditSessionControllerImpl *)self closeViewController:?];
  }
}

- (void)_presentViewController:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  if (v12)
  {
    [v11 setModalPresentationStyle:7];
    v13 = [v11 popoverPresentationController];
    popoverPresentationController = self->_popoverPresentationController;
    self->_popoverPresentationController = v13;

    [(UIPopoverPresentationController *)self->_popoverPresentationController setDelegate:self];
    [(UIPopoverPresentationController *)self->_popoverPresentationController setSourceView:v12];
    [(UIPopoverPresentationController *)self->_popoverPresentationController setSourceRect:x, y, width, height];
    [(UIPopoverPresentationController *)self->_popoverPresentationController setPermittedArrowDirections:4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v16 = sub_10000FA08(WeakRetained);

  if (v16 == 5)
  {
    objc_initWeak(&location, self);
    v17 = objc_loadWeakRetained(&self->_containerViewController);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100B0F31C;
    v19[3] = &unk_101661340;
    objc_copyWeak(&v21, &location);
    v20 = v11;
    [v17 dismissViewControllerAnimated:1 completion:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = objc_loadWeakRetained(&self->_containerViewController);
    [v18 _maps_topMostPresentViewController:v11 animated:1 completion:0];
  }
}

- (void)editShortcut:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  objc_storeStrong(&self->_shortcutEditSession, a3);
  [(ShortcutEditSessionControllerImpl *)self capturePresenter];
  if ([v12 editOnlyLocation])
  {
    [(ShortcutEditSessionControllerImpl *)self showRefineLocation:v12];
  }

  else
  {
    if (([v12 editOnlyAddress] & 1) != 0 || objc_msgSend(v12, "editingModeType") == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v15 = [WeakRetained currentViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_initWeak(&location, self);
        shortcutEditSession = self->_shortcutEditSession;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100B0F61C;
        v20[3] = &unk_10165FC50;
        objc_copyWeak(&v22, &location);
        v21 = v15;
        [(ShortcutEditSession *)shortcutEditSession saveWithCompletion:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      else
      {
        [(ShortcutEditSessionControllerImpl *)self showAddShortcut:v12];
      }
    }

    else
    {
      if ([v12 isSetupPlaceholder] && !+[LibraryUIUtilities isMyPlacesEnabled](_TtC4Maps18LibraryUIUtilities, "isMyPlacesEnabled") || +[LibraryUIUtilities isMyPlacesEnabled](_TtC4Maps18LibraryUIUtilities, "isMyPlacesEnabled") && (objc_msgSend(v12, "shortcut"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "geoMapItem"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
      {
        [(ShortcutEditSessionControllerImpl *)self showAddShortcut:v12];
        goto LABEL_9;
      }

      v15 = [[EditShortcutViewController alloc] initWithShortcutEditSession:v12];
      [(EditShortcutViewController *)v15 setSessionController:self];
      objc_storeStrong(&self->_editShortcutViewController, v15);
      if (v13)
      {
        if (!self->_popoverPresentationController)
        {
          [(ShortcutEditSessionControllerImpl *)self _presentViewController:self->_editShortcutViewController sourceView:v13 sourceRect:x, y, width, height];
        }
      }

      else
      {
        v19 = objc_loadWeakRetained(&self->_containerViewController);
        [v19 presentController:self->_editShortcutViewController animated:1];
      }
    }
  }

LABEL_9:
}

- (void)viewController:(id)a3 didEditMapItemInSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_shortcutEditSession == v7 && [(ShortcutEditSession *)v7 editOnlyLocation])
  {
    self->_didReplaceShortcut = 1;
    [(ShortcutEditSession *)v8 setEditingModeType:1];
  }

  if (sub_10000FA08(v6) == 5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_addShortcutSetupViewController == v6)
    {
      objc_initWeak(&location, self);
      shortcutEditSession = self->_shortcutEditSession;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100B0F868;
      v14[3] = &unk_1016619A8;
      objc_copyWeak(&v15, &location);
      [(ShortcutEditSession *)shortcutEditSession saveWithCompletion:v14];
      v9 = &v15;
    }

    else
    {
      objc_initWeak(&location, self);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100B0F92C;
      v11[3] = &unk_10165FC50;
      objc_copyWeak(&v13, &location);
      v12 = v6;
      [(ShortcutEditSession *)v8 saveWithCompletion:v11];

      v9 = &v13;
    }

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ShortcutEditSessionControllerImpl *)self editShortcut:v8];
  }
}

- (void)addFavoriteButtonShortcut:(id)a3
{
  v4 = a3;
  [v4 setEditingModeType:1];
  [(ShortcutEditSessionControllerImpl *)self editShortcut:v4 sourceView:0 sourceRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  v7 = [v4 shortcut];

  if ([v7 type] == 6)
  {
    v5 = [v7 identifier];
    v6 = [v5 isEqualToString:@"NearbyTransit"];

    if (v6)
    {

      [GEOAPPortal captureUserAction:211 target:254 value:0];
    }
  }

  else
  {
  }
}

- (void)showAddContact:(id)a3
{
  v4 = a3;
  [(ShortcutEditSessionControllerImpl *)self capturePresenter];
  v7 = [[ContactSearchViewController alloc] initWithShortcutEditSession:v4];

  v5 = [(ShortcutEditSessionControllerImpl *)self delegate];
  [(ContaineeViewController *)v7 setContaineeDelegate:v5];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v7 animated:1];
}

- (void)showAddShortcut:(id)a3
{
  v4 = a3;
  [(ShortcutEditSessionControllerImpl *)self capturePresenter];
  v5 = [v4 shortcut];
  v6 = [v5 type];

  if (v6 <= 6)
  {
    if (((1 << v6) & 0x2C) != 0)
    {
      v11 = [[AddShortcutViewController alloc] initWithShortcutEditSession:v4];
      [(AddShortcutViewController *)v11 setSessionController:self];
      objc_storeStrong(&self->_addShortcutSetupViewController, v11);
      objc_initWeak(&location, self);
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100B0FD0C;
      v16 = &unk_101661B98;
      objc_copyWeak(&v17, &location);
      [(AddShortcutViewController *)self->_addShortcutSetupViewController setDismissActionHandler:&v13];
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      [WeakRetained presentController:self->_addShortcutSetupViewController animated:{1, v13, v14, v15, v16}];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else if (((1 << v6) & 0x43) != 0)
    {
      v7 = [[AddShortcutViewController alloc] initWithShortcutEditSession:v4];
      [(AddShortcutViewController *)v7 setSessionController:self];
      addShortcutViewController = self->_addShortcutViewController;
      self->_addShortcutViewController = v7;
      v9 = v7;

      [(AddShortcutViewController *)v9 setAccessibilityIdentifier:@"AddShortcutView"];
      v10 = objc_loadWeakRetained(&self->_containerViewController);
      [v10 presentController:self->_addShortcutViewController animated:1];
    }
  }
}

- (void)_doneLocationRefinement
{
  [(EditLocationViewController *)self->_refineCoordinateViewController selectedCoordinate];
  [(ShortcutEditSession *)self->_shortcutEditSession setAdjustedCoordinate:?];
  objc_initWeak(&location, self);
  if ([(ShortcutEditSession *)self->_shortcutEditSession editOnlyLocation])
  {
    shortcutEditSession = self->_shortcutEditSession;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100B0FE80;
    v4[3] = &unk_1016619A8;
    objc_copyWeak(&v5, &location);
    [(ShortcutEditSession *)shortcutEditSession saveWithCompletion:v4];
    objc_destroyWeak(&v5);
  }

  else
  {
    [(ShortcutEditSessionControllerImpl *)self _closeLocationRefinement];
  }

  objc_destroyWeak(&location);
}

- (void)_closeLocationRefinement
{
  objc_initWeak(&location, self);
  v3 = [(EditLocationViewController *)self->_refineCoordinateViewController presentingViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B0FF9C;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [v3 dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)showRefineLocation:(id)a3
{
  v10 = a3;
  v4 = [v10 shortcut];

  if (v4)
  {
    v5 = [RAPPersonalPlaceRefinementCoordinator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v7 = [v10 shortcut];
    v8 = [(RAPPersonalPlaceRefinementCoordinator *)v5 initWithPresentingViewController:WeakRetained delegate:self shortcut:v7];
    homeWorkCoordinator = self->_homeWorkCoordinator;
    self->_homeWorkCoordinator = v8;

    [v10 setEditingModeType:3];
    [(RAPPersonalPlaceRefinementCoordinator *)self->_homeWorkCoordinator beginShortcutRefinement];
  }
}

- (void)refinementCoordinatorDidComplete:(id)a3
{
  v5 = a3;
  editShortcutViewController = self->_editShortcutViewController;
  if (editShortcutViewController)
  {
    if (sub_10000FA08(editShortcutViewController) == 5 && self->_popoverPresentationController)
    {
      [(ShortcutEditSessionControllerImpl *)self closeViewController:self->_editShortcutViewController];
    }
  }

  else
  {
    [(ShortcutEditSessionControllerImpl *)self endSession];
  }
}

- (void)refinementCoordinator:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B1029C;
  v13[3] = &unk_101661340;
  objc_copyWeak(&v15, &location);
  v8 = v7;
  v14 = v8;
  v9 = objc_retainBlock(v13);
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v11 = sub_10000FA08(WeakRetained);

  if (v11 == 5)
  {
    v12 = objc_loadWeakRetained(&self->_containerViewController);
    [v12 dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    (v9[2])(v9);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)refinementCoordinator:(id)a3 finishedRefiningCoordinate:(CLLocationCoordinate2D)a4 withShortcut:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = a5;
  [(ShortcutEditSession *)self->_shortcutEditSession setAdjustedCoordinate:latitude, longitude];
  if ([(ShortcutEditSession *)self->_shortcutEditSession editOnlyLocation])
  {
    shortcutEditSession = self->_shortcutEditSession;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B103E4;
    v10[3] = &unk_101661738;
    v11 = v8;
    [(ShortcutEditSession *)shortcutEditSession saveWithCompletion:v10];
    if (!self->_editShortcutViewController)
    {
      [(ShortcutEditSessionControllerImpl *)self endSession];
    }
  }
}

- (void)refinementCoordinatorRequestsChangeAddress:(id)a3 withShortcut:(id)a4
{
  shortcutEditSession = self->_shortcutEditSession;
  v6 = a4;
  [(ShortcutEditSessionControllerImpl *)self showAddShortcut:shortcutEditSession];
  v7 = [v6 type];

  if ((v7 - 2) > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_101212C40[(v7 - 2)];
  }

  [GEOAPPortal captureUserAction:v8 target:253 value:0];
}

- (void)capturePresenter
{
  if (!self->_presentingViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v4 = [WeakRetained currentViewController];
    presentingViewController = self->_presentingViewController;
    self->_presentingViewController = v4;
  }
}

@end