@interface MFMessageViewController
- (BOOL)canSaveAllAttachmentsInContext:(int64_t)a3;
- (BOOL)canSearchForContactFromContactCardInteractions:(id)a3;
- (BOOL)isCategorizationActionAllowed;
- (BOOL)isShowingGroupedSenderMessageListForMessageContentView:(id)a3;
- (BOOL)isSourceManagedForURL:(id)a3;
- (BOOL)shouldShowTimeSensitiveBannerForMessageContentView:(id)a3 message:(id)a4;
- (BOOL)showsBanners;
- (CGRect)documentInteractionControllerRectForPreview:(id)a3;
- (ComposeCapable)scene;
- (MFMessageViewController)initWithScene:(id)a3 accountsController:(id)a4;
- (MFMessageViewControllerDelegate)delegate;
- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace;
- (QLPreviewController)previewController;
- (UIDocumentInteractionController)doc;
- (id)_attachmentShowcase;
- (id)_contactViewControllerForAddress:(id)a3 forAtomType:(unint64_t)a4;
- (id)_delegateDisplayNameForEmailAddress:(id)a3 abbreviated:(BOOL)a4;
- (id)_makeFileCopyOfEditedQuickLookFileToLocalContainer:(id)a3 preferredFileName:(id)a4;
- (id)actualSenderFutureForConversationItemHeader:(id)a3;
- (id)additionalActivitiesForDocumentInteractionController:(id)a3;
- (id)allMediaAttachmentFutures;
- (id)assetViewerManager;
- (id)contactStoreForAttachmentShowcase:(id)a3;
- (id)conversationAttachmentURLsForConversationItemHeaderBlock:(id)a3;
- (id)conversationItemHeader:(id)a3 displayNameForEmailAddress:(id)a4 abbreviated:(BOOL)a5;
- (id)dismissActionsForPreviewController:(id)a3;
- (id)documentInteractionControllerMarkupDismissActions:(id)a3;
- (id)documentInteractionControllerViewForPreview:(id)a3;
- (id)excludedActivityTypesForDocumentInteractionController:(id)a3;
- (id)localizedTitleForSaveAllAttachmentsAction;
- (id)mailProviderDisplayNameForConversationItemHeader:(id)a3;
- (id)messageContentRepresentationRequestForScreenshotService:(id)a3;
- (id)messageSourceMailboxObjectIDForMessageContentView:(id)a3;
- (id)participantHeaderForContactStore:(id)a3;
- (id)popoverManagerForForConversationItemHeader:(id)a3;
- (id)presentingViewControllerForAttachmentShowcase:(id)a3;
- (id)presentingViewControllerForMessageContentView:(id)a3;
- (id)richLinksInConversationForConversationItemHeaderBlock:(id)a3;
- (id)viewControllerForPresentingSuggestions;
- (int64_t)_dataOwnerForCopy;
- (int64_t)_dataOwnerForPaste;
- (int64_t)numberOfMessagesInConversationForConversationItemHeaderBlock:(id)a3;
- (void)_appIntentUnsubscribed:(id)a3;
- (void)_getNumberOfImages:(unint64_t *)a3 videos:(unint64_t *)a4 undownloaded:(unint64_t *)a5;
- (void)_performMailAction:(int64_t)a3 withMarkedUpFileAttachments:(id)a4;
- (void)_previewURL:(id)a3 withEditingEnabled:(BOOL)a4;
- (void)_sceneMovedtoForeground:(id)a3;
- (void)_setAttachmentOriginRect:(CGRect)a3 scale:(double)a4;
- (void)_setupHeaderViewForContactViewController:(id)a3;
- (void)_showSelectedContentRepresentation:(id)a3 exchangeEventUID:(int)a4 fromRect:(CGRect)a5 view:(id)a6;
- (void)clearSuggestionsBannerAnimated:(BOOL)a3;
- (void)contactCardInteractions:(id)a3 triggerSearchForDisplayName:(id)a4 emailAddresses:(id)a5;
- (void)contactMessageInteraction:(id)a3 didUpdateHeaderView:(id)a4;
- (void)conversationItemHeader:(id)a3 didSelectAddress:(id)a4 forAtomType:(unint64_t)a5;
- (void)conversationItemHeader:(id)a3 didSelectAddressAtom:(id)a4 forAtomType:(unint64_t)a5;
- (void)conversationItemHeader:(id)a3 didTapRevealActionsButton:(id)a4;
- (void)conversationItemHeader:(id)a3 presentViewController:(id)a4;
- (void)conversationItemHeader:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5;
- (void)dealloc;
- (void)didStartDownloadForContentItemWithProgress:(id)a3;
- (void)dismissMarkupViewController;
- (void)hideMenuForSelectedContentRepresentation;
- (void)loadView;
- (void)messageContentView:(id)a3 clearSuggestionsBannerAnimated:(BOOL)a4;
- (void)messageContentView:(id)a3 clickedLinkInMessage:(id)a4 scheme:(id)a5;
- (void)messageContentView:(id)a3 didChangeSelectedHTML:(id)a4;
- (void)messageContentView:(id)a3 didEndZoomingMessageWithOffset:(CGPoint)a4;
- (void)messageContentView:(id)a3 didFinishRenderingWithHeight:(double)a4;
- (void)messageContentView:(id)a3 didLoadSecurityInformation:(id)a4;
- (void)messageContentView:(id)a3 didTapRevealActionsButton:(id)a4;
- (void)messageContentView:(id)a3 didTapUndoSendButton:(id)a4;
- (void)messageContentView:(id)a3 expandQuoteAtCollapsedOffset:(CGPoint)a4 expandedOffset:(CGPoint)a5;
- (void)messageContentView:(id)a3 handleContentRepresentation:(id)a4;
- (void)messageContentView:(id)a3 loadingIndicatorDidChangeVisibility:(BOOL)a4;
- (void)messageContentView:(id)a3 openPossibleStoreURL:(id)a4;
- (void)messageContentView:(id)a3 scrollToRect:(CGRect)a4;
- (void)messageContentView:(id)a3 viewedRemoteURLs:(id)a4;
- (void)messageContentView:(id)a3 webViewDidTerminateWithReason:(int64_t)a4;
- (void)messageContentViewContentLayerFinished:(id)a3;
- (void)messageContentViewDidDisplayContent:(id)a3 success:(BOOL)a4;
- (void)messageContentViewDidFinishFirstPaint:(id)a3;
- (void)messageContentViewWillBeginZoomingMessage:(id)a3;
- (void)messageViewControllerDidTapToExpand;
- (void)prepareForQuickReplyAnimationWithContext:(id)a3;
- (void)prepareForReuse;
- (void)presentMarkupViewController:(id)a3;
- (void)presentSuggestionViewController:(id)a3;
- (void)setAutomaticallyCollapseQuotedContent:(BOOL)a3 reloadIfNeeded:(BOOL)a4;
- (void)setConfiguredForSingleMessageDisplay:(BOOL)a3;
- (void)setContentRequest:(id)a3;
- (void)setDelegate:(id)a3;
- (void)showMenuForSelectedContentRepresentation:(id)a3 fromRect:(CGRect)a4 view:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation MFMessageViewController

- (MFMessageViewController)initWithScene:(id)a3 accountsController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MFMessageViewController;
  v8 = [(MFMessageViewController *)&v15 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, v6);
    v10 = [v7 mailboxProvider];
    mailboxProvider = v9->_mailboxProvider;
    v9->_mailboxProvider = v10;

    v12 = [v7 accountsProvider];
    accountsProvider = v9->_accountsProvider;
    v9->_accountsProvider = v12;
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
  v12 = [(MFMessageViewController *)self scene];
  v3 = [[MFMessageContentView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setDelegate:self];
  [v3 setDataSource:self];
  v4 = [(MFMessageViewController *)self mailboxProvider];
  [v3 setMailboxProvider:v4];

  v5 = [v12 daemonInterface];
  [v3 setDaemonInterface:v5];

  v6 = [(MFMessageViewController *)self avatarGenerator];
  [v3 setAvatarGenerator:v6];

  v7 = [(MFMessageViewController *)self contentRequest];

  if (v7)
  {
    v8 = [(MFMessageViewController *)self contentRequest];
    [v3 setContentRequest:v8];
  }

  [v3 setAutomaticallyCollapseQuotedContent:{-[MFMessageViewController automaticallyCollapseQuotedContent](self, "automaticallyCollapseQuotedContent")}];
  [(MFMessageViewController *)self setMessageContentView:v3];
  [(MFMessageViewController *)self setView:v3];
  v9 = [MFSuggestionController alloc];
  v10 = [v3 headerView];
  v11 = [(MFSuggestionController *)v9 initWithDelegate:self headerView:v10];
  [(MFMessageViewController *)self setSuggestionController:v11];
}

- (void)viewDidAppear:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = MFMessageViewController;
  [(MFMessageViewController *)&v19 viewDidAppear:a3];
  v4 = [(MFMessageViewController *)self view];
  if ((*(&self->_flags + 1) & 0x40) != 0)
  {
    v6 = [(MFMessageViewController *)self delegate];
    v5 = [v6 messageViewControllerMessageListMailboxScope:self];
  }

  else
  {
    v5 = 0;
  }

  v7 = [(MFMessageViewController *)self scene];
  v8 = [v7 daemonInterface];
  v9 = [v8 interactionLogger];
  v10 = [v4 contentRequest];
  v11 = [v10 message];
  [v9 viewingStartedForMessage:v11 messageListScope:v5];

  if ([v4 hasVisibleContent])
  {
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 postNotificationName:MFMessageContentViewDidAppear object:v4];
  }

  v13 = [[MFScreenshotService alloc] initWithDelegate:self];
  screenshotService = self->_screenshotService;
  self->_screenshotService = v13;

  v15 = self->_screenshotService;
  v16 = [v7 screenshotService];
  [v16 setDelegate:v15];

  if ((+[EMServerConfiguration isCacheRecent]& 1) == 0)
  {
    +[EMServerConfiguration refreshAsync];
  }

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_sceneMovedtoForeground:" name:UISceneWillEnterForegroundNotification object:v7];

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"_appIntentUnsubscribed:" name:@"AppIntentUnsubscribed" object:0];
}

- (void)_appIntentUnsubscribed:(id)a3
{
  v4 = a3;
  v7 = v4;
  v8 = self;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:&v6];
}

- (void)_sceneMovedtoForeground:(id)a3
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
  v2 = [(MFMessageViewController *)self messageContentView];
  if ([v2 sourceIsManaged])
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
  v2 = [(MFMessageViewController *)self messageContentView];
  if ([v2 sourceIsManaged])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v18.receiver = self;
  v18.super_class = MFMessageViewController;
  [(MFMessageViewController *)&v18 viewDidDisappear:a3];
  v4 = [(MFMessageViewController *)self messageContentView];
  [v4 clearSelectedHTML];
  [(MFMessageViewController *)self messageContentView:v4 didChangeSelectedHTML:0];
  v5 = [v4 contentRequest];
  v6 = [v5 message];

  v7 = [(MFMessageViewController *)self scene];
  v19 = kEMPayloadKeyCategorizationEnabled;
  v8 = [NSNumber numberWithBool:[(MFMessageViewController *)self isCategorizationActionAllowed]];
  v20 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v10 = [v7 daemonInterface];
  v11 = [v10 interactionLogger];
  [v11 viewingEndedForMessage:v6 data:v9];

  v12 = [v7 screenshotService];
  v13 = [v12 delegate];
  v14 = [v13 isEqual:self->_screenshotService];

  if (v14)
  {
    screenshotService = self->_screenshotService;
    self->_screenshotService = 0;

    v16 = [v7 screenshotService];
    [v16 setDelegate:0];
  }

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 removeObserver:self];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)setAutomaticallyCollapseQuotedContent:(BOOL)a3 reloadIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->_automaticallyCollapseQuotedContent = a3;
  v6 = [(MFMessageViewController *)self messageContentView];
  [v6 setAutomaticallyCollapseQuotedContent:v5 reloadIfNeeded:v4];
}

- (void)setConfiguredForSingleMessageDisplay:(BOOL)a3
{
  v3 = a3;
  self->_configuredForSingleMessageDisplay = a3;
  v5 = [(MFMessageViewController *)self traitCollection];
  v6 = [v5 mf_hasCompactDimension];

  v7 = [(MFMessageViewController *)self messageContentView];
  if (v6)
  {
    [v7 setShowMessageFooter:!v3];
  }

  else
  {
    [v7 setShowMessageFooter:1];
  }

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(MFMessageViewController *)self messageContentView];
    v9 = [v8 headerView];
    v10 = [v9 headerBlocks];

    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v10);
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
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)prepareForQuickReplyAnimationWithContext:(id)a3
{
  v5 = a3;
  v4 = [(MFMessageViewController *)self messageContentView];
  [v4 prepareForQuickReplyAnimationWithContext:v5];
}

- (void)setContentRequest:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_contentRequest == v5 && [(MessageContentRepresentationRequest *)v5 state]!= 3)
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
    objc_storeStrong(&self->_contentRequest, a3);
    [(MFMessageViewController *)self setDidCompleteFirstPaint:0];
    v7 = [(MFMessageViewController *)self messageContentView];
    [v7 setContentRequest:v6];

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

- (void)clearSuggestionsBannerAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFMessageViewController *)self suggestionController];
  [v4 clearSuggestionsBannerAnimated:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFMessageViewController;
  [(MFMessageViewController *)&v5 traitCollectionDidChange:v4];
  [(MFMessageViewController *)self setConfiguredForSingleMessageDisplay:[(MFMessageViewController *)self configuredForSingleMessageDisplay]];
}

- (void)hideMenuForSelectedContentRepresentation
{
  v2 = [(MFMessageViewController *)self doc];
  [v2 dismissMenuAnimated:1];
}

- (void)showMenuForSelectedContentRepresentation:(id)a3 fromRect:(CGRect)a4 view:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v13 = [(MFMessageViewController *)self messageContentView];
  v14 = [v13 scrollView];
  [v14 zoomScale];
  [(MFMessageViewController *)self _setAttachmentOriginRect:x scale:y, width, height, v15];

  v16 = [(MFMessageViewController *)self _attachmentShowcase];
  v17 = [v16 documentInteractionControllerForContentRepresentation:v11];

  [v17 setDelegate:self];
  v18 = [(MFMessageViewController *)self messageContentView];
  [v17 setIsContentManaged:{objc_msgSend(v18, "sourceIsManaged")}];

  [(MFMessageViewController *)self setDoc:v17];
  v19 = [v11 contentItem];
  v20 = [v19 uniformTypeIdentifier];
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
  v22 = v20;
  v29 = v22;
  v23 = v11;
  v30 = v23;
  v31 = v34;
  [v21 _setCompletionWithItemsHandler:&v25];
  if (([v21 presentOptionsMenuFromRect:v12 inView:1 animated:{x, y, width, height, v25, v26, v27, v28}] & 1) == 0)
  {
    v24 = MFLogGeneral();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10048BCB4(v23, v24);
    }

    if ([v22 ef_conformsToRFC822UTType])
    {
      [(MFMessageViewController *)self showSelectedContentRepresentation:v23 fromRect:v12 view:x, y, width, height];
    }
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  _Block_object_dispose(v34, 8);
}

- (void)_showSelectedContentRepresentation:(id)a3 exchangeEventUID:(int)a4 fromRect:(CGRect)a5 view:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = *&a4;
  v25 = a3;
  v13 = a6;
  v14 = [(MFMessageViewController *)self messageContentView];
  v15 = [v14 scrollView];
  [v15 zoomScale];
  [(MFMessageViewController *)self _setAttachmentOriginRect:x scale:y, width, height, v16];

  v17 = +[MFAttachmentShowcaseInformation showcaseInformation];
  [v17 setShouldAnimate:1];
  v18 = [(MFMessageViewController *)self messageContentView];
  [v17 setFromManagedAccount:{objc_msgSend(v18, "sourceIsManaged")}];

  [v17 setOriginRect:{x, y, width, height}];
  [v17 setOriginView:v13];
  v19 = [(MFMessageViewController *)self contentRequest];
  v20 = [v19 message];
  [v17 setMessage:v20];

  if ((*(&self->_flags + 1) & 0x80) != 0)
  {
    v21 = [(MFMessageViewController *)self delegate];
    v22 = [v21 messageSourceMailboxObjectIDForMessageViewController:self];
    [v17 setMailboxObjectID:v22];
  }

  v23 = [(MFMessageViewController *)self _attachmentShowcase];
  if (v11)
  {
    [v23 presentExchangeEventUID:v11 showcaseInfo:v17 delegate:self completion:0];
  }

  else
  {
    v24 = [(MFMessageViewController *)self scene];
    [v23 presentContentRepresentation:v25 scene:v24 showcaseInfo:v17 delegate:self completion:&stru_100654F50];
  }
}

- (void)didStartDownloadForContentItemWithProgress:(id)a3
{
  v5 = a3;
  if ((*&self->_flags & 8) != 0)
  {
    v4 = [(MFMessageViewController *)self delegate];
    [v4 messageViewController:self didStartDownloadForContentItemWithProgress:v5];
  }
}

- (id)participantHeaderForContactStore:(id)a3
{
  v4 = a3;
  participantHeader = self->_participantHeader;
  if (!participantHeader || ([(MFConversationItemHeaderBlock *)participantHeader contactStore], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != v4))
  {
    v7 = [[MFConversationItemHeaderBlock alloc] initWithFrame:v4 contactStore:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
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
  v2 = [(MFMessageViewController *)self messageContentView];
  v3 = [v2 mf_exclusionRegionsInBaseWindowCoordinateSpace];

  return v3;
}

- (void)messageContentView:(id)a3 didFinishRenderingWithHeight:(double)a4
{
  if (*&self->_flags)
  {
    v6 = [(MFMessageViewController *)self delegate];
    [v6 messageViewController:self didFinishRenderingWithHeight:a4];
  }
}

- (void)messageContentViewDidFinishFirstPaint:(id)a3
{
  [(MFMessageViewController *)self setDidCompleteFirstPaint:1];
  if ((*&self->_flags & 2) != 0)
  {
    v4 = [(MFMessageViewController *)self delegate];
    [v4 messageViewControllerDidFinishFirstPaint:self];
  }
}

- (void)messageContentViewDidDisplayContent:(id)a3 success:(BOOL)a4
{
  if ((*&self->_flags & 4) != 0)
  {
    v4 = a4;
    v6 = [(MFMessageViewController *)self delegate];
    [v6 messageViewControllerDidDisplayContent:self success:v4];
  }
}

- (void)messageContentView:(id)a3 expandQuoteAtCollapsedOffset:(CGPoint)a4 expandedOffset:(CGPoint)a5
{
  if ((*&self->_flags & 0x10) != 0)
  {
    y = a5.y;
    x = a5.x;
    v7 = a4.y;
    v8 = a4.x;
    v10 = [(MFMessageViewController *)self delegate];
    [v10 messageViewController:self didTapShowMoreAtCollapsedOffset:v8 expandedOffset:{v7, x, y}];
  }
}

- (void)messageContentView:(id)a3 didTapRevealActionsButton:(id)a4
{
  v6 = a4;
  if ((*&self->_flags & 0x80) != 0)
  {
    v5 = [(MFMessageViewController *)self delegate];
    [v5 messageViewController:self didTapRevealActionsButton:v6];
  }
}

- (void)messageContentView:(id)a3 didTapUndoSendButton:(id)a4
{
  v6 = a4;
  if (*(&self->_flags + 1))
  {
    v5 = [(MFMessageViewController *)self delegate];
    [v5 messageViewController:self didTapUndoSendButton:v6];
  }
}

- (void)messageContentViewWillBeginZoomingMessage:(id)a3
{
  if ((*&self->_flags & 0x20) != 0)
  {
    v4 = [(MFMessageViewController *)self delegate];
    [v4 messageViewControllerContentViewWillBeginZooming:self];
  }
}

- (void)messageContentView:(id)a3 didEndZoomingMessageWithOffset:(CGPoint)a4
{
  if ((*&self->_flags & 0x40) != 0)
  {
    y = a4.y;
    x = a4.x;
    v7 = [(MFMessageViewController *)self delegate];
    [v7 messageViewController:self contentViewDidEndZoomingMessageWithOffset:{x, y}];
  }
}

- (void)messageContentView:(id)a3 didChangeSelectedHTML:(id)a4
{
  v7 = a4;
  if ((*(&self->_flags + 1) & 0x10) != 0)
  {
    v5 = [(MFMessageViewController *)self delegate];
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = &stru_100662A88;
    }

    [v5 messageViewController:self didChangeSelectedHTML:v6];
  }
}

- (void)messageContentView:(id)a3 loadingIndicatorDidChangeVisibility:(BOOL)a4
{
  if ((*(&self->_flags + 1) & 0x20) != 0)
  {
    v4 = a4;
    v6 = [(MFMessageViewController *)self delegate];
    [v6 messageViewController:self loadingIndicatorDidChangeVisibility:v4];
  }
}

- (void)messageViewControllerDidTapToExpand
{
  if ((*(&self->_flags + 1) & 2) != 0)
  {
    v3 = [(MFMessageViewController *)self delegate];
    [v3 messageViewControllerDidTapToExpand:self];
  }
}

- (id)presentingViewControllerForMessageContentView:(id)a3
{
  v4 = [(MFMessageViewController *)self delegate];
  v5 = [v4 presentingViewControllerForMessageViewController:self];

  return v5;
}

- (void)messageContentView:(id)a3 scrollToRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(MFMessageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 messageViewController:self scrollToRect:{x, y, width, height}];
  }
}

- (void)messageContentView:(id)a3 didLoadSecurityInformation:(id)a4
{
  v7 = a4;
  [(MFMessageViewController *)self setSecurityInformation:?];
  v5 = [(MFMessageViewController *)self contactInteraction];

  if (v5)
  {
    v6 = [(MFMessageViewController *)self contactInteraction];
    [v6 updateWithSecurityInformation:v7];
  }
}

- (void)messageContentView:(id)a3 clickedLinkInMessage:(id)a4 scheme:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(MFMessageViewController *)self scene];
  v9 = [v8 daemonInterface];
  v10 = [v9 interactionLogger];
  [v10 clickedLinkInMessage:v11 scheme:v7];
}

- (void)messageContentView:(id)a3 openPossibleStoreURL:(id)a4
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001F6BBC;
  v12 = &unk_100654F78;
  v13 = self;
  v5 = a4;
  v14 = v5;
  v6 = [MFURLRoutingRequest requestWithURL:v5 builderBlock:&v9];
  v7 = [(MFMessageViewController *)self scene:v9];
  v8 = [v7 urlRouter];
  [v8 routeRequest:v6];
}

- (void)messageContentViewContentLayerFinished:(id)a3
{
  v3 = +[UIApplication sharedApplication];
  [v3 _messageContentLayerFinished];
}

- (void)messageContentView:(id)a3 handleContentRepresentation:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(MFMessageViewController *)self contentRequest];
  v8 = [v7 message];
  v9 = [v8 mailboxes];
  v10 = [v9 ef_any:&stru_100654F98];

  v11 = +[UIApplication sharedApplication];
  v12 = [v11 getiCloudMailCleanupService];
  LODWORD(v8) = [v12 shouldShowICloudUnsubscribe];

  if ((+[MUIiCloudMailCleanupService isFeatureAvailable]& v10 & v8) == 1)
  {
    v13 = [(MFMessageViewController *)self suggestionController];
    v14 = [v13 createAnalysisOperation];
    [v14 handleContentRepresentation:v6 allowUnsubscribe:objc_msgSend(v15 shouldShowICloudUnsubscribe:{"hideSenderSpecificBanners") ^ 1, 1}];
  }

  else
  {
    v13 = [(MFMessageViewController *)self suggestionController];
    v14 = [v13 createAnalysisOperation];
    [v14 handleContentRepresentation:v6 allowUnsubscribe:{objc_msgSend(v15, "hideSenderSpecificBanners") ^ 1}];
  }
}

- (void)messageContentView:(id)a3 clearSuggestionsBannerAnimated:(BOOL)a4
{
  v4 = a4;
  v5 = [(MFMessageViewController *)self suggestionController];
  [v5 clearSuggestionsBannerAnimated:v4];
}

- (void)messageContentView:(id)a3 viewedRemoteURLs:(id)a4
{
  v8 = a4;
  v5 = [(MFMessageViewController *)self scene];
  v6 = [v5 daemonInterface];
  v7 = [v6 messageRepository];
  [v7 noteViewOfRemoteContentLinks:v8];
}

- (void)messageContentView:(id)a3 webViewDidTerminateWithReason:(int64_t)a4
{
  if (*(&self->_flags + 2))
  {
    v6 = [(MFMessageViewController *)self delegate];
    [v6 messageViewController:self webViewDidTerminateWithReason:a4];
  }
}

- (BOOL)isShowingGroupedSenderMessageListForMessageContentView:(id)a3
{
  v4 = [(MFMessageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 isShowingGroupedSenderMessageListForMessageViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowTimeSensitiveBannerForMessageContentView:(id)a3 message:(id)a4
{
  v5 = a4;
  v6 = [(MFMessageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 shouldShowTimeSensitiveBannerForMessageViewController:self message:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCategorizationActionAllowed
{
  v3 = [(MFMessageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isCategorizationActionAllowedForMessageViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)viewControllerForPresentingSuggestions
{
  v3 = [(MFMessageViewController *)self delegate];
  v4 = [v3 presentingViewControllerForMessageViewController:self];

  return v4;
}

- (void)presentSuggestionViewController:(id)a3
{
  v5 = a3;
  v4 = [(MFMessageViewController *)self messageContentView];
  [v4 _showModalViewController:v5 presentationSource:0];
}

- (BOOL)showsBanners
{
  v2 = [(MFMessageViewController *)self messageContentView];
  v3 = [v2 showsBanners];

  return v3;
}

- (id)presentingViewControllerForAttachmentShowcase:(id)a3
{
  v4 = [(MFMessageViewController *)self delegate];
  v5 = [v4 presentingViewControllerForMessageViewController:self];

  return v5;
}

- (id)contactStoreForAttachmentShowcase:(id)a3
{
  v3 = [(MFMessageViewController *)self contactStore];

  return v3;
}

- (id)messageSourceMailboxObjectIDForMessageContentView:(id)a3
{
  if ((*(&self->_flags + 1) & 0x80) != 0)
  {
    v5 = [(MFMessageViewController *)self delegate];
    v3 = [v5 messageSourceMailboxObjectIDForMessageViewController:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)conversationItemHeader:(id)a3 didSelectAddressAtom:(id)a4 forAtomType:(unint64_t)a5
{
  v13 = a4;
  v7 = [v13 fullAddress];
  v8 = [(MFMessageViewController *)self _contactViewControllerForAddress:v7 forAtomType:a5];
  [(MFMessageViewController *)self setContactViewController:v8];

  v9 = [(MFMessageViewController *)self contactViewController];
  if (v9)
  {
    flags = self->_flags;

    if ((*&flags & 0x400) != 0)
    {
      v11 = [(MFMessageViewController *)self delegate];
      v12 = [(MFMessageViewController *)self contactViewController];
      [v11 messageViewControllerDidTapAddressAtom:v13 contactViewController:v12];
    }
  }
}

- (void)conversationItemHeader:(id)a3 didSelectAddress:(id)a4 forAtomType:(unint64_t)a5
{
  v11 = a4;
  v6 = [MFMessageViewController _contactViewControllerForAddress:"_contactViewControllerForAddress:forAtomType:" forAtomType:?];
  [(MFMessageViewController *)self setContactViewController:v6];

  v7 = [(MFMessageViewController *)self delegate];
  v8 = [(MFMessageViewController *)self contactViewController];
  if (v8)
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(MFMessageViewController *)self contactViewController];
      [v7 messageViewControllerDidChooseAddress:v11 contactViewController:v10];
    }
  }
}

- (void)conversationItemHeader:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(MFMessageViewController *)self delegate];
  [v8 contactCardInteractions:0 triggerSearchForDisplayName:v9 emailAddresses:v7];
}

- (id)conversationItemHeader:(id)a3 displayNameForEmailAddress:(id)a4 abbreviated:(BOOL)a5
{
  v5 = [(MFMessageViewController *)self _delegateDisplayNameForEmailAddress:a4 abbreviated:a5];

  return v5;
}

- (id)popoverManagerForForConversationItemHeader:(id)a3
{
  v3 = [(MFMessageViewController *)self scene];
  v4 = [v3 popoverManager];

  return v4;
}

- (void)conversationItemHeader:(id)a3 didTapRevealActionsButton:(id)a4
{
  v6 = a4;
  if ((*&self->_flags & 0x80) != 0)
  {
    v5 = [(MFMessageViewController *)self delegate];
    [v5 messageViewController:self didTapRevealActionsButton:v6];
  }
}

- (id)mailProviderDisplayNameForConversationItemHeader:(id)a3
{
  v3 = [(MFMessageViewController *)self contentRequest];
  v4 = [v3 message];

  v5 = [v4 mailProviderDisplayNameForBIMI];

  return v5;
}

- (id)actualSenderFutureForConversationItemHeader:(id)a3
{
  v3 = [(MFMessageViewController *)self contentRequest];
  v4 = [v3 contentRepresentationFuture];
  v5 = [v4 then:&stru_100654FD8];

  return v5;
}

- (void)conversationItemHeader:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [[UINavigationController alloc] initWithRootViewController:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(MFMessageViewController *)self delegate];
    [(MFMessageViewController *)self setDelegate:v5];
    v8 = v5;
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001F7C90;
    v10[3] = &unk_10064CC78;
    objc_copyWeak(&v12, &location);
    v9 = v7;
    v11 = v9;
    [v8 setViewDidDisappearBlock:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  [(MFMessageViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (CGRect)documentInteractionControllerRectForPreview:(id)a3
{
  x = self->_attachmentRect.origin.x;
  y = self->_attachmentRect.origin.y;
  width = self->_attachmentRect.size.width;
  height = self->_attachmentRect.size.height;
  v7 = [a3 icons];
  v8 = [v7 lastObject];

  if (v8)
  {
    [v8 size];
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

- (id)documentInteractionControllerViewForPreview:(id)a3
{
  v3 = [(MFMessageViewController *)self view];

  return v3;
}

- (id)excludedActivityTypesForDocumentInteractionController:(id)a3
{
  v9[0] = MFActivityTypeQuicklook;
  v9[1] = UIActivityTypeSaveToCameraRoll;
  v9[2] = UIActivityTypeMarkupAsPDF;
  v4 = [NSArray arrayWithObjects:v9 count:3];
  v5 = [(MFMessageViewController *)self messageContentView];
  v6 = [v5 mayShareToUnmanaged];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 arrayByAddingObject:UIActivityTypeCopyToPasteboard];

    v4 = v7;
  }

  return v4;
}

- (id)additionalActivitiesForDocumentInteractionController:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [v4 URL];
  v7 = [v6 pathExtension];
  v8 = [v7 lowercaseString];

  if ([v8 length])
  {
    v9 = [v8 ef_declaredUTTypeFromExtension];
  }

  else
  {
    v9 = 0;
  }

  if ([v9 conformsToType:UTTypeMovie])
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

  v12 = [(MFMessageViewController *)self presentedViewController];
  sub_1001F829C();
  isKindOfClass = objc_opt_isKindOfClass();

  if (!(isKindOfClass & 1 | (v6 == 0)))
  {
    if ([sub_1001F829C() canPreviewItem:v6])
    {
      v14 = [[MessageQuicklookImageAttachmentsActivity alloc] initWithAttachmentHandlingDelegate:self context:1 url:v6];
      [v5 addObject:v14];
    }

    if (([v9 conformsToType:UTTypePDF] & 1) == 0)
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
    v18 = [v9 identifier];
    v19 = [v18 ef_conformsToMarkupUTType];

    if (v19)
    {
      v20 = [[MessageMarkupDocumentActivity alloc] initWithAttachmentHandlingDelegate:self context:0];
      [v5 addObject:v20];
    }
  }

  return v5;
}

- (void)_getNumberOfImages:(unint64_t *)a3 videos:(unint64_t *)a4 undownloaded:(unint64_t *)a5
{
  v5 = [(MFMessageViewController *)self messageContentView];
  v6 = [v5 contentItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
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
        v14 = [v13 isAvailableLocally];
        v15 = [v13 type];
        if ([v15 conformsToType:UTTypeMovie])
        {
          ++v8;
        }

        else
        {
          v16 = [v15 conformsToType:UTTypeImage];
          v9 += v16 & 1;
          if ((v16 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v7 += v14 ^ 1;
LABEL_10:
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v8;
  }

  if (a5)
  {
    *a5 = v7;
  }
}

- (BOOL)canSaveAllAttachmentsInContext:(int64_t)a3
{
  v5 = [(MFMessageViewController *)self messageContentView];
  if (![v5 mayShareToUnmanaged])
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
  if (a3 == 2)
  {
    if (v8)
    {
      --v8;
    }
  }

  else if (a3 == 1)
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
  v3 = [(MFMessageViewController *)self messageContentView];
  v4 = [v3 contentItems];
  v5 = [v4 ef_filter:&stru_100654FF8];

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
  v2 = [(MFMessageViewController *)self scene];
  v3 = [v2 assetViewerManager];

  return v3;
}

- (id)dismissActionsForPreviewController:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(MFMessageViewController *)self messageContentView];
  v6 = [v5 contentRequest];
  v7 = [v6 message];

  v8 = [v7 shouldShowReplyAll];
  v9 = [(MFMessageViewController *)self contactStore];
  v10 = [v7 senderDisplayNameUsingContactStore:v9];

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

  if (v8)
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

- (id)documentInteractionControllerMarkupDismissActions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(MFMessageViewController *)self messageContentView];
  v6 = [v5 contentRequest];
  v7 = [v6 message];

  v8 = [v7 shouldShowReplyAll];
  v9 = [(MFMessageViewController *)self contactStore];
  v10 = [v7 senderDisplayNameUsingContactStore:v9];

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

  if (v8)
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

- (id)_makeFileCopyOfEditedQuickLookFileToLocalContainer:(id)a3 preferredFileName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v13 = 0;
  v8 = [v7 mf_copyFileAtURLToContainer:v5 securityScoped:1 preferredFileName:v6 error:&v13];
  v9 = v13;

  if (!v8)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 ef_publicDescription];
      sub_10048BDA4(v11, buf, v10);
    }
  }

  return v8;
}

- (void)_performMailAction:(int64_t)a3 withMarkedUpFileAttachments:(id)a4
{
  v7 = a4;
  if (a3 < 7 && ((0x71u >> a3) & 1) != 0)
  {
    v8 = qword_1004FC480[a3];
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFMessageViewController.m" lineNumber:1029 description:{@"Message action value %lu is undefined.", a3}];

    v8 = 5;
  }

  v10 = [(MFMessageViewController *)self messageContentView];
  v11 = [v10 contentRequest];
  v12 = [v11 message];

  v13 = [MFComposeMailMessage legacyMessageWithMessage:v12 mailboxUid:0 skipAttachmentDownload:1];
  v14 = [_MFMailCompositionContext alloc];
  v15 = [v13 emailMessageRepresentation];
  v16 = [v14 initWithComposeType:v8 originalMessage:v15 legacyMessage:v13];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001FA668;
  v22[3] = &unk_1006550C0;
  v17 = v16;
  v23 = v17;
  [v7 enumerateObjectsUsingBlock:v22];
  [v17 setOriginatingFromAttachmentMarkup:1];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_1001F5BDC;
  v20[4] = sub_1001F5BEC;
  v21 = self;
  v18 = [(MFMessageViewController *)v21 scene];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001FA674;
  v19[3] = &unk_100650760;
  v19[4] = v20;
  [v18 showComposeWithContext:v17 animated:1 initialTitle:0 presentationSource:0 completionBlock:v19];

  _Block_object_dispose(v20, 8);
}

- (void)presentMarkupViewController:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
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

- (void)_setAttachmentOriginRect:(CGRect)a3 scale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(MFMessageViewController *)self messageContentView:a3.origin.x];
  v10 = [(MFMessageViewController *)self view];
  [v10 convertRect:v9 fromView:{x, y, width, height}];
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
    v19 = self;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: Attachment origin rect=%{public}@, resulting in _attachmentRect=%{public}@,\tfromView=%{public}@ \ttoView=%{public}@", &v18, 0x34u);
  }
}

- (void)_previewURL:(id)a3 withEditingEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [objc_alloc(sub_1001F837C()) initWithURL:v6];
  if (v7)
  {
    v8 = objc_alloc(sub_1001F829C());
    v17 = v7;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v10 = [v8 initWithPreviewItems:v9];

    v11 = [(MFMessageViewController *)self messageContentView];
    [v10 setIsContentManaged:{objc_msgSend(v11, "sourceIsManaged")}];

    if (v4)
    {
      [v10 setAppearanceActions:4];
    }

    [v10 setDelegate:self];
    [(MFMessageViewController *)self setPreviewController:v10];
    [v10 setModalPresentationStyle:5];
    v15 = self;
    v12 = v10;
    v16 = v12;
    v13 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v13 performBlock:&v14];
  }
}

- (BOOL)isSourceManagedForURL:(id)a3
{
  v3 = [(MFMessageViewController *)self messageContentView];
  v4 = [v3 sourceIsManaged];

  return v4;
}

- (id)_delegateDisplayNameForEmailAddress:(id)a3 abbreviated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((*(&self->_flags + 1) & 8) != 0)
  {
    v8 = [(MFMessageViewController *)self delegate];
    v7 = [v8 messageViewController:self displayNameForEmailAddress:v6 abbreviated:v4];
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
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (id)_contactViewControllerForAddress:(id)a3 forAtomType:(unint64_t)a4
{
  v75 = a3;
  v78 = objc_alloc_init(CNContactStore);
  v6 = [v75 stringValue];
  v7 = +[CNContactViewController descriptorForRequiredKeys];
  v88 = v7;
  v8 = [NSArray arrayWithObjects:&v88 count:1];
  v9 = [v78 em_fetchContactForEmailAddress:v6 keysToFetch:v8 createIfNeeded:1];

  v10 = [(MFMessageViewController *)self contentRequest];
  v11 = [v10 resultIfAvailable];
  v12 = [v11 requestedHeaders];
  v13 = [v12 firstHeaderForKey:ECMessageHeaderKeyHMEAddress];
  v76 = [ECTagValueList tagValueListFromString:v13 error:0];

  v14 = [v75 emailAddressValue];
  v15 = [v14 simpleAddress];
  v16 = [v76 objectForKeyedSubscript:EMHeaderTagHMEAddress];
  v74 = [v15 isEqualToString:v16];

  if (v74)
  {
    v17 = +[EMHideMyEmail sharedInstance];
    v18 = [v17 forwardingEmailForPrimaryAccount];

    v19 = +[CNContactViewController descriptorForRequiredKeys];
    v87 = v19;
    v20 = [NSArray arrayWithObjects:&v87 count:1];
    v21 = [v78 em_fetchContactForEmailAddress:v18 keysToFetch:v20 createIfNeeded:1];

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

    v18 = +[CNContactViewController descriptorForRequiredKeys];
    v86 = v18;
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
    v24 = [v75 emailAddressValue];
    v25 = [v24 simpleAddress];
    v26 = [v25 emailAddressValue];

    if (v26)
    {
      v27 = [v9 emailAddresses];
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_1001FBD10;
      v83[3] = &unk_100654D20;
      v84 = v26;
      v28 = [v27 ef_firstObjectPassingTest:v83];

      v29 = [v28 identifier];
    }

    else
    {
      v29 = 0;
    }

    [v23 highlightPropertyWithKey:CNContactEmailAddressesKey identifier:v29];

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
  v31 = [(MFMessageViewController *)self contentRequest];
  v73 = [v31 message];

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v33 = [WeakRetained daemonInterface];
  v34 = [v33 blockedSenderManager];
  v35 = [MFContactCardInteractions contactCardInteractionWithViewController:v30 blockedSenderManager:v34];
  [(MFMessageViewController *)self setContactCardInteractions:v35];

  v36 = [(MFMessageViewController *)self contactCardInteractions];
  [v36 configureInteractionsWithInteractionDelegate:self];

  [v30 _setDataOwnerForCopy:{-[MFMessageViewController _dataOwnerForCopy](self, "_dataOwnerForCopy")}];
  [v30 _setDataOwnerForPaste:{-[MFMessageViewController _dataOwnerForPaste](self, "_dataOwnerForPaste")}];
  if (a4 == 1)
  {
    v72 = objc_alloc_init(MFContactMessageInteraction);
    [(MFMessageViewController *)self setContactInteraction:?];
    v50 = [(MFMessageViewController *)self contactInteraction];
    [v50 setDelegate:self];

    v51 = [(MFMessageViewController *)self contactInteraction];
    v52 = [(MFMessageViewController *)self securityInformation];
    [v51 updateWithSecurityInformation:v52];

    [(MFMessageViewController *)self _setupHeaderViewForContactViewController:v30];
    v53 = [(MFMessageViewController *)self scene];
    v54 = [v53 brandIndicatorProvider];
    v55 = [(MFMessageViewController *)self contentRequest];
    v56 = [v55 message];
    v57 = [v56 brandIndicatorLocation];
    v58 = [(MFMessageViewController *)self view];
    v59 = [v58 traitCollection];
    [v59 displayScale];
    v60 = [v54 brandIndicatorFutureForLocation:v57 scale:?];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1001FBDD4;
    v79[3] = &unk_1006550E8;
    v80 = v77;
    v81 = v73;
    v82 = v30;
    [v60 addSuccessBlock:v79];

    v40 = v80;
LABEL_25:

    goto LABEL_26;
  }

  if (a4 == 2)
  {
    v37 = [(MFMessageViewController *)self contentRequest];
    v38 = [v37 contentRepresentationFuture];
    v39 = [v38 result];
    v72 = [v39 replyToList];

    v40 = [v73 senderAddress];
    v41 = [v73 senderAddress];
    v85 = v41;
    v42 = [NSArray arrayWithObjects:&v85 count:1];
    LODWORD(v38) = [MFAddressAtomStatusManager shouldDecorateAtomListForSender:v42 replyTo:v72];

    if (v38)
    {
      v43 = _EFLocalizedString();
      v44 = _EFLocalizedString();
      v45 = [NSString stringWithFormat:v44, v40];

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
      v64 = [v75 emailAddressValue];
      v65 = [v64 simpleAddress];
      v66 = [v63 initWithAddress:v65];

      v67 = [v66 contactsCustomViewConfiguration];
      [v30 setCustomViewConfiguration:v67];
    }

    else
    {
      v68 = [MFHideMyEmailHeaderView alloc];
      v69 = [v75 emailAddressValue];
      v70 = [v69 simpleAddress];
      v66 = [v68 initWithFrame:v70 address:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

      [v30 setContactHeaderView:v66];
    }
  }

LABEL_32:
  [v30 setPreferredContentSize:{0.0, 700.0}];

  return v30;
}

- (void)_setupHeaderViewForContactViewController:(id)a3
{
  v7 = a3;
  if (MUISolariumFeatureEnabled())
  {
    v4 = [(MFMessageViewController *)self contactInteraction];
    v5 = [v4 headerViewConfiguration];

    if (v5)
    {
      [v7 setCustomViewConfiguration:v5];
    }
  }

  else
  {
    v6 = [(MFMessageViewController *)self contactInteraction];
    v5 = [v6 headerView];

    if (v5)
    {
      [v7 setContactHeaderView:v5];
    }
  }
}

- (void)contactMessageInteraction:(id)a3 didUpdateHeaderView:(id)a4
{
  v8 = a4;
  v5 = [(MFMessageViewController *)self contactViewController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 contactHeaderView];

    if (v7 != v8)
    {
      [(MFMessageViewController *)self _setupHeaderViewForContactViewController:v6];
    }
  }
}

- (BOOL)canSearchForContactFromContactCardInteractions:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageViewController *)self delegate];
  v6 = [v5 canSearchForContactFromContactCardInteractions:v4];

  return v6;
}

- (void)contactCardInteractions:(id)a3 triggerSearchForDisplayName:(id)a4 emailAddresses:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MFMessageViewController *)self delegate];
  [v10 contactCardInteractions:v11 triggerSearchForDisplayName:v8 emailAddresses:v9];
}

- (void)prepareForReuse
{
  [(MFConversationItemHeaderBlock *)self->_participantHeader prepareForReuse];
  v3 = [(MFMessageViewController *)self messageContentView];
  [v3 prepareForReuse];

  [(MFMessageViewController *)self setDelegate:0];
  v4 = [(MFMessageViewController *)self parentViewController];

  if (v4)
  {
    [(MFMessageViewController *)self willMoveToParentViewController:0];

    [(MFMessageViewController *)self removeFromParentViewController];
  }
}

- (id)messageContentRepresentationRequestForScreenshotService:(id)a3
{
  v3 = [(MFMessageViewController *)self contentRequest];

  return v3;
}

- (id)conversationAttachmentURLsForConversationItemHeaderBlock:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageViewController *)self delegate];
  v6 = [v5 conversationAttachmentURLsForConversationItemHeaderBlock:v4];

  return v6;
}

- (id)richLinksInConversationForConversationItemHeaderBlock:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageViewController *)self delegate];
  v6 = [v5 richLinksInConversationForConversationItemHeaderBlock:v4];

  return v6;
}

- (int64_t)numberOfMessagesInConversationForConversationItemHeaderBlock:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageViewController *)self delegate];
  v6 = [v5 numberOfMessagesInConversationForConversationItemHeaderBlock:v4];

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