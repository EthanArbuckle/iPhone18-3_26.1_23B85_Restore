@interface ComposeServiceRemoteViewController
- (ComposeServiceRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_sheetPresentationControllerUserActivityForTearOff:(id)a3;
- (void)_addAttachmentData:(id)a3 itemProvider:(id)a4 mimeType:(id)a5 fileName:(id)a6 hostIdentifier:(id)a7;
- (void)_firstDraw:(id)a3;
- (void)_hostApplicationDidEnterBackground;
- (void)_hostApplicationWillEnterForeground;
- (void)_sheetPresentationControllerDidTearOff:(id)a3;
- (void)_willAppearInRemoteViewController;
- (void)addAttachmentWithPlaceholderData:(id)a3;
- (void)autosaveWithReply:(id)a3;
- (void)commitCompositionValuesWithReply:(id)a3;
- (void)dealloc;
- (void)donateShareInteractionToDuet;
- (void)framesForAttachmentsWithIdentifiers:(id)a3 withReply:(id)a4;
- (void)loadView;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)mailComposeController:(id)a3 shouldSendMail:(id)a4 toRecipients:(id)a5 completion:(id)a6;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)securityScopeForURL:(id)a3 withReply:(id)a4;
- (void)serializedPlaceholderForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6 withReply:(id)a7;
- (void)setCompositionValues:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation ComposeServiceRemoteViewController

- (ComposeServiceRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = ComposeServiceRemoteViewController;
  v8 = [(ComposeServiceRemoteViewController *)&v22 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = [[_MFMailCompositionContext alloc] initWithComposeType:1];
    v10 = +[MFAttachmentManager defaultManager];
    attachmentManager = v8->_attachmentManager;
    v8->_attachmentManager = v10;

    v12 = v8->_attachmentManager;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = objc_alloc_init(MFAttachmentComposeManager);
      v14 = v8->_attachmentManager;
      v8->_attachmentManager = v13;
    }

    v15 = [[ComposeNavigationController alloc] initWithComposition:v9 mailComposeControllerOptions:2];
    navigationController = v8->_navigationController;
    v8->_navigationController = v15;

    [(ComposeNavigationController *)v8->_navigationController setMailComposeDelegate:v8];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v8 selector:"_firstDraw:" name:MFMailComposeViewFirstDraw object:0];

    [(ComposeServiceRemoteViewController *)v8 addChildViewController:v8->_navigationController];
    [NSURLProtocol registerClass:objc_opt_class()];
    +[MailAccount reloadAccounts];
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138412546;
      v24 = v20;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#CompositionServices <%@:%p> initialized", buf, 0x16u);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#CompositionServices <%@:%p> deallocating", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ComposeServiceRemoteViewController;
  [(ComposeServiceRemoteViewController *)&v6 dealloc];
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = ComposeServiceRemoteViewController;
  [(ComposeServiceRemoteViewController *)&v10 loadView];
  v3 = [(ComposeServiceRemoteViewController *)self view];
  [v3 setAutoresizingMask:18];

  v4 = [(ComposeServiceRemoteViewController *)self view];
  v5 = [(ComposeNavigationController *)self->_navigationController view];
  [v4 addSubview:v5];

  v6 = [(ComposeNavigationController *)self->_navigationController view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(ComposeNavigationController *)self->_navigationController view];
  v8 = [(ComposeServiceRemoteViewController *)self view];
  [v7 mf_pinToView:v8 usingLayoutMargins:0];

  v9 = [(ComposeNavigationController *)self->_navigationController _mailComposeView];
  [v9 setIsForEditing:1];
}

- (void)_willAppearInRemoteViewController
{
  v3 = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy];
  v4 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  [v4 setRemoteViewControllerProxy:v3];

  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(ComposeServiceRemoteViewController *)self _hostApplicationBundleIdentifier];
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#CompositionServices %p: will appear in host %@", &v7, 0x16u);
  }
}

- (void)_hostApplicationDidEnterBackground
{
  v3 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  [v3 hostApplicationDidEnterBackground];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#CompositionServices %p: host did enter background", &v5, 0xCu);
  }
}

- (void)_hostApplicationWillEnterForeground
{
  v3 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  [v3 hostApplicationWillEnterForeground];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#CompositionServices %p: host will enter foreground", &v5, 0xCu);
  }
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = " and error: ";
    if (!v7)
    {
      v9 = "";
    }

    *v15 = 134218754;
    *&v15[4] = self;
    *&v15[12] = 2048;
    *&v15[14] = a4;
    v10 = &stru_1000188C0;
    if (v7)
    {
      v10 = v7;
    }

    *&v15[22] = 2080;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#CompositionServices %p: Composition finished with result %ld%s%@", v15, 0x2Au);
  }

  if (a4 == 2)
  {
    v11 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
    v12 = [v11 compositionContext];
    v13 = [v12 hasDuetDonationContext];

    if (v13)
    {
      [(ComposeServiceRemoteViewController *)self donateShareInteractionToDuet];
    }
  }

  v14 = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy:*v15];
  [v14 serviceCompositionFinishedWithResult:a4 error:v7];
}

- (void)mailComposeController:(id)a3 shouldSendMail:(id)a4 toRecipients:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#CompositionServices %p: Composition requests send", &v14, 0xCu);
  }

  [(ComposeServiceRemoteViewController *)self _hostAuditToken:0xAAAAAAAAAAAAAAAALL];
  if (UIAuditTokenTaskHasEntitlementOrIsSimulator())
  {
    v13 = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy];
    [v13 serviceCompositionRequestsSendWithBody:v9 recipients:v10 completion:v11];
  }

  else
  {
    v11[2](v11, 1);
  }
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 ef_publicDescription];
    v9 = 138412802;
    v10 = v7;
    v11 = 2048;
    v12 = self;
    v13 = 2114;
    v14 = v8;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#CompositionServices <%@:%p> %{public}@", &v9, 0x20u);
  }
}

- (void)_firstDraw:(id)a3
{
  v7 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [v7 name];
  [v4 removeObserver:self name:v5 object:0];

  v6 = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy];
  [v6 bodyFinishedDrawing];
}

- (void)setCompositionValues:(id)a3
{
  v8 = a3;
  v4 = [_MFMailCompositionContext alloc];
  v5 = [(ComposeServiceRemoteViewController *)self _hostApplicationBundleIdentifier];
  v6 = [v4 initWithCompositionValueRepresentation:v8 hostApplicationBundleIdentifier:v5];
  compositionContext = self->_compositionContext;
  self->_compositionContext = v6;
}

- (void)addAttachmentWithPlaceholderData:(id)a3
{
  v4 = a3;
  v5 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v4];
  compositionContext = self->_compositionContext;
  if (!compositionContext)
  {
    v7 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
    v8 = self->_compositionContext;
    self->_compositionContext = v7;

    compositionContext = self->_compositionContext;
  }

  v9 = [v5 fileName];
  v10 = [v5 contentID];
  v11 = [(_MFMailCompositionContext *)compositionContext addAttachmentData:v4 mimeType:0 fileName:v9 contentID:v10];

  [v11 setIsPlaceholder:1];
  [v11 setPlaceholder:v5];
  v12 = [(_MFMailCompositionContext *)self->_compositionContext attachmentContext];
  v13 = [v5 contentID];
  [v12 setHostIdentifier:v13 forAttachment:v11];

  if (!self->_attachmentIdentifiersMap)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    attachmentIdentifiersMap = self->_attachmentIdentifiersMap;
    self->_attachmentIdentifiersMap = v14;
  }

  v16 = MFLogGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v11 contentID];
    v18 = [v11 url];
    v22 = 134218498;
    v23 = self;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#CompositionServices %p: Mapping attachment with remote identifier %@ to local identifier %@", &v22, 0x20u);
  }

  v19 = [v11 contentID];

  if (v19)
  {
    v20 = self->_attachmentIdentifiersMap;
    v21 = [v11 contentID];
    [(NSMutableDictionary *)v20 setObject:v11 forKey:v21];
  }
}

- (void)_addAttachmentData:(id)a3 itemProvider:(id)a4 mimeType:(id)a5 fileName:(id)a6 hostIdentifier:(id)a7
{
  v13 = a3;
  v14 = a4;
  v33 = a5;
  v15 = a6;
  v16 = a7;
  if (!(v13 | v14))
  {
    v32 = +[NSAssertionHandler currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"ComposeServiceRemoteViewController.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"data || itemProvider"}];
  }

  v17 = MFLogGeneral();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v35 = self;
    v36 = 2048;
    v37 = v13;
    v38 = 2048;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#CompositionServices %p: creating attachment for data:%p itemProvider:%p", buf, 0x20u);
  }

  if (!self->_compositionContext)
  {
    v18 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
    compositionContext = self->_compositionContext;
    self->_compositionContext = v18;
  }

  if (v13)
  {
    v20 = [(_MFMailCompositionContext *)self->_compositionContext addAttachmentData:v13 mimeType:v33 fileName:v15];
LABEL_11:
    v21 = v20;
    goto LABEL_12;
  }

  if (v14)
  {
    v20 = [(_MFMailCompositionContext *)self->_compositionContext addAttachmentDataItemProvider:v14 mimeType:v33 filename:v15 contentID:0];
    goto LABEL_11;
  }

  v21 = 0;
LABEL_12:
  v22 = [(_MFMailCompositionContext *)self->_compositionContext attachmentContext];
  [v22 setHostIdentifier:v16 forAttachment:v21];

  v23 = [v21 contentID];
  [(_MFMailCompositionContext *)self->_compositionContext setContentVariationAttachmentCID:v23];

  if (!self->_attachmentIdentifiersMap)
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    attachmentIdentifiersMap = self->_attachmentIdentifiersMap;
    self->_attachmentIdentifiersMap = v24;
  }

  v26 = MFLogGeneral();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v21 contentID];
    v28 = [v21 url];
    *buf = 134218498;
    v35 = self;
    v36 = 2112;
    v37 = v27;
    v38 = 2112;
    v39 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "#CompositionServices %p: Mapping attachment with remote identifier %@ to local identifier %@", buf, 0x20u);
  }

  v29 = [v21 contentID];

  if (v29)
  {
    v30 = self->_attachmentIdentifiersMap;
    v31 = [v21 contentID];
    [(NSMutableDictionary *)v30 setObject:v21 forKey:v31];
  }
}

- (void)commitCompositionValuesWithReply:(id)a3
{
  block = a3;
  if (self->_compositionContext)
  {
    v4 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
    [v4 setCompositionContext:self->_compositionContext];

    compositionContext = self->_compositionContext;
    self->_compositionContext = 0;
  }

  dispatch_async(&_dispatch_main_q, block);
}

- (void)framesForAttachmentsWithIdentifiers:(id)a3 withReply:(id)a4
{
  v19 = a3;
  v18 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v6 = +[UIApplication sharedApplication];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100007390;
  v24[3] = &unk_1000186B8;
  v24[4] = &v25;
  v7 = [v6 beginBackgroundTaskWithExpirationHandler:v24];

  v26[3] = v7;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v31 = self;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#CompositionServices %p: Requested attachment frames for remote identifiers %@", buf, 0x16u);
  }

  if ([v19 count] && (objc_opt_class(), _ArrayContainsKindOfObjects()))
  {
    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v19 count]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v19;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [(NSMutableDictionary *)self->_attachmentIdentifiersMap objectForKeyedSubscript:v14];
          if (v15)
          {
            [(ComposeNavigationController *)self->_navigationController frameForAttachmentWithIdentifier:v15];
            v16 = [NSValue valueWithCGRect:?];
            [v9 setObject:v16 forKey:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v11);
    }

    v18[2](v18, v9);
  }

  else
  {
    v18[2](v18, 0);
  }

  v17 = +[UIApplication sharedApplication];
  [v17 endBackgroundTask:v26[3]];

  _Block_object_dispose(&v25, 8);
}

- (void)autosaveWithReply:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v5 = +[UIApplication sharedApplication];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000075BC;
  v12[3] = &unk_1000186B8;
  v12[4] = &v13;
  v6 = [v5 beginBackgroundTaskWithExpirationHandler:v12];

  v14[3] = v6;
  navigationController = self->_navigationController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100007660;
  v9[3] = &unk_1000186E0;
  v9[4] = self;
  v8 = v4;
  v10 = v8;
  v11 = &v13;
  [(ComposeNavigationController *)navigationController autosaveWithHandler:v9];

  _Block_object_dispose(&v13, 8);
}

- (void)serializedPlaceholderForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6 withReply:(id)a7
{
  v12 = a7;
  navigationController = self->_navigationController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007874;
  v15[3] = &unk_100018560;
  v16 = v12;
  v14 = v12;
  [(ComposeNavigationController *)navigationController serializedPlaceholderForFileName:a3 fileSize:a4 mimeType:a5 contentID:a6 withHandler:v15];
}

- (void)securityScopeForURL:(id)a3 withReply:(id)a4
{
  v6 = a4;
  navigationController = self->_navigationController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000794C;
  v9[3] = &unk_100018560;
  v10 = v6;
  v8 = v6;
  [(ComposeNavigationController *)navigationController securityScopeForURL:a3 withHandler:v9];
}

- (void)donateShareInteractionToDuet
{
  v3 = objc_alloc_init(_CDInteraction);
  v4 = [(ComposeServiceRemoteViewController *)self _hostApplicationBundleIdentifier];
  [v3 setBundleId:v4];

  [v3 setTargetBundleId:UIActivityTypeMail];
  [v3 setDirection:1];
  [v3 setMechanism:13];
  v5 = +[NSDate date];
  [v3 setEndDate:v5];

  v6 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  v7 = [v6 toRecipients];
  v8 = [v7 ef_compactMap:&stru_100018720];

  if (v8)
  {
    [v3 setRecipients:v8];
  }

  v9 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  v10 = [v9 compositionContext];
  v11 = [v10 UTITypes];
  v37 = [v11 ef_map:&stru_100018760];

  v12 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  v13 = [v12 compositionContext];
  v14 = [v13 photoIDs];
  v15 = [v14 ef_map:&stru_100018780];

  v16 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  v17 = [v16 compositionContext];
  v18 = [v17 cloudPhotoIDs];
  v19 = [v18 ef_map:&stru_1000187A0];

  v20 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  v21 = [v20 compositionContext];
  v22 = [v21 contentURLs];
  v23 = [v22 ef_map:&stru_1000187C0];

  v24 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  v25 = [v24 compositionContext];
  v26 = [v25 contentText];
  v27 = [v26 ef_map:&stru_1000187E0];

  if (v15 | v19)
  {
    if (v15)
    {
      v28 = v15;
    }

    else
    {
      v28 = &__NSArray0__struct;
    }

    if (v19)
    {
      v29 = v19;
    }

    else
    {
      v29 = &__NSArray0__struct;
    }

    v30 = [v28 arrayByAddingObjectsFromArray:{v29, v37}];
  }

  else
  {
    if (v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = &__NSArray0__struct;
    }

    if (v23)
    {
      v32 = v23;
    }

    else
    {
      v32 = &__NSArray0__struct;
    }

    v33 = [v31 arrayByAddingObjectsFromArray:{v32, v37}];
    if (v38)
    {
      v34 = v38;
    }

    else
    {
      v34 = &__NSArray0__struct;
    }

    v30 = [v34 arrayByAddingObjectsFromArray:v33];
  }

  [v3 setAttachments:v30];
  v40 = v3;
  v35 = [NSArray arrayWithObjects:&v40 count:1];
  v36 = +[_CDInteractionRecorder interactionRecorder];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000082AC;
  v39[3] = &unk_100018808;
  v39[4] = self;
  [v36 recordInteractions:v35 completionHandler:v39];
}

- (id)_sheetPresentationControllerUserActivityForTearOff:(id)a3
{
  [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = nullsub_1;
  v4 = v7[3] = &unk_100018830;
  v8 = v4;
  [v4 autosaveWithHandler:v7];
  v5 = [(ComposeNavigationController *)self->_navigationController userActivityForRestoration];

  return v5;
}

- (void)_sheetPresentationControllerDidTearOff:(id)a3
{
  v3 = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy];
  [v3 serviceCompositionFinishedWithResult:1 error:0];
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008610;
  v5 = block[3] = &unk_100018858;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

@end