@interface BKMinifiedFlowController
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKMinifiedFlowController)init;
- (BKMinifiedFlowControllerDelegate)delegate;
- (BKSceneHosting)sceneHosting;
- (BOOL)_assetIsPresentedOnAuxiliaryCanvas:(id)canvas;
- (BOOL)_legacyMinibarBehavior;
- (BOOL)_presenterIsAudiobookPreview:(id)preview;
- (BOOL)_shouldHandleCurrentBookNotification:(id)notification;
- (BOOL)_shouldHideMinibar;
- (BOOL)minifiedPresenterCanOpenPresenter:(id)presenter overCurrentPresenter:(id)currentPresenter;
- (BOOL)shouldAnimateAssetWithAssetIDFromMinibar:(id)minibar;
- (id)_currentAssetPresenters;
- (id)minifiedBarAnimatorMinibarView;
- (id)minifiedBarAnimatorTabBarView;
- (id)minifiedPresenterAssetCurrentPresenterForAssetID:(id)d;
- (id)minifiedPresenterAssetCurrentPresenters;
- (id)minifiedPresenterAssetCurrentPresentersForAssetIDs:(id)ds;
- (void)_cleanLastKnownCurrentBookIfNecessary:(id)necessary;
- (void)_closeMinifiedPresenter:(id)presenter animated:(BOOL)animated completion:(id)completion;
- (void)_hideToolbarAnimated:(BOOL)animated completion:(id)completion;
- (void)_layoutPresenterMinibar:(id)minibar;
- (void)_layoutPresenterMinibar:(id)minibar visible:(BOOL)visible viewController:(id)controller;
- (void)_notifyToolbars;
- (void)_recentBooksProviderChanged:(id)changed;
- (void)_setMinibarVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)activeRootBarKindDidChange;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)minifiedBarAnimatePrepareTransitionToViewController:(id)controller;
- (void)minifiedBarAnimatorAnimateHideIfNeededFromViewController:(id)controller;
- (void)minifiedBarAnimatorAnimateShowIfNeededToViewController:(id)controller force:(BOOL)force;
- (void)minifiedBarAnimatorFinalizeHideIfNeededToViewController:(id)controller;
- (void)minifiedBarAnimatorPrepareShowIfNeededToViewController:(id)controller;
- (void)minifiedPresenter:(id)presenter openStorePageForStoreID:(id)d fromViewController:(id)controller;
- (void)minifiedPresenterAddPresenter:(id)presenter;
- (void)minifiedPresenterAssetPresenterForAssetIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (void)minifiedPresenterAssetPresenterForStoreAsset:(id)asset options:(id)options completion:(id)completion;
- (void)minifiedPresenterClose:(id)close error:(id)error isRetry:(BOOL)retry;
- (void)minifiedPresenterDidCloseAssetID:(id)d finishedConsuming:(BOOL)consuming;
- (void)minifiedPresenterDidOpenAssetID:(id)d;
- (void)minifiedPresenterDidReloadAssetViewController:(id)controller;
- (void)minifiedPresenterOpenMinified:(id)minified;
- (void)minifiedPresenterPause:(id)pause;
- (void)minifiedPresenterPrepareToOpen:(id)open animated:(BOOL)animated completion:(id)completion;
- (void)minifiedPresenterUpdateCurrentBookWithCompletion:(id)completion;
- (void)setShouldIgnoreCurrentBookNotifications:(BOOL)notifications;
- (void)toggleMinibarVisibility:(id)visibility;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)visibleViewControllersUpdatedPostTranstionAnimated:(BOOL)animated;
- (void)visibleViewControllersUpdatedPreTranstionAnimated:(BOOL)animated;
@end

@implementation BKMinifiedFlowController

- (BKMinifiedFlowController)init
{
  v11.receiver = self;
  v11.super_class = BKMinifiedFlowController;
  v2 = [(BKMinifiedFlowController *)&v11 init];
  if (v2)
  {
    v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 100.0, 0.0}];
    minibarContainerView = v2->_minibarContainerView;
    v2->_minibarContainerView = v3;

    [(UIView *)v2->_minibarContainerView setClipsToBounds:1];
    v5 = +[UIApplication sharedApplication];
    v2->_isRTL = [v5 userInterfaceLayoutDirection] == 1;

    v6 = objc_alloc_init(BKCurrentBookProvider);
    currentBookProvider = v2->_currentBookProvider;
    v2->_currentBookProvider = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_recentBooksProviderChanged:" name:@"BKRecentBooksProviderDidChangeNotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v2->_shouldIgnoreCurrentBookNotifications = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"BKRecentBooksProviderDidChangeNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = BKMinifiedFlowController;
  [(BKMinifiedFlowController *)&v5 dealloc];
}

- (BKLibraryAssetProvider)libraryAssetProvider
{
  v2 = +[BKAppDelegate delegate];
  libraryAssetProvider = [v2 libraryAssetProvider];

  return libraryAssetProvider;
}

- (void)minifiedPresenterAssetPresenterForStoreAsset:(id)asset options:(id)options completion:(id)completion
{
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  minifiedAssetPresenterAssetID = [audioBookAssetPresenter minifiedAssetPresenterAssetID];
  v12 = [assetCopy id];
  v13 = [minifiedAssetPresenterAssetID isEqualToString:v12];

  if (v13 && (-[BKMinifiedFlowController audioBookAssetPresenter](self, "audioBookAssetPresenter"), v14 = objc_claimAutoreleasedReturnValue(), BUProtocolCast(), v15 = objc_claimAutoreleasedReturnValue(), v14, v15) || (-[BKMinifiedFlowController currentBookAssetPresenter](self, "currentBookAssetPresenter"), v16 = objc_claimAutoreleasedReturnValue(), [v16 minifiedAssetPresenterAssetID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(assetCopy, "id"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v16, v19) && (-[BKMinifiedFlowController currentBookAssetPresenter](self, "currentBookAssetPresenter"), v20 = objc_claimAutoreleasedReturnValue(), BUProtocolCast(), v15 = objc_claimAutoreleasedReturnValue(), v20, v15))
  {
    v21 = objc_retainBlock(completionCopy);
    if (v21)
    {
      audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
      v21[2](v21, audioBookAssetPresenter2);
    }
  }

  else
  {
    [(objc_class *)[(BKMinifiedFlowController *)self _storeAssetPresenterClass] minimizedPresenterWithAsset:assetCopy options:optionsCopy presenter:self completion:completionCopy];
  }
}

- (void)minifiedPresenterAssetPresenterForAssetIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  v11 = BCCurrentBookLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    v33 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "minifiedPresenterAssetPresenterForAssetIdentifier assetID=%{masked.hash}@", &v32, 0xCu);
  }

  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  minifiedAssetPresenterAssetID = [audioBookAssetPresenter minifiedAssetPresenterAssetID];
  permanentOrTemporaryAssetID = [identifierCopy permanentOrTemporaryAssetID];
  v15 = [minifiedAssetPresenterAssetID isEqualToString:permanentOrTemporaryAssetID];

  if (v15 && (-[BKMinifiedFlowController audioBookAssetPresenter](self, "audioBookAssetPresenter"), v16 = objc_claimAutoreleasedReturnValue(), BUProtocolCast(), v17 = objc_claimAutoreleasedReturnValue(), v16, v17) || (-[BKMinifiedFlowController currentBookAssetPresenter](self, "currentBookAssetPresenter"), v18 = objc_claimAutoreleasedReturnValue(), [v18 minifiedAssetPresenterAssetID], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(identifierCopy, "permanentOrTemporaryAssetID"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, v19, v18, v21) && (-[BKMinifiedFlowController currentBookAssetPresenter](self, "currentBookAssetPresenter"), v22 = objc_claimAutoreleasedReturnValue(), BUProtocolCast(), v17 = objc_claimAutoreleasedReturnValue(), v22, v17))
  {
    v23 = objc_retainBlock(completionCopy);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, v17);
    }
  }

  else
  {
    libraryAssetProvider = [(BKMinifiedFlowController *)self libraryAssetProvider];

    if (libraryAssetProvider)
    {
      v26 = BCCurrentBookLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138412290;
        v33 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "minifiedPresenterAssetPresenterForAssetIdentifier assetID=%{masked.hash}@ requesting for libraryAsset", &v32, 0xCu);
      }

      libraryAssetProvider2 = [(BKMinifiedFlowController *)self libraryAssetProvider];
      v17 = [libraryAssetProvider2 libraryAssetOnMainQueueWithAssetIdentifier:identifierCopy];

      if ([v17 isAudiobook])
      {
        _audiobookMinifiedAssetPresenterClass = [(BKMinifiedFlowController *)self _audiobookMinifiedAssetPresenterClass];
      }

      else
      {
        _audiobookMinifiedAssetPresenterClass = objc_opt_class();
      }

      v30 = _audiobookMinifiedAssetPresenterClass;
      v31 = BCCurrentBookLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138412290;
        v33 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "minifiedPresenterAssetPresenterForAssetIdentifier assetID=%{masked.hash}@ requesting minified asset presenter for libraryAsset", &v32, 0xCu);
      }

      [(objc_class *)v30 minimizedPresenterWithLibraryAsset:v17 options:optionsCopy presenter:self completion:completionCopy];
    }

    else
    {
      v29 = objc_retainBlock(completionCopy);
      v17 = v29;
      if (v29)
      {
        (*(v29 + 2))(v29, 0);
      }
    }
  }
}

- (id)minifiedPresenterAssetCurrentPresenterForAssetID:(id)d
{
  dCopy = d;
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  minifiedAssetPresenterAssetID = [audioBookAssetPresenter minifiedAssetPresenterAssetID];
  v7 = [minifiedAssetPresenterAssetID isEqualToString:dCopy];

  if (v7)
  {
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
LABEL_5:
    v12 = audioBookAssetPresenter2;
    goto LABEL_7;
  }

  currentBookAssetPresenter = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  minifiedAssetPresenterAssetID2 = [currentBookAssetPresenter minifiedAssetPresenterAssetID];
  v11 = [minifiedAssetPresenterAssetID2 isEqualToString:dCopy];

  if (v11)
  {
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)minifiedPresenterAssetCurrentPresentersForAssetIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSMutableSet set];
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  if (audioBookAssetPresenter)
  {
    v7 = audioBookAssetPresenter;
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    minifiedAssetPresenterAssetID = [audioBookAssetPresenter2 minifiedAssetPresenterAssetID];
    v10 = [dsCopy containsObject:minifiedAssetPresenterAssetID];

    if (v10)
    {
      audioBookAssetPresenter3 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
      [v5 addObject:audioBookAssetPresenter3];
    }
  }

  currentBookAssetPresenter = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  if (currentBookAssetPresenter)
  {
    v13 = currentBookAssetPresenter;
    currentBookAssetPresenter2 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    minifiedAssetPresenterAssetID2 = [currentBookAssetPresenter2 minifiedAssetPresenterAssetID];
    v16 = [dsCopy containsObject:minifiedAssetPresenterAssetID2];

    if (v16)
    {
      currentBookAssetPresenter3 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
      [v5 addObject:currentBookAssetPresenter3];
    }
  }

  v18 = [v5 copy];

  return v18;
}

- (id)minifiedPresenterAssetCurrentPresenters
{
  v3 = +[NSMutableSet set];
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

  if (audioBookAssetPresenter)
  {
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    [v3 addObject:audioBookAssetPresenter2];
  }

  currentBookAssetPresenter = [(BKMinifiedFlowController *)self currentBookAssetPresenter];

  if (currentBookAssetPresenter)
  {
    currentBookAssetPresenter2 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    [v3 addObject:currentBookAssetPresenter2];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)minifiedPresenterPrepareToOpen:(id)open animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  openCopy = open;
  completionCopy = completion;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  minifiedAssetPresenters = [(BKMinifiedFlowController *)self minifiedAssetPresenters];
  v11 = [minifiedAssetPresenters countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v11)
  {
    v12 = *v46;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(minifiedAssetPresenters);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        if (([v14 minifiedAssetPresenterIsAudiobook] & 1) == 0)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = [minifiedAssetPresenters countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([(BKMinifiedFlowController *)self _presenterIsAudiobookPreview:openCopy])
  {
    audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    if (audioBookAssetPresenter)
    {
      v16 = audioBookAssetPresenter;
      minifiedAssetPresenterIsAudiobook = [openCopy minifiedAssetPresenterIsAudiobook];

      if (minifiedAssetPresenterIsAudiobook)
      {
        audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
        minifiedAssetPresenterAssetID = [audioBookAssetPresenter2 minifiedAssetPresenterAssetID];
        minifiedAssetPresenterAssetID2 = [openCopy minifiedAssetPresenterAssetID];
        v21 = [minifiedAssetPresenterAssetID isEqual:minifiedAssetPresenterAssetID2];

        if (v21)
        {
          v22 = +[BKAppDelegate sceneManager];
          primarySceneController = [v22 primarySceneController];
          rootBarCoordinator = [primarySceneController rootBarCoordinator];

          [rootBarCoordinator presentFullPlayerWithCompletion:0];
        }

        else
        {
          audioBookAssetPresenter3 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

          if (audioBookAssetPresenter3 == openCopy)
          {
            goto LABEL_19;
          }

          rootBarCoordinator = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
          [rootBarCoordinator minifiedAssetPresenterPausePlayback];
        }

LABEL_19:
        v27 = objc_retainBlock(completionCopy);
        currentBookAssetPresenter = v27;
        if (v27)
        {
          (*(v27 + 2))(v27);
        }

        goto LABEL_21;
      }
    }
  }

  minifiedAssetPresenterAssetID3 = [v11 minifiedAssetPresenterAssetID];
  minifiedAssetPresenterAssetID4 = [openCopy minifiedAssetPresenterAssetID];
  if (![minifiedAssetPresenterAssetID3 isEqualToString:minifiedAssetPresenterAssetID4] || (objc_msgSend(v11, "minifiedAssetPresenterCanStayOpenInBackground") & 1) != 0)
  {

    goto LABEL_19;
  }

  minifiedAssetPresenterIsAudiobook2 = [openCopy minifiedAssetPresenterIsAudiobook];

  if (minifiedAssetPresenterIsAudiobook2)
  {
    goto LABEL_19;
  }

  v39 = animatedCopy;
  v40 = completionCopy;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  minifiedAssetPresenters2 = [(BKMinifiedFlowController *)self minifiedAssetPresenters];
  v31 = [minifiedAssetPresenters2 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v42;
    while (2)
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(minifiedAssetPresenters2);
        }

        minifiedAssetPresenterAssetID5 = [*(*(&v41 + 1) + 8 * j) minifiedAssetPresenterAssetID];
        minifiedAssetPresenterAssetID6 = [openCopy minifiedAssetPresenterAssetID];
        v37 = [minifiedAssetPresenterAssetID5 isEqualToString:minifiedAssetPresenterAssetID6];

        if (v37)
        {

          completionCopy = v40;
          goto LABEL_19;
        }
      }

      v32 = [minifiedAssetPresenters2 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  currentBookAssetPresenter = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  completionCopy = v40;
  [(BKMinifiedFlowController *)self _closeMinifiedPresenter:currentBookAssetPresenter animated:v39 completion:v40];
LABEL_21:
}

- (BOOL)_presenterIsAudiobookPreview:(id)preview
{
  previewCopy = preview;
  [(BKMinifiedFlowController *)self _storeAssetPresenterClass];
  LOBYTE(self) = objc_opt_isKindOfClass();

  return self & 1;
}

- (void)minifiedPresenterOpenMinified:(id)minified
{
  minifiedCopy = minified;
  -[BKMinifiedFlowController setMinibarVisible:](self, "setMinibarVisible:", [minifiedCopy minifiedAssetPresenterShouldAnimateOpenClose] ^ 1);
  [(BKMinifiedFlowController *)self minifiedPresenterOpen:minifiedCopy];
}

- (void)minifiedPresenterAddPresenter:(id)presenter
{
  presenterCopy = presenter;
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  currentBookAssetPresenter = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  if (audioBookAssetPresenter != presenterCopy && [presenterCopy minifiedAssetPresenterIsAudiobook])
  {
    [(BKMinifiedFlowController *)self willChangeValueForKey:@"minifiedAssetPresenters"];
    v7 = [(NSSet *)self->_minifiedAssetPresenters mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = +[NSMutableSet set];
    }

    minifiedAssetPresenterAssetID = v9;

    currentBookAssetPresenter2 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

    if (currentBookAssetPresenter2 == audioBookAssetPresenter2)
    {
      [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:0];
    }

    [(BKMinifiedFlowController *)self setAudioBookAssetPresenter:presenterCopy];
    if (audioBookAssetPresenter)
    {
      [minifiedAssetPresenterAssetID removeObject:audioBookAssetPresenter];
      v18 = BCCurrentBookLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 136446466;
        *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
        *&v67[12] = 2112;
        *&v67[14] = audioBookAssetPresenter;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", v67, 0x16u);
      }

      [audioBookAssetPresenter minifiedAssetPresenterWillCloseAssetMinified];
      if ([(BKMinifiedFlowController *)self _legacyMinibarBehavior])
      {
        minifiedAssetPresenterMinibar = [audioBookAssetPresenter minifiedAssetPresenterMinibar];
        [minifiedAssetPresenterMinibar willMoveToParentViewController:0];

        minifiedAssetPresenterMinibar2 = [audioBookAssetPresenter minifiedAssetPresenterMinibar];
        view = [minifiedAssetPresenterMinibar2 view];
        [view removeFromSuperview];

        minifiedAssetPresenterMinibar3 = [audioBookAssetPresenter minifiedAssetPresenterMinibar];
        [minifiedAssetPresenterMinibar3 removeFromParentViewController];
      }

      [audioBookAssetPresenter minifiedAssetPresenterDidCloseAssetMinified];
    }

    currentBookAssetPresenter3 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    if (currentBookAssetPresenter3)
    {
      v24 = currentBookAssetPresenter3;
      currentBookAssetPresenter4 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
      minifiedAssetPresenterCanStayOpenInBackground = [currentBookAssetPresenter4 minifiedAssetPresenterCanStayOpenInBackground];

      if ((minifiedAssetPresenterCanStayOpenInBackground & 1) == 0)
      {
        currentBookAssetPresenter5 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [minifiedAssetPresenterAssetID removeObject:currentBookAssetPresenter5];

        v28 = BCCurrentBookLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          currentBookAssetPresenter6 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
          *v67 = 136446466;
          *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
          *&v67[12] = 2112;
          *&v67[14] = currentBookAssetPresenter6;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", v67, 0x16u);
        }

        currentBookAssetPresenter7 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [currentBookAssetPresenter7 minifiedAssetPresenterWillCloseAssetMinified];

        currentBookAssetPresenter8 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        minifiedAssetPresenterMinibar4 = [currentBookAssetPresenter8 minifiedAssetPresenterMinibar];
        [minifiedAssetPresenterMinibar4 willMoveToParentViewController:0];

        currentBookAssetPresenter9 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        minifiedAssetPresenterMinibar5 = [currentBookAssetPresenter9 minifiedAssetPresenterMinibar];
        view2 = [minifiedAssetPresenterMinibar5 view];
        [view2 removeFromSuperview];

        currentBookAssetPresenter10 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        minifiedAssetPresenterMinibar6 = [currentBookAssetPresenter10 minifiedAssetPresenterMinibar];
        [minifiedAssetPresenterMinibar6 removeFromParentViewController];

        currentBookAssetPresenter11 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [currentBookAssetPresenter11 minifiedAssetPresenterDidCloseAssetMinified];
      }
    }

    [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:presenterCopy];
    minibarContainerView = [(BKMinifiedFlowController *)self minibarContainerView];
    [minibarContainerView setHidden:0];

    if (!presenterCopy)
    {
      goto LABEL_55;
    }

    [minifiedAssetPresenterAssetID addObject:presenterCopy];
    v40 = BCCurrentBookLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 136446466;
      *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
      *&v67[12] = 2112;
      *&v67[14] = presenterCopy;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: Adding minified asset presenter %@", v67, 0x16u);
    }

    [presenterCopy minifiedAssetPresenterWillOpenAssetMinified];
    minifiedAssetPresenterMinibar7 = [presenterCopy minifiedAssetPresenterMinibar];
    if (minifiedAssetPresenterMinibar7)
    {
      v42 = +[BKAppDelegate sceneManager];
      primarySceneController = [v42 primarySceneController];
      rootBarCoordinator = [primarySceneController rootBarCoordinator];

      objc_opt_class();
      v45 = BUDynamicCast();
      v46 = v45;
      if (rootBarCoordinator)
      {
        if (v45)
        {
          miniPlayerViewController = [rootBarCoordinator miniPlayerViewController];

          if (!miniPlayerViewController)
          {
            [rootBarCoordinator dockMiniPlayer:v46];
          }
        }
      }
    }

    minifiedAssetPresenterShouldAnimateOpenClose = [presenterCopy minifiedAssetPresenterShouldAnimateOpenClose];
    if (objc_opt_respondsToSelector())
    {
      minifiedAssetPresenterToolbar = [presenterCopy minifiedAssetPresenterToolbar];
      if (minifiedAssetPresenterToolbar)
      {
        v50 = minifiedAssetPresenterToolbar;
        delegate = [(BKMinifiedFlowController *)self delegate];
        [delegate minifiedFlowControllerDock:v50];

LABEL_54:
        [presenterCopy minifiedAssetPresenterDidOpenAssetMinified];

        goto LABEL_55;
      }
    }

    selfCopy2 = self;
    if (minifiedAssetPresenterShouldAnimateOpenClose)
    {
      [(BKMinifiedFlowController *)self _setMinibarVisible:1 animated:1 completion:0];
      goto LABEL_54;
    }

LABEL_53:
    [(BKMinifiedFlowController *)selfCopy2 _layoutPresenterMinibar:presenterCopy];
    goto LABEL_54;
  }

  minifiedAssetPresenterAssetID = [presenterCopy minifiedAssetPresenterAssetID];
  minifiedAssetPresenterAssetID2 = [currentBookAssetPresenter minifiedAssetPresenterAssetID];
  if ([minifiedAssetPresenterAssetID isEqualToString:minifiedAssetPresenterAssetID2])
  {
LABEL_58:

    goto LABEL_59;
  }

  minifiedAssetPresenterIsAudiobook = [presenterCopy minifiedAssetPresenterIsAudiobook];

  if ((minifiedAssetPresenterIsAudiobook & 1) == 0)
  {
    [(BKMinifiedFlowController *)self willChangeValueForKey:@"minifiedAssetPresenters"];
    v13 = [(NSSet *)self->_minifiedAssetPresenters mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = +[NSMutableSet set];
    }

    minifiedAssetPresenterAssetID = v15;

    if (!currentBookAssetPresenter || ([currentBookAssetPresenter minifiedAssetPresenterCanStayOpenInBackground] & 1) != 0)
    {
      goto LABEL_47;
    }

    audioBookAssetPresenter3 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

    if (currentBookAssetPresenter == audioBookAssetPresenter3)
    {
      v54 = BCCurrentBookLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 136446466;
        *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
        *&v67[12] = 2112;
        *&v67[14] = currentBookAssetPresenter;
        v55 = "%{public}s: Keeping minified audio book asset presenter %@";
        goto LABEL_45;
      }
    }

    else
    {
      [minifiedAssetPresenterAssetID removeObject:currentBookAssetPresenter];
      v54 = BCCurrentBookLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 136446466;
        *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
        *&v67[12] = 2112;
        *&v67[14] = currentBookAssetPresenter;
        v55 = "%{public}s: Removing minified asset presenter %@";
LABEL_45:
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, v55, v67, 0x16u);
      }
    }

    [currentBookAssetPresenter minifiedAssetPresenterWillCloseAssetMinified];
    minifiedAssetPresenterMinibar8 = [currentBookAssetPresenter minifiedAssetPresenterMinibar];
    [minifiedAssetPresenterMinibar8 removeFromParentViewController];

    minifiedAssetPresenterMinibar9 = [currentBookAssetPresenter minifiedAssetPresenterMinibar];
    view3 = [minifiedAssetPresenterMinibar9 view];
    [view3 removeFromSuperview];

    [currentBookAssetPresenter minifiedAssetPresenterDidCloseAssetMinified];
LABEL_47:
    [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:presenterCopy, *v67, *&v67[16]];
    if (!presenterCopy)
    {
LABEL_55:
      v65 = [minifiedAssetPresenterAssetID count];
      if (v65)
      {
        v65 = [minifiedAssetPresenterAssetID copy];
      }

      minifiedAssetPresenters = self->_minifiedAssetPresenters;
      self->_minifiedAssetPresenters = v65;

      [(BKMinifiedFlowController *)self didChangeValueForKey:@"minifiedAssetPresenters"];
      minifiedAssetPresenterAssetID2 = +[NSNotificationCenter defaultCenter];
      [minifiedAssetPresenterAssetID2 postNotificationName:@"BKMnifiedPresentersUpdatedNotification" object:self];
      goto LABEL_58;
    }

    [minifiedAssetPresenterAssetID addObject:presenterCopy];
    v59 = BCCurrentBookLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 136446466;
      *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
      *&v67[12] = 2112;
      *&v67[14] = presenterCopy;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}s: Adding minified asset presenter %@", v67, 0x16u);
    }

    [presenterCopy minifiedAssetPresenterWillOpenAssetMinified];
    minifiedAssetPresenterMinibar7 = [presenterCopy minifiedAssetPresenterMinibar];
    if (minifiedAssetPresenterMinibar7)
    {
      delegate2 = [(BKMinifiedFlowController *)self delegate];
      minifiedFlowControllerMinibarContainingViewController = [delegate2 minifiedFlowControllerMinibarContainingViewController];
      [minifiedFlowControllerMinibarContainingViewController addChildViewController:minifiedAssetPresenterMinibar7];

      view4 = [minifiedAssetPresenterMinibar7 view];
      [view4 setAutoresizingMask:0];

      minibarContainerView2 = [(BKMinifiedFlowController *)self minibarContainerView];
      view5 = [minifiedAssetPresenterMinibar7 view];
      [minibarContainerView2 addSubview:view5];
    }

    selfCopy2 = self;
    goto LABEL_53;
  }

LABEL_59:
}

- (void)minifiedPresenter:(id)presenter openStorePageForStoreID:(id)d fromViewController:(id)controller
{
  controllerCopy = controller;
  dCopy = d;
  delegate = [(BKMinifiedFlowController *)self delegate];
  [delegate minifiedFlowControllerRequestShowStoreForStoreID:dCopy fromViewController:controllerCopy];
}

- (void)minifiedPresenterClose:(id)close error:(id)error isRetry:(BOOL)retry
{
  closeCopy = close;
  errorCopy = error;
  minifiedAssetPresenterAssetID = [closeCopy minifiedAssetPresenterAssetID];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006F6C8;
  v13[3] = &unk_100A04348;
  objc_copyWeak(&v16, &location);
  v11 = errorCopy;
  v14 = v11;
  v12 = minifiedAssetPresenterAssetID;
  v15 = v12;
  retryCopy = retry;
  [(BKMinifiedFlowController *)self _closeMinifiedPresenter:closeCopy animated:1 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)minifiedPresenterPause:(id)pause
{
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [audioBookAssetPresenter minifiedAssetPresenterPausePlayback];
}

- (void)_closeMinifiedPresenter:(id)presenter animated:(BOOL)animated completion:(id)completion
{
  presenterCopy = presenter;
  completionCopy = completion;
  minifiedAssetPresenterMinibar = [presenterCopy minifiedAssetPresenterMinibar];
  objc_initWeak(&location, self);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10006FD68;
  v48[3] = &unk_100A04370;
  v10 = presenterCopy;
  v49 = v10;
  selfCopy = self;
  v11 = minifiedAssetPresenterMinibar;
  v51 = v11;
  objc_copyWeak(&v52, &location);
  v12 = objc_retainBlock(v48);
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  minifiedAssetPresenterAssetID = [audioBookAssetPresenter minifiedAssetPresenterAssetID];
  minifiedAssetPresenterAssetID2 = [v10 minifiedAssetPresenterAssetID];
  v16 = [minifiedAssetPresenterAssetID isEqualToString:minifiedAssetPresenterAssetID2];

  audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

  if ((v16 & ((audioBookAssetPresenter2 == v10) | [(BKMinifiedFlowController *)self _presenterIsAudiobookPreview:v10])) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [(BKMinifiedFlowController *)self _hideToolbarAnimated:0 completion:completionCopy];
    }

    else
    {
      v27 = +[BKAppDelegate sceneManager];
      primarySceneController = [v27 primarySceneController];
      rootBarCoordinator = [primarySceneController rootBarCoordinator];
      [rootBarCoordinator undockMiniPlayer];

      v30 = objc_retainBlock(completionCopy);
      v31 = v30;
      if (v30)
      {
        (*(v30 + 2))(v30);
      }
    }

    [(BKMinifiedFlowController *)self setAudioBookAssetPresenter:0];
    currentBookAssetPresenter = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    v33 = currentBookAssetPresenter == v10;

    if (v33)
    {
      [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:0];
    }

    [(BKMinifiedFlowController *)self willChangeValueForKey:@"minifiedAssetPresenters"];
    v34 = [(NSSet *)self->_minifiedAssetPresenters mutableCopy];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = +[NSMutableSet set];
    }

    v38 = v36;

    [v38 removeObject:v10];
    v39 = BCCurrentBookLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v55 = "[BKMinifiedFlowController _closeMinifiedPresenter:animated:completion:]";
      v56 = 2112;
      v57 = v10;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", buf, 0x16u);
    }

    v40 = [v38 count];
    if (v40)
    {
      v40 = [v38 copy];
    }

    minifiedAssetPresenters = self->_minifiedAssetPresenters;
    self->_minifiedAssetPresenters = v40;

    [(BKMinifiedFlowController *)self didChangeValueForKey:@"minifiedAssetPresenters"];
    v42 = +[NSNotificationCenter defaultCenter];
    [v42 postNotificationName:@"BKMnifiedPresentersUpdatedNotification" object:self];

    goto LABEL_31;
  }

  currentBookAssetPresenter2 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  minifiedAssetPresenterAssetID3 = [currentBookAssetPresenter2 minifiedAssetPresenterAssetID];
  minifiedAssetPresenterAssetID4 = [v10 minifiedAssetPresenterAssetID];
  v21 = [minifiedAssetPresenterAssetID3 isEqualToString:minifiedAssetPresenterAssetID4];

  if (!v21)
  {
    [(BKMinifiedFlowController *)self _notifyToolbars];
    (v12[2])(v12);
    v37 = objc_retainBlock(completionCopy);
    v38 = v37;
    if (!v37)
    {
      goto LABEL_31;
    }

LABEL_30:
    (*(v37 + 2))(v37);
    goto LABEL_31;
  }

  [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:0];
  audioBookAssetPresenter3 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v23 = audioBookAssetPresenter3 == v10;

  if (!v23)
  {
    [(BKMinifiedFlowController *)self willChangeValueForKey:@"minifiedAssetPresenters"];
    v24 = [(NSSet *)self->_minifiedAssetPresenters mutableCopy];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = +[NSMutableSet set];
    }

    v43 = v26;

    [v43 removeObject:v10];
    v44 = BCCurrentBookLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v55 = "[BKMinifiedFlowController _closeMinifiedPresenter:animated:completion:]";
      v56 = 2112;
      v57 = v10;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", buf, 0x16u);
    }

    v45 = [v43 count];
    if (v45)
    {
      v45 = [v43 copy];
    }

    v46 = self->_minifiedAssetPresenters;
    self->_minifiedAssetPresenters = v45;

    [(BKMinifiedFlowController *)self didChangeValueForKey:@"minifiedAssetPresenters"];
  }

  (v12[2])(v12);
  v47 = +[NSNotificationCenter defaultCenter];
  [v47 postNotificationName:@"BKMnifiedPresentersUpdatedNotification" object:self];

  v37 = objc_retainBlock(completionCopy);
  v38 = v37;
  if (v37)
  {
    goto LABEL_30;
  }

LABEL_31:

  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

- (void)minifiedPresenterDidOpenAssetID:(id)d
{
  dCopy = d;
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  minifiedAssetPresenterAssetID = [audioBookAssetPresenter minifiedAssetPresenterAssetID];
  v6 = [minifiedAssetPresenterAssetID isEqualToString:dCopy];

  if (v6)
  {
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    [audioBookAssetPresenter2 minifiedAssetPresenterDidOpenAssetFully];

    [(BKMinifiedFlowController *)self _setMinibarVisible:0 animated:1 completion:0];
  }

  else
  {
    currentBookAssetPresenter = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    minifiedAssetPresenterAssetID2 = [currentBookAssetPresenter minifiedAssetPresenterAssetID];
    v10 = [minifiedAssetPresenterAssetID2 isEqualToString:dCopy];

    if (v10)
    {
      currentBookAssetPresenter2 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
      [currentBookAssetPresenter2 minifiedAssetPresenterDidOpenAssetFully];
    }
  }
}

- (void)minifiedPresenterDidReloadAssetViewController:(id)controller
{
  controllerCopy = controller;
  asset = [controllerCopy asset];
  assetID = [asset assetID];

  minifiedAssetPresenters = [(BKMinifiedFlowController *)self minifiedAssetPresenters];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100070000;
  v10[3] = &unk_100A04398;
  v11 = assetID;
  v12 = controllerCopy;
  v8 = controllerCopy;
  v9 = assetID;
  [minifiedAssetPresenters enumerateObjectsUsingBlock:v10];
}

- (BOOL)_assetIsPresentedOnAuxiliaryCanvas:(id)canvas
{
  canvasCopy = canvas;
  sceneHosting = [(BKMinifiedFlowController *)self sceneHosting];
  v6 = [sceneHosting sceneInfoPresentingAssetID:canvasCopy];

  objc_opt_class();
  sceneController = [v6 sceneController];
  v8 = BUDynamicCast();

  if (v8 && [v8 sceneType] != 1)
  {
    rootBarCoordinator = [v8 rootBarCoordinator];
    v9 = rootBarCoordinator == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)minifiedPresenterUpdateCurrentBookWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:0];
  v6 = objc_retainBlock(completionCopy);

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (void)minifiedPresenterDidCloseAssetID:(id)d finishedConsuming:(BOOL)consuming
{
  dCopy = d;
  if (!self->_removingHostedVC)
  {
    audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    minifiedAssetPresenterAssetID = [audioBookAssetPresenter minifiedAssetPresenterAssetID];
    v9 = [minifiedAssetPresenterAssetID isEqualToString:dCopy];

    if (v9)
    {
      audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
      [audioBookAssetPresenter2 minifiedAssetPresenterDidCloseAssetFully];

      if (!consuming)
      {
        [(BKMinifiedFlowController *)self _setMinibarVisible:1 animated:1 completion:0];
      }
    }

    currentBookAssetPresenter = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    minifiedAssetPresenterAssetID2 = [currentBookAssetPresenter minifiedAssetPresenterAssetID];
    v13 = [minifiedAssetPresenterAssetID2 isEqualToString:dCopy];

    if (v13)
    {
      audioBookAssetPresenter3 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
      currentBookAssetPresenter2 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];

      if (audioBookAssetPresenter3 == currentBookAssetPresenter2)
      {
        v16 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
      }

      else
      {
        v16 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
        if (!v16)
        {
          v16 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
          v17 = BCCurrentBookLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v52) = v16 != 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Last opened current books was not successful, Has it been opened recently?: %d", buf, 8u);
          }
        }
      }

      if ([dCopy isEqualToString:v16] && !+[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled"))
      {
        v44 = BCCurrentBookLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Closing current books presented VC. Keeping minified.", buf, 2u);
        }

        currentBookAssetPresenter3 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [currentBookAssetPresenter3 minifiedAssetPresenterDidCloseAssetFully];
      }

      else
      {
        v38 = BCCurrentBookLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v52 = v16;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Closing non-current book presented VC. Show previous current book %@.", buf, 0xCu);
        }

        currentBookAssetPresenter3 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:0];
        audioBookAssetPresenter4 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

        if (currentBookAssetPresenter3 != audioBookAssetPresenter4)
        {
          [(BKMinifiedFlowController *)self willChangeValueForKey:@"minifiedAssetPresenters"];
          v40 = [(NSSet *)self->_minifiedAssetPresenters mutableCopy];
          [v40 removeObject:currentBookAssetPresenter3];
          v41 = BCCurrentBookLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v52 = "[BKMinifiedFlowController minifiedPresenterDidCloseAssetID:finishedConsuming:]";
            v53 = 2112;
            v54 = currentBookAssetPresenter3;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", buf, 0x16u);
          }

          v42 = [v40 count];
          if (v42)
          {
            v42 = [v40 copy];
          }

          minifiedAssetPresenters = self->_minifiedAssetPresenters;
          self->_minifiedAssetPresenters = v42;

          [(BKMinifiedFlowController *)self didChangeValueForKey:@"minifiedAssetPresenters"];
        }
      }

LABEL_50:

      goto LABEL_51;
    }

    currentBookAssetPresenter4 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    if (!currentBookAssetPresenter4 || (v19 = currentBookAssetPresenter4, v20 = +[BKSceneUtilities hasMultiWindowEnabled], v19, v20))
    {
      v21 = BCCurrentBookLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = dCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Closing book but we have no current presenter. Removing presenter with matching assetID (%@).", buf, 0xCu);
      }

      [(BKMinifiedFlowController *)self willChangeValueForKey:@"minifiedAssetPresenters"];
      v22 = [(NSSet *)self->_minifiedAssetPresenters mutableCopy];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v16 = v22;
      v23 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v47;
        v45 = dCopy;
LABEL_17:
        v26 = 0;
        while (1)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v16);
          }

          v27 = *(*(&v46 + 1) + 8 * v26);
          minifiedAssetPresenterAssetID3 = [v27 minifiedAssetPresenterAssetID];
          if ([minifiedAssetPresenterAssetID3 isEqualToString:dCopy])
          {
            [(BKMinifiedFlowController *)self audioBookAssetPresenter];
            selfCopy = self;
            v31 = v30 = v16;
            minifiedAssetPresenterAssetID4 = [v31 minifiedAssetPresenterAssetID];
            v33 = [minifiedAssetPresenterAssetID4 isEqualToString:dCopy];

            v16 = v30;
            self = selfCopy;

            if (!v33)
            {
              currentBookAssetPresenter3 = v27;

              dCopy = v45;
              if (!currentBookAssetPresenter3)
              {
                goto LABEL_30;
              }

              [v16 removeObject:currentBookAssetPresenter3];
              v35 = BCCurrentBookLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v52 = "[BKMinifiedFlowController minifiedPresenterDidCloseAssetID:finishedConsuming:]";
                v53 = 2112;
                v54 = currentBookAssetPresenter3;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", buf, 0x16u);
              }

              goto LABEL_33;
            }
          }

          else
          {
          }

          v26 = v26 + 1;
          dCopy = v45;
          if (v24 == v26)
          {
            v24 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
            if (v24)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }

LABEL_30:
      v35 = BCCurrentBookLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100789D1C(dCopy, v35);
      }

      currentBookAssetPresenter3 = 0;
LABEL_33:

      v36 = [v16 count];
      if (v36)
      {
        v36 = [v16 copy];
      }

      v37 = self->_minifiedAssetPresenters;
      self->_minifiedAssetPresenters = v36;

      [(BKMinifiedFlowController *)self didChangeValueForKey:@"minifiedAssetPresenters"];
      goto LABEL_50;
    }
  }

LABEL_51:
}

- (BOOL)minifiedPresenterCanOpenPresenter:(id)presenter overCurrentPresenter:(id)currentPresenter
{
  presenterCopy = presenter;
  isAudiobook = 0;
  if (presenterCopy && currentPresenter)
  {
    currentPresenterCopy = currentPresenter;
    libraryAssetProvider = [(BKMinifiedFlowController *)self libraryAssetProvider];
    assetPresenterAssetID = [currentPresenterCopy assetPresenterAssetID];

    v11 = [libraryAssetProvider libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:assetPresenterAssetID];

    if ((![presenterCopy minifiedAssetPresenterIsAudiobook] || objc_msgSend(v11, "isAudiobook")) && objc_msgSend(presenterCopy, "minifiedAssetPresenterIsSupplementalContent"))
    {
      isAudiobook = [v11 isAudiobook];
    }

    else
    {
      isAudiobook = 0;
    }
  }

  return isAudiobook;
}

- (BOOL)_legacyMinibarBehavior
{
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v3 = audioBookAssetPresenter == 0;

  return v3;
}

- (void)_setMinibarVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if ([(BKMinifiedFlowController *)self minibarVisible]!= visibleCopy)
  {
    if (animatedCopy)
    {
      if ([(BKMinifiedFlowController *)self _legacyMinibarBehavior])
      {
        if (visibleCopy)
        {
          [(BKMinifiedFlowController *)self setMinibarVisible:1];
          audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
          [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter];
        }

        minibarContainerView = [(BKMinifiedFlowController *)self minibarContainerView];
        [minibarContainerView frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        delegate = [(BKMinifiedFlowController *)self delegate];
        [delegate minifiedFlowControllerMinibarBottomGuideWithViewController:0];
        v21 = v20;

        v22 = v14 + v21 - v14;
        if (visibleCopy)
        {
          minibarContainerView2 = [(BKMinifiedFlowController *)self minibarContainerView];
          [minibarContainerView2 setFrame:{v12, v22, v16, v18}];

          v22 = v14;
        }

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100070B4C;
        v30[3] = &unk_100A043C0;
        v30[4] = self;
        *&v30[5] = v12;
        *&v30[6] = v22;
        *&v30[7] = v16;
        *&v30[8] = v18;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100070BB8;
        v27[3] = &unk_100A043E8;
        v27[4] = self;
        v29 = visibleCopy;
        v28 = completionCopy;
        [UIView animateWithDuration:v30 animations:v27 completion:0.2];
      }

      goto LABEL_13;
    }

    [(BKMinifiedFlowController *)self setMinibarVisible:visibleCopy];
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter2];
  }

  [(BKMinifiedFlowController *)self _notifyToolbars];
  v25 = objc_retainBlock(completionCopy);
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25);
  }

LABEL_13:
}

- (void)_hideToolbarAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  if (objc_opt_respondsToSelector())
  {
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    minifiedAssetPresenterToolbar = [audioBookAssetPresenter2 minifiedAssetPresenterToolbar];

    if (!minifiedAssetPresenterToolbar)
    {
      goto LABEL_5;
    }

    delegate = [(BKMinifiedFlowController *)self delegate];
    [delegate minifiedFlowControllerUndock:minifiedAssetPresenterToolbar];

    audioBookAssetPresenter = minifiedAssetPresenterToolbar;
  }

LABEL_5:
  v9 = objc_retainBlock(completionCopy);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_layoutPresenterMinibar:(id)minibar
{
  minibarCopy = minibar;
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:minibarCopy visible:[(BKMinifiedFlowController *)self minibarVisible] viewController:0];
}

- (void)_layoutPresenterMinibar:(id)minibar visible:(BOOL)visible viewController:(id)controller
{
  visibleCopy = visible;
  minibarCopy = minibar;
  controllerCopy = controller;
  if ([(BKMinifiedFlowController *)self _legacyMinibarBehavior])
  {
    [minibarCopy minifiedAssetPresenterWillLayoutAssetMinified];
    delegate = [(BKMinifiedFlowController *)self delegate];
    minifiedFlowControllerMinibarContainingViewController = [delegate minifiedFlowControllerMinibarContainingViewController];

    traitCollection = [minifiedFlowControllerMinibarContainingViewController traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    delegate2 = [(BKMinifiedFlowController *)self delegate];
    [delegate2 minifiedFlowControllerMinibarBottomGuideWithViewController:controllerCopy];
    v15 = v14;

    minibarContainerView = [(BKMinifiedFlowController *)self minibarContainerView];
    superview = [minibarContainerView superview];
    [superview bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    [minibarCopy minifiedAssetPresenterMinibarHeight];
    v27 = v26;
    [minibarCopy minifiedAssetPresenterMinibarMaxWidth];
    v29 = v28;
    [minibarCopy minifiedAssetPresenterMinibarFloatingHorizontalOffset];
    v31 = v30;
    [minibarCopy minifiedAssetPresenterMinibarFloatingVerticalOffset];
    v48 = v32;
    [minibarCopy minifiedAssetPresenterMinibarCornerRadius];
    v49 = v33;
    if (horizontalSizeClass == 1)
    {
      v52.origin.x = v19;
      v52.origin.y = v21;
      v52.size.width = v23;
      v52.size.height = v25;
      v34 = CGRectGetWidth(v52) + v31 * -2.0;
      if (v34 >= v29)
      {
        v35 = v29;
      }

      else
      {
        v35 = v34;
      }

      if (v29 == 0.0)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      v53.origin.x = v19;
      v53.origin.y = v21;
      v53.size.width = v23;
      v53.size.height = v25;
      v31 = floor((CGRectGetWidth(v53) - v36) * 0.5);
    }

    else
    {
      v47 = v15;
      view = [minifiedFlowControllerMinibarContainingViewController view];
      [view bounds];
      v38 = CGRectGetWidth(v54) + v31 * -2.0;

      if (v38 >= v29)
      {
        v39 = v29;
      }

      else
      {
        v39 = v38;
      }

      if (v29 == 0.0)
      {
        v36 = v38;
      }

      else
      {
        v36 = v39;
      }

      if (![(BKMinifiedFlowController *)self isRTL])
      {
        v55.origin.x = v19;
        v55.origin.y = v21;
        v55.size.width = v23;
        v55.size.height = v25;
        Width = CGRectGetWidth(v55);
        v56.origin.x = 0.0;
        v56.origin.y = 0.0;
        v56.size.width = v36;
        v56.size.height = v27;
        v31 = Width - CGRectGetWidth(v56) - v31;
      }

      v15 = v47;
    }

    v41 = v15 - v27 - v48;
    minibarContainerView2 = [(BKMinifiedFlowController *)self minibarContainerView];
    layer = [minibarContainerView2 layer];
    [layer setCornerRadius:v49];

    minifiedAssetPresenterMinibar = [minibarCopy minifiedAssetPresenterMinibar];
    view2 = [minifiedAssetPresenterMinibar view];
    [view2 setFrame:{0.0, 0.0, v36, v27}];

    if (!visibleCopy)
    {
      v27 = 0.0;
    }

    minibarContainerView3 = [(BKMinifiedFlowController *)self minibarContainerView];
    [minibarContainerView3 setFrame:{v31, v41, v36, v27}];

    [minibarCopy minifiedAssetPresenterDidLayoutAssetMinified];
  }
}

- (BOOL)_shouldHideMinibar
{
  delegate = [(BKMinifiedFlowController *)self delegate];
  minifiedFlowControllerMinibarContainingViewController = [delegate minifiedFlowControllerMinibarContainingViewController];
  v4 = [minifiedFlowControllerMinibarContainingViewController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedBarVisibilityStyling];

  LOBYTE(delegate) = [v4 minifiedBarVisibilityStyleIsHidden];
  return delegate;
}

- (void)visibleViewControllersUpdatedPreTranstionAnimated:(BOOL)animated
{
  if ([(BKMinifiedFlowController *)self _shouldHideMinibar])
  {
    minibarContainerView = [(BKMinifiedFlowController *)self minibarContainerView];
    isHidden = [minibarContainerView isHidden];

    if ((isHidden & 1) == 0)
    {
      minibarContainerView2 = [(BKMinifiedFlowController *)self minibarContainerView];
      [minibarContainerView2 setHidden:1];
    }
  }
}

- (void)visibleViewControllersUpdatedPostTranstionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(BKMinifiedFlowController *)self _shouldHideMinibar])
  {
    minibarContainerView = [(BKMinifiedFlowController *)self minibarContainerView];
    isHidden = [minibarContainerView isHidden];

    if (isHidden)
    {
      minibarVisible = [(BKMinifiedFlowController *)self minibarVisible];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000712B4;
      v11[3] = &unk_100A033C8;
      v11[4] = self;
      [UIView performWithoutAnimation:v11];
      minibarContainerView2 = [(BKMinifiedFlowController *)self minibarContainerView];
      [minibarContainerView2 setHidden:0];

      [(BKMinifiedFlowController *)self _setMinibarVisible:minibarVisible animated:animatedCopy completion:0];
    }
  }

  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

  if (audioBookAssetPresenter)
  {
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter2];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100071344;
  v4[3] = &unk_100A04410;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:&stru_100A04450];
}

- (void)activeRootBarKindDidChange
{
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter];
}

- (void)contentSizeCategoryDidChange
{
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter];
}

- (void)setShouldIgnoreCurrentBookNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  self->_shouldIgnoreCurrentBookNotifications = notifications;
  v5 = BCCurrentBookLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (notificationsCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Begin ignoring current book update notifications.", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "End ignoring current book update notifications.", v9, 2u);
    }

    ignoredCurrentBookNotification = [(BKMinifiedFlowController *)self ignoredCurrentBookNotification];

    if (ignoredCurrentBookNotification)
    {
      ignoredCurrentBookNotification2 = [(BKMinifiedFlowController *)self ignoredCurrentBookNotification];
      [(BKMinifiedFlowController *)self _recentBooksProviderChanged:ignoredCurrentBookNotification2];

      [(BKMinifiedFlowController *)self setIgnoredCurrentBookNotification:0];
    }
  }
}

- (id)minifiedBarAnimatorMinibarView
{
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  minifiedAssetPresenterMinibar = [audioBookAssetPresenter minifiedAssetPresenterMinibar];
  view = [minifiedAssetPresenterMinibar view];

  return view;
}

- (id)minifiedBarAnimatorTabBarView
{
  delegate = [(BKMinifiedFlowController *)self delegate];
  minifiedFlowControllerTabBarView = [delegate minifiedFlowControllerTabBarView];

  return minifiedFlowControllerTabBarView;
}

- (void)minifiedBarAnimatePrepareTransitionToViewController:(id)controller
{
  v4 = [controller im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  [(BKMinifiedFlowController *)self setMinibarVisible:v4 == 0];
}

- (void)minifiedBarAnimatorAnimateHideIfNeededFromViewController:(id)controller
{
  controllerCopy = controller;
  minibarContainerView = [(BKMinifiedFlowController *)self minibarContainerView];
  [minibarContainerView setAlpha:0.0];

  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter visible:0 viewController:controllerCopy];
}

- (void)minifiedBarAnimatorFinalizeHideIfNeededToViewController:(id)controller
{
  controllerCopy = controller;
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter visible:0 viewController:controllerCopy];
}

- (void)minifiedBarAnimatorPrepareShowIfNeededToViewController:(id)controller
{
  controllerCopy = controller;
  minibarContainerView = [(BKMinifiedFlowController *)self minibarContainerView];
  [minibarContainerView setAlpha:1.0];

  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter visible:0 viewController:controllerCopy];
}

- (void)minifiedBarAnimatorAnimateShowIfNeededToViewController:(id)controller force:(BOOL)force
{
  controllerCopy = controller;
  v13 = [controllerCopy im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  minibarVisible = [(BKMinifiedFlowController *)self minibarVisible];
  if (!force && minibarVisible)
  {
    audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    minifiedAssetPresenterAssetID = [audioBookAssetPresenter minifiedAssetPresenterAssetID];
    assetPresenterAssetID = [v13 assetPresenterAssetID];
    v11 = [minifiedAssetPresenterAssetID isEqualToString:assetPresenterAssetID];

    force = v11 ^ 1;
  }

  audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:audioBookAssetPresenter2 visible:force viewController:controllerCopy];
}

- (void)toggleMinibarVisibility:(id)visibility
{
  v4 = [(BKMinifiedFlowController *)self minibarVisible]^ 1;

  [(BKMinifiedFlowController *)self _setMinibarVisible:v4 animated:1 completion:0];
}

- (id)_currentAssetPresenters
{
  sceneHosting = [(BKMinifiedFlowController *)self sceneHosting];
  v3 = [sceneHosting sceneHostingAllViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v3;
}

- (void)_notifyToolbars
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _currentAssetPresenters = [(BKMinifiedFlowController *)self _currentAssetPresenters];
  v3 = [_currentAssetPresenters countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(_currentAssetPresenters);
        }

        [*(*(&v7 + 1) + 8 * v6) assetPresenterUpdateToolbars];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [_currentAssetPresenters countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)shouldAnimateAssetWithAssetIDFromMinibar:(id)minibar
{
  minibarCopy = minibar;
  audioBookAssetPresenter = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  minifiedAssetPresenterAssetID = [audioBookAssetPresenter minifiedAssetPresenterAssetID];
  v7 = [minifiedAssetPresenterAssetID isEqualToString:minibarCopy];

  if (v7)
  {
    audioBookAssetPresenter2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    minifiedAssetPresenterShouldAnimateFromMinibar = [audioBookAssetPresenter2 minifiedAssetPresenterShouldAnimateFromMinibar];
  }

  else
  {
    minifiedAssetPresenterShouldAnimateFromMinibar = 0;
  }

  return minifiedAssetPresenterShouldAnimateFromMinibar;
}

- (void)_cleanLastKnownCurrentBookIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  if ([v4 length])
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100071CE0;
    v12[3] = &unk_100A04478;
    v5 = v4;
    v13 = v5;
    v14 = v15;
    [necessaryCopy enumerateObjectsUsingBlock:v12];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100071D44;
    v9[3] = &unk_100A037D8;
    v10 = v5;
    v11 = v15;
    v6 = objc_retainBlock(v9);
    if (v6)
    {
      if (+[NSThread isMainThread])
      {
        (v6[2])(v6);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100071E0C;
        block[3] = &unk_100A03920;
        v8 = v6;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    _Block_object_dispose(v15, 8);
  }
}

- (BOOL)_shouldHandleCurrentBookNotification:(id)notification
{
  notificationCopy = notification;
  delegate = [(BKMinifiedFlowController *)self delegate];
  v6 = [delegate minifiedFlowControllerPresentedAssetID:self];

  if ([(BKMinifiedFlowController *)self shouldIgnoreCurrentBookNotifications])
  {
    v7 = BCCurrentBookLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 0;
      v8 = "Ignoring recent books provider notification during book open.";
      v9 = &v16;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ([v6 length] || !objc_msgSend(notificationCopy, "length"))
  {
    v10 = [notificationCopy length];
    v7 = BCCurrentBookLog();
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v11)
      {
        v14 = 0;
        v8 = "We currently have a presented asset, skipping current book logic.";
        v9 = &v14;
        goto LABEL_12;
      }
    }

    else if (v11)
    {
      *buf = 0;
      v8 = "No asset provided so no current book set up.";
      v9 = buf;
      goto LABEL_12;
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (void)_recentBooksProviderChanged:(id)changed
{
  changedCopy = changed;
  objc_opt_class();
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"BKRecentBooksProviderAssetsKey"];
  v7 = BUDynamicCast();

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100072098;
  v10[3] = &unk_100A03620;
  objc_copyWeak(&v13, &location);
  v11 = v7;
  v12 = changedCopy;
  v8 = changedCopy;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BKSceneHosting)sceneHosting
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHosting);

  return WeakRetained;
}

- (BKMinifiedFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end