@interface PhotosMessagesExtensionViewController
+ (void)initialize;
- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4;
- (BOOL)displaysAfterAppearance;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (PhotosMessagesExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)safeAreaInsetsForBubble:(id)a3;
- (id)_assetCollectionForURL:(id)a3;
- (id)_contactsForConversation:(id)a3;
- (id)_recipientsForConversation:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_confirmPicking:(id)a3 completionHandler:(id)a4;
- (void)_contentReadyForDisplayTimeout;
- (void)_didRemoveAssetArchiveWithIdentifier:(id)a3;
- (void)_dismissDrawerViewControllerWithDesiredState:(int64_t)a3;
- (void)_finishPicking:(id)a3 withPreparationOptions:(id)a4;
- (void)_presentChildViewController:(id)a3 animated:(BOOL)a4;
- (void)_removeAllChildViewControllersAnimated:(BOOL)a3;
- (void)_stageMessageForConversation:(id)a3 withTemplateItem:(id)a4 messageURL:(id)a5 summaryText:(id)a6;
- (void)_updatePresentedViewController;
- (void)bubbleDidBecomeReadyForDisplay:(id)a3;
- (void)coordinator:(id)a3 didFinishPicking:(id)a4 additionalSelectionState:(id)a5 action:(int64_t)a6;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4;
- (void)didResignActiveWithConversation:(id)a3;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)explorerViewController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)incrementShareCountAndLogAnalyticsForStagedAssetIDs:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)packageTransport:(id)a3 didStagePackages:(id)a4;
- (void)packageTransport:(id)a3 didUnstagePackageWithIdentifier:(id)a4;
- (void)requestResizeForBubble:(id)a3;
- (void)transcriptBubbleViewController:(id)a3 didSelectMomentShare:(id)a4;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willResignActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
- (void)workflowCoordinator:(id)a3 didPublishToURL:(id)a4;
- (void)workflowCoordinator:(id)a3 workflowViewController:(id)a4 didFinishSession:(id)a5 withActivityState:(unint64_t)a6;
@end

@implementation PhotosMessagesExtensionViewController

- (void)viewSafeAreaInsetsDidChange
{
  v6.receiver = self;
  v6.super_class = PhotosMessagesExtensionViewController;
  [(PhotosMessagesExtensionViewController *)&v6 viewSafeAreaInsetsDidChange];
  v3 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PhotosMessagesExtensionViewController *)self view];
    [v4 safeAreaInsets];
    v5 = NSStringFromUIEdgeInsets(v9);
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received new safe area insets %{public}@", buf, 0xCu);
  }
}

- (void)coordinator:(id)a3 didFinishPicking:(id)a4 additionalSelectionState:(id)a5 action:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  numberOfPreselectedAssets = self->_numberOfPreselectedAssets;
  if (numberOfPreselectedAssets < 1)
  {
    v14 = [(PhotosMessagesExtensionViewController *)self previouslySelectedObjectIDs];
    if (![v14 count] && !objc_msgSend(v10, "count"))
    {

      [(PhotosMessagesExtensionViewController *)self setPreviouslySelectedObjectIDs:v10];
      goto LABEL_12;
    }

    v15 = [(PhotosMessagesExtensionViewController *)self previouslySelectedObjectIDs];
    v16 = [v15 isEqualToOrderedSet:v10];

    [(PhotosMessagesExtensionViewController *)self setPreviouslySelectedObjectIDs:v10];
    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = [v10 count];
    self->_numberOfPreselectedAssets = 0;
    [(PhotosMessagesExtensionViewController *)self setPreviouslySelectedObjectIDs:v10];
    if (numberOfPreselectedAssets == v13)
    {
LABEL_12:
      v24 = [(PhotosMessagesExtensionViewController *)self traitCollection];
      if ([v24 userInterfaceIdiom] != 1)
      {
        v25 = [(PhotosMessagesExtensionViewController *)self traitCollection];
        if ([v25 userInterfaceIdiom] != 6)
        {
          v26 = [(PhotosMessagesExtensionViewController *)self view];
          v27 = [v26 window];
          v28 = [v27 windowScene];
          v29 = [v28 interfaceOrientation] - 3;

          if (v29 >= 2)
          {
            v30 = [(PhotosMessagesExtensionViewController *)self pickerCoordinator];
            [v30 resignSearchBarAsFirstResponder];

            [(PhotosMessagesExtensionViewController *)self requestPresentationStyle:0];
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

LABEL_16:
      [(PhotosMessagesExtensionViewController *)self dismiss];
      goto LABEL_17;
    }
  }

  v17 = [PHManualFetchResult alloc];
  v18 = [v10 array];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  v21 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  v22 = [v17 initWithOids:v20 photoLibrary:v21 fetchType:PHFetchTypeAsset fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  objc_initWeak(&location, self);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100001818;
  v31[3] = &unk_10000C990;
  v32 = v11;
  objc_copyWeak(&v34, &location);
  v23 = v22;
  v33 = v23;
  [(PhotosMessagesExtensionViewController *)self _confirmPicking:v23 completionHandler:v31];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

LABEL_17:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = v10;
  if (off_100010EE0 == a6)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000019C8;
    v16 = &unk_10000C928;
    v17 = self;
    v18 = v10;
    px_dispatch_on_main_queue();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PhotosMessagesExtensionViewController;
    [(PhotosMessagesExtensionViewController *)&v12 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4
{
  v10.receiver = self;
  v10.super_class = PhotosMessagesExtensionViewController;
  v5 = a3;
  [(PhotosMessagesExtensionViewController *)&v10 didCancelSendingMessage:v5 conversation:a4];
  v6 = [v5 URL];

  v7 = PLSharingGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [v6 pl_redactedShareURL];
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User cancelled send of CMM for URL: %{public}@", buf, 0xCu);
    }

    PXExpungeMomentShareForURL();
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User cancelled send of CMM with no URL", buf, 2u);
    }
  }
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = PhotosMessagesExtensionViewController;
  [(PhotosMessagesExtensionViewController *)&v9 didTransitionToPresentationStyle:?];
  v5 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did transition to presentation style %{public}lu", buf, 0xCu);
  }

  v6 = objc_retainBlock(self->_pendingDidPresentBlock);
  pendingDidPresentBlock = self->_pendingDidPresentBlock;
  self->_pendingDidPresentBlock = 0;

  if (v6)
  {
    v6[2](v6);
  }

  if (!a3)
  {
    v8 = +[PXMessagesExtensionViewModel sharedRootViewModel];
    [v8 performChanges:&stru_10000C900];
  }

  self->_transitioningPresentationStyles = 0;
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  self->_transitioningPresentationStyles = 1;
  v9.receiver = self;
  v9.super_class = PhotosMessagesExtensionViewController;
  [(PhotosMessagesExtensionViewController *)&v9 willTransitionToPresentationStyle:?];
  v5 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will transition to presentation style %{public}lu", buf, 0xCu);
  }

  if (!self->_supportsNavigationBarTransition)
  {
    v6 = [(PhotosMessagesExtensionViewController *)self pickerCoordinator];
    v7 = [v6 configuration];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001E50;
    v8[3] = &unk_10000C8E0;
    v8[4] = a3;
    [v7 performChanges:v8];
  }
}

- (void)willResignActiveWithConversation:(id)a3
{
  v6.receiver = self;
  v6.super_class = PhotosMessagesExtensionViewController;
  [(PhotosMessagesExtensionViewController *)&v6 willResignActiveWithConversation:a3];
  v3 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will resign active", v5, 2u);
  }

  v4 = +[PXMessagesExtensionViewModel sharedRootViewModel];
  [v4 performChanges:&stru_10000C8C0];
}

- (void)didResignActiveWithConversation:(id)a3
{
  v8.receiver = self;
  v8.super_class = PhotosMessagesExtensionViewController;
  [(PhotosMessagesExtensionViewController *)&v8 didResignActiveWithConversation:a3];
  v4 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did resign active", v7, 2u);
  }

  if ([(PhotosMessagesExtensionViewController *)self _isDrawerViewController])
  {
    v5 = +[PXMessagesExtensionViewModel sharedRootViewModel];
    [v5 performChanges:&stru_10000C8A0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:@"DidStageBubble" object:0];
  }
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v6.receiver = self;
  v6.super_class = PhotosMessagesExtensionViewController;
  [(PhotosMessagesExtensionViewController *)&v6 didBecomeActiveWithConversation:a3];
  v4 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did become active", v5, 2u);
  }

  self->_didBecomeActive = 1;
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v11.receiver = self;
  v11.super_class = PhotosMessagesExtensionViewController;
  v4 = a3;
  [(PhotosMessagesExtensionViewController *)&v11 willBecomeActiveWithConversation:v4];
  v5 = PLAssetExplorerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will become active", v10, 2u);
  }

  v6 = [(PhotosMessagesExtensionViewController *)self presentationStyle];
  if (v6 == 3)
  {
    objc_storeStrong(&qword_1000111F0, self);
    self->_isModal = 1;
  }

  v7 = [(PhotosMessagesExtensionViewController *)self _isDrawerViewController];
  [(PhotosMessagesExtensionViewController *)self _presentViewControllerForConversation:v4 presentationStyle:v6 animated:v7];

  if (v7)
  {
    v8 = +[PXMessagesExtensionViewModel sharedRootViewModel];
    [v8 registerChangeObserver:self context:off_100010EE8];
    [v8 performChanges:&stru_10000C880];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"_didStageBubble:" name:@"DidStageBubble" object:0];

    [AEPhotosAssetPackageGenerator deleteTemporaryStorageWithTimeout:1.0];
  }
}

- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handle text input payload: %@ with payload ID: %@", buf, 0x16u);
  }

  if (([v6 isEqualToString:@"com.apple.messages.datadetectors.photos"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.messages.photos"))
  {
    v8 = [v5 objectForKeyedSubscript:@"Photos"];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = [v10 objectForKeyedSubscript:@"Text"];
      v12 = [v10 objectForKeyedSubscript:@"Timestamp"];
      v13 = +[PXMessagesExtensionViewModel sharedRootViewModel];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100002558;
      v17[3] = &unk_10000C860;
      v18 = v11;
      v19 = v12;
      v14 = v12;
      v15 = v11;
      [v13 performChanges:v17];
    }

    else
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No array of photos in payload: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected payload ID: %@", buf, 0xCu);
    }
  }

  return 0;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (off_100010EE8 != a5)
  {
    abort();
  }

  if ((v6 & 0x19) != 0)
  {
    v9 = v8;
    [(PhotosMessagesExtensionViewController *)self _updatePresentedViewController];
    v8 = v9;
  }
}

- (void)transcriptBubbleViewController:(id)a3 didSelectMomentShare:(id)a4
{
  v5 = a3;
  v6 = [(PhotosMessagesExtensionViewController *)self activeConversation];
  v7 = [v6 selectedMessage];
  v8 = [v7 isPending];

  if ((v8 & 1) == 0)
  {
    if ([v5 isSender])
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = +[PXMessagesExtensionViewModel sharedRootViewModel];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000027C8;
    v16 = &unk_10000C838;
    v11 = v5;
    v17 = v11;
    v18 = v9;
    [v10 performChanges:&v13];
    if (([v10 isDrawerActive] & 1) == 0)
    {
      v12 = PLSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Presenting modal from bubble tap: %@", buf, 0xCu);
      }

      [(PhotosMessagesExtensionViewController *)self requestPresentationStyle:3];
    }
  }
}

- (void)requestResizeForBubble:(id)a3
{
  v4 = a3;
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resize requested by bubble: %@", &v6, 0xCu);
  }

  [(PhotosMessagesExtensionViewController *)self requestResize];
}

- (UIEdgeInsets)safeAreaInsetsForBubble:(id)a3
{
  [(PhotosMessagesExtensionViewController *)self _balloonMaskEdgeInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)bubbleDidBecomeReadyForDisplay:(id)a3
{
  v4 = a3;
  if (!self->_contentReadyForDisplay)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = Current - self->_displayStartTime;
      v8 = 134218242;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Triggering display of live bubble after %lf seconds: %@", &v8, 0x16u);
    }

    self->_contentReadyForDisplay = 1;
    [(PhotosMessagesExtensionViewController *)self setReadyForDisplay];
  }
}

- (void)workflowCoordinator:(id)a3 didPublishToURL:(id)a4
{
  v5 = a4;
  v6 = [(PhotosMessagesExtensionViewController *)self activeConversation];
  v7 = objc_alloc_init(MSMessageTemplateLayout);
  v8 = [(PhotosMessagesExtensionViewController *)self _assetCollectionForURL:v5];
  if ([v8 assetCollectionType] == 7)
  {
    v24 = v6;
    PXCMMTitleAndSubtitleForAssetCollection();
    v9 = 0;
    v23 = 0;
    [v7 setCaption:v9];
    [v8 aggregateMediaType];
    [v8 assetCount];
    v10 = PXLocalizedAssetCountForUsage();
    [v7 setSubcaption:v10];
    v11 = 0;
    if (v9 && v10)
    {
      v12 = PXLocalizedString();
      v21 = v9;
      v22 = v10;
      v11 = PFStringWithValidatedFormat();
    }

    v13 = [v8 preview];
    v14 = [v13 previewImageData];
    v15 = [v14 firstObject];

    if (v15)
    {
      v16 = [UIImage imageWithData:v15];
      [v7 setImage:v16];
    }

    v6 = v24;
  }

  else
  {
    v17 = PXLocalizedString();
    v18 = [v6 localParticipantIdentifier];
    v19 = [v18 UUIDString];
    v20 = PFStringWithValidatedFormat();
    [v7 setCaption:{v20, v19}];

    v11 = 0;
  }

  [(PhotosMessagesExtensionViewController *)self _stageMessageForConversation:v6 withTemplateItem:v7 messageURL:v5 summaryText:v11];
}

- (void)workflowCoordinator:(id)a3 workflowViewController:(id)a4 didFinishSession:(id)a5 withActivityState:(unint64_t)a6
{
  if ([(PhotosMessagesExtensionViewController *)self presentationStyle:a3])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(PhotosMessagesExtensionViewController *)self _dismissDrawerViewControllerWithDesiredState:v8];
  v9 = +[PXMessagesExtensionViewModel sharedRootViewModel];
  [v9 performChanges:&stru_10000C810];
  if (a6 != 1 && self->_isModal)
  {
    [(PhotosMessagesExtensionViewController *)self dismiss];
  }
}

- (void)explorerViewController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a4;
  v7 = +[PXMessagesExtensionViewModel sharedRootViewModel];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002E24;
  v9[3] = &unk_10000C4A0;
  v10 = v6;
  v8 = v6;
  [v7 performChanges:v9];
}

- (void)_didRemoveAssetArchiveWithIdentifier:(id)a3
{
  v4 = a3;
  if (!self->numberOfStagedAssetsBeforeSend)
  {
    v5 = [(PhotosMessagesExtensionViewController *)self transport];
    v6 = [v5 orderedStagedIdentifiers];
    self->numberOfStagedAssetsBeforeSend = [v6 count];
  }

  v7 = [(PhotosMessagesExtensionViewController *)self transport];
  [v7 unstagePackageWithIdentifier:v4 andNotify:0];

  v8 = [(PhotosMessagesExtensionViewController *)self transport];
  v9 = [v8 orderedStagedIdentifiers];
  if ([v9 count])
  {
  }

  else
  {
    numberOfStagedAssetsBeforeSend = self->numberOfStagedAssetsBeforeSend;

    if (numberOfStagedAssetsBeforeSend)
    {
      v19[0] = CPAnalyticsPayloadGenericAssetCountKey;
      v11 = [NSNumber numberWithUnsignedInteger:self->numberOfStagedAssetsBeforeSend];
      v20[0] = v11;
      v19[1] = CPAnalyticsPayloadClassNameKey;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v20[1] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
      [CPAnalytics sendEvent:@"com.apple.photos.CPAnalytics.assetExplorerSharedInMessages" withPayload:v14];

      self->numberOfStagedAssetsBeforeSend = 0;
    }
  }

  v15 = [(PhotosMessagesExtensionViewController *)self pickerCoordinator];
  v16 = [PHAsset localIdentifierWithUUID:v4];
  v18 = v16;
  v17 = [NSArray arrayWithObjects:&v18 count:1];
  [v15 deselectItemsWithIdentifiers:v17];
}

- (void)packageTransport:(id)a3 didUnstagePackageWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(PhotosMessagesExtensionViewController *)self activeConversation];
  [v6 _removeAssetArchiveWithIdentifier:v5 completionHandler:&stru_10000C7B0];
  self->numberOfStagedAssetsBeforeSend = 0;
  v7 = [(PhotosMessagesExtensionViewController *)self pickerCoordinator];
  v8 = [PHAsset localIdentifierWithUUID:v5];

  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [v7 deselectItemsWithIdentifiers:v9];
}

- (void)packageTransport:(id)a3 didStagePackages:(id)a4
{
  v5 = a4;
  v17 = self;
  v6 = [(PhotosMessagesExtensionViewController *)self activeConversation];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v18];
        v15 = v18;
        if (v14)
        {
          [v6 _insertAssetArchive:v14 completionHandler:&stru_10000C790];
          v16 = [v13 identifier];
          [v7 addObject:v16];
        }

        else
        {
          v16 = PLUIGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Archiving error: %@", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [(PhotosMessagesExtensionViewController *)v17 incrementShareCountAndLogAnalyticsForStagedAssetIDs:v7];
  }

  v17->numberOfStagedAssetsBeforeSend = 0;
}

- (void)incrementShareCountAndLogAnalyticsForStagedAssetIDs:(id)a3
{
  v3 = a3;
  v4 = [PHPhotoLibrary alloc];
  v5 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v6 = [v4 initWithPhotoLibraryURL:v5];

  v19 = v6;
  [v6 librarySpecificFetchOptions];
  v18 = v20 = v3;
  v7 = [PHAsset fetchAssetsWithLocalIdentifiers:v3 options:?];
  PXIncrementShareCountForAssets();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    v13 = CPAnalyticsPayloadAssetsKey;
    v14 = CPAnalyticsPayloadClassNameKey;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        v26[0] = v13;
        v26[1] = v14;
        v27[0] = v16;
        v27[1] = v9;
        v17 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
        [CPAnalytics sendEvent:@"com.apple.photos.CPAnalytics.stagedForSharingInMessages" withPayload:v17];

        v15 = v15 + 1;
      }

      while (v11 != v15);
      v11 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }
}

- (void)_dismissDrawerViewControllerWithDesiredState:(int64_t)a3
{
  if (a3 == 3)
  {
    if (![(PhotosMessagesExtensionViewController *)self presentationStyle])
    {
      return;
    }

    v5 = 0;
    v4 = 1;
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if ([(PhotosMessagesExtensionViewController *)self presentationStyle]== 1)
    {
      return;
    }

    v4 = 0;
    v5 = 1;
    goto LABEL_10;
  }

  if (a3 == 1 && [(PhotosMessagesExtensionViewController *)self presentationStyle])
  {
    v4 = 0;
    v5 = 0;
LABEL_10:
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003810;
    v8[3] = &unk_10000C770;
    v10 = v4;
    objc_copyWeak(&v9, &location);
    v6 = objc_retainBlock(v8);
    pendingDidPresentBlock = self->_pendingDidPresentBlock;
    self->_pendingDidPresentBlock = v6;

    [(PhotosMessagesExtensionViewController *)self requestPresentationStyle:v5];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_updatePresentedViewController
{
  v3 = +[PXMessagesExtensionViewModel sharedRootViewModel];
  v4 = [v3 selectedURL];
  v5 = [v3 presentedViewController];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Presenting a modal with both a CMM workflow and a presented view controller. Only one will be shown", &v12, 2u);
    }

    goto LABEL_13;
  }

  if (v4)
  {
LABEL_13:
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 pl_redactedShareURL];
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting modal presentation for CMM flow: %{public}@", &v12, 0xCu);
    }

LABEL_15:

    [(PhotosMessagesExtensionViewController *)self requestPresentationStyle:3];
    goto LABEL_16;
  }

  if (v5)
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting modal presentation for view controller: %@", &v12, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)_removeAllChildViewControllersAnimated:(BOOL)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(PhotosMessagesExtensionViewController *)self childViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (v3)
        {
          v13 = &stru_10000C720;
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100003CC0;
          v14[3] = &unk_10000C6E0;
          v14[4] = v9;
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100003D08;
          v12[3] = &unk_10000C748;
          v12[4] = v9;
          [UIView animateWithDuration:v14 animations:v12 completion:0.3];
        }

        else
        {
          sub_100003D1C(v5, v9);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v6 = v5;
    }

    while (v5);
  }

  transcriptBubbleViewController = self->_transcriptBubbleViewController;
  self->_transcriptBubbleViewController = 0;
}

- (void)_presentChildViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PhotosMessagesExtensionViewController *)self addChildViewController:v6];
  v7 = [(PhotosMessagesExtensionViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v6 view];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [v6 view];
  [v17 setAutoresizingMask:18];

  if (v4)
  {
    v18 = [v6 view];
    [v18 setAlpha:0.0];

    v19 = [(PhotosMessagesExtensionViewController *)self view];
    v20 = [v6 view];
    [v19 addSubview:v20];

    [v6 didMoveToParentViewController:self];
    [(PhotosMessagesExtensionViewController *)self _setNeedsUpdateOfSupportedInterfaceOrientations];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100003F78;
    v23[3] = &unk_10000C6E0;
    v24 = v6;
    [UIView animateWithDuration:v23 animations:0.3];
  }

  else
  {
    v21 = [(PhotosMessagesExtensionViewController *)self view];
    v22 = [v6 view];
    [v21 addSubview:v22];

    [v6 didMoveToParentViewController:self];
    [(PhotosMessagesExtensionViewController *)self _setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(PhotosMessagesExtensionViewController *)self childViewControllers];
  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 |= [*(*(&v12 + 1) + 8 * i) supportedInterfaceOrientations];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PhotosMessagesExtensionViewController;
    v7 = [(PhotosMessagesExtensionViewController *)&v11 supportedInterfaceOrientations];
  }

  return v7;
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[PXCompleteMyMomentSettings sharedInstance];
    v6 = [v5 useDebugColors];

    if ([(PhotosMessagesExtensionViewController *)self _isDrawerViewController]|| (v6 & 1) != 0)
    {
      v8 = [(PhotosMessagesExtensionViewController *)self view];
      [v8 bounds];
      v10 = v9;
      v12 = v11;

      v13 = [[UIGraphicsImageRenderer alloc] initWithSize:{v10, v12}];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100004CD0;
      v15[3] = &unk_10000C5E8;
      v16 = v6;
      v15[4] = self;
      v14 = [v13 imageWithActions:v15];
      v4[2](v4, v14);
    }

    else
    {
      v17.receiver = self;
      v17.super_class = PhotosMessagesExtensionViewController;
      [(PhotosMessagesExtensionViewController *)&v17 updateSnapshotWithCompletionBlock:v4];
    }
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "updateSnapshotWithCompletionBlock called with missing completion block", buf, 2u);
    }
  }
}

- (BOOL)displaysAfterAppearance
{
  if (self->_contentReadyForDisplay)
  {
    return 1;
  }

  else
  {
    self->_displayStartTime = CFAbsoluteTimeGetCurrent();
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 5000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100004EC0;
    v6[3] = &unk_10000C5C0;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, &_dispatch_main_q, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
    return self->_contentReadyForDisplay;
  }
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  transcriptBubbleViewController = self->_transcriptBubbleViewController;
  if (transcriptBubbleViewController)
  {
    [(PXTranscriptBubbleViewController *)transcriptBubbleViewController contentSizeThatFits:a3.width, a3.height];
    width = v6;
    height = v7;
  }

  else
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Asked for a transcript bubble size without a PXTranscriptBubbleViewController", v11, 2u);
    }
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_finishPicking:(id)a3 withPreparationOptions:(id)a4
{
  v6 = a3;
  v45 = a4;
  v50 = [(PhotosMessagesExtensionViewController *)self transport];
  v49 = [(PhotosMessagesExtensionViewController *)self loadingStatusManager];
  v7 = [NSMutableSet alloc];
  v8 = [v50 expectedPackageIdentifiers];
  v46 = [v7 initWithSet:v8];

  if (plsGreenTeaEnabled() && [v6 count])
  {
    v9 = [v6 fetchedObjects];
    v10 = PXMap();

    v11 = [v6 photoLibrary];
    v12 = [PHAsset countOfAssetsWithLocationFromUUIDs:v10 photoLibrary:v11];

    if (v12 >= 1)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 bundleIdentifier];

      v44 = v12;
      plslogGreenTea();
    }
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v6;
  v15 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v15)
  {
    v48 = *v63;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v62 + 1) + 8 * i);
        v18 = [v17 uuid];
        v19 = [v50 expectedPackageIdentifiers];
        v20 = [v19 containsObject:v18];

        if (v20)
        {
          [v46 removeObject:v18];
        }

        else
        {
          [v50 addPendingPackageIdentifier:v18];
          v21 = [[AEPhotosAssetPackageGenerator alloc] initWithAsset:v17];
          [v21 setPreparationOptions:v45];
          v22 = [v21 beginGenerating];
          objc_initWeak(&location, self);
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_100005594;
          v55[3] = &unk_10000C598;
          v56 = v50;
          v23 = v18;
          v57 = v23;
          objc_copyWeak(&v60, &location);
          v24 = v49;
          v58 = v24;
          v59 = self;
          if (([v21 retrieveGeneratedPackageWithCompletion:v55] & 1) == 0)
          {
            v25 = [v17 uuid];
            v26 = [v24 willBeginLoadOperationWithItemIdentifier:v25];

            v27 = [v21 progress];
            [v27 setUserInfoObject:v26 forKey:@"PhotosMessagesExtensionProgressTrackingIDKey"];

            v28 = [v21 progress];
            v29 = NSStringFromSelector("fractionCompleted");
            [v28 addObserver:self forKeyPath:v29 options:4 context:off_100010EE0];

            v30 = [v21 progress];
            v31 = [(PhotosMessagesExtensionViewController *)self loadingProgresses];
            [v31 setObject:v30 forKeyedSubscript:v23];
          }

          objc_destroyWeak(&v60);
          objc_destroyWeak(&location);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v15);
  }

  v32 = [v46 allObjects];
  [v50 removeAllExpectedPackagesWithIdentifiers:v32];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v34)
  {
    v35 = *v52;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v52 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v51 + 1) + 8 * j);
        v38 = [(PhotosMessagesExtensionViewController *)self loadingProgresses];
        v39 = [v38 objectForKey:v37];

        if (v39)
        {
          v40 = [v39 userInfo];
          v41 = [v40 objectForKeyedSubscript:@"PhotosMessagesExtensionProgressTrackingIDKey"];
          [v49 didCancelLoadOperationWithTrackingID:v41];

          v42 = NSStringFromSelector("fractionCompleted");
          [v39 removeObserver:self forKeyPath:v42];

          v43 = [(PhotosMessagesExtensionViewController *)self loadingProgresses];
          [v43 removeObjectForKey:v37];
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v34);
  }
}

- (void)_confirmPicking:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[PXSharingConfidentialityController confidentialityCheckRequired](PXSharingConfidentialityController, "confidentialityCheckRequired") && ([v6 fetchedObjects], v8 = objc_claimAutoreleasedReturnValue(), v9 = +[PXSharingConfidentialityController confidentialWarningRequiredForAssets:](PXSharingConfidentialityController, "confidentialWarningRequiredForAssets:", v8), v8, v9))
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000059B4;
    v16[3] = &unk_10000C530;
    v17 = v7;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000059C8;
    v14 = &unk_10000C530;
    v15 = v17;
    v10 = [PXSharingConfidentialityController confidentialityAlertWithConfirmAction:v16 abortAction:&v11];
    [(PhotosMessagesExtensionViewController *)self px_presentOverTopmostPresentedViewController:v10 animated:1 completion:0, v11, v12, v13, v14];
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }
}

- (void)_contentReadyForDisplayTimeout
{
  if (!self->_contentReadyForDisplay)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      transcriptBubbleViewController = self->_transcriptBubbleViewController;
      v5 = 138412290;
      v6 = transcriptBubbleViewController;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Content ready for display timed out for bubble %@", &v5, 0xCu);
    }
  }
}

- (void)_stageMessageForConversation:(id)a3 withTemplateItem:(id)a4 messageURL:(id)a5 summaryText:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = objc_alloc_init(MSMessage);
  v15 = [[MSMessageLiveLayout alloc] initWithAlternateLayout:v13];

  [v14 setLayout:v15];
  if (v11)
  {
    [v14 setURL:v11];
  }

  else
  {
    v16 = PLSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Staging message with no URL", buf, 2u);
    }
  }

  [v14 setSummaryText:v12];

  v17 = +[PXCompleteMyMomentSettings sharedInstance];
  v18 = [v17 directSendMessages];

  if (v18)
  {
    [v10 sendMessage:v14 completionHandler:&stru_10000C4E0];
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005C50;
    v19[3] = &unk_10000C508;
    v19[4] = self;
    [v10 insertMessage:v14 completionHandler:v19];
  }
}

- (id)_contactsForConversation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(PhotosMessagesExtensionViewController *)self _recipientsForConversation:v4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) contact];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_recipientsForConversation:(id)a3
{
  v3 = a3;
  v4 = +[PXMessagesExtensionViewModel sharedRootViewModel];
  v5 = [v4 recipients];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v3;
    v9 = [v3 recipientAddresses];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[PXRecipient alloc] initWithAddress:*(*(&v21 + 1) + 8 * i) nameComponents:0 recipientKind:0];
          v15 = v14;
          if (v14)
          {
            v16 = [v14 invalidAddressString];

            if (!v16)
            {
              [v8 addObject:v15];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100006164;
    v19[3] = &unk_10000C4A0;
    v7 = v8;
    v20 = v7;
    [v4 performChanges:v19];

    v3 = v18;
  }

  return v7;
}

- (id)_assetCollectionForURL:(id)a3
{
  v3 = a3;
  v4 = PXFetchAssetCollectionForCMMShareURL();
  v5 = [v4 firstObject];
  if (!v5)
  {
    v6 = PLSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 pl_redactedShareURL];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to find asset collection for URL: %{public}@", &v9, 0xCu);
    }
  }

  return v5;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PhotosMessagesExtensionViewController;
  [(PhotosMessagesExtensionViewController *)&v10 viewDidLoad];
  v3 = +[PXCompleteMyMomentSettings sharedInstance];
  v4 = [v3 useDebugColors];

  if (v4)
  {
    v5 = +[UIColor yellowColor];
  }

  else if (-[PhotosMessagesExtensionViewController presentationStyle](self, "presentationStyle") == 2 || (-[PhotosMessagesExtensionViewController traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 userInterfaceIdiom], v6, v7 == 6))
  {
    v5 = +[UIColor clearColor];
  }

  else
  {
    v5 = +[UIColor systemBackgroundColor];
  }

  v8 = v5;
  v9 = [(PhotosMessagesExtensionViewController *)self view];
  [v9 setBackgroundColor:v8];

  [(PhotosMessagesExtensionViewController *)self setAdditionalSafeAreaInsets:0.0, 0.0, 1.0, 0.0];
}

- (PhotosMessagesExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = PhotosMessagesExtensionViewController;
  v4 = [(PhotosMessagesExtensionViewController *)&v6 initWithNibName:a3 bundle:a4];
  if (v4 && qword_100011200 != -1)
  {
    dispatch_once(&qword_100011200, &stru_10000C438);
  }

  return v4;
}

+ (void)initialize
{
  if (qword_1000111F8 != -1)
  {
    dispatch_once(&qword_1000111F8, &stru_10000C418);
  }
}

@end