@interface BKMinifiedFlowController
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKMinifiedFlowController)init;
- (BKMinifiedFlowControllerDelegate)delegate;
- (BKSceneHosting)sceneHosting;
- (BOOL)_assetIsPresentedOnAuxiliaryCanvas:(id)a3;
- (BOOL)_legacyMinibarBehavior;
- (BOOL)_presenterIsAudiobookPreview:(id)a3;
- (BOOL)_shouldHandleCurrentBookNotification:(id)a3;
- (BOOL)_shouldHideMinibar;
- (BOOL)minifiedPresenterCanOpenPresenter:(id)a3 overCurrentPresenter:(id)a4;
- (BOOL)shouldAnimateAssetWithAssetIDFromMinibar:(id)a3;
- (id)_currentAssetPresenters;
- (id)minifiedBarAnimatorMinibarView;
- (id)minifiedBarAnimatorTabBarView;
- (id)minifiedPresenterAssetCurrentPresenterForAssetID:(id)a3;
- (id)minifiedPresenterAssetCurrentPresenters;
- (id)minifiedPresenterAssetCurrentPresentersForAssetIDs:(id)a3;
- (void)_cleanLastKnownCurrentBookIfNecessary:(id)a3;
- (void)_closeMinifiedPresenter:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_hideToolbarAnimated:(BOOL)a3 completion:(id)a4;
- (void)_layoutPresenterMinibar:(id)a3;
- (void)_layoutPresenterMinibar:(id)a3 visible:(BOOL)a4 viewController:(id)a5;
- (void)_notifyToolbars;
- (void)_recentBooksProviderChanged:(id)a3;
- (void)_setMinibarVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)activeRootBarKindDidChange;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)minifiedBarAnimatePrepareTransitionToViewController:(id)a3;
- (void)minifiedBarAnimatorAnimateHideIfNeededFromViewController:(id)a3;
- (void)minifiedBarAnimatorAnimateShowIfNeededToViewController:(id)a3 force:(BOOL)a4;
- (void)minifiedBarAnimatorFinalizeHideIfNeededToViewController:(id)a3;
- (void)minifiedBarAnimatorPrepareShowIfNeededToViewController:(id)a3;
- (void)minifiedPresenter:(id)a3 openStorePageForStoreID:(id)a4 fromViewController:(id)a5;
- (void)minifiedPresenterAddPresenter:(id)a3;
- (void)minifiedPresenterAssetPresenterForAssetIdentifier:(id)a3 options:(id)a4 completion:(id)a5;
- (void)minifiedPresenterAssetPresenterForStoreAsset:(id)a3 options:(id)a4 completion:(id)a5;
- (void)minifiedPresenterClose:(id)a3 error:(id)a4 isRetry:(BOOL)a5;
- (void)minifiedPresenterDidCloseAssetID:(id)a3 finishedConsuming:(BOOL)a4;
- (void)minifiedPresenterDidOpenAssetID:(id)a3;
- (void)minifiedPresenterDidReloadAssetViewController:(id)a3;
- (void)minifiedPresenterOpenMinified:(id)a3;
- (void)minifiedPresenterPause:(id)a3;
- (void)minifiedPresenterPrepareToOpen:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)minifiedPresenterUpdateCurrentBookWithCompletion:(id)a3;
- (void)setShouldIgnoreCurrentBookNotifications:(BOOL)a3;
- (void)toggleMinibarVisibility:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)visibleViewControllersUpdatedPostTranstionAnimated:(BOOL)a3;
- (void)visibleViewControllersUpdatedPreTranstionAnimated:(BOOL)a3;
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
  v3 = [v2 libraryAssetProvider];

  return v3;
}

- (void)minifiedPresenterAssetPresenterForStoreAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v11 = [v10 minifiedAssetPresenterAssetID];
  v12 = [v23 id];
  v13 = [v11 isEqualToString:v12];

  if (v13 && (-[BKMinifiedFlowController audioBookAssetPresenter](self, "audioBookAssetPresenter"), v14 = objc_claimAutoreleasedReturnValue(), BUProtocolCast(), v15 = objc_claimAutoreleasedReturnValue(), v14, v15) || (-[BKMinifiedFlowController currentBookAssetPresenter](self, "currentBookAssetPresenter"), v16 = objc_claimAutoreleasedReturnValue(), [v16 minifiedAssetPresenterAssetID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "id"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v16, v19) && (-[BKMinifiedFlowController currentBookAssetPresenter](self, "currentBookAssetPresenter"), v20 = objc_claimAutoreleasedReturnValue(), BUProtocolCast(), v15 = objc_claimAutoreleasedReturnValue(), v20, v15))
  {
    v21 = objc_retainBlock(v9);
    if (v21)
    {
      v22 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
      v21[2](v21, v22);
    }
  }

  else
  {
    [(objc_class *)[(BKMinifiedFlowController *)self _storeAssetPresenterClass] minimizedPresenterWithAsset:v23 options:v8 presenter:self completion:v9];
  }
}

- (void)minifiedPresenterAssetPresenterForAssetIdentifier:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BCCurrentBookLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "minifiedPresenterAssetPresenterForAssetIdentifier assetID=%{masked.hash}@", &v32, 0xCu);
  }

  v12 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v13 = [v12 minifiedAssetPresenterAssetID];
  v14 = [v8 permanentOrTemporaryAssetID];
  v15 = [v13 isEqualToString:v14];

  if (v15 && (-[BKMinifiedFlowController audioBookAssetPresenter](self, "audioBookAssetPresenter"), v16 = objc_claimAutoreleasedReturnValue(), BUProtocolCast(), v17 = objc_claimAutoreleasedReturnValue(), v16, v17) || (-[BKMinifiedFlowController currentBookAssetPresenter](self, "currentBookAssetPresenter"), v18 = objc_claimAutoreleasedReturnValue(), [v18 minifiedAssetPresenterAssetID], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "permanentOrTemporaryAssetID"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, v19, v18, v21) && (-[BKMinifiedFlowController currentBookAssetPresenter](self, "currentBookAssetPresenter"), v22 = objc_claimAutoreleasedReturnValue(), BUProtocolCast(), v17 = objc_claimAutoreleasedReturnValue(), v22, v17))
  {
    v23 = objc_retainBlock(v10);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, v17);
    }
  }

  else
  {
    v25 = [(BKMinifiedFlowController *)self libraryAssetProvider];

    if (v25)
    {
      v26 = BCCurrentBookLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138412290;
        v33 = v8;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "minifiedPresenterAssetPresenterForAssetIdentifier assetID=%{masked.hash}@ requesting for libraryAsset", &v32, 0xCu);
      }

      v27 = [(BKMinifiedFlowController *)self libraryAssetProvider];
      v17 = [v27 libraryAssetOnMainQueueWithAssetIdentifier:v8];

      if ([v17 isAudiobook])
      {
        v28 = [(BKMinifiedFlowController *)self _audiobookMinifiedAssetPresenterClass];
      }

      else
      {
        v28 = objc_opt_class();
      }

      v30 = v28;
      v31 = BCCurrentBookLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138412290;
        v33 = v8;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "minifiedPresenterAssetPresenterForAssetIdentifier assetID=%{masked.hash}@ requesting minified asset presenter for libraryAsset", &v32, 0xCu);
      }

      [(objc_class *)v30 minimizedPresenterWithLibraryAsset:v17 options:v9 presenter:self completion:v10];
    }

    else
    {
      v29 = objc_retainBlock(v10);
      v17 = v29;
      if (v29)
      {
        (*(v29 + 2))(v29, 0);
      }
    }
  }
}

- (id)minifiedPresenterAssetCurrentPresenterForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v6 = [v5 minifiedAssetPresenterAssetID];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
LABEL_5:
    v12 = v8;
    goto LABEL_7;
  }

  v9 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  v10 = [v9 minifiedAssetPresenterAssetID];
  v11 = [v10 isEqualToString:v4];

  if (v11)
  {
    v8 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)minifiedPresenterAssetCurrentPresentersForAssetIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  if (v6)
  {
    v7 = v6;
    v8 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    v9 = [v8 minifiedAssetPresenterAssetID];
    v10 = [v4 containsObject:v9];

    if (v10)
    {
      v11 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
      [v5 addObject:v11];
    }
  }

  v12 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  if (v12)
  {
    v13 = v12;
    v14 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    v15 = [v14 minifiedAssetPresenterAssetID];
    v16 = [v4 containsObject:v15];

    if (v16)
    {
      v17 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
      [v5 addObject:v17];
    }
  }

  v18 = [v5 copy];

  return v18;
}

- (id)minifiedPresenterAssetCurrentPresenters
{
  v3 = +[NSMutableSet set];
  v4 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

  if (v4)
  {
    v5 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    [v3 addObject:v5];
  }

  v6 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];

  if (v6)
  {
    v7 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)minifiedPresenterPrepareToOpen:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = [(BKMinifiedFlowController *)self minifiedAssetPresenters];
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v11)
  {
    v12 = *v46;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        if (([v14 minifiedAssetPresenterIsAudiobook] & 1) == 0)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([(BKMinifiedFlowController *)self _presenterIsAudiobookPreview:v8])
  {
    v15 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    if (v15)
    {
      v16 = v15;
      v17 = [v8 minifiedAssetPresenterIsAudiobook];

      if (v17)
      {
        v18 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
        v19 = [v18 minifiedAssetPresenterAssetID];
        v20 = [v8 minifiedAssetPresenterAssetID];
        v21 = [v19 isEqual:v20];

        if (v21)
        {
          v22 = +[BKAppDelegate sceneManager];
          v23 = [v22 primarySceneController];
          v24 = [v23 rootBarCoordinator];

          [v24 presentFullPlayerWithCompletion:0];
        }

        else
        {
          v38 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

          if (v38 == v8)
          {
            goto LABEL_19;
          }

          v24 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
          [v24 minifiedAssetPresenterPausePlayback];
        }

LABEL_19:
        v27 = objc_retainBlock(v9);
        v28 = v27;
        if (v27)
        {
          (*(v27 + 2))(v27);
        }

        goto LABEL_21;
      }
    }
  }

  v25 = [v11 minifiedAssetPresenterAssetID];
  v26 = [v8 minifiedAssetPresenterAssetID];
  if (![v25 isEqualToString:v26] || (objc_msgSend(v11, "minifiedAssetPresenterCanStayOpenInBackground") & 1) != 0)
  {

    goto LABEL_19;
  }

  v29 = [v8 minifiedAssetPresenterIsAudiobook];

  if (v29)
  {
    goto LABEL_19;
  }

  v39 = v6;
  v40 = v9;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = [(BKMinifiedFlowController *)self minifiedAssetPresenters];
  v31 = [v30 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v41 + 1) + 8 * j) minifiedAssetPresenterAssetID];
        v36 = [v8 minifiedAssetPresenterAssetID];
        v37 = [v35 isEqualToString:v36];

        if (v37)
        {

          v9 = v40;
          goto LABEL_19;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v28 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  v9 = v40;
  [(BKMinifiedFlowController *)self _closeMinifiedPresenter:v28 animated:v39 completion:v40];
LABEL_21:
}

- (BOOL)_presenterIsAudiobookPreview:(id)a3
{
  v4 = a3;
  [(BKMinifiedFlowController *)self _storeAssetPresenterClass];
  LOBYTE(self) = objc_opt_isKindOfClass();

  return self & 1;
}

- (void)minifiedPresenterOpenMinified:(id)a3
{
  v4 = a3;
  -[BKMinifiedFlowController setMinibarVisible:](self, "setMinibarVisible:", [v4 minifiedAssetPresenterShouldAnimateOpenClose] ^ 1);
  [(BKMinifiedFlowController *)self minifiedPresenterOpen:v4];
}

- (void)minifiedPresenterAddPresenter:(id)a3
{
  v4 = a3;
  v5 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v6 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  if (v5 != v4 && [v4 minifiedAssetPresenterIsAudiobook])
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

    v10 = v9;

    v16 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    v17 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

    if (v16 == v17)
    {
      [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:0];
    }

    [(BKMinifiedFlowController *)self setAudioBookAssetPresenter:v4];
    if (v5)
    {
      [v10 removeObject:v5];
      v18 = BCCurrentBookLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 136446466;
        *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
        *&v67[12] = 2112;
        *&v67[14] = v5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", v67, 0x16u);
      }

      [v5 minifiedAssetPresenterWillCloseAssetMinified];
      if ([(BKMinifiedFlowController *)self _legacyMinibarBehavior])
      {
        v19 = [v5 minifiedAssetPresenterMinibar];
        [v19 willMoveToParentViewController:0];

        v20 = [v5 minifiedAssetPresenterMinibar];
        v21 = [v20 view];
        [v21 removeFromSuperview];

        v22 = [v5 minifiedAssetPresenterMinibar];
        [v22 removeFromParentViewController];
      }

      [v5 minifiedAssetPresenterDidCloseAssetMinified];
    }

    v23 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    if (v23)
    {
      v24 = v23;
      v25 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
      v26 = [v25 minifiedAssetPresenterCanStayOpenInBackground];

      if ((v26 & 1) == 0)
      {
        v27 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [v10 removeObject:v27];

        v28 = BCCurrentBookLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
          *v67 = 136446466;
          *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
          *&v67[12] = 2112;
          *&v67[14] = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", v67, 0x16u);
        }

        v30 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [v30 minifiedAssetPresenterWillCloseAssetMinified];

        v31 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        v32 = [v31 minifiedAssetPresenterMinibar];
        [v32 willMoveToParentViewController:0];

        v33 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        v34 = [v33 minifiedAssetPresenterMinibar];
        v35 = [v34 view];
        [v35 removeFromSuperview];

        v36 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        v37 = [v36 minifiedAssetPresenterMinibar];
        [v37 removeFromParentViewController];

        v38 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [v38 minifiedAssetPresenterDidCloseAssetMinified];
      }
    }

    [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:v4];
    v39 = [(BKMinifiedFlowController *)self minibarContainerView];
    [v39 setHidden:0];

    if (!v4)
    {
      goto LABEL_55;
    }

    [v10 addObject:v4];
    v40 = BCCurrentBookLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 136446466;
      *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
      *&v67[12] = 2112;
      *&v67[14] = v4;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: Adding minified asset presenter %@", v67, 0x16u);
    }

    [v4 minifiedAssetPresenterWillOpenAssetMinified];
    v41 = [v4 minifiedAssetPresenterMinibar];
    if (v41)
    {
      v42 = +[BKAppDelegate sceneManager];
      v43 = [v42 primarySceneController];
      v44 = [v43 rootBarCoordinator];

      objc_opt_class();
      v45 = BUDynamicCast();
      v46 = v45;
      if (v44)
      {
        if (v45)
        {
          v47 = [v44 miniPlayerViewController];

          if (!v47)
          {
            [v44 dockMiniPlayer:v46];
          }
        }
      }
    }

    v48 = [v4 minifiedAssetPresenterShouldAnimateOpenClose];
    if (objc_opt_respondsToSelector())
    {
      v49 = [v4 minifiedAssetPresenterToolbar];
      if (v49)
      {
        v50 = v49;
        v51 = [(BKMinifiedFlowController *)self delegate];
        [v51 minifiedFlowControllerDock:v50];

LABEL_54:
        [v4 minifiedAssetPresenterDidOpenAssetMinified];

        goto LABEL_55;
      }
    }

    v52 = self;
    if (v48)
    {
      [(BKMinifiedFlowController *)self _setMinibarVisible:1 animated:1 completion:0];
      goto LABEL_54;
    }

LABEL_53:
    [(BKMinifiedFlowController *)v52 _layoutPresenterMinibar:v4];
    goto LABEL_54;
  }

  v10 = [v4 minifiedAssetPresenterAssetID];
  v11 = [v6 minifiedAssetPresenterAssetID];
  if ([v10 isEqualToString:v11])
  {
LABEL_58:

    goto LABEL_59;
  }

  v12 = [v4 minifiedAssetPresenterIsAudiobook];

  if ((v12 & 1) == 0)
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

    v10 = v15;

    if (!v6 || ([v6 minifiedAssetPresenterCanStayOpenInBackground] & 1) != 0)
    {
      goto LABEL_47;
    }

    v53 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

    if (v6 == v53)
    {
      v54 = BCCurrentBookLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 136446466;
        *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
        *&v67[12] = 2112;
        *&v67[14] = v6;
        v55 = "%{public}s: Keeping minified audio book asset presenter %@";
        goto LABEL_45;
      }
    }

    else
    {
      [v10 removeObject:v6];
      v54 = BCCurrentBookLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 136446466;
        *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
        *&v67[12] = 2112;
        *&v67[14] = v6;
        v55 = "%{public}s: Removing minified asset presenter %@";
LABEL_45:
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, v55, v67, 0x16u);
      }
    }

    [v6 minifiedAssetPresenterWillCloseAssetMinified];
    v56 = [v6 minifiedAssetPresenterMinibar];
    [v56 removeFromParentViewController];

    v57 = [v6 minifiedAssetPresenterMinibar];
    v58 = [v57 view];
    [v58 removeFromSuperview];

    [v6 minifiedAssetPresenterDidCloseAssetMinified];
LABEL_47:
    [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:v4, *v67, *&v67[16]];
    if (!v4)
    {
LABEL_55:
      v65 = [v10 count];
      if (v65)
      {
        v65 = [v10 copy];
      }

      minifiedAssetPresenters = self->_minifiedAssetPresenters;
      self->_minifiedAssetPresenters = v65;

      [(BKMinifiedFlowController *)self didChangeValueForKey:@"minifiedAssetPresenters"];
      v11 = +[NSNotificationCenter defaultCenter];
      [v11 postNotificationName:@"BKMnifiedPresentersUpdatedNotification" object:self];
      goto LABEL_58;
    }

    [v10 addObject:v4];
    v59 = BCCurrentBookLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 136446466;
      *&v67[4] = "[BKMinifiedFlowController minifiedPresenterAddPresenter:]";
      *&v67[12] = 2112;
      *&v67[14] = v4;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}s: Adding minified asset presenter %@", v67, 0x16u);
    }

    [v4 minifiedAssetPresenterWillOpenAssetMinified];
    v41 = [v4 minifiedAssetPresenterMinibar];
    if (v41)
    {
      v60 = [(BKMinifiedFlowController *)self delegate];
      v61 = [v60 minifiedFlowControllerMinibarContainingViewController];
      [v61 addChildViewController:v41];

      v62 = [v41 view];
      [v62 setAutoresizingMask:0];

      v63 = [(BKMinifiedFlowController *)self minibarContainerView];
      v64 = [v41 view];
      [v63 addSubview:v64];
    }

    v52 = self;
    goto LABEL_53;
  }

LABEL_59:
}

- (void)minifiedPresenter:(id)a3 openStorePageForStoreID:(id)a4 fromViewController:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(BKMinifiedFlowController *)self delegate];
  [v9 minifiedFlowControllerRequestShowStoreForStoreID:v8 fromViewController:v7];
}

- (void)minifiedPresenterClose:(id)a3 error:(id)a4 isRetry:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 minifiedAssetPresenterAssetID];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006F6C8;
  v13[3] = &unk_100A04348;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  v17 = a5;
  [(BKMinifiedFlowController *)self _closeMinifiedPresenter:v8 animated:1 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)minifiedPresenterPause:(id)a3
{
  v3 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [v3 minifiedAssetPresenterPausePlayback];
}

- (void)_closeMinifiedPresenter:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 minifiedAssetPresenterMinibar];
  objc_initWeak(&location, self);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10006FD68;
  v48[3] = &unk_100A04370;
  v10 = v7;
  v49 = v10;
  v50 = self;
  v11 = v9;
  v51 = v11;
  objc_copyWeak(&v52, &location);
  v12 = objc_retainBlock(v48);
  v13 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v14 = [v13 minifiedAssetPresenterAssetID];
  v15 = [v10 minifiedAssetPresenterAssetID];
  v16 = [v14 isEqualToString:v15];

  v17 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

  if ((v16 & ((v17 == v10) | [(BKMinifiedFlowController *)self _presenterIsAudiobookPreview:v10])) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [(BKMinifiedFlowController *)self _hideToolbarAnimated:0 completion:v8];
    }

    else
    {
      v27 = +[BKAppDelegate sceneManager];
      v28 = [v27 primarySceneController];
      v29 = [v28 rootBarCoordinator];
      [v29 undockMiniPlayer];

      v30 = objc_retainBlock(v8);
      v31 = v30;
      if (v30)
      {
        (*(v30 + 2))(v30);
      }
    }

    [(BKMinifiedFlowController *)self setAudioBookAssetPresenter:0];
    v32 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    v33 = v32 == v10;

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

  v18 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
  v19 = [v18 minifiedAssetPresenterAssetID];
  v20 = [v10 minifiedAssetPresenterAssetID];
  v21 = [v19 isEqualToString:v20];

  if (!v21)
  {
    [(BKMinifiedFlowController *)self _notifyToolbars];
    (v12[2])(v12);
    v37 = objc_retainBlock(v8);
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
  v22 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v23 = v22 == v10;

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

  v37 = objc_retainBlock(v8);
  v38 = v37;
  if (v37)
  {
    goto LABEL_30;
  }

LABEL_31:

  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

- (void)minifiedPresenterDidOpenAssetID:(id)a3
{
  v12 = a3;
  v4 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v5 = [v4 minifiedAssetPresenterAssetID];
  v6 = [v5 isEqualToString:v12];

  if (v6)
  {
    v7 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    [v7 minifiedAssetPresenterDidOpenAssetFully];

    [(BKMinifiedFlowController *)self _setMinibarVisible:0 animated:1 completion:0];
  }

  else
  {
    v8 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    v9 = [v8 minifiedAssetPresenterAssetID];
    v10 = [v9 isEqualToString:v12];

    if (v10)
    {
      v11 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
      [v11 minifiedAssetPresenterDidOpenAssetFully];
    }
  }
}

- (void)minifiedPresenterDidReloadAssetViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v5 assetID];

  v7 = [(BKMinifiedFlowController *)self minifiedAssetPresenters];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100070000;
  v10[3] = &unk_100A04398;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];
}

- (BOOL)_assetIsPresentedOnAuxiliaryCanvas:(id)a3
{
  v4 = a3;
  v5 = [(BKMinifiedFlowController *)self sceneHosting];
  v6 = [v5 sceneInfoPresentingAssetID:v4];

  objc_opt_class();
  v7 = [v6 sceneController];
  v8 = BUDynamicCast();

  if (v8 && [v8 sceneType] != 1)
  {
    v10 = [v8 rootBarCoordinator];
    v9 = v10 == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)minifiedPresenterUpdateCurrentBookWithCompletion:(id)a3
{
  v4 = a3;
  [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:0];
  v6 = objc_retainBlock(v4);

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (void)minifiedPresenterDidCloseAssetID:(id)a3 finishedConsuming:(BOOL)a4
{
  v6 = a3;
  if (!self->_removingHostedVC)
  {
    v7 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    v8 = [v7 minifiedAssetPresenterAssetID];
    v9 = [v8 isEqualToString:v6];

    if (v9)
    {
      v10 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
      [v10 minifiedAssetPresenterDidCloseAssetFully];

      if (!a4)
      {
        [(BKMinifiedFlowController *)self _setMinibarVisible:1 animated:1 completion:0];
      }
    }

    v11 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    v12 = [v11 minifiedAssetPresenterAssetID];
    v13 = [v12 isEqualToString:v6];

    if (v13)
    {
      v14 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
      v15 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];

      if (v14 == v15)
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

      if ([v6 isEqualToString:v16] && !+[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled"))
      {
        v44 = BCCurrentBookLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Closing current books presented VC. Keeping minified.", buf, 2u);
        }

        v34 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [v34 minifiedAssetPresenterDidCloseAssetFully];
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

        v34 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
        [(BKMinifiedFlowController *)self setCurrentBookAssetPresenter:0];
        v39 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

        if (v34 != v39)
        {
          [(BKMinifiedFlowController *)self willChangeValueForKey:@"minifiedAssetPresenters"];
          v40 = [(NSSet *)self->_minifiedAssetPresenters mutableCopy];
          [v40 removeObject:v34];
          v41 = BCCurrentBookLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v52 = "[BKMinifiedFlowController minifiedPresenterDidCloseAssetID:finishedConsuming:]";
            v53 = 2112;
            v54 = v34;
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

    v18 = [(BKMinifiedFlowController *)self currentBookAssetPresenter];
    if (!v18 || (v19 = v18, v20 = +[BKSceneUtilities hasMultiWindowEnabled], v19, v20))
    {
      v21 = BCCurrentBookLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = v6;
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
        v45 = v6;
LABEL_17:
        v26 = 0;
        while (1)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v16);
          }

          v27 = *(*(&v46 + 1) + 8 * v26);
          v28 = [v27 minifiedAssetPresenterAssetID];
          if ([v28 isEqualToString:v6])
          {
            [(BKMinifiedFlowController *)self audioBookAssetPresenter];
            v29 = self;
            v31 = v30 = v16;
            v32 = [v31 minifiedAssetPresenterAssetID];
            v33 = [v32 isEqualToString:v6];

            v16 = v30;
            self = v29;

            if (!v33)
            {
              v34 = v27;

              v6 = v45;
              if (!v34)
              {
                goto LABEL_30;
              }

              [v16 removeObject:v34];
              v35 = BCCurrentBookLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v52 = "[BKMinifiedFlowController minifiedPresenterDidCloseAssetID:finishedConsuming:]";
                v53 = 2112;
                v54 = v34;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing minified asset presenter %@", buf, 0x16u);
              }

              goto LABEL_33;
            }
          }

          else
          {
          }

          v26 = v26 + 1;
          v6 = v45;
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
        sub_100789D1C(v6, v35);
      }

      v34 = 0;
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

- (BOOL)minifiedPresenterCanOpenPresenter:(id)a3 overCurrentPresenter:(id)a4
{
  v6 = a3;
  v7 = 0;
  if (v6 && a4)
  {
    v8 = a4;
    v9 = [(BKMinifiedFlowController *)self libraryAssetProvider];
    v10 = [v8 assetPresenterAssetID];

    v11 = [v9 libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:v10];

    if ((![v6 minifiedAssetPresenterIsAudiobook] || objc_msgSend(v11, "isAudiobook")) && objc_msgSend(v6, "minifiedAssetPresenterIsSupplementalContent"))
    {
      v7 = [v11 isAudiobook];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_legacyMinibarBehavior
{
  v2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v3 = v2 == 0;

  return v3;
}

- (void)_setMinibarVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if ([(BKMinifiedFlowController *)self minibarVisible]!= v6)
  {
    if (v5)
    {
      if ([(BKMinifiedFlowController *)self _legacyMinibarBehavior])
      {
        if (v6)
        {
          [(BKMinifiedFlowController *)self setMinibarVisible:1];
          v9 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
          [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v9];
        }

        v10 = [(BKMinifiedFlowController *)self minibarContainerView];
        [v10 frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v19 = [(BKMinifiedFlowController *)self delegate];
        [v19 minifiedFlowControllerMinibarBottomGuideWithViewController:0];
        v21 = v20;

        v22 = v14 + v21 - v14;
        if (v6)
        {
          v23 = [(BKMinifiedFlowController *)self minibarContainerView];
          [v23 setFrame:{v12, v22, v16, v18}];

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
        v29 = v6;
        v28 = v8;
        [UIView animateWithDuration:v30 animations:v27 completion:0.2];
      }

      goto LABEL_13;
    }

    [(BKMinifiedFlowController *)self setMinibarVisible:v6];
    v24 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v24];
  }

  [(BKMinifiedFlowController *)self _notifyToolbars];
  v25 = objc_retainBlock(v8);
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25);
  }

LABEL_13:
}

- (void)_hideToolbarAnimated:(BOOL)a3 completion:(id)a4
{
  v11 = a4;
  v5 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    v7 = [v6 minifiedAssetPresenterToolbar];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [(BKMinifiedFlowController *)self delegate];
    [v8 minifiedFlowControllerUndock:v7];

    v5 = v7;
  }

LABEL_5:
  v9 = objc_retainBlock(v11);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_layoutPresenterMinibar:(id)a3
{
  v4 = a3;
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v4 visible:[(BKMinifiedFlowController *)self minibarVisible] viewController:0];
}

- (void)_layoutPresenterMinibar:(id)a3 visible:(BOOL)a4 viewController:(id)a5
{
  v6 = a4;
  v50 = a3;
  v8 = a5;
  if ([(BKMinifiedFlowController *)self _legacyMinibarBehavior])
  {
    [v50 minifiedAssetPresenterWillLayoutAssetMinified];
    v9 = [(BKMinifiedFlowController *)self delegate];
    v10 = [v9 minifiedFlowControllerMinibarContainingViewController];

    v11 = [v10 traitCollection];
    v12 = [v11 horizontalSizeClass];

    v13 = [(BKMinifiedFlowController *)self delegate];
    [v13 minifiedFlowControllerMinibarBottomGuideWithViewController:v8];
    v15 = v14;

    v16 = [(BKMinifiedFlowController *)self minibarContainerView];
    v17 = [v16 superview];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    [v50 minifiedAssetPresenterMinibarHeight];
    v27 = v26;
    [v50 minifiedAssetPresenterMinibarMaxWidth];
    v29 = v28;
    [v50 minifiedAssetPresenterMinibarFloatingHorizontalOffset];
    v31 = v30;
    [v50 minifiedAssetPresenterMinibarFloatingVerticalOffset];
    v48 = v32;
    [v50 minifiedAssetPresenterMinibarCornerRadius];
    v49 = v33;
    if (v12 == 1)
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
      v37 = [v10 view];
      [v37 bounds];
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
    v42 = [(BKMinifiedFlowController *)self minibarContainerView];
    v43 = [v42 layer];
    [v43 setCornerRadius:v49];

    v44 = [v50 minifiedAssetPresenterMinibar];
    v45 = [v44 view];
    [v45 setFrame:{0.0, 0.0, v36, v27}];

    if (!v6)
    {
      v27 = 0.0;
    }

    v46 = [(BKMinifiedFlowController *)self minibarContainerView];
    [v46 setFrame:{v31, v41, v36, v27}];

    [v50 minifiedAssetPresenterDidLayoutAssetMinified];
  }
}

- (BOOL)_shouldHideMinibar
{
  v2 = [(BKMinifiedFlowController *)self delegate];
  v3 = [v2 minifiedFlowControllerMinibarContainingViewController];
  v4 = [v3 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedBarVisibilityStyling];

  LOBYTE(v2) = [v4 minifiedBarVisibilityStyleIsHidden];
  return v2;
}

- (void)visibleViewControllersUpdatedPreTranstionAnimated:(BOOL)a3
{
  if ([(BKMinifiedFlowController *)self _shouldHideMinibar])
  {
    v4 = [(BKMinifiedFlowController *)self minibarContainerView];
    v5 = [v4 isHidden];

    if ((v5 & 1) == 0)
    {
      v6 = [(BKMinifiedFlowController *)self minibarContainerView];
      [v6 setHidden:1];
    }
  }
}

- (void)visibleViewControllersUpdatedPostTranstionAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(BKMinifiedFlowController *)self _shouldHideMinibar])
  {
    v5 = [(BKMinifiedFlowController *)self minibarContainerView];
    v6 = [v5 isHidden];

    if (v6)
    {
      v7 = [(BKMinifiedFlowController *)self minibarVisible];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000712B4;
      v11[3] = &unk_100A033C8;
      v11[4] = self;
      [UIView performWithoutAnimation:v11];
      v8 = [(BKMinifiedFlowController *)self minibarContainerView];
      [v8 setHidden:0];

      [(BKMinifiedFlowController *)self _setMinibarVisible:v7 animated:v3 completion:0];
    }
  }

  v9 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];

  if (v9)
  {
    v10 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v10];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100071344;
  v4[3] = &unk_100A04410;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:&stru_100A04450];
}

- (void)activeRootBarKindDidChange
{
  v3 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v3];
}

- (void)contentSizeCategoryDidChange
{
  v3 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v3];
}

- (void)setShouldIgnoreCurrentBookNotifications:(BOOL)a3
{
  v3 = a3;
  self->_shouldIgnoreCurrentBookNotifications = a3;
  v5 = BCCurrentBookLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
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

    v7 = [(BKMinifiedFlowController *)self ignoredCurrentBookNotification];

    if (v7)
    {
      v8 = [(BKMinifiedFlowController *)self ignoredCurrentBookNotification];
      [(BKMinifiedFlowController *)self _recentBooksProviderChanged:v8];

      [(BKMinifiedFlowController *)self setIgnoredCurrentBookNotification:0];
    }
  }
}

- (id)minifiedBarAnimatorMinibarView
{
  v2 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v3 = [v2 minifiedAssetPresenterMinibar];
  v4 = [v3 view];

  return v4;
}

- (id)minifiedBarAnimatorTabBarView
{
  v2 = [(BKMinifiedFlowController *)self delegate];
  v3 = [v2 minifiedFlowControllerTabBarView];

  return v3;
}

- (void)minifiedBarAnimatePrepareTransitionToViewController:(id)a3
{
  v4 = [a3 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  [(BKMinifiedFlowController *)self setMinibarVisible:v4 == 0];
}

- (void)minifiedBarAnimatorAnimateHideIfNeededFromViewController:(id)a3
{
  v4 = a3;
  v5 = [(BKMinifiedFlowController *)self minibarContainerView];
  [v5 setAlpha:0.0];

  v6 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v6 visible:0 viewController:v4];
}

- (void)minifiedBarAnimatorFinalizeHideIfNeededToViewController:(id)a3
{
  v4 = a3;
  v5 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v5 visible:0 viewController:v4];
}

- (void)minifiedBarAnimatorPrepareShowIfNeededToViewController:(id)a3
{
  v4 = a3;
  v5 = [(BKMinifiedFlowController *)self minibarContainerView];
  [v5 setAlpha:1.0];

  v6 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v6 visible:0 viewController:v4];
}

- (void)minifiedBarAnimatorAnimateShowIfNeededToViewController:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  v13 = [v6 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  v7 = [(BKMinifiedFlowController *)self minibarVisible];
  if (!a4 && v7)
  {
    v8 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    v9 = [v8 minifiedAssetPresenterAssetID];
    v10 = [v13 assetPresenterAssetID];
    v11 = [v9 isEqualToString:v10];

    a4 = v11 ^ 1;
  }

  v12 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  [(BKMinifiedFlowController *)self _layoutPresenterMinibar:v12 visible:a4 viewController:v6];
}

- (void)toggleMinibarVisibility:(id)a3
{
  v4 = [(BKMinifiedFlowController *)self minibarVisible]^ 1;

  [(BKMinifiedFlowController *)self _setMinibarVisible:v4 animated:1 completion:0];
}

- (id)_currentAssetPresenters
{
  v2 = [(BKMinifiedFlowController *)self sceneHosting];
  v3 = [v2 sceneHostingAllViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v3;
}

- (void)_notifyToolbars
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(BKMinifiedFlowController *)self _currentAssetPresenters];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) assetPresenterUpdateToolbars];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)shouldAnimateAssetWithAssetIDFromMinibar:(id)a3
{
  v4 = a3;
  v5 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
  v6 = [v5 minifiedAssetPresenterAssetID];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [(BKMinifiedFlowController *)self audioBookAssetPresenter];
    v9 = [v8 minifiedAssetPresenterShouldAnimateFromMinibar];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_cleanLastKnownCurrentBookIfNecessary:(id)a3
{
  v3 = a3;
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
    [v3 enumerateObjectsUsingBlock:v12];
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

- (BOOL)_shouldHandleCurrentBookNotification:(id)a3
{
  v4 = a3;
  v5 = [(BKMinifiedFlowController *)self delegate];
  v6 = [v5 minifiedFlowControllerPresentedAssetID:self];

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

  if ([v6 length] || !objc_msgSend(v4, "length"))
  {
    v10 = [v4 length];
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

- (void)_recentBooksProviderChanged:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"BKRecentBooksProviderAssetsKey"];
  v7 = BUDynamicCast();

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100072098;
  v10[3] = &unk_100A03620;
  objc_copyWeak(&v13, &location);
  v11 = v7;
  v12 = v4;
  v8 = v4;
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