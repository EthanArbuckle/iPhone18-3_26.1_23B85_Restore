@interface MFAttachmentShowcase
- (BOOL)isAddableToPassbook:(id)passbook;
- (BOOL)isProvisioningProfile:(id)profile;
- (BOOL)unknownContactsController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (MFAttachmentShowcaseDelegate)delegate;
- (UIDocumentInteractionControllerDelegate)documentInteractionControllerDelegate;
- (UIViewController)presentingViewController;
- (id)_controllerForVCardData:(id)data;
- (id)_controllerForVCardRepresentation:(id)representation;
- (id)_dataForContentRepresentation:(id)representation;
- (id)_eventPreviewControllerForICSRepresentation:(id)representation exchangeEventUID:(int)d managed:(BOOL)managed error:(id *)error;
- (id)_passkitViewControllerForRepresentation:(id)representation error:(id *)error;
- (id)documentInteractionControllerForContentRepresentation:(id)representation;
- (void)_clearController;
- (void)_doneButtonTapped:(id)tapped;
- (void)_presentContentRepresentation:(id)representation exchangeEventUID:(int)d scene:(id)scene showcaseInfo:(id)info delegate:(id)delegate completion:(id)completion;
- (void)dealloc;
- (void)finishedPresenting;
- (void)icsPreviewControllerWantsDismissal:(id)dismissal;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)unknownContactsControllerDidComplete:(id)complete;
@end

@implementation MFAttachmentShowcase

- (void)dealloc
{
  [(MFAttachmentShowcase *)self finishedPresenting];
  v3.receiver = self;
  v3.super_class = MFAttachmentShowcase;
  [(MFAttachmentShowcase *)&v3 dealloc];
}

- (void)_presentContentRepresentation:(id)representation exchangeEventUID:(int)d scene:(id)scene showcaseInfo:(id)info delegate:(id)delegate completion:(id)completion
{
  v12 = *&d;
  representationCopy = representation;
  sceneCopy = scene;
  infoCopy = info;
  delegateCopy = delegate;
  completionCopy = completion;
  v81 = delegateCopy;
  v83 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped:"];
  [(MFAttachmentShowcase *)self finishedPresenting];
  [(MFAttachmentShowcase *)self setDelegate:delegateCopy];
  contentItem = [representationCopy contentItem];
  type = [contentItem type];
  if ([type conformsToType:UTTypeVCard])
  {
    v17 = [(MFAttachmentShowcase *)self _controllerForVCardRepresentation:representationCopy];
    vcardController = self->_vcardController;
    self->_vcardController = v17;

    v19 = 0;
    viewController = [(CNUnknownContactsController *)self->_vcardController viewController];
    if (!viewController)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v21 = [type conformsToType:UTTypeCalendarEvent] ^ 1;
  if (v12)
  {
    LOBYTE(v21) = 0;
  }

  if ((v21 & 1) == 0)
  {
    v102 = 0;
    v22 = -[MFAttachmentShowcase _eventPreviewControllerForICSRepresentation:exchangeEventUID:managed:error:](self, "_eventPreviewControllerForICSRepresentation:exchangeEventUID:managed:error:", representationCopy, v12, [infoCopy fromManagedAccount], &v102);
    v19 = v102;
    if (!v19)
    {
      objc_storeStrong(&self->_icsPreviewController, v22);
      [(EKICSPreviewController *)self->_icsPreviewController setPreviewDelegate:self];
      viewController2 = [(EKICSPreviewController *)self->_icsPreviewController viewController];
      [viewController2 setHidesBottomBarWhenPushed:1];

      v83 = 0;
      [(EKICSPreviewController *)self->_icsPreviewController setCancelButtonWithTarget:self action:"_doneButtonTapped:"];
    }

    viewController = [v22 viewController];

    if (!viewController)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if ([(MFAttachmentShowcase *)self isProvisioningProfile:type])
  {
    v29 = [(MFAttachmentShowcase *)self _dataForContentRepresentation:representationCopy];
    contentURL = [representationCopy contentURL];
    lastPathComponent = [contentURL lastPathComponent];

    v32 = +[MCProfileConnection sharedConnection];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_1001A6CD4;
    v99[3] = &unk_100653328;
    v33 = lastPathComponent;
    v100 = v33;
    v101 = completionCopy;
    [v32 queueFileDataForAcceptance:v29 originalFileName:v33 forBundleID:0 completion:v99];

LABEL_18:
    viewController = 0;
    v19 = 0;
    goto LABEL_24;
  }

  identifier = [type identifier];
  if (([identifier ef_conformsToRFC822UTType] & 1) == 0)
  {

LABEL_30:
    if ([(MFAttachmentShowcase *)self isAddableToPassbook:type])
    {
      v98 = 0;
      v41 = [(MFAttachmentShowcase *)self _passkitViewControllerForRepresentation:representationCopy error:&v98];
      v19 = v98;
      if (v41)
      {
        viewController = v41;
LABEL_21:
        presentingViewController = [(MFAttachmentShowcase *)self presentingViewController];
        [presentingViewController presentViewController:viewController animated:objc_msgSend(infoCopy completion:{"shouldAnimate"), 0}];

        goto LABEL_22;
      }
    }

    else
    {
      identifier2 = [type identifier];
      v43 = [identifier2 isEqualToString:@"com.apple.watchface"];

      if (v43)
      {
        v44 = +[LSApplicationWorkspace defaultWorkspace];
        contentURL2 = [representationCopy contentURL];
        v46 = [v44 operationToOpenResource:contentURL2 usingApplication:@"com.apple.Bridge" uniqueDocumentIdentifier:0 userInfo:0];

        [v46 start];
      }

      else
      {
        identifier3 = [type identifier];
        v48 = [identifier3 isEqualToString:@"com.apple.workout"];

        if (v48)
        {
          v29 = [(MFAttachmentShowcase *)self _dataForContentRepresentation:representationCopy];
          sharedInstance = [sub_1001A6DE8() sharedInstance];
          v96[0] = _NSConcreteStackBlock;
          v96[1] = 3221225472;
          v96[2] = sub_1001A6EC8;
          v96[3] = &unk_100653350;
          v97 = completionCopy;
          [sharedInstance presentWorkoutConfigurationData:v29 completion:v96];

          v33 = v97;
          goto LABEL_18;
        }

        if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && ![type conformsToType:UTTypeImage])
        {
          contentURL3 = [representationCopy contentURL];
          v90[0] = _NSConcreteStackBlock;
          v90[1] = 3221225472;
          v90[2] = sub_1001A6FB8;
          v90[3] = &unk_100651378;
          v91 = delegateCopy;
          selfCopy = self;
          v67 = infoCopy;
          v93 = v67;
          v94 = sceneCopy;
          v68 = contentURL3;
          v95 = v68;
          v69 = objc_retainBlock(v90);
          if (_os_feature_enabled_impl())
          {
            v70 = [_MFAttachmentOpenResourceOperationDelegate alloc];
            v86[0] = _NSConcreteStackBlock;
            v86[1] = 3221225472;
            v86[2] = sub_1001A7294;
            v86[3] = &unk_100653378;
            v71 = v68;
            v87 = v71;
            v88 = 0;
            v89 = v69;
            v72 = [(_MFAttachmentOpenResourceOperationDelegate *)v70 initWithCompletionHandler:v86];
            v73 = objc_alloc_init(_LSOpenConfiguration);
            [v73 setUseOneTapOpenBehavior:1];
            v74 = +[LSApplicationWorkspace defaultWorkspace];
            v75 = [v74 operationToOpenResource:v71 usingApplication:0 uniqueDocumentIdentifier:0 isContentManaged:objc_msgSend(v67 sourceAuditToken:"fromManagedAccount") userInfo:0 configuration:0 delegate:{v73, v72}];

            v76 = objc_opt_new();
            [v76 addOperation:v75];
          }

          else
          {
            (v69[2])(v69);
          }
        }

        else
        {
          v50 = [(MFAttachmentShowcase *)self documentInteractionControllerForContentRepresentation:representationCopy];
          uidic = self->_uidic;
          self->_uidic = v50;

          documentInteractionControllerDelegate = [(MFAttachmentShowcase *)self documentInteractionControllerDelegate];
          [(UIDocumentInteractionController *)self->_uidic setDelegate:documentInteractionControllerDelegate];

          -[UIDocumentInteractionController setIsContentManaged:](self->_uidic, "setIsContentManaged:", [infoCopy fromManagedAccount]);
          if (!-[UIDocumentInteractionController presentPreviewAnimated:](self->_uidic, "presentPreviewAnimated:", [infoCopy shouldAnimate]))
          {
            v53 = self->_uidic;
            [infoCopy originRect];
            v55 = v54;
            v57 = v56;
            v59 = v58;
            v61 = v60;
            originView = [infoCopy originView];
            LOBYTE(v53) = -[UIDocumentInteractionController presentOptionsMenuFromRect:inView:animated:](v53, "presentOptionsMenuFromRect:inView:animated:", originView, [infoCopy shouldAnimate], v55, v57, v59, v61);

            if ((v53 & 1) == 0)
            {
              [(MFAttachmentShowcase *)self finishedPresenting];
              v103 = NSLocalizedDescriptionKey;
              v63 = +[NSBundle mainBundle];
              v64 = [v63 localizedStringForKey:@"ATTACHMENT_UNKNOWN_TYPE_TITLE" value:&stru_100662A88 table:@"Main"];
              v104 = v64;
              v65 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
              v19 = [NSError errorWithDomain:@"AttachmentShowcase" code:0 userInfo:v65];

              goto LABEL_36;
            }
          }
        }
      }

      v19 = 0;
    }

LABEL_36:
    viewController = 0;
    goto LABEL_22;
  }

  contentMessage = [representationCopy contentMessage];

  if (!contentMessage)
  {
    goto LABEL_30;
  }

  v37 = [EMLMessageViewController alloc];
  contentMessage2 = [representationCopy contentMessage];
  v78 = +[UIApplication sharedApplication];
  contactStore = [v78 contactStore];
  v38 = +[UIApplication sharedApplication];
  avatarGenerator = [v38 avatarGenerator];
  viewController = [(EMLMessageViewController *)v37 initWithScene:sceneCopy messageListItem:contentMessage2 contactStore:contactStore avatarGenerator:avatarGenerator];

  v40 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped:"];
  [(ConversationViewControllerBase *)viewController setDoneButton:v40];

  v19 = 0;
  if (viewController)
  {
LABEL_10:
    if (v83)
    {
      navigationItem = [(EMLMessageViewController *)viewController navigationItem];
      [navigationItem setRightBarButtonItem:v83];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [[UINavigationController alloc] initWithRootViewController:viewController];

      viewController = v25;
    }

    [(EMLMessageViewController *)viewController setModalPresentationStyle:7];
    popoverPresentationController = [(EMLMessageViewController *)viewController popoverPresentationController];
    originView2 = [infoCopy originView];
    [popoverPresentationController setSourceView:originView2];

    [popoverPresentationController setDelegate:self];
    [infoCopy originRect];
    v106.origin.x = CGRectZero.origin.x;
    v106.origin.y = CGRectZero.origin.y;
    v106.size.width = CGRectZero.size.width;
    v106.size.height = CGRectZero.size.height;
    if (CGRectEqualToRect(v105, v106))
    {
      originView3 = [infoCopy originView];
      [originView3 bounds];
      [popoverPresentationController setSourceRect:?];
    }

    else
    {
      [infoCopy originRect];
      [popoverPresentationController setSourceRect:?];
    }

    goto LABEL_21;
  }

LABEL_22:
  if (completionCopy)
  {
    completionCopy[2]();
  }

LABEL_24:
}

- (void)_clearController
{
  controller = self->_controller;
  self->_controller = 0;

  icsPreviewController = self->_icsPreviewController;
  self->_icsPreviewController = 0;

  uidic = self->_uidic;
  self->_uidic = 0;

  vcardController = self->_vcardController;
  self->_vcardController = 0;
}

- (void)finishedPresenting
{
  if (pthread_main_np() != 1)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MFAttachmentShowcase.m" lineNumber:266 description:@"Current thread must be main"];
  }

  delegate = [(UIDocumentInteractionController *)self->_uidic delegate];

  if (delegate == self)
  {
    [(UIDocumentInteractionController *)self->_uidic setDelegate:0];
  }

  [(MFAttachmentShowcase *)self _clearController];
  if (self->_rfc822DataProvider)
  {
    v5 = +[MFAttachmentManager defaultManager];
    [v5 removeProvider:self->_rfc822DataProvider];

    rfc822DataProvider = self->_rfc822DataProvider;
    self->_rfc822DataProvider = 0;
  }
}

- (void)_doneButtonTapped:(id)tapped
{
  delegate = [(MFAttachmentShowcase *)self delegate];
  v4 = [delegate presentingViewControllerForAttachmentShowcase:self];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (id)_controllerForVCardRepresentation:(id)representation
{
  v4 = [(MFAttachmentShowcase *)self _dataForContentRepresentation:representation];
  v5 = [(MFAttachmentShowcase *)self _controllerForVCardData:v4];

  return v5;
}

- (id)_eventPreviewControllerForICSRepresentation:(id)representation exchangeEventUID:(int)d managed:(BOOL)managed error:(id *)error
{
  managedCopy = managed;
  v8 = *&d;
  representationCopy = representation;
  v10 = objc_alloc_init(EKEventStore);
  if (v8 || ([representationCopy contentItem], v11 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v11, "exchangeEventUID"), v11, v8))
  {
    v12 = [[EKICSPreviewController alloc] initWithEventUID:v8 eventStore:v10];
  }

  else
  {
    if (managedCopy)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [v10 setSourceAccountManagement:v17];
    v18 = [EKICSPreviewController alloc];
    contentURL = [representationCopy contentURL];
    v12 = [v18 initWithURL:contentURL eventStore:v10];

    [v12 setAllowsImport:1];
    [v12 setAllowsEditing:1];
  }

  if (error && !v12)
  {
    v20 = NSLocalizedDescriptionKey;
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"ATTACHMENT_INVALID_CALENDAR_EVENT" value:&stru_100662A88 table:@"Main"];
    v21 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *error = [NSError errorWithDomain:@"AttachmentShowcase" code:1 userInfo:v15];
  }

  return v12;
}

- (id)_passkitViewControllerForRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v7 = [(MFAttachmentShowcase *)self _dataForContentRepresentation:representationCopy];
  v8 = [[PKPass alloc] initWithData:v7 error:error];
  v9 = v8;
  if (v8)
  {
    v13 = v8;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  v11 = [[PKAddPassesViewController alloc] initWithPasses:v10];

  return v11;
}

- (id)_dataForContentRepresentation:(id)representation
{
  representationCopy = representation;
  contentURL = [representationCopy contentURL];
  v10 = 0;
  v5 = [NSData dataWithContentsOfURL:contentURL options:1 error:&v10];
  v6 = v10;

  if (v6 || !v5)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10048ABCC(representationCopy, v6, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)documentInteractionControllerForContentRepresentation:(id)representation
{
  representationCopy = representation;
  contentURL = [representationCopy contentURL];
  contentItem = [representationCopy contentItem];
  displayName = [contentItem displayName];
  type = [contentItem type];
  identifier = [type identifier];
  if ([identifier ef_conformsToIWorkUTType])
  {
    pathExtension = [displayName pathExtension];
    v10 = [pathExtension caseInsensitiveCompare:@"zip"];

    if (!v10)
    {
      goto LABEL_5;
    }

    [displayName stringByDeletingPathExtension];
    displayName = identifier = displayName;
  }

LABEL_5:
  v11 = [MFDocumentInteractionController interactionControllerWithURL:contentURL];
  [v11 setName:displayName];
  identifier2 = [type identifier];
  ef_conformsToRFC822UTType = [identifier2 ef_conformsToRFC822UTType];
  v14 = ef_conformsToRFC822UTType;
  if (ef_conformsToRFC822UTType)
  {
    identifier3 = EFEmailMessageUTType;
  }

  else
  {
    identifier3 = [type identifier];
  }

  [v11 setUTI:identifier3];
  if ((v14 & 1) == 0)
  {
  }

  [v11 setShouldUnzipDocument:1];
  uniformTypeIdentifier = [contentItem uniformTypeIdentifier];
  [v11 setPreviewsPresentWithMarkup:{objc_msgSend(uniformTypeIdentifier, "ef_conformsToMarkupUTType")}];

  return v11;
}

- (id)_controllerForVCardData:(id)data
{
  v10 = 0;
  v4 = [CNContactVCardSerialization contactsWithData:data error:&v10];
  v5 = v10;
  if (!v4)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10048AC54(v5, v6);
    }

    v4 = &__NSArray0__struct;
  }

  v7 = [[CNUnknownContactsController alloc] initWithContacts:v4 contactStore:0];
  [v7 setDelegate:self];
  viewController = [v7 viewController];
  [viewController setHidesBottomBarWhenPushed:1];

  return v7;
}

- (BOOL)isProvisioningProfile:(id)profile
{
  profileCopy = profile;
  v4 = [UTType typeWithIdentifier:kMFUTTypeMobileConfig];
  if ([profileCopy conformsToType:v4] & 1) != 0 || (objc_msgSend(profileCopy, "conformsToType:", UTTypePKCS12) & 1) != 0 || (objc_msgSend(profileCopy, "conformsToType:", UTTypeX509Certificate))
  {
    v5 = 1;
  }

  else
  {
    v7 = [UTType typeWithIdentifier:kMFUTTypeMobileProvision];
    v5 = [profileCopy conformsToType:v7];
  }

  return v5;
}

- (BOOL)isAddableToPassbook:(id)passbook
{
  passbookCopy = passbook;
  if (([passbookCopy conformsToType:_UTTypePassData] & 1) != 0 || objc_msgSend(passbookCopy, "conformsToType:", _UTTypePassBundle))
  {
    v4 = +[PKAddPassesViewController canAddPasses];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)unknownContactsController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  propertyCopy = property;
  v6 = [propertyCopy key];
  v7 = [v6 isEqualToString:CNContactEmailAddressesKey];

  if (v7)
  {
    presentingViewController = [(MFAttachmentShowcase *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  return 1;
}

- (void)unknownContactsControllerDidComplete:(id)complete
{
  presentingViewController = [(MFAttachmentShowcase *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFAttachmentShowcase *)self finishedPresenting];
  }
}

- (void)icsPreviewControllerWantsDismissal:(id)dismissal
{
  delegate = [(MFAttachmentShowcase *)self delegate];
  v4 = [delegate presentingViewControllerForAttachmentShowcase:self];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (UIDocumentInteractionControllerDelegate)documentInteractionControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_documentInteractionControllerDelegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (MFAttachmentShowcaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end