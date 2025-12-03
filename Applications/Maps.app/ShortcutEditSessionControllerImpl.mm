@interface ShortcutEditSessionControllerImpl
- (CNContact)meCardContact;
- (ContainerViewController)containerViewController;
- (ShortcutEditSessionControllerDelegate)delegate;
- (id)requestInitiator;
- (void)_closeLocationRefinement;
- (void)_createNewContactCard;
- (void)_doneLocationRefinement;
- (void)_presentContactVC:(id)c;
- (void)_presentViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect;
- (void)_showContactCard:(id)card;
- (void)_showContactPicker;
- (void)addFavoriteButtonShortcut:(id)shortcut;
- (void)capturePresenter;
- (void)closeViewController:(id)controller;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)createOrUpdateMeCardWithFavorite:(id)favorite completion:(id)completion;
- (void)editShortcut:(id)shortcut sourceView:(id)view sourceRect:(CGRect)rect;
- (void)endSession;
- (void)presentChoicePickerFrom:(id)from;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)presentedViewControllerWasDismissedBySwiping:(id)swiping;
- (void)refinementCoordinator:(id)coordinator finishedRefiningCoordinate:(CLLocationCoordinate2D)coordinate withShortcut:(id)shortcut;
- (void)refinementCoordinator:(id)coordinator presentViewController:(id)controller;
- (void)refinementCoordinatorDidComplete:(id)complete;
- (void)refinementCoordinatorRequestsChangeAddress:(id)address withShortcut:(id)shortcut;
- (void)removeShortcut:(id)shortcut;
- (void)showAddContact:(id)contact;
- (void)showAddShortcut:(id)shortcut;
- (void)showMeCard;
- (void)showMeCardWithAddress:(id)address from:(id)from;
- (void)showRefineLocation:(id)location;
- (void)viewController:(id)controller didEditMapItemInSession:(id)session;
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

- (void)presentationControllerWillDismiss:(id)dismiss
{
  if (self->_popoverPresentationController == dismiss)
  {
    [(ShortcutEditSessionControllerImpl *)self closeViewController:self->_editShortcutViewController];
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  v8 = self->_meCardSetupViewController;
  objc_storeStrong(&self->_meCardContact, contact);
  pickerCopy = picker;
  [(MeCardShortcutViewController *)self->_meCardSetupViewController updateContact];
  v10 = +[AddressBookManager sharedManager];
  contactStore = [v10 contactStore];
  [contactStore setMeContact:contactCopy error:0];

  presentingViewController = [pickerCopy presentingViewController];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B0D8F4;
  v15[3] = &unk_101661A40;
  v16 = contactCopy;
  v17 = v8;
  selfCopy = self;
  v13 = v8;
  v14 = contactCopy;
  [presentingViewController dismissViewControllerAnimated:1 completion:v15];
}

- (void)contactPickerDidCancel:(id)cancel
{
  presentingViewController = [cancel presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  if (self->_addressToAdd)
  {
    editShortcutViewController = self->_editShortcutViewController;

    [(EditShortcutViewController *)editShortcutViewController resetToMapItemType];
  }
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  v8 = self->_meCardSetupViewController;
  if (contactCopy)
  {
    v9 = +[AddressBookManager sharedManager];
    meCardExists = [v9 meCardExists];

    if ((meCardExists & 1) == 0)
    {
      v11 = +[AddressBookManager sharedManager];
      contactStore = [v11 contactStore];
      [contactStore setMeContact:contactCopy error:0];
    }

    if (self->_addressToAdd)
    {
      [contactCopy postalAddresses];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v36 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v14)
      {
        contactCopy2 = contact;
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
            v18 = [(CNLabeledValue *)self->_addressToAdd identifier:contactCopy2];
            identifier = [v17 identifier];
            v20 = [v18 isEqualToString:identifier];

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
        contact = contactCopy2;
        v8 = v27;
      }

      [(EditShortcutViewController *)self->_editShortcutViewController didEditContactWithAddressAdded:v14];
      addressToAdd = self->_addressToAdd;
      self->_addressToAdd = 0;
    }

    objc_storeStrong(&self->_meCardContact, contact);
    [(MeCardShortcutViewController *)v8 updateContact];
  }

  else if (self->_addressToAdd)
  {
    [(EditShortcutViewController *)self->_editShortcutViewController resetToMapItemType];
  }

  presentingViewController = [controllerCopy presentingViewController];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100B0DCC4;
  v28[3] = &unk_101656A00;
  v29 = contactCopy;
  v30 = v8;
  selfCopy = self;
  v32 = controllerCopy;
  v23 = controllerCopy;
  v24 = v8;
  v25 = contactCopy;
  [presentingViewController dismissViewControllerAnimated:1 completion:v28];
}

- (void)presentChoicePickerFrom:(id)from
{
  fromCopy = from;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Shortcut] No Existing Contact Card" value:@"localized string not found" table:0];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:0];

  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceView:fromCopy];

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

  containerViewController = [(ShortcutEditSessionControllerImpl *)self containerViewController];
  [containerViewController _maps_topMostPresentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_presentContactVC:(id)c
{
  cCopy = c;
  if (sub_10000FA08(cCopy) == 5)
  {
    [(EditShortcutViewController *)self->_editShortcutViewController setOpeningContactController:1];
    objc_initWeak(&location, self);
    containerViewController = [(ShortcutEditSessionControllerImpl *)self containerViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B0E300;
    v7[3] = &unk_101661340;
    objc_copyWeak(&v9, &location);
    v8 = cCopy;
    [containerViewController dismissViewControllerAnimated:1 completion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    containerViewController2 = [(ShortcutEditSessionControllerImpl *)self containerViewController];
    [containerViewController2 _maps_topMostPresentViewController:cCopy animated:1 completion:0];
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

- (void)_showContactCard:(id)card
{
  cardCopy = card;
  [cardCopy setDelegate:self];
  [cardCopy setDisplayMode:1];
  v6 = [[UINavigationController alloc] initWithRootViewController:cardCopy];

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

- (void)createOrUpdateMeCardWithFavorite:(id)favorite completion:(id)completion
{
  favoriteCopy = favorite;
  completionCopy = completion;
  cnLabledAddress = [favoriteCopy cnLabledAddress];
  if (cnLabledAddress && ([favoriteCopy isMeCardWritebackEnabled] & 1) != 0)
  {
    v9 = +[AddressBookManager sharedManager];
    meCard = [v9 meCard];

    if (meCard)
    {
      value = [cnLabledAddress value];
      postalAddresses = [meCard postalAddresses];
      v13 = [CNLabeledValue firstLabeledValueWithValue:value inArray:postalAddresses];

      if (v13)
      {
        completionCopy[2](completionCopy);
LABEL_14:

        goto LABEL_15;
      }

      aa_firstName = [meCard mutableCopy];
      postalAddresses2 = [aa_firstName postalAddresses];
      aa_lastName = [postalAddresses2 mutableCopy];

      [aa_lastName addObject:cnLabledAddress];
      [aa_firstName setPostalAddresses:aa_lastName];
      v25 = +[AddressBookManager sharedManager];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100B0E944;
      v31[3] = &unk_1016382C0;
      v32 = completionCopy;
      [v25 updateContact:aa_firstName completion:v31];
    }

    else
    {
      v14 = +[GEOUserAccountInfo primaryICloudAccount];
      aa_firstName = [v14 aa_firstName];

      v16 = +[GEOUserAccountInfo primaryICloudAccount];
      aa_lastName = [v16 aa_lastName];

      if (aa_firstName && aa_lastName)
      {
        v18 = objc_alloc_init(CNMutableContact);
        v34 = cnLabledAddress;
        v19 = [NSArray arrayWithObjects:&v34 count:1];
        [v18 setPostalAddresses:v19];

        [v18 setGivenName:aa_firstName];
        v20 = +[GEOUserAccountInfo primaryICloudAccount];
        aa_middleName = [v20 aa_middleName];
        [v18 setMiddleName:aa_middleName];

        [v18 setFamilyName:aa_lastName];
        v22 = +[AddressBookManager sharedManager];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100B0E954;
        v29[3] = &unk_1016382C0;
        v30 = completionCopy;
        [v22 createMeCardWithContact:v18 completion:v29];

        v23 = v30;
      }

      else
      {
        v26 = objc_retainBlock(completionCopy);
        contactsSaveHandler = self->contactsSaveHandler;
        self->contactsSaveHandler = v26;

        v18 = objc_alloc_init(CNMutableContact);
        v33 = cnLabledAddress;
        v28 = [NSArray arrayWithObjects:&v33 count:1];
        [v18 setPostalAddresses:v28];

        v23 = [CNContactViewController viewControllerForNewContact:v18];
        [(ShortcutEditSessionControllerImpl *)self _showContactCard:v23];
      }
    }

    goto LABEL_14;
  }

  completionCopy[2](completionCopy);
LABEL_15:
}

- (void)showMeCardWithAddress:(id)address from:(id)from
{
  addressCopy = address;
  fromCopy = from;
  meCardContact = [(ShortcutEditSessionControllerImpl *)self meCardContact];

  if (meCardContact)
  {
    if (addressCopy)
    {
      v10 = objc_alloc_init(CNMutableContact);
      v15 = addressCopy;
      v11 = [NSArray arrayWithObjects:&v15 count:1];
      [v10 setPostalAddresses:v11];

      meCardContact2 = [(ShortcutEditSessionControllerImpl *)self meCardContact];
      v13 = [CNContactViewController viewControllerForUpdatingContact:meCardContact2 withPropertiesFromContact:v10];

      objc_storeStrong(&self->_addressToAdd, address);
    }

    else
    {
      meCardContact3 = [(ShortcutEditSessionControllerImpl *)self meCardContact];
      v13 = [CNContactViewController viewControllerForContact:meCardContact3];

      [v13 setActions:{objc_msgSend(v13, "actions") | 0x100}];
    }

    [v13 setEditMode:2];
    [(ShortcutEditSessionControllerImpl *)self _showContactCard:v13];
  }

  else if (fromCopy)
  {
    objc_storeStrong(&self->_addressToAdd, address);
    [(ShortcutEditSessionControllerImpl *)self presentChoicePickerFrom:fromCopy];
  }
}

- (void)showMeCard
{
  meCardContact = [(ShortcutEditSessionControllerImpl *)self meCardContact];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100B0ECB0;
  v11[3] = &unk_101661340;
  objc_copyWeak(&v13, &location);
  v4 = meCardContact;
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
    meCard = [v4 meCard];
    v6 = self->_meCardContact;
    self->_meCardContact = meCard;

    meCardContact = self->_meCardContact;
  }

  return meCardContact;
}

- (void)closeViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_meCardSetupViewController == controllerCopy && self->_editShortcutViewController)
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

    v9 = sub_10000FA08(controllerCopy);
    presentingViewController = self->_presentingViewController;
    if (v9 == 5 && presentingViewController == controllerCopy)
    {
      if ([(MeCardShortcutViewController *)controllerCopy modalPresentationStyle]== 2)
      {
        goto LABEL_4;
      }

      presentingViewController = self->_presentingViewController;
    }

    [(ContaineeProtocol *)presentingViewController handleDismissAction:self];
    goto LABEL_19;
  }

  if (sub_10000FA08(controllerCopy) == 5 && [(MeCardShortcutViewController *)controllerCopy modalPresentationStyle]== 2)
  {
    goto LABEL_4;
  }

LABEL_19:
}

- (void)endSession
{
  if (self->_didReplaceShortcut)
  {
    shortcut = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shortcut2 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    }

    else
    {
      shortcut2 = 0;
    }
  }

  else
  {
    shortcut2 = 0;
  }

  self->_didReplaceShortcut = 0;
  delegate = [(ShortcutEditSessionControllerImpl *)self delegate];
  [delegate shortcutEditSessionControllerFinished:self shortcutWasReplacedBy:shortcut2];

  completionHandler = [(ShortcutEditSession *)self->_shortcutEditSession completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(ShortcutEditSession *)self->_shortcutEditSession completionHandler];
    completionHandler2[2]();
  }
}

- (void)presentedViewControllerWasDismissedBySwiping:(id)swiping
{
  swipingCopy = swiping;
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

- (void)removeShortcut:(id)shortcut
{
  [shortcut removeFromShortcutsWithCompletion:&stru_101638298];
  if (self->_popoverPresentationController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    presentedViewController = [WeakRetained presentedViewController];
    editShortcutViewController = self->_editShortcutViewController;

    if (presentedViewController == editShortcutViewController)
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

- (void)_presentViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  if (viewCopy)
  {
    [controllerCopy setModalPresentationStyle:7];
    popoverPresentationController = [controllerCopy popoverPresentationController];
    popoverPresentationController = self->_popoverPresentationController;
    self->_popoverPresentationController = popoverPresentationController;

    [(UIPopoverPresentationController *)self->_popoverPresentationController setDelegate:self];
    [(UIPopoverPresentationController *)self->_popoverPresentationController setSourceView:viewCopy];
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
    v20 = controllerCopy;
    [v17 dismissViewControllerAnimated:1 completion:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = objc_loadWeakRetained(&self->_containerViewController);
    [v18 _maps_topMostPresentViewController:controllerCopy animated:1 completion:0];
  }
}

- (void)editShortcut:(id)shortcut sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shortcutCopy = shortcut;
  viewCopy = view;
  objc_storeStrong(&self->_shortcutEditSession, shortcut);
  [(ShortcutEditSessionControllerImpl *)self capturePresenter];
  if ([shortcutCopy editOnlyLocation])
  {
    [(ShortcutEditSessionControllerImpl *)self showRefineLocation:shortcutCopy];
  }

  else
  {
    if (([shortcutCopy editOnlyAddress] & 1) != 0 || objc_msgSend(shortcutCopy, "editingModeType") == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      currentViewController = [WeakRetained currentViewController];

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
        v21 = currentViewController;
        [(ShortcutEditSession *)shortcutEditSession saveWithCompletion:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      else
      {
        [(ShortcutEditSessionControllerImpl *)self showAddShortcut:shortcutCopy];
      }
    }

    else
    {
      if ([shortcutCopy isSetupPlaceholder] && !+[LibraryUIUtilities isMyPlacesEnabled](_TtC4Maps18LibraryUIUtilities, "isMyPlacesEnabled") || +[LibraryUIUtilities isMyPlacesEnabled](_TtC4Maps18LibraryUIUtilities, "isMyPlacesEnabled") && (objc_msgSend(shortcutCopy, "shortcut"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "geoMapItem"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
      {
        [(ShortcutEditSessionControllerImpl *)self showAddShortcut:shortcutCopy];
        goto LABEL_9;
      }

      currentViewController = [[EditShortcutViewController alloc] initWithShortcutEditSession:shortcutCopy];
      [(EditShortcutViewController *)currentViewController setSessionController:self];
      objc_storeStrong(&self->_editShortcutViewController, currentViewController);
      if (viewCopy)
      {
        if (!self->_popoverPresentationController)
        {
          [(ShortcutEditSessionControllerImpl *)self _presentViewController:self->_editShortcutViewController sourceView:viewCopy sourceRect:x, y, width, height];
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

- (void)viewController:(id)controller didEditMapItemInSession:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  v8 = sessionCopy;
  if (self->_shortcutEditSession == sessionCopy && [(ShortcutEditSession *)sessionCopy editOnlyLocation])
  {
    self->_didReplaceShortcut = 1;
    [(ShortcutEditSession *)v8 setEditingModeType:1];
  }

  if (sub_10000FA08(controllerCopy) == 5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_addShortcutSetupViewController == controllerCopy)
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
      v12 = controllerCopy;
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

- (void)addFavoriteButtonShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  [shortcutCopy setEditingModeType:1];
  [(ShortcutEditSessionControllerImpl *)self editShortcut:shortcutCopy sourceView:0 sourceRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  shortcut = [shortcutCopy shortcut];

  if ([shortcut type] == 6)
  {
    identifier = [shortcut identifier];
    v6 = [identifier isEqualToString:@"NearbyTransit"];

    if (v6)
    {

      [GEOAPPortal captureUserAction:211 target:254 value:0];
    }
  }

  else
  {
  }
}

- (void)showAddContact:(id)contact
{
  contactCopy = contact;
  [(ShortcutEditSessionControllerImpl *)self capturePresenter];
  v7 = [[ContactSearchViewController alloc] initWithShortcutEditSession:contactCopy];

  delegate = [(ShortcutEditSessionControllerImpl *)self delegate];
  [(ContaineeViewController *)v7 setContaineeDelegate:delegate];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v7 animated:1];
}

- (void)showAddShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  [(ShortcutEditSessionControllerImpl *)self capturePresenter];
  shortcut = [shortcutCopy shortcut];
  type = [shortcut type];

  if (type <= 6)
  {
    if (((1 << type) & 0x2C) != 0)
    {
      v11 = [[AddShortcutViewController alloc] initWithShortcutEditSession:shortcutCopy];
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

    else if (((1 << type) & 0x43) != 0)
    {
      v7 = [[AddShortcutViewController alloc] initWithShortcutEditSession:shortcutCopy];
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
  presentingViewController = [(EditLocationViewController *)self->_refineCoordinateViewController presentingViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B0FF9C;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [presentingViewController dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)showRefineLocation:(id)location
{
  locationCopy = location;
  shortcut = [locationCopy shortcut];

  if (shortcut)
  {
    v5 = [RAPPersonalPlaceRefinementCoordinator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    shortcut2 = [locationCopy shortcut];
    v8 = [(RAPPersonalPlaceRefinementCoordinator *)v5 initWithPresentingViewController:WeakRetained delegate:self shortcut:shortcut2];
    homeWorkCoordinator = self->_homeWorkCoordinator;
    self->_homeWorkCoordinator = v8;

    [locationCopy setEditingModeType:3];
    [(RAPPersonalPlaceRefinementCoordinator *)self->_homeWorkCoordinator beginShortcutRefinement];
  }
}

- (void)refinementCoordinatorDidComplete:(id)complete
{
  completeCopy = complete;
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

- (void)refinementCoordinator:(id)coordinator presentViewController:(id)controller
{
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B1029C;
  v13[3] = &unk_101661340;
  objc_copyWeak(&v15, &location);
  v8 = controllerCopy;
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

- (void)refinementCoordinator:(id)coordinator finishedRefiningCoordinate:(CLLocationCoordinate2D)coordinate withShortcut:(id)shortcut
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  shortcutCopy = shortcut;
  [(ShortcutEditSession *)self->_shortcutEditSession setAdjustedCoordinate:latitude, longitude];
  if ([(ShortcutEditSession *)self->_shortcutEditSession editOnlyLocation])
  {
    shortcutEditSession = self->_shortcutEditSession;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B103E4;
    v10[3] = &unk_101661738;
    v11 = shortcutCopy;
    [(ShortcutEditSession *)shortcutEditSession saveWithCompletion:v10];
    if (!self->_editShortcutViewController)
    {
      [(ShortcutEditSessionControllerImpl *)self endSession];
    }
  }
}

- (void)refinementCoordinatorRequestsChangeAddress:(id)address withShortcut:(id)shortcut
{
  shortcutEditSession = self->_shortcutEditSession;
  shortcutCopy = shortcut;
  [(ShortcutEditSessionControllerImpl *)self showAddShortcut:shortcutEditSession];
  type = [shortcutCopy type];

  if ((type - 2) > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_101212C40[(type - 2)];
  }

  [GEOAPPortal captureUserAction:v8 target:253 value:0];
}

- (void)capturePresenter
{
  if (!self->_presentingViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    currentViewController = [WeakRetained currentViewController];
    presentingViewController = self->_presentingViewController;
    self->_presentingViewController = currentViewController;
  }
}

@end