@interface MFMessageViewController
- (BOOL)canSaveAllAttachmentsInContext:(int64_t)context;
- (BOOL)canSearchForContactFromContactCardInteractions:(id)interactions;
- (BOOL)isCategorizationActionAllowed;
- (BOOL)isShowingGroupedSenderMessageListForMessageContentView:(id)view;
- (BOOL)isSourceManagedForURL:(id)l;
- (BOOL)shouldShowTimeSensitiveBannerForMessageContentView:(id)view message:(id)message;
- (BOOL)showsBanners;
- (CGRect)documentInteractionControllerRectForPreview:(id)preview;
- (ComposeCapable)scene;
- (MFMessageViewController)initWithScene:(id)scene accountsController:(id)controller;
- (MFMessageViewControllerDelegate)delegate;
- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace;
- (QLPreviewController)previewController;
- (UIDocumentInteractionController)doc;
- (id)_attachmentShowcase;
- (id)_contactViewControllerForAddress:(id)address forAtomType:(unint64_t)type;
- (id)_delegateDisplayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated;
- (id)_makeFileCopyOfEditedQuickLookFileToLocalContainer:(id)container preferredFileName:(id)name;
- (id)actualSenderFutureForConversationItemHeader:(id)header;
- (id)additionalActivitiesForDocumentInteractionController:(id)controller;
- (id)allMediaAttachmentFutures;
- (id)assetViewerManager;
- (id)contactStoreForAttachmentShowcase:(id)showcase;
- (id)conversationAttachmentURLsForConversationItemHeaderBlock:(id)block;
- (id)conversationItemHeader:(id)header displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated;
- (id)dismissActionsForPreviewController:(id)controller;
- (id)documentInteractionControllerMarkupDismissActions:(id)actions;
- (id)documentInteractionControllerViewForPreview:(id)preview;
- (id)excludedActivityTypesForDocumentInteractionController:(id)controller;
- (id)localizedTitleForSaveAllAttachmentsAction;
- (id)mailProviderDisplayNameForConversationItemHeader:(id)header;
- (id)messageContentRepresentationRequestForScreenshotService:(id)service;
- (id)messageSourceMailboxObjectIDForMessageContentView:(id)view;
- (id)participantHeaderForContactStore:(id)store;
- (id)popoverManagerForForConversationItemHeader:(id)header;
- (id)presentingViewControllerForAttachmentShowcase:(id)showcase;
- (id)presentingViewControllerForMessageContentView:(id)view;
- (id)richLinksInConversationForConversationItemHeaderBlock:(id)block;
- (id)viewControllerForPresentingSuggestions;
- (int64_t)_dataOwnerForCopy;
- (int64_t)_dataOwnerForPaste;
- (int64_t)numberOfMessagesInConversationForConversationItemHeaderBlock:(id)block;
- (void)_appIntentUnsubscribed:(id)unsubscribed;
- (void)_getNumberOfImages:(unint64_t *)images videos:(unint64_t *)videos undownloaded:(unint64_t *)undownloaded;
- (void)_performMailAction:(int64_t)action withMarkedUpFileAttachments:(id)attachments;
- (void)_previewURL:(id)l withEditingEnabled:(BOOL)enabled;
- (void)_sceneMovedtoForeground:(id)foreground;
- (void)_setAttachmentOriginRect:(CGRect)rect scale:(double)scale;
- (void)_setupHeaderViewForContactViewController:(id)controller;
- (void)_showSelectedContentRepresentation:(id)representation exchangeEventUID:(int)d fromRect:(CGRect)rect view:(id)view;
- (void)clearSuggestionsBannerAnimated:(BOOL)animated;
- (void)contactCardInteractions:(id)interactions triggerSearchForDisplayName:(id)name emailAddresses:(id)addresses;
- (void)contactMessageInteraction:(id)interaction didUpdateHeaderView:(id)view;
- (void)conversationItemHeader:(id)header didSelectAddress:(id)address forAtomType:(unint64_t)type;
- (void)conversationItemHeader:(id)header didSelectAddressAtom:(id)atom forAtomType:(unint64_t)type;
- (void)conversationItemHeader:(id)header didTapRevealActionsButton:(id)button;
- (void)conversationItemHeader:(id)header presentViewController:(id)controller;
- (void)conversationItemHeader:(id)header searchForDisplayName:(id)name emailAddresses:(id)addresses;
- (void)dealloc;
- (void)didStartDownloadForContentItemWithProgress:(id)progress;
- (void)dismissMarkupViewController;
- (void)hideMenuForSelectedContentRepresentation;
- (void)loadView;
- (void)messageContentView:(id)view clearSuggestionsBannerAnimated:(BOOL)animated;
- (void)messageContentView:(id)view clickedLinkInMessage:(id)message scheme:(id)scheme;
- (void)messageContentView:(id)view didChangeSelectedHTML:(id)l;
- (void)messageContentView:(id)view didEndZoomingMessageWithOffset:(CGPoint)offset;
- (void)messageContentView:(id)view didFinishRenderingWithHeight:(double)height;
- (void)messageContentView:(id)view didLoadSecurityInformation:(id)information;
- (void)messageContentView:(id)view didTapRevealActionsButton:(id)button;
- (void)messageContentView:(id)view didTapUndoSendButton:(id)button;
- (void)messageContentView:(id)view expandQuoteAtCollapsedOffset:(CGPoint)offset expandedOffset:(CGPoint)expandedOffset;
- (void)messageContentView:(id)view handleContentRepresentation:(id)representation;
- (void)messageContentView:(id)view loadingIndicatorDidChangeVisibility:(BOOL)visibility;
- (void)messageContentView:(id)view openPossibleStoreURL:(id)l;
- (void)messageContentView:(id)view scrollToRect:(CGRect)rect;
- (void)messageContentView:(id)view viewedRemoteURLs:(id)ls;
- (void)messageContentView:(id)view webViewDidTerminateWithReason:(int64_t)reason;
- (void)messageContentViewContentLayerFinished:(id)finished;
- (void)messageContentViewDidDisplayContent:(id)content success:(BOOL)success;
- (void)messageContentViewDidFinishFirstPaint:(id)paint;
- (void)messageContentViewWillBeginZoomingMessage:(id)message;
- (void)messageViewControllerDidTapToExpand;
- (void)prepareForQuickReplyAnimationWithContext:(id)context;
- (void)prepareForReuse;
- (void)presentMarkupViewController:(id)controller;
- (void)presentSuggestionViewController:(id)controller;
- (void)setAutomaticallyCollapseQuotedContent:(BOOL)content reloadIfNeeded:(BOOL)needed;
- (void)setConfiguredForSingleMessageDisplay:(BOOL)display;
- (void)setContentRequest:(id)request;
- (void)setDelegate:(id)delegate;
- (void)showMenuForSelectedContentRepresentation:(id)representation fromRect:(CGRect)rect view:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation MFMessageViewController

- (MFMessageViewController)initWithScene:(id)scene accountsController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = MFMessageViewController;
  v8 = [(MFMessageViewController *)&v15 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, sceneCopy);
    mailboxProvider = [controllerCopy mailboxProvider];
    mailboxProvider = v9->_mailboxProvider;
    v9->_mailboxProvider = mailboxProvider;

    accountsProvider = [controllerCopy accountsProvider];
    accountsProvider = v9->_accountsProvider;
    v9->_accountsProvider = accountsProvider;
  }

  return v9;
}

- (void)dealloc
{
  [(MFMessageContentView *)self->_messageContentView setDelegate:0];
  v3.receiver = self;
  v3.super_class = MFMessageViewController;
  [(MFMessageViewController *)&v3 dealloc];
}

- (void)loadView
{
  scene = [(MFMessageViewController *)self scene];
  v3 = [[MFMessageContentView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setDelegate:self];
  [v3 setDataSource:self];
  mailboxProvider = [(MFMessageViewController *)self mailboxProvider];
  [v3 setMailboxProvider:mailboxProvider];

  daemonInterface = [scene daemonInterface];
  [v3 setDaemonInterface:daemonInterface];

  avatarGenerator = [(MFMessageViewController *)self avatarGenerator];
  [v3 setAvatarGenerator:avatarGenerator];

  contentRequest = [(MFMessageViewController *)self contentRequest];

  if (contentRequest)
  {
    contentRequest2 = [(MFMessageViewController *)self contentRequest];
    [v3 setContentRequest:contentRequest2];
  }

  [v3 setAutomaticallyCollapseQuotedContent:{-[MFMessageViewController automaticallyCollapseQuotedContent](self, "automaticallyCollapseQuotedContent")}];
  [(MFMessageViewController *)self setMessageContentView:v3];
  [(MFMessageViewController *)self setView:v3];
  v9 = [MFSuggestionController alloc];
  headerView = [v3 headerView];
  v11 = [(MFSuggestionController *)v9 initWithDelegate:self headerView:headerView];
  [(MFMessageViewController *)self setSuggestionController:v11];
}

- (void)viewDidAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = MFMessageViewController;
  [(MFMessageViewController *)&v19 viewDidAppear:appear];
  view = [(MFMessageViewController *)self view];
  if ((*(&self->_flags + 1) & 0x40) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    v5 = [delegate messageViewControllerMessageListMailboxScope:self];
  }

  else
  {
    v5 = 0;
  }

  scene = [(MFMessageViewController *)self scene];
  daemonInterface = [scene daemonInterface];
  interactionLogger = [daemonInterface interactionLogger];
  contentRequest = [view contentRequest];
  message = [contentRequest message];
  [interactionLogger viewingStartedForMessage:message messageListScope:v5];

  if ([view hasVisibleContent])
  {
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 postNotificationName:MFMessageContentViewDidAppear object:view];
  }

  v13 = [[MFScreenshotService alloc] initWithDelegate:self];
  screenshotService = self->_screenshotService;
  self->_screenshotService = v13;

  v15 = self->_screenshotService;
  screenshotService = [scene screenshotService];
  [screenshotService setDelegate:v15];

  if ((+[EMServerConfiguration isCacheRecent]& 1) == 0)
  {
    +[EMServerConfiguration refreshAsync];
  }

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_sceneMovedtoForeground:" name:UISceneWillEnterForegroundNotification object:scene];

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"_appIntentUnsubscribed:" name:@"AppIntentUnsubscribed" object:0];
}

- (void)_appIntentUnsubscribed:(id)unsubscribed
{
  unsubscribedCopy = unsubscribed;
  v7 = unsubscribedCopy;
  selfCopy = self;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:&v6];
}

- (void)_sceneMovedtoForeground:(id)foreground
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001F49A8;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (int64_t)_dataOwnerForPaste
{
  messageContentView = [(MFMessageViewController *)self messageContentView];
  if ([messageContentView sourceIsManaged])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (int64_t)_dataOwnerForCopy
{
  messageContentView = [(MFMessageViewController *)self messageContentView];
  if ([messageContentView sourceIsManaged])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v18.receiver = self;
  v18.super_class = MFMessageViewController;
  [(MFMessageViewController *)&v18 viewDidDisappear:disappear];
  messageContentView = [(MFMessageViewController *)self messageContentView];
  [messageContentView clearSelectedHTML];
  [(MFMessageViewController *)self messageContentView:messageContentView didChangeSelectedHTML:0];
  contentRequest = [messageContentView contentRequest];
  message = [contentRequest message];

  scene = [(MFMessageViewController *)self scene];
  v19 = kEMPayloadKeyCategorizationEnabled;
  v8 = [NSNumber numberWithBool:[(MFMessageViewController *)self isCategorizationActionAllowed]];
  v20 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  daemonInterface = [scene daemonInterface];
  interactionLogger = [daemonInterface interactionLogger];
  [interactionLogger viewingEndedForMessage:message data:v9];

  screenshotService = [scene screenshotService];
  delegate = [screenshotService delegate];
  v14 = [delegate isEqual:self->_screenshotService];

  if (v14)
  {
    screenshotService = self->_screenshotService;
    self->_screenshotService = 0;

    screenshotService2 = [scene screenshotService];
    [screenshotService2 setDelegate:0];
  }

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 removeObserver:self];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_flags = (*&self->_flags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFD | v6);
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFB | v7);
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFF7 | v8);
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFEF | v9);
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFDF | v10);
    if (objc_opt_respondsToSelector())
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFBF | v11);
    if (objc_opt_respondsToSelector())
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFF7F | v12);
    if (objc_opt_respondsToSelector())
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFEFF | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 512;
    }

    else
    {
      v14 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFDFF | v14);
    if (objc_opt_respondsToSelector())
    {
      v15 = 1024;
    }

    else
    {
      v15 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFBFF | v15);
    if (objc_opt_respondsToSelector())
    {
      v16 = 2048;
    }

    else
    {
      v16 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFF7FF | v16);
    if (objc_opt_respondsToSelector())
    {
      v17 = 4096;
    }

    else
    {
      v17 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFEFFF | v17);
    if (objc_opt_respondsToSelector())
    {
      v18 = 0x2000;
    }

    else
    {
      v18 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFDFFF | v18);
    if (objc_opt_respondsToSelector())
    {
      v19 = 0x4000;
    }

    else
    {
      v19 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFBFFF | v19);
    if (objc_opt_respondsToSelector())
    {
      v20 = 0x8000;
    }

    else
    {
      v20 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFF7FFF | v20);
    if (objc_opt_respondsToSelector())
    {
      v21 = 0x10000;
    }

    else
    {
      v21 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFEFFFF | v21);
    v5 = obj;
  }
}

- (void)setAutomaticallyCollapseQuotedContent:(BOOL)content reloadIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  contentCopy = content;
  self->_automaticallyCollapseQuotedContent = content;
  messageContentView = [(MFMessageViewController *)self messageContentView];
  [messageContentView setAutomaticallyCollapseQuotedContent:contentCopy reloadIfNeeded:neededCopy];
}

- (void)setConfiguredForSingleMessageDisplay:(BOOL)display
{
  displayCopy = display;
  self->_configuredForSingleMessageDisplay = display;
  traitCollection = [(MFMessageViewController *)self traitCollection];
  mf_hasCompactDimension = [traitCollection mf_hasCompactDimension];

  messageContentView = [(MFMessageViewController *)self messageContentView];
  if (mf_hasCompactDimension)
  {
    [messageContentView setShowMessageFooter:!displayCopy];
  }

  else
  {
    [messageContentView setShowMessageFooter:1];
  }

  if (displayCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    messageContentView2 = [(MFMessageViewController *)self messageContentView];
    headerView = [messageContentView2 headerView];
    headerBlocks = [headerView headerBlocks];

    v11 = [headerBlocks countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(headerBlocks);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v14 setShowsHeaderDetails:0 animated:0];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [headerBlocks countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)prepareForQuickReplyAnimationWithContext:(id)context
{
  contextCopy = context;
  messageContentView = [(MFMessageViewController *)self messageContentView];
  [messageContentView prepareForQuickReplyAnimationWithContext:contextCopy];
}

- (void)setContentRequest:(id)request
{
  requestCopy = request;
  v6 = requestCopy;
  if (self->_contentRequest == requestCopy && [(MessageContentRepresentationRequest *)requestCopy state]!= 3)
  {
    if (self->_contentRequest == v6)
    {
      v10 = @"assigning the same contentRequest";
    }

    else
    {
      v10 = @"message content representation request failed";
    }

    v11 = v10;
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *location = 134218242;
      *&location[4] = self;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%p: Skipping setting the content request: %{public}@", location, 0x16u);
    }
  }

  else
  {
    objc_storeStrong(&self->_contentRequest, request);
    [(MFMessageViewController *)self setDidCompleteFirstPaint:0];
    messageContentView = [(MFMessageViewController *)self messageContentView];
    [messageContentView setContentRequest:v6];

    [(MFMessageViewController *)self setRetryMiddleware:0];
    if (v6)
    {
      objc_initWeak(location, self);
      v8 = [MessageContentRequestRetryMiddleware alloc];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001F5604;
      v13[3] = &unk_10064C838;
      objc_copyWeak(&v14, location);
      v9 = [(MessageContentRequestRetryMiddleware *)v8 initWithMessageContentRequest:v6 handler:v13];
      [(MFMessageViewController *)self setRetryMiddleware:v9];

      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }
  }
}

- (void)clearSuggestionsBannerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  suggestionController = [(MFMessageViewController *)self suggestionController];
  [suggestionController clearSuggestionsBannerAnimated:animatedCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MFMessageViewController;
  [(MFMessageViewController *)&v5 traitCollectionDidChange:changeCopy];
  [(MFMessageViewController *)self setConfiguredForSingleMessageDisplay:[(MFMessageViewController *)self configuredForSingleMessageDisplay]];
}

- (void)hideMenuForSelectedContentRepresentation
{
  v2 = [(MFMessageViewController *)self doc];
  [v2 dismissMenuAnimated:1];
}

- (void)showMenuForSelectedContentRepresentation:(id)representation fromRect:(CGRect)rect view:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  representationCopy = representation;
  viewCopy = view;
  messageContentView = [(MFMessageViewController *)self messageContentView];
  scrollView = [messageContentView scrollView];
  [scrollView zoomScale];
  [(MFMessageViewController *)self _setAttachmentOriginRect:x scale:y, width, height, v15];

  _attachmentShowcase = [(MFMessageViewController *)self _attachmentShowcase];
  v17 = [_attachmentShowcase documentInteractionControllerForContentRepresentation:representationCopy];

  [v17 setDelegate:self];
  messageContentView2 = [(MFMessageViewController *)self messageContentView];
  [v17 setIsContentManaged:{objc_msgSend(messageContentView2, "sourceIsManaged")}];

  [(MFMessageViewController *)self setDoc:v17];
  contentItem = [representationCopy contentItem];
  uniformTypeIdentifier = [contentItem uniformTypeIdentifier];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_1001F5BDC;
  v34[4] = sub_1001F5BEC;
  v21 = v17;
  v35 = v21;
  objc_initWeak(&location, self);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1001F5BF4;
  v28 = &unk_100654F30;
  objc_copyWeak(&v32, &location);
  v22 = uniformTypeIdentifier;
  v29 = v22;
  v23 = representationCopy;
  v30 = v23;
  v31 = v34;
  [v21 _setCompletionWithItemsHandler:&v25];
  if (([v21 presentOptionsMenuFromRect:viewCopy inView:1 animated:{x, y, width, height, v25, v26, v27, v28}] & 1) == 0)
  {
    v24 = MFLogGeneral();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10048BCB4(v23, v24);
    }

    if ([v22 ef_conformsToRFC822UTType])
    {
      [(MFMessageViewController *)self showSelectedContentRepresentation:v23 fromRect:viewCopy view:x, y, width, height];
    }
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  _Block_object_dispose(v34, 8);
}

- (void)_showSelectedContentRepresentation:(id)representation exchangeEventUID:(int)d fromRect:(CGRect)rect view:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = *&d;
  representationCopy = representation;
  viewCopy = view;
  messageContentView = [(MFMessageViewController *)self messageContentView];
  scrollView = [messageContentView scrollView];
  [scrollView zoomScale];
  [(MFMessageViewController *)self _setAttachmentOriginRect:x scale:y, width, height, v16];

  v17 = +[MFAttachmentShowcaseInformation showcaseInformation];
  [v17 setShouldAnimate:1];
  messageContentView2 = [(MFMessageViewController *)self messageContentView];
  [v17 setFromManagedAccount:{objc_msgSend(messageContentView2, "sourceIsManaged")}];

  [v17 setOriginRect:{x, y, width, height}];
  [v17 setOriginView:viewCopy];
  contentRequest = [(MFMessageViewController *)self contentRequest];
  message = [contentRequest message];
  [v17 setMessage:message];

  if ((*(&self->_flags + 1) & 0x80) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    v22 = [delegate messageSourceMailboxObjectIDForMessageViewController:self];
    [v17 setMailboxObjectID:v22];
  }

  _attachmentShowcase = [(MFMessageViewController *)self _attachmentShowcase];
  if (v11)
  {
    [_attachmentShowcase presentExchangeEventUID:v11 showcaseInfo:v17 delegate:self completion:0];
  }

  else
  {
    scene = [(MFMessageViewController *)self scene];
    [_attachmentShowcase presentContentRepresentation:representationCopy scene:scene showcaseInfo:v17 delegate:self completion:&stru_100654F50];
  }
}

- (void)didStartDownloadForContentItemWithProgress:(id)progress
{
  progressCopy = progress;
  if ((*&self->_flags & 8) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self didStartDownloadForContentItemWithProgress:progressCopy];
  }
}

- (id)participantHeaderForContactStore:(id)store
{
  storeCopy = store;
  participantHeader = self->_participantHeader;
  if (!participantHeader || ([(MFConversationItemHeaderBlock *)participantHeader contactStore], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != storeCopy))
  {
    v7 = [[MFConversationItemHeaderBlock alloc] initWithFrame:storeCopy contactStore:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v8 = self->_participantHeader;
    self->_participantHeader = v7;

    [(MFConversationItemHeaderBlock *)self->_participantHeader setDelegate:self];
  }

  v9 = self->_participantHeader;
  v10 = v9;

  return v9;
}

- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace
{
  messageContentView = [(MFMessageViewController *)self messageContentView];
  mf_exclusionRegionsInBaseWindowCoordinateSpace = [messageContentView mf_exclusionRegionsInBaseWindowCoordinateSpace];

  return mf_exclusionRegionsInBaseWindowCoordinateSpace;
}

- (void)messageContentView:(id)view didFinishRenderingWithHeight:(double)height
{
  if (*&self->_flags)
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self didFinishRenderingWithHeight:height];
  }
}

- (void)messageContentViewDidFinishFirstPaint:(id)paint
{
  [(MFMessageViewController *)self setDidCompleteFirstPaint:1];
  if ((*&self->_flags & 2) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewControllerDidFinishFirstPaint:self];
  }
}

- (void)messageContentViewDidDisplayContent:(id)content success:(BOOL)success
{
  if ((*&self->_flags & 4) != 0)
  {
    successCopy = success;
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewControllerDidDisplayContent:self success:successCopy];
  }
}

- (void)messageContentView:(id)view expandQuoteAtCollapsedOffset:(CGPoint)offset expandedOffset:(CGPoint)expandedOffset
{
  if ((*&self->_flags & 0x10) != 0)
  {
    y = expandedOffset.y;
    x = expandedOffset.x;
    v7 = offset.y;
    v8 = offset.x;
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self didTapShowMoreAtCollapsedOffset:v8 expandedOffset:{v7, x, y}];
  }
}

- (void)messageContentView:(id)view didTapRevealActionsButton:(id)button
{
  buttonCopy = button;
  if ((*&self->_flags & 0x80) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self didTapRevealActionsButton:buttonCopy];
  }
}

- (void)messageContentView:(id)view didTapUndoSendButton:(id)button
{
  buttonCopy = button;
  if (*(&self->_flags + 1))
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self didTapUndoSendButton:buttonCopy];
  }
}

- (void)messageContentViewWillBeginZoomingMessage:(id)message
{
  if ((*&self->_flags & 0x20) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewControllerContentViewWillBeginZooming:self];
  }
}

- (void)messageContentView:(id)view didEndZoomingMessageWithOffset:(CGPoint)offset
{
  if ((*&self->_flags & 0x40) != 0)
  {
    y = offset.y;
    x = offset.x;
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self contentViewDidEndZoomingMessageWithOffset:{x, y}];
  }
}

- (void)messageContentView:(id)view didChangeSelectedHTML:(id)l
{
  lCopy = l;
  if ((*(&self->_flags + 1) & 0x10) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    if (lCopy)
    {
      v6 = lCopy;
    }

    else
    {
      v6 = &stru_100662A88;
    }

    [delegate messageViewController:self didChangeSelectedHTML:v6];
  }
}

- (void)messageContentView:(id)view loadingIndicatorDidChangeVisibility:(BOOL)visibility
{
  if ((*(&self->_flags + 1) & 0x20) != 0)
  {
    visibilityCopy = visibility;
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self loadingIndicatorDidChangeVisibility:visibilityCopy];
  }
}

- (void)messageViewControllerDidTapToExpand
{
  if ((*(&self->_flags + 1) & 2) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewControllerDidTapToExpand:self];
  }
}

- (id)presentingViewControllerForMessageContentView:(id)view
{
  delegate = [(MFMessageViewController *)self delegate];
  v5 = [delegate presentingViewControllerForMessageViewController:self];

  return v5;
}

- (void)messageContentView:(id)view scrollToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegate = [(MFMessageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate messageViewController:self scrollToRect:{x, y, width, height}];
  }
}

- (void)messageContentView:(id)view didLoadSecurityInformation:(id)information
{
  informationCopy = information;
  [(MFMessageViewController *)self setSecurityInformation:?];
  contactInteraction = [(MFMessageViewController *)self contactInteraction];

  if (contactInteraction)
  {
    contactInteraction2 = [(MFMessageViewController *)self contactInteraction];
    [contactInteraction2 updateWithSecurityInformation:informationCopy];
  }
}

- (void)messageContentView:(id)view clickedLinkInMessage:(id)message scheme:(id)scheme
{
  messageCopy = message;
  schemeCopy = scheme;
  scene = [(MFMessageViewController *)self scene];
  daemonInterface = [scene daemonInterface];
  interactionLogger = [daemonInterface interactionLogger];
  [interactionLogger clickedLinkInMessage:messageCopy scheme:schemeCopy];
}

- (void)messageContentView:(id)view openPossibleStoreURL:(id)l
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001F6BBC;
  v12 = &unk_100654F78;
  selfCopy = self;
  lCopy = l;
  v14 = lCopy;
  v6 = [MFURLRoutingRequest requestWithURL:lCopy builderBlock:&v9];
  v7 = [(MFMessageViewController *)self scene:v9];
  urlRouter = [v7 urlRouter];
  [urlRouter routeRequest:v6];
}

- (void)messageContentViewContentLayerFinished:(id)finished
{
  v3 = +[UIApplication sharedApplication];
  [v3 _messageContentLayerFinished];
}

- (void)messageContentView:(id)view handleContentRepresentation:(id)representation
{
  viewCopy = view;
  representationCopy = representation;
  contentRequest = [(MFMessageViewController *)self contentRequest];
  message = [contentRequest message];
  mailboxes = [message mailboxes];
  v10 = [mailboxes ef_any:&stru_100654F98];

  v11 = +[UIApplication sharedApplication];
  getiCloudMailCleanupService = [v11 getiCloudMailCleanupService];
  LODWORD(message) = [getiCloudMailCleanupService shouldShowICloudUnsubscribe];

  if ((+[MUIiCloudMailCleanupService isFeatureAvailable]& v10 & message) == 1)
  {
    suggestionController = [(MFMessageViewController *)self suggestionController];
    createAnalysisOperation = [suggestionController createAnalysisOperation];
    [createAnalysisOperation handleContentRepresentation:representationCopy allowUnsubscribe:objc_msgSend(viewCopy shouldShowICloudUnsubscribe:{"hideSenderSpecificBanners") ^ 1, 1}];
  }

  else
  {
    suggestionController = [(MFMessageViewController *)self suggestionController];
    createAnalysisOperation = [suggestionController createAnalysisOperation];
    [createAnalysisOperation handleContentRepresentation:representationCopy allowUnsubscribe:{objc_msgSend(viewCopy, "hideSenderSpecificBanners") ^ 1}];
  }
}

- (void)messageContentView:(id)view clearSuggestionsBannerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  suggestionController = [(MFMessageViewController *)self suggestionController];
  [suggestionController clearSuggestionsBannerAnimated:animatedCopy];
}

- (void)messageContentView:(id)view viewedRemoteURLs:(id)ls
{
  lsCopy = ls;
  scene = [(MFMessageViewController *)self scene];
  daemonInterface = [scene daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  [messageRepository noteViewOfRemoteContentLinks:lsCopy];
}

- (void)messageContentView:(id)view webViewDidTerminateWithReason:(int64_t)reason
{
  if (*(&self->_flags + 2))
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self webViewDidTerminateWithReason:reason];
  }
}

- (BOOL)isShowingGroupedSenderMessageListForMessageContentView:(id)view
{
  delegate = [(MFMessageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate isShowingGroupedSenderMessageListForMessageViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowTimeSensitiveBannerForMessageContentView:(id)view message:(id)message
{
  messageCopy = message;
  delegate = [(MFMessageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate shouldShowTimeSensitiveBannerForMessageViewController:self message:messageCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCategorizationActionAllowed
{
  delegate = [(MFMessageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate isCategorizationActionAllowedForMessageViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)viewControllerForPresentingSuggestions
{
  delegate = [(MFMessageViewController *)self delegate];
  v4 = [delegate presentingViewControllerForMessageViewController:self];

  return v4;
}

- (void)presentSuggestionViewController:(id)controller
{
  controllerCopy = controller;
  messageContentView = [(MFMessageViewController *)self messageContentView];
  [messageContentView _showModalViewController:controllerCopy presentationSource:0];
}

- (BOOL)showsBanners
{
  messageContentView = [(MFMessageViewController *)self messageContentView];
  showsBanners = [messageContentView showsBanners];

  return showsBanners;
}

- (id)presentingViewControllerForAttachmentShowcase:(id)showcase
{
  delegate = [(MFMessageViewController *)self delegate];
  v5 = [delegate presentingViewControllerForMessageViewController:self];

  return v5;
}

- (id)contactStoreForAttachmentShowcase:(id)showcase
{
  contactStore = [(MFMessageViewController *)self contactStore];

  return contactStore;
}

- (id)messageSourceMailboxObjectIDForMessageContentView:(id)view
{
  if ((*(&self->_flags + 1) & 0x80) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    v3 = [delegate messageSourceMailboxObjectIDForMessageViewController:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)conversationItemHeader:(id)header didSelectAddressAtom:(id)atom forAtomType:(unint64_t)type
{
  atomCopy = atom;
  fullAddress = [atomCopy fullAddress];
  v8 = [(MFMessageViewController *)self _contactViewControllerForAddress:fullAddress forAtomType:type];
  [(MFMessageViewController *)self setContactViewController:v8];

  contactViewController = [(MFMessageViewController *)self contactViewController];
  if (contactViewController)
  {
    flags = self->_flags;

    if ((*&flags & 0x400) != 0)
    {
      delegate = [(MFMessageViewController *)self delegate];
      contactViewController2 = [(MFMessageViewController *)self contactViewController];
      [delegate messageViewControllerDidTapAddressAtom:atomCopy contactViewController:contactViewController2];
    }
  }
}

- (void)conversationItemHeader:(id)header didSelectAddress:(id)address forAtomType:(unint64_t)type
{
  addressCopy = address;
  v6 = [MFMessageViewController _contactViewControllerForAddress:"_contactViewControllerForAddress:forAtomType:" forAtomType:?];
  [(MFMessageViewController *)self setContactViewController:v6];

  delegate = [(MFMessageViewController *)self delegate];
  contactViewController = [(MFMessageViewController *)self contactViewController];
  if (contactViewController)
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      contactViewController2 = [(MFMessageViewController *)self contactViewController];
      [delegate messageViewControllerDidChooseAddress:addressCopy contactViewController:contactViewController2];
    }
  }
}

- (void)conversationItemHeader:(id)header searchForDisplayName:(id)name emailAddresses:(id)addresses
{
  nameCopy = name;
  addressesCopy = addresses;
  delegate = [(MFMessageViewController *)self delegate];
  [delegate contactCardInteractions:0 triggerSearchForDisplayName:nameCopy emailAddresses:addressesCopy];
}

- (id)conversationItemHeader:(id)header displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated
{
  v5 = [(MFMessageViewController *)self _delegateDisplayNameForEmailAddress:address abbreviated:abbreviated];

  return v5;
}

- (id)popoverManagerForForConversationItemHeader:(id)header
{
  scene = [(MFMessageViewController *)self scene];
  popoverManager = [scene popoverManager];

  return popoverManager;
}

- (void)conversationItemHeader:(id)header didTapRevealActionsButton:(id)button
{
  buttonCopy = button;
  if ((*&self->_flags & 0x80) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    [delegate messageViewController:self didTapRevealActionsButton:buttonCopy];
  }
}

- (id)mailProviderDisplayNameForConversationItemHeader:(id)header
{
  contentRequest = [(MFMessageViewController *)self contentRequest];
  message = [contentRequest message];

  mailProviderDisplayNameForBIMI = [message mailProviderDisplayNameForBIMI];

  return mailProviderDisplayNameForBIMI;
}

- (id)actualSenderFutureForConversationItemHeader:(id)header
{
  contentRequest = [(MFMessageViewController *)self contentRequest];
  contentRepresentationFuture = [contentRequest contentRepresentationFuture];
  v5 = [contentRepresentationFuture then:&stru_100654FD8];

  return v5;
}

- (void)conversationItemHeader:(id)header presentViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [[UINavigationController alloc] initWithRootViewController:controllerCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(MFMessageViewController *)self delegate];
    [(MFMessageViewController *)self setDelegate:controllerCopy];
    v8 = controllerCopy;
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001F7C90;
    v10[3] = &unk_10064CC78;
    objc_copyWeak(&v12, &location);
    v9 = delegate;
    v11 = v9;
    [v8 setViewDidDisappearBlock:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  [(MFMessageViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (CGRect)documentInteractionControllerRectForPreview:(id)preview
{
  x = self->_attachmentRect.origin.x;
  y = self->_attachmentRect.origin.y;
  width = self->_attachmentRect.size.width;
  height = self->_attachmentRect.size.height;
  icons = [preview icons];
  lastObject = [icons lastObject];

  if (lastObject)
  {
    [lastObject size];
    x = x + (width + -74.0 + v9) * 0.5;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)documentInteractionControllerViewForPreview:(id)preview
{
  view = [(MFMessageViewController *)self view];

  return view;
}

- (id)excludedActivityTypesForDocumentInteractionController:(id)controller
{
  v9[0] = MFActivityTypeQuicklook;
  v9[1] = UIActivityTypeSaveToCameraRoll;
  v9[2] = UIActivityTypeMarkupAsPDF;
  v4 = [NSArray arrayWithObjects:v9 count:3];
  messageContentView = [(MFMessageViewController *)self messageContentView];
  mayShareToUnmanaged = [messageContentView mayShareToUnmanaged];

  if ((mayShareToUnmanaged & 1) == 0)
  {
    v7 = [v4 arrayByAddingObject:UIActivityTypeCopyToPasteboard];

    v4 = v7;
  }

  return v4;
}

- (id)additionalActivitiesForDocumentInteractionController:(id)controller
{
  controllerCopy = controller;
  v5 = +[NSMutableArray array];
  v6 = [controllerCopy URL];
  pathExtension = [v6 pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if ([lowercaseString length])
  {
    ef_declaredUTTypeFromExtension = [lowercaseString ef_declaredUTTypeFromExtension];
  }

  else
  {
    ef_declaredUTTypeFromExtension = 0;
  }

  if ([ef_declaredUTTypeFromExtension conformsToType:UTTypeMovie])
  {
    v10 = [(MessageSaveToCameraRollActivity *)[MessageSaveVideoAttachmentActivity alloc] initWithAttachmentHandlingDelegate:self context:2];
    v11 = [(MessageSaveToCameraRollActivity *)[MessageSaveAllAttachmentsActivity alloc] initWithAttachmentHandlingDelegate:self context:2];
    [v5 addObject:v10];
  }

  else
  {
    v10 = [(MessageSaveToCameraRollActivity *)[MessageSaveImageAttachmentActivity alloc] initWithAttachmentHandlingDelegate:self context:1];
    [v5 addObject:v10];
    v11 = [(MessageSaveToCameraRollActivity *)[MessageSaveAllAttachmentsActivity alloc] initWithAttachmentHandlingDelegate:self context:1];
  }

  [v5 addObject:v11];

  presentedViewController = [(MFMessageViewController *)self presentedViewController];
  sub_1001F829C();
  isKindOfClass = objc_opt_isKindOfClass();

  if (!(isKindOfClass & 1 | (v6 == 0)))
  {
    if ([sub_1001F829C() canPreviewItem:v6])
    {
      v14 = [[MessageQuicklookImageAttachmentsActivity alloc] initWithAttachmentHandlingDelegate:self context:1 url:v6];
      [v5 addObject:v14];
    }

    if (([ef_declaredUTTypeFromExtension conformsToType:UTTypePDF] & 1) == 0)
    {
      v15 = [objc_alloc(sub_1001F837C()) initWithURL:v6];
      v16 = [sub_1001F829C() printPageRendererForItem:v15];
      if (v16)
      {
        v17 = [[MessagePrintQuicklookableAttachmentActivity alloc] initWithPrintPageRenderer:v16];
        [v5 addObject:v17];
      }
    }
  }

  if ((isKindOfClass & 1) == 0)
  {
    identifier = [ef_declaredUTTypeFromExtension identifier];
    ef_conformsToMarkupUTType = [identifier ef_conformsToMarkupUTType];

    if (ef_conformsToMarkupUTType)
    {
      v20 = [[MessageMarkupDocumentActivity alloc] initWithAttachmentHandlingDelegate:self context:0];
      [v5 addObject:v20];
    }
  }

  return v5;
}

- (void)_getNumberOfImages:(unint64_t *)images videos:(unint64_t *)videos undownloaded:(unint64_t *)undownloaded
{
  messageContentView = [(MFMessageViewController *)self messageContentView];
  contentItems = [messageContentView contentItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = contentItems;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        isAvailableLocally = [v13 isAvailableLocally];
        type = [v13 type];
        if ([type conformsToType:UTTypeMovie])
        {
          ++v8;
        }

        else
        {
          v16 = [type conformsToType:UTTypeImage];
          v9 += v16 & 1;
          if ((v16 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v7 += isAvailableLocally ^ 1;
LABEL_10:
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if (images)
  {
    *images = v9;
  }

  if (videos)
  {
    *videos = v8;
  }

  if (undownloaded)
  {
    *undownloaded = v7;
  }
}

- (BOOL)canSaveAllAttachmentsInContext:(int64_t)context
{
  messageContentView = [(MFMessageViewController *)self messageContentView];
  if (![messageContentView mayShareToUnmanaged])
  {

    return 0;
  }

  v6 = MFIsAuthorizedToAccessPhotoLibrary();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  [(MFMessageViewController *)self _getNumberOfImages:&v9 videos:&v8 undownloaded:0];
  if (context == 2)
  {
    if (v8)
    {
      --v8;
    }
  }

  else if (context == 1)
  {
    if (v9)
    {
      --v9;
    }
  }

  return v9 + v8 != 0;
}

- (id)allMediaAttachmentFutures
{
  messageContentView = [(MFMessageViewController *)self messageContentView];
  contentItems = [messageContentView contentItems];
  v5 = [contentItems ef_filter:&stru_100654FF8];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F88A8;
  v8[3] = &unk_100655020;
  v8[4] = self;
  v6 = [v5 ef_map:v8];

  return v6;
}

- (id)localizedTitleForSaveAllAttachmentsAction
{
  v10 = 0;
  v11 = 0;
  [(MFMessageViewController *)self _getNumberOfImages:&v11 videos:&v10 undownloaded:0];
  v2 = v10 + v11;
  if ((v10 + v11) < 2)
  {
    if (v10)
    {
      if (v11)
      {
        v7 = &stru_100662A88;
        goto LABEL_16;
      }

      v3 = +[NSBundle mainBundle];
      v8 = [v3 localizedStringForKey:@"SAVE_VIDEO" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v3 = +[NSBundle mainBundle];
      v8 = [v3 localizedStringForKey:@"SAVE_IMAGE" value:&stru_100662A88 table:@"Main"];
    }

    v7 = v8;
  }

  else
  {
    v3 = [NSNumberFormatter ef_formatInteger:v10 + v11 withGrouping:1];
    if (v10)
    {
      if (v11)
      {
        v4 = +[NSBundle mainBundle];
        v5 = [v4 localizedStringForKey:@"SAVE_N_ATTACHMENTS%1$lu%2$@" value:&stru_100662A88 table:@"Main"];
        [NSString localizedStringWithFormat:v5, v2, v3];
      }

      else
      {
        v4 = +[NSBundle mainBundle];
        v5 = [v4 localizedStringForKey:@"SAVE_N_VIDEOS%1$lu%2$@" value:&stru_100662A88 table:@"Main"];
        [NSString localizedStringWithFormat:v5, v10, v3];
      }
      v6 = ;
    }

    else
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"SAVE_N_IMAGES%1$lu%2$@" value:&stru_100662A88 table:@"Main"];
      v6 = [NSString localizedStringWithFormat:v5, v11, v3];
    }

    v7 = v6;
  }

LABEL_16:

  return v7;
}

- (id)assetViewerManager
{
  scene = [(MFMessageViewController *)self scene];
  assetViewerManager = [scene assetViewerManager];

  return assetViewerManager;
}

- (id)dismissActionsForPreviewController:(id)controller
{
  v4 = objc_opt_new();
  messageContentView = [(MFMessageViewController *)self messageContentView];
  contentRequest = [messageContentView contentRequest];
  message = [contentRequest message];

  shouldShowReplyAll = [message shouldShowReplyAll];
  contactStore = [(MFMessageViewController *)self contactStore];
  v10 = [message senderDisplayNameUsingContactStore:contactStore];

  objc_initWeak(location, self);
  if (v10)
  {
    v11 = sub_1001F9140();
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"REPLY_TO_SENDER" value:&stru_100662A88 table:@"Main"];
    v14 = [NSString stringWithFormat:v13, v10];
    v15 = [UIImage systemImageNamed:MFImageGlyphReply];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001F9220;
    v32[3] = &unk_100650D08;
    objc_copyWeak(&v33, location);
    v16 = [v11 actionWithTitle:v14 image:v15 handler:v32];

    [v4 addObject:v16];
    objc_destroyWeak(&v33);
  }

  if (shouldShowReplyAll)
  {
    v17 = sub_1001F9140();
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"REPLY_ALL" value:&stru_100662A88 table:@"Main"];
    v20 = [UIImage systemImageNamed:MFImageGlyphReplyAll];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001F93EC;
    v30[3] = &unk_100650D08;
    objc_copyWeak(&v31, location);
    v21 = [v17 actionWithTitle:v19 image:v20 handler:v30];

    [v4 addObject:v21];
    objc_destroyWeak(&v31);
  }

  v22 = sub_1001F9140();
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"TITLE_NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
  v25 = [UIImage systemImageNamed:MFImageGlyphCompose];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001F95B8;
  v28[3] = &unk_100650D08;
  objc_copyWeak(&v29, location);
  v26 = [v22 actionWithTitle:v24 image:v25 handler:v28];

  [v4 addObject:v26];
  objc_destroyWeak(&v29);
  objc_destroyWeak(location);

  return v4;
}

- (id)documentInteractionControllerMarkupDismissActions:(id)actions
{
  v4 = objc_opt_new();
  messageContentView = [(MFMessageViewController *)self messageContentView];
  contentRequest = [messageContentView contentRequest];
  message = [contentRequest message];

  shouldShowReplyAll = [message shouldShowReplyAll];
  contactStore = [(MFMessageViewController *)self contactStore];
  v10 = [message senderDisplayNameUsingContactStore:contactStore];

  objc_initWeak(location, self);
  if (v10)
  {
    v25 = v4;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"REPLY_TO_SENDER" value:&stru_100662A88 table:@"Main"];
    v13 = [NSString stringWithFormat:v12, v10];
    v14 = [UIImage systemImageNamed:MFImageGlyphReply];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001F9C8C;
    v30[3] = &unk_100655098;
    objc_copyWeak(&v31, location);
    v15 = [UIDocumentInteractionControllerDismissMarkupAction actionWithTitle:v13 image:v14 handler:v30];

    v4 = v25;
    [v25 addObject:v15];

    objc_destroyWeak(&v31);
  }

  if (shouldShowReplyAll)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"REPLY_ALL" value:&stru_100662A88 table:@"Main"];
    v18 = [UIImage systemImageNamed:MFImageGlyphReplyAll];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001F9E58;
    v28[3] = &unk_100655098;
    objc_copyWeak(&v29, location);
    v19 = [UIDocumentInteractionControllerDismissMarkupAction actionWithTitle:v17 image:v18 handler:v28];

    [v4 addObject:v19];
    objc_destroyWeak(&v29);
  }

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"TITLE_NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
  v22 = [UIImage systemImageNamed:MFImageGlyphCompose];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001FA024;
  v26[3] = &unk_100655098;
  objc_copyWeak(&v27, location);
  v23 = [UIDocumentInteractionControllerDismissMarkupAction actionWithTitle:v21 image:v22 handler:v26];

  [v4 addObject:v23];
  objc_destroyWeak(&v27);
  objc_destroyWeak(location);

  return v4;
}

- (id)_makeFileCopyOfEditedQuickLookFileToLocalContainer:(id)container preferredFileName:(id)name
{
  containerCopy = container;
  nameCopy = name;
  v7 = +[NSFileManager defaultManager];
  v13 = 0;
  v8 = [v7 mf_copyFileAtURLToContainer:containerCopy securityScoped:1 preferredFileName:nameCopy error:&v13];
  v9 = v13;

  if (!v8)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v9 ef_publicDescription];
      sub_10048BDA4(ef_publicDescription, buf, v10);
    }
  }

  return v8;
}

- (void)_performMailAction:(int64_t)action withMarkedUpFileAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  if (action < 7 && ((0x71u >> action) & 1) != 0)
  {
    v8 = qword_1004FC480[action];
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFMessageViewController.m" lineNumber:1029 description:{@"Message action value %lu is undefined.", action}];

    v8 = 5;
  }

  messageContentView = [(MFMessageViewController *)self messageContentView];
  contentRequest = [messageContentView contentRequest];
  message = [contentRequest message];

  v13 = [MFComposeMailMessage legacyMessageWithMessage:message mailboxUid:0 skipAttachmentDownload:1];
  v14 = [_MFMailCompositionContext alloc];
  emailMessageRepresentation = [v13 emailMessageRepresentation];
  v16 = [v14 initWithComposeType:v8 originalMessage:emailMessageRepresentation legacyMessage:v13];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001FA668;
  v22[3] = &unk_1006550C0;
  v17 = v16;
  v23 = v17;
  [attachmentsCopy enumerateObjectsUsingBlock:v22];
  [v17 setOriginatingFromAttachmentMarkup:1];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_1001F5BDC;
  v20[4] = sub_1001F5BEC;
  selfCopy = self;
  scene = [(MFMessageViewController *)selfCopy scene];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001FA674;
  v19[3] = &unk_100650760;
  v19[4] = v20;
  [scene showComposeWithContext:v17 animated:1 initialTitle:0 presentationSource:0 completionBlock:v19];

  _Block_object_dispose(v20, 8);
}

- (void)presentMarkupViewController:(id)controller
{
  selfCopy = self;
  controllerCopy = controller;
  v7 = controllerCopy;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)dismissMarkupViewController
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001FA8FC;
  v3[3] = &unk_10064C7E8;
  v3[4] = self;
  v2 = +[EFScheduler mainThreadScheduler];
  [v2 performBlock:v3];
}

- (id)_attachmentShowcase
{
  attachmentShowcase = self->_attachmentShowcase;
  if (!attachmentShowcase)
  {
    v4 = objc_alloc_init(MFAttachmentShowcase);
    v5 = self->_attachmentShowcase;
    self->_attachmentShowcase = v4;

    [(MFAttachmentShowcase *)self->_attachmentShowcase setPresentingViewController:self];
    [(MFAttachmentShowcase *)self->_attachmentShowcase setDocumentInteractionControllerDelegate:self];
    attachmentShowcase = self->_attachmentShowcase;
  }

  return attachmentShowcase;
}

- (void)_setAttachmentOriginRect:(CGRect)rect scale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(MFMessageViewController *)self messageContentView:rect.origin.x];
  view = [(MFMessageViewController *)self view];
  [view convertRect:v9 fromView:{x, y, width, height}];
  self->_attachmentRect.origin.x = v11;
  self->_attachmentRect.origin.y = v12;
  self->_attachmentRect.size.width = v13;
  self->_attachmentRect.size.height = v14;
  v15 = MFLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v16 = NSStringFromCGRect(v28);
    v17 = NSStringFromCGRect(self->_attachmentRect);
    v18 = 138413314;
    selfCopy = self;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = view;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: Attachment origin rect=%{public}@, resulting in _attachmentRect=%{public}@,\tfromView=%{public}@ \ttoView=%{public}@", &v18, 0x34u);
  }
}

- (void)_previewURL:(id)l withEditingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  lCopy = l;
  v7 = [objc_alloc(sub_1001F837C()) initWithURL:lCopy];
  if (v7)
  {
    v8 = objc_alloc(sub_1001F829C());
    v17 = v7;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v10 = [v8 initWithPreviewItems:v9];

    messageContentView = [(MFMessageViewController *)self messageContentView];
    [v10 setIsContentManaged:{objc_msgSend(messageContentView, "sourceIsManaged")}];

    if (enabledCopy)
    {
      [v10 setAppearanceActions:4];
    }

    [v10 setDelegate:self];
    [(MFMessageViewController *)self setPreviewController:v10];
    [v10 setModalPresentationStyle:5];
    selfCopy = self;
    v12 = v10;
    v16 = v12;
    v13 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v13 performBlock:&v14];
  }
}

- (BOOL)isSourceManagedForURL:(id)l
{
  messageContentView = [(MFMessageViewController *)self messageContentView];
  sourceIsManaged = [messageContentView sourceIsManaged];

  return sourceIsManaged;
}

- (id)_delegateDisplayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  addressCopy = address;
  if ((*(&self->_flags + 1) & 8) != 0)
  {
    delegate = [(MFMessageViewController *)self delegate];
    v7 = [delegate messageViewController:self displayNameForEmailAddress:addressCopy abbreviated:abbreviatedCopy];
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = addressCopy;
  }

  v10 = v9;

  return v9;
}

- (id)_contactViewControllerForAddress:(id)address forAtomType:(unint64_t)type
{
  addressCopy = address;
  v78 = objc_alloc_init(CNContactStore);
  stringValue = [addressCopy stringValue];
  v7 = +[CNContactViewController descriptorForRequiredKeys];
  v88 = v7;
  v8 = [NSArray arrayWithObjects:&v88 count:1];
  v9 = [v78 em_fetchContactForEmailAddress:stringValue keysToFetch:v8 createIfNeeded:1];

  contentRequest = [(MFMessageViewController *)self contentRequest];
  resultIfAvailable = [contentRequest resultIfAvailable];
  requestedHeaders = [resultIfAvailable requestedHeaders];
  v13 = [requestedHeaders firstHeaderForKey:ECMessageHeaderKeyHMEAddress];
  v76 = [ECTagValueList tagValueListFromString:v13 error:0];

  emailAddressValue = [addressCopy emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v16 = [v76 objectForKeyedSubscript:EMHeaderTagHMEAddress];
  v74 = [simpleAddress isEqualToString:v16];

  if (v74)
  {
    v17 = +[EMHideMyEmail sharedInstance];
    forwardingEmailForPrimaryAccount = [v17 forwardingEmailForPrimaryAccount];

    v19 = +[CNContactViewController descriptorForRequiredKeys];
    v87 = v19;
    v20 = [NSArray arrayWithObjects:&v87 count:1];
    v21 = [v78 em_fetchContactForEmailAddress:forwardingEmailForPrimaryAccount keysToFetch:v20 createIfNeeded:1];

    v22 = 0;
    v9 = v21;
  }

  else
  {
    v22 = [v76 objectForKeyedSubscript:EMHeaderTagHMESenderAddress];
    if (!v22)
    {
      v77 = 0;
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_12:
      v30 = 0;
      goto LABEL_32;
    }

    forwardingEmailForPrimaryAccount = +[CNContactViewController descriptorForRequiredKeys];
    v86 = forwardingEmailForPrimaryAccount;
    v19 = [NSArray arrayWithObjects:&v86 count:1];
    [v78 em_fetchContactForEmailAddress:v22 keysToFetch:v19 createIfNeeded:1];
    v9 = v20 = v9;
  }

  v77 = v22;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ([v9 hasBeenPersisted] && +[MFContactsManager isAuthorizedToUseContacts](MFContactsManager, "isAuthorizedToUseContacts"))
  {
    v23 = [CNContactViewController viewControllerForContact:v9];
    emailAddressValue2 = [addressCopy emailAddressValue];
    simpleAddress2 = [emailAddressValue2 simpleAddress];
    emailAddressValue3 = [simpleAddress2 emailAddressValue];

    if (emailAddressValue3)
    {
      emailAddresses = [v9 emailAddresses];
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_1001FBD10;
      v83[3] = &unk_100654D20;
      v84 = emailAddressValue3;
      v28 = [emailAddresses ef_firstObjectPassingTest:v83];

      identifier = [v28 identifier];
    }

    else
    {
      identifier = 0;
    }

    [v23 highlightPropertyWithKey:CNContactEmailAddressesKey identifier:identifier];

    v30 = v23;
  }

  else
  {
    v30 = [CNContactViewController viewControllerForUnknownContact:v9];
  }

  if ((+[MFContactsManager isAuthorizedToUseContacts]& 1) == 0)
  {
    [v30 setActions:{objc_msgSend(v30, "actions") & 0xFFFFFFFFFFFFFFDFLL}];
  }

  [v30 setContactStore:v78];
  contentRequest2 = [(MFMessageViewController *)self contentRequest];
  message = [contentRequest2 message];

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  daemonInterface = [WeakRetained daemonInterface];
  blockedSenderManager = [daemonInterface blockedSenderManager];
  v35 = [MFContactCardInteractions contactCardInteractionWithViewController:v30 blockedSenderManager:blockedSenderManager];
  [(MFMessageViewController *)self setContactCardInteractions:v35];

  contactCardInteractions = [(MFMessageViewController *)self contactCardInteractions];
  [contactCardInteractions configureInteractionsWithInteractionDelegate:self];

  [v30 _setDataOwnerForCopy:{-[MFMessageViewController _dataOwnerForCopy](self, "_dataOwnerForCopy")}];
  [v30 _setDataOwnerForPaste:{-[MFMessageViewController _dataOwnerForPaste](self, "_dataOwnerForPaste")}];
  if (type == 1)
  {
    replyToList = objc_alloc_init(MFContactMessageInteraction);
    [(MFMessageViewController *)self setContactInteraction:?];
    contactInteraction = [(MFMessageViewController *)self contactInteraction];
    [contactInteraction setDelegate:self];

    contactInteraction2 = [(MFMessageViewController *)self contactInteraction];
    securityInformation = [(MFMessageViewController *)self securityInformation];
    [contactInteraction2 updateWithSecurityInformation:securityInformation];

    [(MFMessageViewController *)self _setupHeaderViewForContactViewController:v30];
    scene = [(MFMessageViewController *)self scene];
    brandIndicatorProvider = [scene brandIndicatorProvider];
    contentRequest3 = [(MFMessageViewController *)self contentRequest];
    message2 = [contentRequest3 message];
    brandIndicatorLocation = [message2 brandIndicatorLocation];
    view = [(MFMessageViewController *)self view];
    traitCollection = [view traitCollection];
    [traitCollection displayScale];
    v60 = [brandIndicatorProvider brandIndicatorFutureForLocation:brandIndicatorLocation scale:?];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1001FBDD4;
    v79[3] = &unk_1006550E8;
    v80 = v77;
    v81 = message;
    v82 = v30;
    [v60 addSuccessBlock:v79];

    senderAddress = v80;
LABEL_25:

    goto LABEL_26;
  }

  if (type == 2)
  {
    contentRequest4 = [(MFMessageViewController *)self contentRequest];
    contentRepresentationFuture = [contentRequest4 contentRepresentationFuture];
    result = [contentRepresentationFuture result];
    replyToList = [result replyToList];

    senderAddress = [message senderAddress];
    senderAddress2 = [message senderAddress];
    v85 = senderAddress2;
    v42 = [NSArray arrayWithObjects:&v85 count:1];
    LODWORD(contentRepresentationFuture) = [MFAddressAtomStatusManager shouldDecorateAtomListForSender:v42 replyTo:replyToList];

    if (contentRepresentationFuture)
    {
      v43 = _EFLocalizedString();
      v44 = _EFLocalizedString();
      v45 = [NSString stringWithFormat:v44, senderAddress];

      if (MUISolariumFeatureEnabled())
      {
        v46 = [[NSAttributedString alloc] initWithString:v43];
        v47 = [[CNContactCustomViewConfiguration alloc] initWithAttributedTitle:v46];
        [v47 setTitleIconSymbolName:MFImageGlyphQuestion];
        v48 = +[UIColor mailInteractiveColor];
        [v47 setTitleIconColor:v48];

        v49 = [[NSAttributedString alloc] initWithString:v45];
        [v47 setBody:v49];

        [v30 setCustomViewConfiguration:v47];
      }

      else
      {
        v61 = [MFSecureMIMEPersonHeaderView alloc];
        v62 = +[UIColor mailSecureMIMERegularTextColor];
        v46 = [v61 initWithFrame:v62 warningLabelTextColor:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

        [v46 setWarningLabelText:v43];
        [v46 setExplanationText:v45];
        [v30 setContactHeaderView:v46];
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v74)
  {
    if (MUISolariumFeatureEnabled())
    {
      v63 = [HideMyEmailContactHeaderViewModel alloc];
      emailAddressValue4 = [addressCopy emailAddressValue];
      simpleAddress3 = [emailAddressValue4 simpleAddress];
      v66 = [v63 initWithAddress:simpleAddress3];

      contactsCustomViewConfiguration = [v66 contactsCustomViewConfiguration];
      [v30 setCustomViewConfiguration:contactsCustomViewConfiguration];
    }

    else
    {
      v68 = [MFHideMyEmailHeaderView alloc];
      emailAddressValue5 = [addressCopy emailAddressValue];
      simpleAddress4 = [emailAddressValue5 simpleAddress];
      v66 = [v68 initWithFrame:simpleAddress4 address:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

      [v30 setContactHeaderView:v66];
    }
  }

LABEL_32:
  [v30 setPreferredContentSize:{0.0, 700.0}];

  return v30;
}

- (void)_setupHeaderViewForContactViewController:(id)controller
{
  controllerCopy = controller;
  if (MUISolariumFeatureEnabled())
  {
    contactInteraction = [(MFMessageViewController *)self contactInteraction];
    headerViewConfiguration = [contactInteraction headerViewConfiguration];

    if (headerViewConfiguration)
    {
      [controllerCopy setCustomViewConfiguration:headerViewConfiguration];
    }
  }

  else
  {
    contactInteraction2 = [(MFMessageViewController *)self contactInteraction];
    headerViewConfiguration = [contactInteraction2 headerView];

    if (headerViewConfiguration)
    {
      [controllerCopy setContactHeaderView:headerViewConfiguration];
    }
  }
}

- (void)contactMessageInteraction:(id)interaction didUpdateHeaderView:(id)view
{
  viewCopy = view;
  contactViewController = [(MFMessageViewController *)self contactViewController];
  v6 = contactViewController;
  if (contactViewController)
  {
    contactHeaderView = [contactViewController contactHeaderView];

    if (contactHeaderView != viewCopy)
    {
      [(MFMessageViewController *)self _setupHeaderViewForContactViewController:v6];
    }
  }
}

- (BOOL)canSearchForContactFromContactCardInteractions:(id)interactions
{
  interactionsCopy = interactions;
  delegate = [(MFMessageViewController *)self delegate];
  v6 = [delegate canSearchForContactFromContactCardInteractions:interactionsCopy];

  return v6;
}

- (void)contactCardInteractions:(id)interactions triggerSearchForDisplayName:(id)name emailAddresses:(id)addresses
{
  interactionsCopy = interactions;
  nameCopy = name;
  addressesCopy = addresses;
  delegate = [(MFMessageViewController *)self delegate];
  [delegate contactCardInteractions:interactionsCopy triggerSearchForDisplayName:nameCopy emailAddresses:addressesCopy];
}

- (void)prepareForReuse
{
  [(MFConversationItemHeaderBlock *)self->_participantHeader prepareForReuse];
  messageContentView = [(MFMessageViewController *)self messageContentView];
  [messageContentView prepareForReuse];

  [(MFMessageViewController *)self setDelegate:0];
  parentViewController = [(MFMessageViewController *)self parentViewController];

  if (parentViewController)
  {
    [(MFMessageViewController *)self willMoveToParentViewController:0];

    [(MFMessageViewController *)self removeFromParentViewController];
  }
}

- (id)messageContentRepresentationRequestForScreenshotService:(id)service
{
  contentRequest = [(MFMessageViewController *)self contentRequest];

  return contentRequest;
}

- (id)conversationAttachmentURLsForConversationItemHeaderBlock:(id)block
{
  blockCopy = block;
  delegate = [(MFMessageViewController *)self delegate];
  v6 = [delegate conversationAttachmentURLsForConversationItemHeaderBlock:blockCopy];

  return v6;
}

- (id)richLinksInConversationForConversationItemHeaderBlock:(id)block
{
  blockCopy = block;
  delegate = [(MFMessageViewController *)self delegate];
  v6 = [delegate richLinksInConversationForConversationItemHeaderBlock:blockCopy];

  return v6;
}

- (int64_t)numberOfMessagesInConversationForConversationItemHeaderBlock:(id)block
{
  blockCopy = block;
  delegate = [(MFMessageViewController *)self delegate];
  v6 = [delegate numberOfMessagesInConversationForConversationItemHeaderBlock:blockCopy];

  return v6;
}

- (MFMessageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (QLPreviewController)previewController
{
  WeakRetained = objc_loadWeakRetained(&self->_previewController);

  return WeakRetained;
}

- (UIDocumentInteractionController)doc
{
  WeakRetained = objc_loadWeakRetained(&self->_doc);

  return WeakRetained;
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end