@interface MFAttachmentShowcase
- (BOOL)isAddableToPassbook:(id)a3;
- (BOOL)isProvisioningProfile:(id)a3;
- (BOOL)unknownContactsController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4;
- (MFAttachmentShowcaseDelegate)delegate;
- (UIDocumentInteractionControllerDelegate)documentInteractionControllerDelegate;
- (UIViewController)presentingViewController;
- (id)_controllerForVCardData:(id)a3;
- (id)_controllerForVCardRepresentation:(id)a3;
- (id)_dataForContentRepresentation:(id)a3;
- (id)_eventPreviewControllerForICSRepresentation:(id)a3 exchangeEventUID:(int)a4 managed:(BOOL)a5 error:(id *)a6;
- (id)_passkitViewControllerForRepresentation:(id)a3 error:(id *)a4;
- (id)documentInteractionControllerForContentRepresentation:(id)a3;
- (void)_clearController;
- (void)_doneButtonTapped:(id)a3;
- (void)_presentContentRepresentation:(id)a3 exchangeEventUID:(int)a4 scene:(id)a5 showcaseInfo:(id)a6 delegate:(id)a7 completion:(id)a8;
- (void)dealloc;
- (void)finishedPresenting;
- (void)icsPreviewControllerWantsDismissal:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)unknownContactsControllerDidComplete:(id)a3;
@end

@implementation MFAttachmentShowcase

- (void)dealloc
{
  [(MFAttachmentShowcase *)self finishedPresenting];
  v3.receiver = self;
  v3.super_class = MFAttachmentShowcase;
  [(MFAttachmentShowcase *)&v3 dealloc];
}

- (void)_presentContentRepresentation:(id)a3 exchangeEventUID:(int)a4 scene:(id)a5 showcaseInfo:(id)a6 delegate:(id)a7 completion:(id)a8
{
  v12 = *&a4;
  v85 = a3;
  v82 = a5;
  v14 = a6;
  v15 = a7;
  v84 = a8;
  v81 = v15;
  v83 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped:"];
  [(MFAttachmentShowcase *)self finishedPresenting];
  [(MFAttachmentShowcase *)self setDelegate:v15];
  v80 = [v85 contentItem];
  v16 = [v80 type];
  if ([v16 conformsToType:UTTypeVCard])
  {
    v17 = [(MFAttachmentShowcase *)self _controllerForVCardRepresentation:v85];
    vcardController = self->_vcardController;
    self->_vcardController = v17;

    v19 = 0;
    v20 = [(CNUnknownContactsController *)self->_vcardController viewController];
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v21 = [v16 conformsToType:UTTypeCalendarEvent] ^ 1;
  if (v12)
  {
    LOBYTE(v21) = 0;
  }

  if ((v21 & 1) == 0)
  {
    v102 = 0;
    v22 = -[MFAttachmentShowcase _eventPreviewControllerForICSRepresentation:exchangeEventUID:managed:error:](self, "_eventPreviewControllerForICSRepresentation:exchangeEventUID:managed:error:", v85, v12, [v14 fromManagedAccount], &v102);
    v19 = v102;
    if (!v19)
    {
      objc_storeStrong(&self->_icsPreviewController, v22);
      [(EKICSPreviewController *)self->_icsPreviewController setPreviewDelegate:self];
      v23 = [(EKICSPreviewController *)self->_icsPreviewController viewController];
      [v23 setHidesBottomBarWhenPushed:1];

      v83 = 0;
      [(EKICSPreviewController *)self->_icsPreviewController setCancelButtonWithTarget:self action:"_doneButtonTapped:"];
    }

    v20 = [v22 viewController];

    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if ([(MFAttachmentShowcase *)self isProvisioningProfile:v16])
  {
    v29 = [(MFAttachmentShowcase *)self _dataForContentRepresentation:v85];
    v30 = [v85 contentURL];
    v31 = [v30 lastPathComponent];

    v32 = +[MCProfileConnection sharedConnection];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_1001A6CD4;
    v99[3] = &unk_100653328;
    v33 = v31;
    v100 = v33;
    v101 = v84;
    [v32 queueFileDataForAcceptance:v29 originalFileName:v33 forBundleID:0 completion:v99];

LABEL_18:
    v20 = 0;
    v19 = 0;
    goto LABEL_24;
  }

  v35 = [v16 identifier];
  if (([v35 ef_conformsToRFC822UTType] & 1) == 0)
  {

LABEL_30:
    if ([(MFAttachmentShowcase *)self isAddableToPassbook:v16])
    {
      v98 = 0;
      v41 = [(MFAttachmentShowcase *)self _passkitViewControllerForRepresentation:v85 error:&v98];
      v19 = v98;
      if (v41)
      {
        v20 = v41;
LABEL_21:
        v34 = [(MFAttachmentShowcase *)self presentingViewController];
        [v34 presentViewController:v20 animated:objc_msgSend(v14 completion:{"shouldAnimate"), 0}];

        goto LABEL_22;
      }
    }

    else
    {
      v42 = [v16 identifier];
      v43 = [v42 isEqualToString:@"com.apple.watchface"];

      if (v43)
      {
        v44 = +[LSApplicationWorkspace defaultWorkspace];
        v45 = [v85 contentURL];
        v46 = [v44 operationToOpenResource:v45 usingApplication:@"com.apple.Bridge" uniqueDocumentIdentifier:0 userInfo:0];

        [v46 start];
      }

      else
      {
        v47 = [v16 identifier];
        v48 = [v47 isEqualToString:@"com.apple.workout"];

        if (v48)
        {
          v29 = [(MFAttachmentShowcase *)self _dataForContentRepresentation:v85];
          v49 = [sub_1001A6DE8() sharedInstance];
          v96[0] = _NSConcreteStackBlock;
          v96[1] = 3221225472;
          v96[2] = sub_1001A6EC8;
          v96[3] = &unk_100653350;
          v97 = v84;
          [v49 presentWorkoutConfigurationData:v29 completion:v96];

          v33 = v97;
          goto LABEL_18;
        }

        if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && ![v16 conformsToType:UTTypeImage])
        {
          v66 = [v85 contentURL];
          v90[0] = _NSConcreteStackBlock;
          v90[1] = 3221225472;
          v90[2] = sub_1001A6FB8;
          v90[3] = &unk_100651378;
          v91 = v15;
          v92 = self;
          v67 = v14;
          v93 = v67;
          v94 = v82;
          v68 = v66;
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
          v50 = [(MFAttachmentShowcase *)self documentInteractionControllerForContentRepresentation:v85];
          uidic = self->_uidic;
          self->_uidic = v50;

          v52 = [(MFAttachmentShowcase *)self documentInteractionControllerDelegate];
          [(UIDocumentInteractionController *)self->_uidic setDelegate:v52];

          -[UIDocumentInteractionController setIsContentManaged:](self->_uidic, "setIsContentManaged:", [v14 fromManagedAccount]);
          if (!-[UIDocumentInteractionController presentPreviewAnimated:](self->_uidic, "presentPreviewAnimated:", [v14 shouldAnimate]))
          {
            v53 = self->_uidic;
            [v14 originRect];
            v55 = v54;
            v57 = v56;
            v59 = v58;
            v61 = v60;
            v62 = [v14 originView];
            LOBYTE(v53) = -[UIDocumentInteractionController presentOptionsMenuFromRect:inView:animated:](v53, "presentOptionsMenuFromRect:inView:animated:", v62, [v14 shouldAnimate], v55, v57, v59, v61);

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
    v20 = 0;
    goto LABEL_22;
  }

  v36 = [v85 contentMessage];

  if (!v36)
  {
    goto LABEL_30;
  }

  v37 = [EMLMessageViewController alloc];
  v79 = [v85 contentMessage];
  v78 = +[UIApplication sharedApplication];
  v77 = [v78 contactStore];
  v38 = +[UIApplication sharedApplication];
  v39 = [v38 avatarGenerator];
  v20 = [(EMLMessageViewController *)v37 initWithScene:v82 messageListItem:v79 contactStore:v77 avatarGenerator:v39];

  v40 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped:"];
  [(ConversationViewControllerBase *)v20 setDoneButton:v40];

  v19 = 0;
  if (v20)
  {
LABEL_10:
    if (v83)
    {
      v24 = [(EMLMessageViewController *)v20 navigationItem];
      [v24 setRightBarButtonItem:v83];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [[UINavigationController alloc] initWithRootViewController:v20];

      v20 = v25;
    }

    [(EMLMessageViewController *)v20 setModalPresentationStyle:7];
    v26 = [(EMLMessageViewController *)v20 popoverPresentationController];
    v27 = [v14 originView];
    [v26 setSourceView:v27];

    [v26 setDelegate:self];
    [v14 originRect];
    v106.origin.x = CGRectZero.origin.x;
    v106.origin.y = CGRectZero.origin.y;
    v106.size.width = CGRectZero.size.width;
    v106.size.height = CGRectZero.size.height;
    if (CGRectEqualToRect(v105, v106))
    {
      v28 = [v14 originView];
      [v28 bounds];
      [v26 setSourceRect:?];
    }

    else
    {
      [v14 originRect];
      [v26 setSourceRect:?];
    }

    goto LABEL_21;
  }

LABEL_22:
  if (v84)
  {
    v84[2]();
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

  v4 = [(UIDocumentInteractionController *)self->_uidic delegate];

  if (v4 == self)
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

- (void)_doneButtonTapped:(id)a3
{
  v5 = [(MFAttachmentShowcase *)self delegate];
  v4 = [v5 presentingViewControllerForAttachmentShowcase:self];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (id)_controllerForVCardRepresentation:(id)a3
{
  v4 = [(MFAttachmentShowcase *)self _dataForContentRepresentation:a3];
  v5 = [(MFAttachmentShowcase *)self _controllerForVCardData:v4];

  return v5;
}

- (id)_eventPreviewControllerForICSRepresentation:(id)a3 exchangeEventUID:(int)a4 managed:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = *&a4;
  v9 = a3;
  v10 = objc_alloc_init(EKEventStore);
  if (v8 || ([v9 contentItem], v11 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v11, "exchangeEventUID"), v11, v8))
  {
    v12 = [[EKICSPreviewController alloc] initWithEventUID:v8 eventStore:v10];
  }

  else
  {
    if (v7)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [v10 setSourceAccountManagement:v17];
    v18 = [EKICSPreviewController alloc];
    v19 = [v9 contentURL];
    v12 = [v18 initWithURL:v19 eventStore:v10];

    [v12 setAllowsImport:1];
    [v12 setAllowsEditing:1];
  }

  if (a6 && !v12)
  {
    v20 = NSLocalizedDescriptionKey;
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"ATTACHMENT_INVALID_CALENDAR_EVENT" value:&stru_100662A88 table:@"Main"];
    v21 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a6 = [NSError errorWithDomain:@"AttachmentShowcase" code:1 userInfo:v15];
  }

  return v12;
}

- (id)_passkitViewControllerForRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MFAttachmentShowcase *)self _dataForContentRepresentation:v6];
  v8 = [[PKPass alloc] initWithData:v7 error:a4];
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

- (id)_dataForContentRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 contentURL];
  v10 = 0;
  v5 = [NSData dataWithContentsOfURL:v4 options:1 error:&v10];
  v6 = v10;

  if (v6 || !v5)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10048ABCC(v3, v6, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)documentInteractionControllerForContentRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 contentURL];
  v5 = [v3 contentItem];
  v6 = [v5 displayName];
  v7 = [v5 type];
  v8 = [v7 identifier];
  if ([v8 ef_conformsToIWorkUTType])
  {
    v9 = [v6 pathExtension];
    v10 = [v9 caseInsensitiveCompare:@"zip"];

    if (!v10)
    {
      goto LABEL_5;
    }

    [v6 stringByDeletingPathExtension];
    v6 = v8 = v6;
  }

LABEL_5:
  v11 = [MFDocumentInteractionController interactionControllerWithURL:v4];
  [v11 setName:v6];
  v12 = [v7 identifier];
  v13 = [v12 ef_conformsToRFC822UTType];
  v14 = v13;
  if (v13)
  {
    v15 = EFEmailMessageUTType;
  }

  else
  {
    v15 = [v7 identifier];
  }

  [v11 setUTI:v15];
  if ((v14 & 1) == 0)
  {
  }

  [v11 setShouldUnzipDocument:1];
  v16 = [v5 uniformTypeIdentifier];
  [v11 setPreviewsPresentWithMarkup:{objc_msgSend(v16, "ef_conformsToMarkupUTType")}];

  return v11;
}

- (id)_controllerForVCardData:(id)a3
{
  v10 = 0;
  v4 = [CNContactVCardSerialization contactsWithData:a3 error:&v10];
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
  v8 = [v7 viewController];
  [v8 setHidesBottomBarWhenPushed:1];

  return v7;
}

- (BOOL)isProvisioningProfile:(id)a3
{
  v3 = a3;
  v4 = [UTType typeWithIdentifier:kMFUTTypeMobileConfig];
  if ([v3 conformsToType:v4] & 1) != 0 || (objc_msgSend(v3, "conformsToType:", UTTypePKCS12) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", UTTypeX509Certificate))
  {
    v5 = 1;
  }

  else
  {
    v7 = [UTType typeWithIdentifier:kMFUTTypeMobileProvision];
    v5 = [v3 conformsToType:v7];
  }

  return v5;
}

- (BOOL)isAddableToPassbook:(id)a3
{
  v3 = a3;
  if (([v3 conformsToType:_UTTypePassData] & 1) != 0 || objc_msgSend(v3, "conformsToType:", _UTTypePassBundle))
  {
    v4 = +[PKAddPassesViewController canAddPasses];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)unknownContactsController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4
{
  v5 = a4;
  v6 = [v5 key];
  v7 = [v6 isEqualToString:CNContactEmailAddressesKey];

  if (v7)
  {
    v8 = [(MFAttachmentShowcase *)self presentingViewController];
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  return 1;
}

- (void)unknownContactsControllerDidComplete:(id)a3
{
  v3 = [(MFAttachmentShowcase *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFAttachmentShowcase *)self finishedPresenting];
  }
}

- (void)icsPreviewControllerWantsDismissal:(id)a3
{
  v5 = [(MFAttachmentShowcase *)self delegate];
  v4 = [v5 presentingViewControllerForAttachmentShowcase:self];
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