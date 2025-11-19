@interface CarCardsOverlay
- (BOOL)_shouldInterruptUpdates:(id)a3 toRunUpdates:(id)a4;
- (BOOL)hasCard:(id)a3;
- (BOOL)isCardHidden:(id)a3;
- (BOOL)isHidden;
- (CarCardViewDelegate)cardDelegate;
- (CarCardsOverlay)initWithCarSceneType:(int64_t)a3;
- (ChromeOverlayHosting)host;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (UIView)contentView;
- (id)_configurationForKey:(id)a3 createIfNeeded:(BOOL)a4;
- (void)_captureInsetContraintsFromConfigurations;
- (void)_performBatchUpdates:(id)a3 withAnimation:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_refreshPinningConstraints;
- (void)_runNextUpdate;
- (void)_setCardConfiguration:(id)a3 forKey:(id)a4;
- (void)_updateDidComplete:(id)a3;
- (void)_userDefaultsChanged:(id)a3;
- (void)_validatePendingUpdates;
- (void)cardsUpdate:(id)a3 applyConfigurations:(id)a4;
- (void)cardsUpdate:(id)a3 finalizeUpdate:(unint64_t)a4 withCardConfigurations:(id)a5;
- (void)cardsUpdate:(id)a3 prepareForUpdate:(unint64_t)a4 withCardConfigurations:(id)a5;
- (void)cardsUpdateWantsLayout:(id)a3;
- (void)configureCard:(id)a3 withBlock:(id)a4;
- (void)dealloc;
- (void)deleteCard:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dismissAllCardsAnimated:(BOOL)a3 completion:(id)a4;
- (void)hideCard:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)insertCard:(id)a3 animated:(BOOL)a4 configurationBlock:(id)a5 completion:(id)a6;
- (void)performBatchUpdates:(id)a3 withAnimation:(id)a4 completion:(id)a5;
- (void)presentAllCardsAnimated:(BOOL)a3 completion:(id)a4;
- (void)reset;
- (void)setCardDelegate:(id)a3;
- (void)setContentView:(id)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
- (void)showCard:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation CarCardsOverlay

- (void)_runNextUpdate
{
  if (!self->_pendingUpdates)
  {
    v5 = sub_10006CF98();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v15 = self;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CarCardsOverlay *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_18;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_18:

    *buf = 138543362;
    v45 = v20;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] No batched updates to run", buf, 0xCu);

    goto LABEL_11;
  }

  v3 = [(CarCardsOverlay *)self _shouldInterruptUpdates:self->_runningUpdates toRunUpdates:?];
  runningUpdates = self->_runningUpdates;
  v5 = sub_10006CF98();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (runningUpdates && (v3 & 1) == 0)
  {
    if (!v6)
    {
LABEL_11:

      return;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarCardsOverlay *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    pendingUpdates = self->_pendingUpdates;
    v14 = self->_runningUpdates;
    *buf = 138543874;
    v45 = v12;
    v46 = 2048;
    v47 = pendingUpdates;
    v48 = 2048;
    v49 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Will not run next update %p, We're still running the previous one %p and cannot interrupt", buf, 0x20u);

    goto LABEL_11;
  }

  if (!v3)
  {
    if (!v6)
    {
LABEL_36:

      goto LABEL_37;
    }

    v29 = self;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(CarCardsOverlay *)v29 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];

        goto LABEL_35;
      }
    }

    v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
LABEL_35:

    v35 = self->_pendingUpdates;
    *buf = 138543618;
    v45 = v34;
    v46 = 2048;
    v47 = v35;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Running next batch updates %p", buf, 0x16u);

    goto LABEL_36;
  }

  if (v6)
  {
    v21 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CarCardsOverlay *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_27;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_27:

    v28 = self->_pendingUpdates;
    v27 = self->_runningUpdates;
    *buf = 138543874;
    v45 = v26;
    v46 = 2048;
    v47 = v27;
    v48 = 2048;
    v49 = v28;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Interrupting current updates %p with pending updates %p", buf, 0x20u);
  }

  [(CarCardsOverlay *)self _validatePendingUpdates];
LABEL_37:
  v36 = self->_pendingUpdates;
  v37 = objc_initWeak(buf, v36);
  v38 = self->_runningUpdates;
  self->_runningUpdates = v36;

  v39 = self->_pendingUpdates;
  self->_pendingUpdates = 0;

  WeakRetained = objc_loadWeakRetained(buf);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10008F8AC;
  v42[3] = &unk_101653B38;
  v42[4] = self;
  objc_copyWeak(&v43, buf);
  [WeakRetained addCompletionBlock:v42];

  v41 = objc_loadWeakRetained(buf);
  [v41 run];

  objc_destroyWeak(&v43);
  objc_destroyWeak(buf);
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)_captureInsetContraintsFromConfigurations
{
  v3 = [(CarCardsOverlay *)self configurationsByKey];
  v4 = [v3 count];

  v5 = sub_10006CF98();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (!v6)
    {
LABEL_23:

      v33 = [(CarCardsOverlay *)self host];
      [v33 setViewportConstraints:0 forOverlay:self];

      v34 = [(CarCardsOverlay *)self host];
      [v34 setMapInsetsConstraints:0 forOverlay:self];

      v26 = [(CarCardsOverlay *)self host];
      [v26 setCollisionConstraints:0 forOverlay:self];
      goto LABEL_24;
    }

    v13 = self;
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_22;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarCardsOverlay *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_17;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_17:

LABEL_22:
    *buf = 138543362;
    v40 = v18;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] No cards from which to capture inset constraints", buf, 0xCu);

    goto LABEL_23;
  }

  if (v6)
  {
    v7 = self;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_19;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarCardsOverlay *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_19:
    v19 = [(CarCardsOverlay *)v7 configurationsByKey];
    *buf = 138543618;
    v40 = v12;
    v41 = 2048;
    v42 = [v19 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Capturing inset constraints from %lu cards", buf, 0x16u);
  }

  v20 = +[NSMutableArray array];
  v21 = +[NSMutableArray array];
  v22 = +[NSMutableArray array];
  v23 = [(CarCardsOverlay *)self configurationsByKey];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10008CCC8;
  v35[3] = &unk_101653B88;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v24 = v22;
  v25 = v21;
  v26 = v20;
  [v23 enumerateKeysAndObjectsUsingBlock:v35];

  v27 = [(CarCardsOverlay *)self host];
  v28 = [v26 copy];
  [v27 setViewportConstraints:v28 forOverlay:self];

  v29 = [(CarCardsOverlay *)self host];
  v30 = [v25 copy];
  [v29 setMapInsetsConstraints:v30 forOverlay:self];

  v31 = [(CarCardsOverlay *)self host];
  v32 = [v24 copy];
  [v31 setCollisionConstraints:v32 forOverlay:self];

LABEL_24:
}

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (void)_validatePendingUpdates
{
  if (self->_pendingUpdates && self->_runningUpdates)
  {
    v3 = sub_10006CF98();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      pendingUpdates = self->_pendingUpdates;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100D90620;
      v13[3] = &unk_101653B60;
      v13[4] = self;
      [(CarCardsUpdate *)pendingUpdates validateUpdatesUsingBlock:v13];
      return;
    }

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarCardsOverlay *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_9;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_9:

    v10 = self->_pendingUpdates;
    runningUpdates = self->_runningUpdates;
    *buf = 138543874;
    v15 = v9;
    v16 = 2048;
    v17 = v10;
    v18 = 2048;
    v19 = runningUpdates;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Validating updates %p given in-flight/completed updates %p", buf, 0x20u);

    goto LABEL_10;
  }
}

- (CarCardViewDelegate)cardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardDelegate);

  return WeakRetained;
}

- (NSArray)focusOrderSubItems
{
  v3 = [(CarCardsOverlay *)self configurationsByKey];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CarCardsOverlay *)self configurationsByKey];
    v6 = [v5 allValues];
    v7 = [v6 sortedArrayUsingComparator:&stru_101653C98];

    v8 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) cardView];
          v15 = [v14 focusOrderSubItems];
          [v8 addObjectsFromArray:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v16 = [v8 copy];
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  return v16;
}

- (NSArray)preferredFocusEnvironments
{
  v3 = [(CarCardsOverlay *)self configurationsByKey];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CarCardsOverlay *)self configurationsByKey];
    v6 = [v5 allValues];
    v7 = [v6 sortedArrayUsingComparator:&stru_101653C78];

    v8 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) cardView];
          v15 = [v14 preferredFocusEnvironments];
          [v8 addObjectsFromArray:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v16 = [v8 copy];
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  return v16;
}

- (void)cardsUpdate:(id)a3 finalizeUpdate:(unint64_t)a4 withCardConfigurations:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_10006CF98();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  v11 = self;
  if (!v11)
  {
    v16 = @"<nil>";
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CarCardsOverlay *)v11 performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

      goto LABEL_8;
    }
  }

  v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_8:

LABEL_10:
  if (a4 > 2)
  {
    v17 = @"unknown";
  }

  else
  {
    v17 = off_101653D90[a4];
  }

  *buf = 138544130;
  v34 = v16;
  v35 = 2048;
  v36 = v8;
  v37 = 2112;
  v38 = v17;
  v39 = 2048;
  v40 = [v9 count];
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] %p | Will finalize %@ update for %lu card configurations", buf, 0x2Au);

LABEL_14:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        if (a4 == 2)
        {
          v25 = [(CarCardsOverlay *)self host];
          v26 = [v25 containingViewController];

          v27 = [v23 content];
          [v27 didMoveToParentViewController:v26];
        }

        else if (!a4)
        {
          v24 = [*(*(&v28 + 1) + 8 * i) previousContent];
          [v24 removeFromParentViewController];

          [v23 setPreviousContent:0];
        }

        [v23 _stopIgnoringContainerBoundsChanges];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)cardsUpdateWantsLayout:(id)a3
{
  v4 = a3;
  v5 = sub_10006CF98();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardsOverlay *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v15 = v11;
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %p | Wants layout", buf, 0x16u);
  }

  v12 = [(CarCardsOverlay *)self contentView];
  [v12 layoutIfNeeded];

  v13 = [(CarCardsOverlay *)self configurationsByKey];
  [v13 enumerateKeysAndObjectsUsingBlock:&stru_101653C38];
}

- (void)cardsUpdate:(id)a3 applyConfigurations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10006CF98();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(CarCardsOverlay *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_8;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v57 = v14;
    v58 = 2048;
    v59 = v6;
    v60 = 2048;
    v61 = [v7 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] %p | Will apply %lu card configurations", buf, 0x20u);
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100D8F8A8;
  v53[3] = &unk_101653BF0;
  v53[4] = self;
  v15 = sub_1000282CC(v7, v53);

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100D8FA58;
  v52[3] = &unk_101653C18;
  v52[4] = self;
  v16 = [v15 sortedArrayUsingComparator:v52];

  v17 = sub_10006CF98();
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    goto LABEL_21;
  }

  v18 = self;
  if (!v18)
  {
    v23 = @"<nil>";
    goto LABEL_20;
  }

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  if (objc_opt_respondsToSelector())
  {
    v21 = [(CarCardsOverlay *)v18 performSelector:"accessibilityIdentifier"];
    v22 = v21;
    if (v21 && ![v21 isEqualToString:v20])
    {
      v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

      goto LABEL_18;
    }
  }

  v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_18:

LABEL_20:
  v24 = [v16 count];
  *buf = 138543874;
  v57 = v23;
  v58 = 2048;
  v59 = v6;
  v60 = 2048;
  v61 = v24;
  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] %p | Will apply %lu valid card configurations", buf, 0x20u);

LABEL_21:
  v43 = v6;

  v25 = [(CarCardsOverlay *)self host];
  v26 = [(CarCardsOverlay *)self host];
  v27 = [v26 layoutGuideForOverlay:self];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v28 = v16;
  v29 = [v28 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v49;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v48 + 1) + 8 * i) layoutInHost:v25 withLayoutGuide:v27];
      }

      v30 = [v28 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v30);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v33 = v28;
  v34 = [v33 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v45;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v44 + 1) + 8 * j);
        if ([v38 staysOnTop])
        {
          v39 = [v38 cardView];
          v40 = [v39 superview];
          v41 = [v38 cardView];
          [v40 bringSubviewToFront:v41];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v35);
  }

  [(CarCardsOverlay *)self _captureInsetContraintsFromConfigurations];
  v42 = [(CarCardsOverlay *)self contentView];
  [v42 setNeedsFocusUpdate];
}

- (void)cardsUpdate:(id)a3 prepareForUpdate:(unint64_t)a4 withCardConfigurations:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_10006CF98();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  v11 = self;
  if (!v11)
  {
    v16 = @"<nil>";
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CarCardsOverlay *)v11 performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

      goto LABEL_8;
    }
  }

  v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_8:

LABEL_10:
  if (a4 > 2)
  {
    v17 = @"unknown";
  }

  else
  {
    v17 = off_101653D90[a4];
  }

  *buf = 138544130;
  v38 = v16;
  v39 = 2048;
  v40 = v8;
  v41 = 2112;
  v42 = v17;
  v43 = 2048;
  v44 = [v9 count];
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] %p | Will prepare %@ update for %lu card configurations", buf, 0x2Au);

LABEL_14:
  v31 = v8;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    v22 = UIAccessibilityScreenChangedNotification;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        [v24 _startIgnoringContainerBoundsChanges];
        if (a4 == 2)
        {
          v26 = [(CarCardsOverlay *)self host];
          v27 = [v26 containingViewController];

          v28 = [v24 content];
          [v27 addChildViewController:v28];

          v29 = [v24 content];
          v30 = [v29 view];
          UIAccessibilityPostNotification(v22, v30);
        }

        else if (!a4)
        {
          v25 = [v24 content];
          [v25 willMoveToParentViewController:0];

          UIAccessibilityPostNotification(v22, 0);
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }
}

- (void)reset
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CarCardsOverlay *)self configurationsByKey];
  v5 = [v4 allValues];
  [v3 addObjectsFromArray:v5];

  v6 = [(CarCardsUpdate *)self->_pendingUpdates pendingDeletedConfigurations];
  [v3 addObjectsFromArray:v6];

  v7 = [(CarCardsUpdate *)self->_runningUpdates pendingDeletedConfigurations];
  [v3 addObjectsFromArray:v7];

  v8 = [v3 count];
  v9 = sub_10006CF98();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    v19 = self;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [(CarCardsOverlay *)v19 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

        goto LABEL_16;
      }
    }

    v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_16:

    *buf = 138543362;
    v26 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] No cards to reset", buf, 0xCu);

    goto LABEL_17;
  }

  if (v10)
  {
    v11 = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(CarCardsOverlay *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_8;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_8:

    *buf = 138543874;
    v26 = v16;
    v27 = 2048;
    v28 = [v3 count];
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Will reset %lu cards: %@", buf, 0x20u);
  }

  [v3 enumerateObjectsUsingBlock:&stru_101653BC8];
  runningUpdates = self->_runningUpdates;
  self->_runningUpdates = 0;

  pendingUpdates = self->_pendingUpdates;
  self->_pendingUpdates = 0;

  v9 = [(CarCardsOverlay *)self configurationsByKey];
  [v9 removeAllObjects];
LABEL_17:
}

- (void)_setCardConfiguration:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(CarCardsOverlay *)self configurationKeys];
    if (v9)
    {
      [v7 addObject:v6];

      v8 = [(CarCardsOverlay *)self configurationsByKey];
      [v8 setObject:v9 forKeyedSubscript:v6];
    }

    else
    {
      [v7 removeObject:v6];

      v8 = [(CarCardsOverlay *)self configurationsByKey];
      [v8 removeObjectForKey:v6];
    }
  }
}

- (id)_configurationForKey:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CarCardsOverlay *)self configurationsByKey];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8 && v4)
  {
    v8 = [(CarCardsUpdate *)self->_pendingUpdates pendingDeletedConfigurationForKey:v6];
    if (!v8)
    {
      v8 = [[CarCardConfiguration alloc] initWithKey:v6 carSceneType:self->_carSceneType];
      WeakRetained = objc_loadWeakRetained(&self->_cardDelegate);
      v10 = [(CarCardConfiguration *)v8 cardView];
      [v10 setDelegate:WeakRetained];

      [(CarCardConfiguration *)v8 _setShowContainerVisualisation:self->_showDebugVisualisation];
    }
  }

  return v8;
}

- (BOOL)_shouldInterruptUpdates:(id)a3 toRunUpdates:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 isAnimated])
  {
    v7 = [v6 isAnimated] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_updateDidComplete:(id)a3
{
  v4 = a3;
  if (self->_runningUpdates == v4)
  {
    v5 = sub_10006CF98();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      [(CarCardsOverlay *)self _validatePendingUpdates];
      runningUpdates = self->_runningUpdates;
      self->_runningUpdates = 0;

      [(CarCardsOverlay *)self _runNextUpdate];
      goto LABEL_10;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardsOverlay *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    *buf = 138543618;
    v14 = v11;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Running updates %p completed, will check for more updates", buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_performBatchUpdates:(id)a3 withAnimation:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    pendingUpdates = self->_pendingUpdates;
    if (pendingUpdates)
    {
      goto LABEL_13;
    }

    v14 = objc_alloc_init(CarCardsUpdate);
    v15 = self->_pendingUpdates;
    self->_pendingUpdates = v14;

    [(CarCardsUpdate *)self->_pendingUpdates setDelegate:self];
    v16 = sub_10006CF98();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      pendingUpdates = self->_pendingUpdates;
LABEL_13:
      v28 = [(CarCardsUpdate *)pendingUpdates incrementNestCounter];
      v29 = sub_10006CF98();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v30 = self;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v51 = v12;
      if (objc_opt_respondsToSelector())
      {
        v33 = [(CarCardsOverlay *)v30 performSelector:"accessibilityIdentifier"];
        v34 = v33;
        if (v33 && ![v33 isEqualToString:v32])
        {
          v35 = v11;
          v36 = v7;
          v37 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];

          goto LABEL_19;
        }
      }

      v35 = v11;
      v36 = v7;
      v37 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
LABEL_19:

      v38 = self->_pendingUpdates;
      *buf = 138543874;
      v55 = v37;
      v56 = 2048;
      v57 = v38;
      v58 = 2048;
      v59 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}@] Incrementing batch update %p nest counter to %lu", buf, 0x20u);

      v7 = v36;
      v11 = v35;
      v12 = v51;
LABEL_20:

      v10[2](v10);
      if (v12)
      {
        v39 = self->_pendingUpdates;
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100D91028;
        v52[3] = &unk_101653B10;
        v53 = v12;
        [(CarCardsUpdate *)v39 addCompletionBlock:v52];
      }

      v40 = [(CarCardsUpdate *)self->_pendingUpdates decrementNestCounter];
      if (!v40)
      {
        [(CarCardsUpdate *)self->_pendingUpdates setAnimated:v7];
        [(CarCardsUpdate *)self->_pendingUpdates setParentAnimation:v11];
        [(CarCardsOverlay *)self _runNextUpdate];
        goto LABEL_32;
      }

      v41 = v40;
      v42 = sub_10006CF98();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      v43 = self;
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      if (objc_opt_respondsToSelector())
      {
        v46 = [(CarCardsOverlay *)v43 performSelector:"accessibilityIdentifier"];
        v47 = v46;
        if (v46 && ![v46 isEqualToString:v45])
        {
          v48 = [NSString stringWithFormat:@"%@<%p, %@>", v45, v43, v47];

          goto LABEL_29;
        }
      }

      v48 = [NSString stringWithFormat:@"%@<%p>", v45, v43];
LABEL_29:

      v49 = self->_pendingUpdates;
      *buf = 138543874;
      v55 = v48;
      v56 = 2048;
      v57 = v49;
      v58 = 2048;
      v59 = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}@] Will not attempt run update, our updates %p are nested (%lu levels)", buf, 0x20u);

LABEL_30:
      goto LABEL_32;
    }

    v17 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v50 = v12;
      v20 = v11;
      v21 = v7;
      v22 = [(CarCardsOverlay *)v17 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v19])
      {
        v24 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v23];

        v7 = v21;
        v11 = v20;
        v12 = v50;
        goto LABEL_9;
      }

      v7 = v21;
      v11 = v20;
      v12 = v50;
    }

    v24 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_9:

    v25 = self->_pendingUpdates;
    v26 = @"NO";
    if (v7)
    {
      v26 = @"YES";
    }

    v27 = v26;
    *buf = 138543874;
    v55 = v24;
    v56 = 2048;
    v57 = v25;
    v58 = 2112;
    v59 = v27;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Creating batch updates %p (animated:%@)", buf, 0x20u);

    goto LABEL_12;
  }

LABEL_32:
}

- (void)performBatchUpdates:(id)a3 withAnimation:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  -[CarCardsOverlay _performBatchUpdates:withAnimation:animated:completion:](self, "_performBatchUpdates:withAnimation:animated:completion:", v10, v9, [v9 isAnimated], v8);
}

- (void)dismissAllCardsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CarCardsOverlay *)self configurationsByKey];
  v8 = [v7 count];

  if (v8)
  {
    v9 = sub_10006CF98();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_14:

      v21 = [(CarCardsOverlay *)self configurationsByKey];
      v22 = [v21 allValues];

      v23 = [(CarCardsOverlay *)self configurationsByKey];
      [v23 removeAllObjects];

      v24 = [(CarCardsOverlay *)self configurationKeys];
      [v24 removeAllObjects];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100D93CE4;
      v26[3] = &unk_101661A90;
      v27 = v22;
      v28 = self;
      v25 = v22;
      [(CarCardsOverlay *)self performBatchUpdates:v26 animated:v4 completion:v6];

      goto LABEL_15;
    }

    v10 = self;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_11;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarCardsOverlay *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_9;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_9:

LABEL_11:
    v16 = v15;
    v17 = [(CarCardsOverlay *)v10 configurationsByKey];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);

    v19 = @"NO";
    if (v4)
    {
      v19 = @"YES";
    }

    v20 = v19;
    *buf = 138543874;
    v30 = v15;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Will dismiss %@ cards (animated:%@)", buf, 0x20u);

    goto LABEL_14;
  }

LABEL_15:
}

- (void)showCard:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(CarCardsOverlay *)self _configurationForKey:a3 createIfNeeded:0];
  v10 = v9;
  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100D93EC0;
    v11[3] = &unk_101661B18;
    v12 = v9;
    [(CarCardsOverlay *)self performBatchUpdates:v11 animated:v5 completion:v8];
  }
}

- (void)hideCard:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(CarCardsOverlay *)self _configurationForKey:a3 createIfNeeded:0];
  v10 = v9;
  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100D93FD4;
    v11[3] = &unk_101661B18;
    v12 = v9;
    [(CarCardsOverlay *)self performBatchUpdates:v11 animated:v5 completion:v8];
  }
}

- (void)deleteCard:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(CarCardsOverlay *)self _configurationForKey:v8 createIfNeeded:0];
  if (v10)
  {
    v11 = sub_10006CF98();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_14:

      [(CarCardsOverlay *)self _setCardConfiguration:0 forKey:v8];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100D9429C;
      v20[3] = &unk_101661A90;
      v20[4] = self;
      v21 = v10;
      [(CarCardsOverlay *)self performBatchUpdates:v20 animated:v6 completion:v9];

      goto LABEL_15;
    }

    v12 = self;
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_11;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarCardsOverlay *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_9;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_9:

LABEL_11:
    v18 = @"NO";
    if (v6)
    {
      v18 = @"YES";
    }

    v19 = v18;
    *buf = 138543874;
    v23 = v17;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Will dismiss card %@ (animated:%@)", buf, 0x20u);

    goto LABEL_14;
  }

LABEL_15:
}

- (void)presentAllCardsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CarCardsOverlay *)self configurationsByKey];
  v8 = [v7 count];

  if (v8)
  {
    v9 = sub_10006CF98();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_14:

      v21 = [(CarCardsOverlay *)self configurationKeys];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100D94604;
      v27[3] = &unk_101653AE8;
      v27[4] = self;
      v22 = sub_100021DB0(v21, v27);

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100D94670;
      v24[3] = &unk_101661A90;
      v25 = v22;
      v26 = self;
      v23 = v22;
      [(CarCardsOverlay *)self performBatchUpdates:v24 animated:v4 completion:v6];

      goto LABEL_15;
    }

    v10 = self;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_11;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarCardsOverlay *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_9;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_9:

LABEL_11:
    v16 = v15;
    v17 = [(CarCardsOverlay *)v10 configurationsByKey];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);

    v19 = @"NO";
    if (v4)
    {
      v19 = @"YES";
    }

    v20 = v19;
    *buf = 138543874;
    v29 = v15;
    v30 = 2112;
    v31 = v18;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Will present %@ cards (animated:%@)", buf, 0x20u);

    goto LABEL_14;
  }

LABEL_15:
}

- (void)insertCard:(id)a3 animated:(BOOL)a4 configurationBlock:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = sub_10006CF98();
  v14 = v13;
  if (v11)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      v29 = [(CarCardsOverlay *)self _configurationForKey:v10 createIfNeeded:1];
      [(CarCardsOverlay *)self _setCardConfiguration:v29 forKey:v10];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100D94B3C;
      v30[3] = &unk_1016605F8;
      v30[4] = self;
      v31 = v29;
      v32 = v11;
      v14 = v29;
      [(CarCardsOverlay *)self performBatchUpdates:v30 animated:v8 completion:v12];

      goto LABEL_25;
    }

    v15 = self;
    if (!v15)
    {
      v20 = @"<nil>";
      goto LABEL_19;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CarCardsOverlay *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_9;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_9:

LABEL_19:
    v27 = @"NO";
    if (v8)
    {
      v27 = @"YES";
    }

    v28 = v27;
    *buf = 138543874;
    v34 = v20;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v28;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] Will present card %@ (animated:%@)", buf, 0x20u);

    goto LABEL_22;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v21 = self;
    if (!v21)
    {
      v26 = @"<nil>";
      goto LABEL_24;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CarCardsOverlay *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_17;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_17:

LABEL_24:
    *buf = 138543618;
    v34 = v26;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Tried to insert card %@ without a configuration block, aborting.", buf, 0x16u);
  }

LABEL_25:
}

- (void)configureCard:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10006CF98();
  v9 = v8;
  if (v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_20:

      v22 = [(CarCardsOverlay *)self _configurationForKey:v6 createIfNeeded:1];
      [(CarCardsOverlay *)self _setCardConfiguration:v22 forKey:v6];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100D94F00;
      v23[3] = &unk_1016605F8;
      v23[4] = self;
      v24 = v22;
      v25 = v7;
      v9 = v22;
      [(CarCardsOverlay *)self performBatchUpdates:v23 animated:0 completion:0];

      goto LABEL_23;
    }

    v10 = self;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_19;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarCardsOverlay *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_9;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_9:

LABEL_19:
    *buf = 138543618;
    v27 = v15;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Will configure card %@", buf, 0x16u);

    goto LABEL_20;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = self;
    if (!v16)
    {
      v21 = @"<nil>";
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(CarCardsOverlay *)v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_17;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_17:

LABEL_22:
    *buf = 138543618;
    v27 = v21;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Tried to configure card %@ without a configuration block, aborting.", buf, 0x16u);
  }

LABEL_23:
}

- (BOOL)isCardHidden:(id)a3
{
  v3 = [(CarCardsOverlay *)self _configurationForKey:a3 createIfNeeded:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cardView];
    v6 = [v5 isHidden];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)hasCard:(id)a3
{
  v3 = [(CarCardsOverlay *)self _configurationForKey:a3 createIfNeeded:0];
  v4 = v3 != 0;

  return v4;
}

- (void)_refreshPinningConstraints
{
  v3 = [(CarCardsOverlay *)self host];
  v4 = [(CarCardsOverlay *)self host];
  v5 = [v4 layoutGuideForOverlay:self];

  v6 = [(CarCardsOverlay *)self configurationsByKey];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D95148;
  v10[3] = &unk_101653AC0;
  v11 = v3;
  v12 = v5;
  v7 = v5;
  v8 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [(CarCardsOverlay *)self _captureInsetContraintsFromConfigurations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D95158;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  [UIView performWithoutAnimation:v9];
}

- (void)setContentView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  if (WeakRetained == v4)
  {
    goto LABEL_41;
  }

  v6 = objc_loadWeakRetained(&self->_contentView);
  if (v6)
  {
    v7 = v6;
    v8 = [(CarCardsOverlay *)self configurationsByKey];
    v9 = [v8 count];

    if (v9)
    {
      v10 = sub_10006CF98();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
LABEL_22:

        v24 = [(CarCardsOverlay *)self configurationsByKey];
        [v24 enumerateKeysAndObjectsUsingBlock:&stru_101653A98];

        v25 = [(CarCardsOverlay *)self configurationsByKey];
        [v25 removeAllObjects];

        v26 = [(CarCardsOverlay *)self configurationKeys];
        [v26 removeAllObjects];

        [(CarCardsOverlay *)self _captureInsetContraintsFromConfigurations];
        goto LABEL_23;
      }

      v11 = self;
      if (!v11)
      {
        v16 = @"<nil>";
LABEL_13:

        v17 = v16;
        v18 = [(CarCardsOverlay *)v11 contentView];
        if (!v18)
        {
          v23 = @"<nil>";
          goto LABEL_21;
        }

        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        if (objc_opt_respondsToSelector())
        {
          v21 = [v18 performSelector:"accessibilityIdentifier"];
          v22 = v21;
          if (v21 && ![v21 isEqualToString:v20])
          {
            v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

            goto LABEL_19;
          }
        }

        v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_19:

LABEL_21:
        *buf = 138543618;
        v45 = v17;
        v46 = 2112;
        v47 = v23;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Will uninstall cards from view %@", buf, 0x16u);

        goto LABEL_22;
      }

      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      if (objc_opt_respondsToSelector())
      {
        v14 = [(CarCardsOverlay *)v11 performSelector:"accessibilityIdentifier"];
        v15 = v14;
        if (v14 && ![v14 isEqualToString:v13])
        {
          v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

          goto LABEL_11;
        }
      }

      v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_11:

      goto LABEL_13;
    }
  }

LABEL_23:
  v27 = objc_storeWeak(&self->_contentView, v4);
  if (v4)
  {
    v28 = [(CarCardsOverlay *)self configurationsByKey];
    v29 = [v28 count];

    if (v29)
    {
      v30 = sub_10006CF98();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
LABEL_40:

        [(CarCardsOverlay *)self _refreshPinningConstraints];
        goto LABEL_41;
      }

      v31 = self;
      if (!v31)
      {
        v36 = @"<nil>";
LABEL_34:

        v37 = v36;
        v38 = v4;
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        if (objc_opt_respondsToSelector())
        {
          v41 = [v38 performSelector:"accessibilityIdentifier"];
          v42 = v41;
          if (v41 && ![v41 isEqualToString:v40])
          {
            v43 = [NSString stringWithFormat:@"%@<%p, %@>", v40, v38, v42];

            goto LABEL_39;
          }
        }

        v43 = [NSString stringWithFormat:@"%@<%p>", v40, v38];
LABEL_39:

        *buf = 138543618;
        v45 = v37;
        v46 = 2112;
        v47 = v43;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}@] Will install cards in view %@", buf, 0x16u);

        goto LABEL_40;
      }

      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      if (objc_opt_respondsToSelector())
      {
        v34 = [(CarCardsOverlay *)v31 performSelector:"accessibilityIdentifier"];
        v35 = v34;
        if (v34 && ![v34 isEqualToString:v33])
        {
          v36 = [NSString stringWithFormat:@"%@<%p, %@>", v33, v31, v35];

          goto LABEL_32;
        }
      }

      v36 = [NSString stringWithFormat:@"%@<%p>", v33, v31];
LABEL_32:

      goto LABEL_34;
    }
  }

LABEL_41:
}

- (void)_userDefaultsChanged:(id)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"__internal_CarVisualizeCardContainersDebug"];

  if (self->_showDebugVisualisation != v5)
  {
    self->_showDebugVisualisation = v5;
    v6 = [(CarCardsOverlay *)self configurationsByKey];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100D957B4;
    v7[3] = &unk_101653A58;
    v8 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    [(CarCardsOverlay *)self dismissAllCardsAnimated:a4 completion:0];
  }

  else
  {
    [(CarCardsOverlay *)self presentAllCardsAnimated:a4 completion:0];
  }
}

- (BOOL)isHidden
{
  v2 = [(NSMutableDictionary *)self->_configurationsByKey allValues];
  v3 = [v2 indexOfObjectPassingTest:&stru_101653A38] == 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (void)setHost:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_host, obj);
    v6 = [obj overlayContentView];
    [(CarCardsOverlay *)self setContentView:v6];
  }
}

- (void)setCardDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cardDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_cardDelegate, v4);
    v6 = sub_10006CF98();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_20:

      v20 = [(CarCardsOverlay *)self configurationsByKey];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100D95BF8;
      v21[3] = &unk_1016539F8;
      v21[4] = self;
      [v20 enumerateKeysAndObjectsUsingBlock:v21];

      goto LABEL_21;
    }

    v7 = self;
    if (!v7)
    {
      v12 = @"<nil>";
LABEL_11:

      v13 = v12;
      v14 = v4;
      if (!v14)
      {
        v19 = @"<nil>";
        goto LABEL_19;
      }

      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      if (objc_opt_respondsToSelector())
      {
        v17 = [v14 performSelector:"accessibilityIdentifier"];
        v18 = v17;
        if (v17 && ![v17 isEqualToString:v16])
        {
          v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

          goto LABEL_17;
        }
      }

      v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

LABEL_19:
      *buf = 138543618;
      v23 = v13;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Card delegate is now %@", buf, 0x16u);

      goto LABEL_20;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarCardsOverlay *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

    goto LABEL_11;
  }

LABEL_21:
}

- (CarCardsOverlay)initWithCarSceneType:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = CarCardsOverlay;
  v4 = [(CarCardsOverlay *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_carSceneType = a3;
    v6 = +[NSUserDefaults standardUserDefaults];
    v5->_showDebugVisualisation = [v6 BOOLForKey:@"__internal_CarVisualizeCardContainersDebug"];

    v7 = [NSMutableOrderedSet orderedSetWithCapacity:2];
    configurationKeys = v5->_configurationKeys;
    v5->_configurationKeys = v7;

    v9 = +[NSMutableDictionary dictionary];
    configurationsByKey = v5->_configurationsByKey;
    v5->_configurationsByKey = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v5 selector:"_userDefaultsChanged:" name:NSUserDefaultsDidChangeNotification object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(CarCardsOverlay *)self configurationsByKey];
  [v3 removeAllObjects];

  [(CarCardsOverlay *)self setHost:0];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"CarDisplayDidChangeConnectedNotification" object:0];

  v5.receiver = self;
  v5.super_class = CarCardsOverlay;
  [(CarCardsOverlay *)&v5 dealloc];
}

@end