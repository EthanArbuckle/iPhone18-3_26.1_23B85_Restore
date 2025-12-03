@interface ComposeServiceRemoteViewController
- (ComposeServiceRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_sheetPresentationControllerUserActivityForTearOff:(id)off;
- (void)_addAttachmentData:(id)data itemProvider:(id)provider mimeType:(id)type fileName:(id)name hostIdentifier:(id)identifier;
- (void)_firstDraw:(id)draw;
- (void)_hostApplicationDidEnterBackground;
- (void)_hostApplicationWillEnterForeground;
- (void)_sheetPresentationControllerDidTearOff:(id)off;
- (void)_willAppearInRemoteViewController;
- (void)addAttachmentWithPlaceholderData:(id)data;
- (void)autosaveWithReply:(id)reply;
- (void)commitCompositionValuesWithReply:(id)reply;
- (void)dealloc;
- (void)donateShareInteractionToDuet;
- (void)framesForAttachmentsWithIdentifiers:(id)identifiers withReply:(id)reply;
- (void)loadView;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)securityScopeForURL:(id)l withReply:(id)reply;
- (void)serializedPlaceholderForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d withReply:(id)reply;
- (void)setCompositionValues:(id)values;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation ComposeServiceRemoteViewController

- (ComposeServiceRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v22.receiver = self;
  v22.super_class = ComposeServiceRemoteViewController;
  v8 = [(ComposeServiceRemoteViewController *)&v22 initWithNibName:nameCopy bundle:bundleCopy];
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
    selfCopy = self;
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
  view = [(ComposeServiceRemoteViewController *)self view];
  [view setAutoresizingMask:18];

  view2 = [(ComposeServiceRemoteViewController *)self view];
  view3 = [(ComposeNavigationController *)self->_navigationController view];
  [view2 addSubview:view3];

  view4 = [(ComposeNavigationController *)self->_navigationController view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(ComposeNavigationController *)self->_navigationController view];
  view6 = [(ComposeServiceRemoteViewController *)self view];
  [view5 mf_pinToView:view6 usingLayoutMargins:0];

  _mailComposeView = [(ComposeNavigationController *)self->_navigationController _mailComposeView];
  [_mailComposeView setIsForEditing:1];
}

- (void)_willAppearInRemoteViewController
{
  _remoteViewControllerProxy = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy];
  _mailComposeController = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  [_mailComposeController setRemoteViewControllerProxy:_remoteViewControllerProxy];

  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    _hostApplicationBundleIdentifier = [(ComposeServiceRemoteViewController *)self _hostApplicationBundleIdentifier];
    v7 = 134218242;
    selfCopy = self;
    v9 = 2112;
    v10 = _hostApplicationBundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#CompositionServices %p: will appear in host %@", &v7, 0x16u);
  }
}

- (void)_hostApplicationDidEnterBackground
{
  _mailComposeController = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  [_mailComposeController hostApplicationDidEnterBackground];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#CompositionServices %p: host did enter background", &v5, 0xCu);
  }
}

- (void)_hostApplicationWillEnterForeground
{
  _mailComposeController = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  [_mailComposeController hostApplicationWillEnterForeground];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#CompositionServices %p: host will enter foreground", &v5, 0xCu);
  }
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  errorCopy = error;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = " and error: ";
    if (!errorCopy)
    {
      v9 = "";
    }

    *v15 = 134218754;
    *&v15[4] = self;
    *&v15[12] = 2048;
    *&v15[14] = result;
    v10 = &stru_1000188C0;
    if (errorCopy)
    {
      v10 = errorCopy;
    }

    *&v15[22] = 2080;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#CompositionServices %p: Composition finished with result %ld%s%@", v15, 0x2Au);
  }

  if (result == 2)
  {
    _mailComposeController = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
    compositionContext = [_mailComposeController compositionContext];
    hasDuetDonationContext = [compositionContext hasDuetDonationContext];

    if (hasDuetDonationContext)
    {
      [(ComposeServiceRemoteViewController *)self donateShareInteractionToDuet];
    }
  }

  v14 = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy:*v15];
  [v14 serviceCompositionFinishedWithResult:result error:errorCopy];
}

- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion
{
  mailCopy = mail;
  recipientsCopy = recipients;
  completionCopy = completion;
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#CompositionServices %p: Composition requests send", &v14, 0xCu);
  }

  [(ComposeServiceRemoteViewController *)self _hostAuditToken:0xAAAAAAAAAAAAAAAALL];
  if (UIAuditTokenTaskHasEntitlementOrIsSimulator())
  {
    _remoteViewControllerProxy = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy serviceCompositionRequestsSendWithBody:mailCopy recipients:recipientsCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    ef_publicDescription = [errorCopy ef_publicDescription];
    v9 = 138412802;
    v10 = v7;
    v11 = 2048;
    selfCopy = self;
    v13 = 2114;
    v14 = ef_publicDescription;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#CompositionServices <%@:%p> %{public}@", &v9, 0x20u);
  }
}

- (void)_firstDraw:(id)draw
{
  drawCopy = draw;
  v4 = +[NSNotificationCenter defaultCenter];
  name = [drawCopy name];
  [v4 removeObserver:self name:name object:0];

  _remoteViewControllerProxy = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy bodyFinishedDrawing];
}

- (void)setCompositionValues:(id)values
{
  valuesCopy = values;
  v4 = [_MFMailCompositionContext alloc];
  _hostApplicationBundleIdentifier = [(ComposeServiceRemoteViewController *)self _hostApplicationBundleIdentifier];
  v6 = [v4 initWithCompositionValueRepresentation:valuesCopy hostApplicationBundleIdentifier:_hostApplicationBundleIdentifier];
  compositionContext = self->_compositionContext;
  self->_compositionContext = v6;
}

- (void)addAttachmentWithPlaceholderData:(id)data
{
  dataCopy = data;
  v5 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:dataCopy];
  compositionContext = self->_compositionContext;
  if (!compositionContext)
  {
    v7 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
    v8 = self->_compositionContext;
    self->_compositionContext = v7;

    compositionContext = self->_compositionContext;
  }

  fileName = [v5 fileName];
  contentID = [v5 contentID];
  v11 = [(_MFMailCompositionContext *)compositionContext addAttachmentData:dataCopy mimeType:0 fileName:fileName contentID:contentID];

  [v11 setIsPlaceholder:1];
  [v11 setPlaceholder:v5];
  attachmentContext = [(_MFMailCompositionContext *)self->_compositionContext attachmentContext];
  contentID2 = [v5 contentID];
  [attachmentContext setHostIdentifier:contentID2 forAttachment:v11];

  if (!self->_attachmentIdentifiersMap)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    attachmentIdentifiersMap = self->_attachmentIdentifiersMap;
    self->_attachmentIdentifiersMap = v14;
  }

  v16 = MFLogGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    contentID3 = [v11 contentID];
    v18 = [v11 url];
    v22 = 134218498;
    selfCopy = self;
    v24 = 2112;
    v25 = contentID3;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#CompositionServices %p: Mapping attachment with remote identifier %@ to local identifier %@", &v22, 0x20u);
  }

  contentID4 = [v11 contentID];

  if (contentID4)
  {
    v20 = self->_attachmentIdentifiersMap;
    contentID5 = [v11 contentID];
    [(NSMutableDictionary *)v20 setObject:v11 forKey:contentID5];
  }
}

- (void)_addAttachmentData:(id)data itemProvider:(id)provider mimeType:(id)type fileName:(id)name hostIdentifier:(id)identifier
{
  dataCopy = data;
  providerCopy = provider;
  typeCopy = type;
  nameCopy = name;
  identifierCopy = identifier;
  if (!(dataCopy | providerCopy))
  {
    v32 = +[NSAssertionHandler currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"ComposeServiceRemoteViewController.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"data || itemProvider"}];
  }

  v17 = MFLogGeneral();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    selfCopy2 = self;
    v36 = 2048;
    v37 = dataCopy;
    v38 = 2048;
    v39 = providerCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#CompositionServices %p: creating attachment for data:%p itemProvider:%p", buf, 0x20u);
  }

  if (!self->_compositionContext)
  {
    v18 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
    compositionContext = self->_compositionContext;
    self->_compositionContext = v18;
  }

  if (dataCopy)
  {
    v20 = [(_MFMailCompositionContext *)self->_compositionContext addAttachmentData:dataCopy mimeType:typeCopy fileName:nameCopy];
LABEL_11:
    v21 = v20;
    goto LABEL_12;
  }

  if (providerCopy)
  {
    v20 = [(_MFMailCompositionContext *)self->_compositionContext addAttachmentDataItemProvider:providerCopy mimeType:typeCopy filename:nameCopy contentID:0];
    goto LABEL_11;
  }

  v21 = 0;
LABEL_12:
  attachmentContext = [(_MFMailCompositionContext *)self->_compositionContext attachmentContext];
  [attachmentContext setHostIdentifier:identifierCopy forAttachment:v21];

  contentID = [v21 contentID];
  [(_MFMailCompositionContext *)self->_compositionContext setContentVariationAttachmentCID:contentID];

  if (!self->_attachmentIdentifiersMap)
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    attachmentIdentifiersMap = self->_attachmentIdentifiersMap;
    self->_attachmentIdentifiersMap = v24;
  }

  v26 = MFLogGeneral();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    contentID2 = [v21 contentID];
    v28 = [v21 url];
    *buf = 134218498;
    selfCopy2 = self;
    v36 = 2112;
    v37 = contentID2;
    v38 = 2112;
    v39 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "#CompositionServices %p: Mapping attachment with remote identifier %@ to local identifier %@", buf, 0x20u);
  }

  contentID3 = [v21 contentID];

  if (contentID3)
  {
    v30 = self->_attachmentIdentifiersMap;
    contentID4 = [v21 contentID];
    [(NSMutableDictionary *)v30 setObject:v21 forKey:contentID4];
  }
}

- (void)commitCompositionValuesWithReply:(id)reply
{
  block = reply;
  if (self->_compositionContext)
  {
    _mailComposeController = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
    [_mailComposeController setCompositionContext:self->_compositionContext];

    compositionContext = self->_compositionContext;
    self->_compositionContext = 0;
  }

  dispatch_async(&_dispatch_main_q, block);
}

- (void)framesForAttachmentsWithIdentifiers:(id)identifiers withReply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
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
    selfCopy = self;
    v32 = 2112;
    v33 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#CompositionServices %p: Requested attachment frames for remote identifiers %@", buf, 0x16u);
  }

  if ([identifiersCopy count] && (objc_opt_class(), _ArrayContainsKindOfObjects()))
  {
    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [identifiersCopy count]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = identifiersCopy;
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

    replyCopy[2](replyCopy, v9);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }

  v17 = +[UIApplication sharedApplication];
  [v17 endBackgroundTask:v26[3]];

  _Block_object_dispose(&v25, 8);
}

- (void)autosaveWithReply:(id)reply
{
  replyCopy = reply;
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
  v8 = replyCopy;
  v10 = v8;
  v11 = &v13;
  [(ComposeNavigationController *)navigationController autosaveWithHandler:v9];

  _Block_object_dispose(&v13, 8);
}

- (void)serializedPlaceholderForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  navigationController = self->_navigationController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007874;
  v15[3] = &unk_100018560;
  v16 = replyCopy;
  v14 = replyCopy;
  [(ComposeNavigationController *)navigationController serializedPlaceholderForFileName:name fileSize:size mimeType:type contentID:d withHandler:v15];
}

- (void)securityScopeForURL:(id)l withReply:(id)reply
{
  replyCopy = reply;
  navigationController = self->_navigationController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000794C;
  v9[3] = &unk_100018560;
  v10 = replyCopy;
  v8 = replyCopy;
  [(ComposeNavigationController *)navigationController securityScopeForURL:l withHandler:v9];
}

- (void)donateShareInteractionToDuet
{
  v3 = objc_alloc_init(_CDInteraction);
  _hostApplicationBundleIdentifier = [(ComposeServiceRemoteViewController *)self _hostApplicationBundleIdentifier];
  [v3 setBundleId:_hostApplicationBundleIdentifier];

  [v3 setTargetBundleId:UIActivityTypeMail];
  [v3 setDirection:1];
  [v3 setMechanism:13];
  v5 = +[NSDate date];
  [v3 setEndDate:v5];

  _mailComposeController = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  toRecipients = [_mailComposeController toRecipients];
  v8 = [toRecipients ef_compactMap:&stru_100018720];

  if (v8)
  {
    [v3 setRecipients:v8];
  }

  _mailComposeController2 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  compositionContext = [_mailComposeController2 compositionContext];
  uTITypes = [compositionContext UTITypes];
  v37 = [uTITypes ef_map:&stru_100018760];

  _mailComposeController3 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  compositionContext2 = [_mailComposeController3 compositionContext];
  photoIDs = [compositionContext2 photoIDs];
  v15 = [photoIDs ef_map:&stru_100018780];

  _mailComposeController4 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  compositionContext3 = [_mailComposeController4 compositionContext];
  cloudPhotoIDs = [compositionContext3 cloudPhotoIDs];
  v19 = [cloudPhotoIDs ef_map:&stru_1000187A0];

  _mailComposeController5 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  compositionContext4 = [_mailComposeController5 compositionContext];
  contentURLs = [compositionContext4 contentURLs];
  v23 = [contentURLs ef_map:&stru_1000187C0];

  _mailComposeController6 = [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  compositionContext5 = [_mailComposeController6 compositionContext];
  contentText = [compositionContext5 contentText];
  v27 = [contentText ef_map:&stru_1000187E0];

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

- (id)_sheetPresentationControllerUserActivityForTearOff:(id)off
{
  [(ComposeNavigationController *)self->_navigationController _mailComposeController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = nullsub_1;
  v4 = v7[3] = &unk_100018830;
  v8 = v4;
  [v4 autosaveWithHandler:v7];
  userActivityForRestoration = [(ComposeNavigationController *)self->_navigationController userActivityForRestoration];

  return userActivityForRestoration;
}

- (void)_sheetPresentationControllerDidTearOff:(id)off
{
  _remoteViewControllerProxy = [(ComposeServiceRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy serviceCompositionFinishedWithResult:1 error:0];
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
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