@interface CarCardsOverlay
- (BOOL)_shouldInterruptUpdates:(id)updates toRunUpdates:(id)runUpdates;
- (BOOL)hasCard:(id)card;
- (BOOL)isCardHidden:(id)hidden;
- (BOOL)isHidden;
- (CarCardViewDelegate)cardDelegate;
- (CarCardsOverlay)initWithCarSceneType:(int64_t)type;
- (ChromeOverlayHosting)host;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (UIView)contentView;
- (id)_configurationForKey:(id)key createIfNeeded:(BOOL)needed;
- (void)_captureInsetContraintsFromConfigurations;
- (void)_performBatchUpdates:(id)updates withAnimation:(id)animation animated:(BOOL)animated completion:(id)completion;
- (void)_refreshPinningConstraints;
- (void)_runNextUpdate;
- (void)_setCardConfiguration:(id)configuration forKey:(id)key;
- (void)_updateDidComplete:(id)complete;
- (void)_userDefaultsChanged:(id)changed;
- (void)_validatePendingUpdates;
- (void)cardsUpdate:(id)update applyConfigurations:(id)configurations;
- (void)cardsUpdate:(id)update finalizeUpdate:(unint64_t)finalizeUpdate withCardConfigurations:(id)configurations;
- (void)cardsUpdate:(id)update prepareForUpdate:(unint64_t)forUpdate withCardConfigurations:(id)configurations;
- (void)cardsUpdateWantsLayout:(id)layout;
- (void)configureCard:(id)card withBlock:(id)block;
- (void)dealloc;
- (void)deleteCard:(id)card animated:(BOOL)animated completion:(id)completion;
- (void)dismissAllCardsAnimated:(BOOL)animated completion:(id)completion;
- (void)hideCard:(id)card animated:(BOOL)animated completion:(id)completion;
- (void)insertCard:(id)card animated:(BOOL)animated configurationBlock:(id)block completion:(id)completion;
- (void)performBatchUpdates:(id)updates withAnimation:(id)animation completion:(id)completion;
- (void)presentAllCardsAnimated:(BOOL)animated completion:(id)completion;
- (void)reset;
- (void)setCardDelegate:(id)delegate;
- (void)setContentView:(id)view;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHost:(id)host;
- (void)showCard:(id)card animated:(BOOL)animated completion:(id)completion;
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

    selfCopy = self;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy, v19];

        goto LABEL_18;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy];
LABEL_18:

    *buf = 138543362;
    v45 = selfCopy;
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

    selfCopy2 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy2, v11];

        goto LABEL_10;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy2];
LABEL_10:

    pendingUpdates = self->_pendingUpdates;
    v14 = self->_runningUpdates;
    *buf = 138543874;
    v45 = selfCopy2;
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

    selfCopy3 = self;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(CarCardsOverlay *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v31, selfCopy3, v33];

        goto LABEL_35;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v31, selfCopy3];
LABEL_35:

    v35 = self->_pendingUpdates;
    *buf = 138543618;
    v45 = selfCopy3;
    v46 = 2048;
    v47 = v35;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Running next batch updates %p", buf, 0x16u);

    goto LABEL_36;
  }

  if (v6)
  {
    selfCopy4 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CarCardsOverlay *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy4, v25];

        goto LABEL_27;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy4];
LABEL_27:

    v28 = self->_pendingUpdates;
    v27 = self->_runningUpdates;
    *buf = 138543874;
    v45 = selfCopy4;
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
  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  v4 = [configurationsByKey count];

  v5 = sub_10006CF98();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (!v6)
    {
LABEL_23:

      host = [(CarCardsOverlay *)self host];
      [host setViewportConstraints:0 forOverlay:self];

      host2 = [(CarCardsOverlay *)self host];
      [host2 setMapInsetsConstraints:0 forOverlay:self];

      host3 = [(CarCardsOverlay *)self host];
      [host3 setCollisionConstraints:0 forOverlay:self];
      goto LABEL_24;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_22;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy, v17];

        goto LABEL_17;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy];
LABEL_17:

LABEL_22:
    *buf = 138543362;
    v40 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] No cards from which to capture inset constraints", buf, 0xCu);

    goto LABEL_23;
  }

  if (v6)
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_19;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy2, v11];

        goto LABEL_9;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy2];
LABEL_9:

LABEL_19:
    configurationsByKey2 = [(CarCardsOverlay *)selfCopy2 configurationsByKey];
    *buf = 138543618;
    v40 = selfCopy2;
    v41 = 2048;
    v42 = [configurationsByKey2 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Capturing inset constraints from %lu cards", buf, 0x16u);
  }

  v20 = +[NSMutableArray array];
  v21 = +[NSMutableArray array];
  v22 = +[NSMutableArray array];
  configurationsByKey3 = [(CarCardsOverlay *)self configurationsByKey];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10008CCC8;
  v35[3] = &unk_101653B88;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v24 = v22;
  v25 = v21;
  host3 = v20;
  [configurationsByKey3 enumerateKeysAndObjectsUsingBlock:v35];

  host4 = [(CarCardsOverlay *)self host];
  v28 = [host3 copy];
  [host4 setViewportConstraints:v28 forOverlay:self];

  host5 = [(CarCardsOverlay *)self host];
  v30 = [v25 copy];
  [host5 setMapInsetsConstraints:v30 forOverlay:self];

  host6 = [(CarCardsOverlay *)self host];
  v32 = [v24 copy];
  [host6 setCollisionConstraints:v32 forOverlay:self];

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

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_9:

    v10 = self->_pendingUpdates;
    runningUpdates = self->_runningUpdates;
    *buf = 138543874;
    v15 = selfCopy;
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
  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  v4 = [configurationsByKey count];

  if (v4)
  {
    configurationsByKey2 = [(CarCardsOverlay *)self configurationsByKey];
    allValues = [configurationsByKey2 allValues];
    v7 = [allValues sortedArrayUsingComparator:&stru_101653C98];

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

          cardView = [*(*(&v18 + 1) + 8 * i) cardView];
          focusOrderSubItems = [cardView focusOrderSubItems];
          [v8 addObjectsFromArray:focusOrderSubItems];
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
  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  v4 = [configurationsByKey count];

  if (v4)
  {
    configurationsByKey2 = [(CarCardsOverlay *)self configurationsByKey];
    allValues = [configurationsByKey2 allValues];
    v7 = [allValues sortedArrayUsingComparator:&stru_101653C78];

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

          cardView = [*(*(&v18 + 1) + 8 * i) cardView];
          preferredFocusEnvironments = [cardView preferredFocusEnvironments];
          [v8 addObjectsFromArray:preferredFocusEnvironments];
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

- (void)cardsUpdate:(id)update finalizeUpdate:(unint64_t)finalizeUpdate withCardConfigurations:(id)configurations
{
  updateCopy = update;
  configurationsCopy = configurations;
  v10 = sub_10006CF98();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_8:

LABEL_10:
  if (finalizeUpdate > 2)
  {
    v17 = @"unknown";
  }

  else
  {
    v17 = off_101653D90[finalizeUpdate];
  }

  *buf = 138544130;
  v34 = selfCopy;
  v35 = 2048;
  v36 = updateCopy;
  v37 = 2112;
  v38 = v17;
  v39 = 2048;
  v40 = [configurationsCopy count];
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] %p | Will finalize %@ update for %lu card configurations", buf, 0x2Au);

LABEL_14:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = configurationsCopy;
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
        if (finalizeUpdate == 2)
        {
          host = [(CarCardsOverlay *)self host];
          containingViewController = [host containingViewController];

          content = [v23 content];
          [content didMoveToParentViewController:containingViewController];
        }

        else if (!finalizeUpdate)
        {
          previousContent = [*(*(&v28 + 1) + 8 * i) previousContent];
          [previousContent removeFromParentViewController];

          [v23 setPreviousContent:0];
        }

        [v23 _stopIgnoringContainerBoundsChanges];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)cardsUpdateWantsLayout:(id)layout
{
  layoutCopy = layout;
  v5 = sub_10006CF98();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2048;
    v17 = layoutCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %p | Wants layout", buf, 0x16u);
  }

  contentView = [(CarCardsOverlay *)self contentView];
  [contentView layoutIfNeeded];

  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  [configurationsByKey enumerateKeysAndObjectsUsingBlock:&stru_101653C38];
}

- (void)cardsUpdate:(id)update applyConfigurations:(id)configurations
{
  updateCopy = update;
  configurationsCopy = configurations;
  v8 = sub_10006CF98();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v57 = selfCopy;
    v58 = 2048;
    v59 = updateCopy;
    v60 = 2048;
    v61 = [configurationsCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] %p | Will apply %lu card configurations", buf, 0x20u);
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100D8F8A8;
  v53[3] = &unk_101653BF0;
  v53[4] = self;
  v15 = sub_1000282CC(configurationsCopy, v53);

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

  selfCopy2 = self;
  if (!selfCopy2)
  {
    selfCopy2 = @"<nil>";
    goto LABEL_20;
  }

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  if (objc_opt_respondsToSelector())
  {
    v21 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
    v22 = v21;
    if (v21 && ![v21 isEqualToString:v20])
    {
      selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v20, selfCopy2, v22];

      goto LABEL_18;
    }
  }

  selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v20, selfCopy2];
LABEL_18:

LABEL_20:
  v24 = [v16 count];
  *buf = 138543874;
  v57 = selfCopy2;
  v58 = 2048;
  v59 = updateCopy;
  v60 = 2048;
  v61 = v24;
  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] %p | Will apply %lu valid card configurations", buf, 0x20u);

LABEL_21:
  v43 = updateCopy;

  host = [(CarCardsOverlay *)self host];
  host2 = [(CarCardsOverlay *)self host];
  v27 = [host2 layoutGuideForOverlay:self];

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

        [*(*(&v48 + 1) + 8 * i) layoutInHost:host withLayoutGuide:v27];
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
          cardView = [v38 cardView];
          superview = [cardView superview];
          cardView2 = [v38 cardView];
          [superview bringSubviewToFront:cardView2];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v35);
  }

  [(CarCardsOverlay *)self _captureInsetContraintsFromConfigurations];
  contentView = [(CarCardsOverlay *)self contentView];
  [contentView setNeedsFocusUpdate];
}

- (void)cardsUpdate:(id)update prepareForUpdate:(unint64_t)forUpdate withCardConfigurations:(id)configurations
{
  updateCopy = update;
  configurationsCopy = configurations;
  v10 = sub_10006CF98();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_8:

LABEL_10:
  if (forUpdate > 2)
  {
    v17 = @"unknown";
  }

  else
  {
    v17 = off_101653D90[forUpdate];
  }

  *buf = 138544130;
  v38 = selfCopy;
  v39 = 2048;
  v40 = updateCopy;
  v41 = 2112;
  v42 = v17;
  v43 = 2048;
  v44 = [configurationsCopy count];
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] %p | Will prepare %@ update for %lu card configurations", buf, 0x2Au);

LABEL_14:
  v31 = updateCopy;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = configurationsCopy;
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
        if (forUpdate == 2)
        {
          host = [(CarCardsOverlay *)self host];
          containingViewController = [host containingViewController];

          content = [v24 content];
          [containingViewController addChildViewController:content];

          content2 = [v24 content];
          view = [content2 view];
          UIAccessibilityPostNotification(v22, view);
        }

        else if (!forUpdate)
        {
          content3 = [v24 content];
          [content3 willMoveToParentViewController:0];

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
  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  allValues = [configurationsByKey allValues];
  [v3 addObjectsFromArray:allValues];

  pendingDeletedConfigurations = [(CarCardsUpdate *)self->_pendingUpdates pendingDeletedConfigurations];
  [v3 addObjectsFromArray:pendingDeletedConfigurations];

  pendingDeletedConfigurations2 = [(CarCardsUpdate *)self->_runningUpdates pendingDeletedConfigurations];
  [v3 addObjectsFromArray:pendingDeletedConfigurations2];

  v8 = [v3 count];
  configurationsByKey2 = sub_10006CF98();
  v10 = os_log_type_enabled(configurationsByKey2, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    selfCopy = self;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v21, selfCopy, v23];

        goto LABEL_16;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v21, selfCopy];
LABEL_16:

    *buf = 138543362;
    v26 = selfCopy;
    _os_log_impl(&_mh_execute_header, configurationsByKey2, OS_LOG_TYPE_INFO, "[%{public}@] No cards to reset", buf, 0xCu);

    goto LABEL_17;
  }

  if (v10)
  {
    selfCopy2 = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy2, v15];

        goto LABEL_8;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy2];
LABEL_8:

    *buf = 138543874;
    v26 = selfCopy2;
    v27 = 2048;
    v28 = [v3 count];
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, configurationsByKey2, OS_LOG_TYPE_INFO, "[%{public}@] Will reset %lu cards: %@", buf, 0x20u);
  }

  [v3 enumerateObjectsUsingBlock:&stru_101653BC8];
  runningUpdates = self->_runningUpdates;
  self->_runningUpdates = 0;

  pendingUpdates = self->_pendingUpdates;
  self->_pendingUpdates = 0;

  configurationsByKey2 = [(CarCardsOverlay *)self configurationsByKey];
  [configurationsByKey2 removeAllObjects];
LABEL_17:
}

- (void)_setCardConfiguration:(id)configuration forKey:(id)key
{
  configurationCopy = configuration;
  keyCopy = key;
  if (keyCopy)
  {
    configurationKeys = [(CarCardsOverlay *)self configurationKeys];
    if (configurationCopy)
    {
      [configurationKeys addObject:keyCopy];

      configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
      [configurationsByKey setObject:configurationCopy forKeyedSubscript:keyCopy];
    }

    else
    {
      [configurationKeys removeObject:keyCopy];

      configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
      [configurationsByKey removeObjectForKey:keyCopy];
    }
  }
}

- (id)_configurationForKey:(id)key createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  keyCopy = key;
  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  v8 = [configurationsByKey objectForKeyedSubscript:keyCopy];

  if (!v8 && neededCopy)
  {
    v8 = [(CarCardsUpdate *)self->_pendingUpdates pendingDeletedConfigurationForKey:keyCopy];
    if (!v8)
    {
      v8 = [[CarCardConfiguration alloc] initWithKey:keyCopy carSceneType:self->_carSceneType];
      WeakRetained = objc_loadWeakRetained(&self->_cardDelegate);
      cardView = [(CarCardConfiguration *)v8 cardView];
      [cardView setDelegate:WeakRetained];

      [(CarCardConfiguration *)v8 _setShowContainerVisualisation:self->_showDebugVisualisation];
    }
  }

  return v8;
}

- (BOOL)_shouldInterruptUpdates:(id)updates toRunUpdates:(id)runUpdates
{
  updatesCopy = updates;
  runUpdatesCopy = runUpdates;
  if (updatesCopy && [updatesCopy isAnimated])
  {
    v7 = [runUpdatesCopy isAnimated] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_updateDidComplete:(id)complete
{
  completeCopy = complete;
  if (self->_runningUpdates == completeCopy)
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

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    *buf = 138543618;
    v14 = selfCopy;
    v15 = 2048;
    v16 = completeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Running updates %p completed, will check for more updates", buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_performBatchUpdates:(id)updates withAnimation:(id)animation animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  updatesCopy = updates;
  animationCopy = animation;
  completionCopy = completion;
  if (updatesCopy)
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
      incrementNestCounter = [(CarCardsUpdate *)pendingUpdates incrementNestCounter];
      v29 = sub_10006CF98();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      selfCopy = self;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v51 = completionCopy;
      if (objc_opt_respondsToSelector())
      {
        v33 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
        v34 = v33;
        if (v33 && ![v33 isEqualToString:v32])
        {
          v35 = animationCopy;
          v36 = animatedCopy;
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v32, selfCopy, v34];

          goto LABEL_19;
        }
      }

      v35 = animationCopy;
      v36 = animatedCopy;
      selfCopy = [NSString stringWithFormat:@"%@<%p>", v32, selfCopy];
LABEL_19:

      v38 = self->_pendingUpdates;
      *buf = 138543874;
      v55 = selfCopy;
      v56 = 2048;
      v57 = v38;
      v58 = 2048;
      v59 = incrementNestCounter;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}@] Incrementing batch update %p nest counter to %lu", buf, 0x20u);

      animatedCopy = v36;
      animationCopy = v35;
      completionCopy = v51;
LABEL_20:

      updatesCopy[2](updatesCopy);
      if (completionCopy)
      {
        v39 = self->_pendingUpdates;
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100D91028;
        v52[3] = &unk_101653B10;
        v53 = completionCopy;
        [(CarCardsUpdate *)v39 addCompletionBlock:v52];
      }

      decrementNestCounter = [(CarCardsUpdate *)self->_pendingUpdates decrementNestCounter];
      if (!decrementNestCounter)
      {
        [(CarCardsUpdate *)self->_pendingUpdates setAnimated:animatedCopy];
        [(CarCardsUpdate *)self->_pendingUpdates setParentAnimation:animationCopy];
        [(CarCardsOverlay *)self _runNextUpdate];
        goto LABEL_32;
      }

      v41 = decrementNestCounter;
      v42 = sub_10006CF98();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      selfCopy2 = self;
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      if (objc_opt_respondsToSelector())
      {
        v46 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v47 = v46;
        if (v46 && ![v46 isEqualToString:v45])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v45, selfCopy2, v47];

          goto LABEL_29;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v45, selfCopy2];
LABEL_29:

      v49 = self->_pendingUpdates;
      *buf = 138543874;
      v55 = selfCopy2;
      v56 = 2048;
      v57 = v49;
      v58 = 2048;
      v59 = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}@] Will not attempt run update, our updates %p are nested (%lu levels)", buf, 0x20u);

LABEL_30:
      goto LABEL_32;
    }

    selfCopy3 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v50 = completionCopy;
      v20 = animationCopy;
      v21 = animatedCopy;
      v22 = [(CarCardsOverlay *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v19])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy3, v23];

        animatedCopy = v21;
        animationCopy = v20;
        completionCopy = v50;
        goto LABEL_9;
      }

      animatedCopy = v21;
      animationCopy = v20;
      completionCopy = v50;
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy3];
LABEL_9:

    v25 = self->_pendingUpdates;
    v26 = @"NO";
    if (animatedCopy)
    {
      v26 = @"YES";
    }

    v27 = v26;
    *buf = 138543874;
    v55 = selfCopy3;
    v56 = 2048;
    v57 = v25;
    v58 = 2112;
    v59 = v27;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Creating batch updates %p (animated:%@)", buf, 0x20u);

    goto LABEL_12;
  }

LABEL_32:
}

- (void)performBatchUpdates:(id)updates withAnimation:(id)animation completion:(id)completion
{
  completionCopy = completion;
  animationCopy = animation;
  updatesCopy = updates;
  -[CarCardsOverlay _performBatchUpdates:withAnimation:animated:completion:](self, "_performBatchUpdates:withAnimation:animated:completion:", updatesCopy, animationCopy, [animationCopy isAnimated], completionCopy);
}

- (void)dismissAllCardsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  v8 = [configurationsByKey count];

  if (v8)
  {
    v9 = sub_10006CF98();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_14:

      configurationsByKey2 = [(CarCardsOverlay *)self configurationsByKey];
      allValues = [configurationsByKey2 allValues];

      configurationsByKey3 = [(CarCardsOverlay *)self configurationsByKey];
      [configurationsByKey3 removeAllObjects];

      configurationKeys = [(CarCardsOverlay *)self configurationKeys];
      [configurationKeys removeAllObjects];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100D93CE4;
      v26[3] = &unk_101661A90;
      v27 = allValues;
      selfCopy = self;
      v25 = allValues;
      [(CarCardsOverlay *)self performBatchUpdates:v26 animated:animatedCopy completion:completionCopy];

      goto LABEL_15;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_11;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v12, selfCopy2, v14];

        goto LABEL_9;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v12, selfCopy2];
LABEL_9:

LABEL_11:
    v16 = selfCopy2;
    configurationsByKey4 = [(CarCardsOverlay *)selfCopy2 configurationsByKey];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [configurationsByKey4 count]);

    v19 = @"NO";
    if (animatedCopy)
    {
      v19 = @"YES";
    }

    v20 = v19;
    *buf = 138543874;
    v30 = selfCopy2;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Will dismiss %@ cards (animated:%@)", buf, 0x20u);

    goto LABEL_14;
  }

LABEL_15:
}

- (void)showCard:(id)card animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9 = [(CarCardsOverlay *)self _configurationForKey:card createIfNeeded:0];
  v10 = v9;
  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100D93EC0;
    v11[3] = &unk_101661B18;
    v12 = v9;
    [(CarCardsOverlay *)self performBatchUpdates:v11 animated:animatedCopy completion:completionCopy];
  }
}

- (void)hideCard:(id)card animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9 = [(CarCardsOverlay *)self _configurationForKey:card createIfNeeded:0];
  v10 = v9;
  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100D93FD4;
    v11[3] = &unk_101661B18;
    v12 = v9;
    [(CarCardsOverlay *)self performBatchUpdates:v11 animated:animatedCopy completion:completionCopy];
  }
}

- (void)deleteCard:(id)card animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  cardCopy = card;
  completionCopy = completion;
  v10 = [(CarCardsOverlay *)self _configurationForKey:cardCopy createIfNeeded:0];
  if (v10)
  {
    v11 = sub_10006CF98();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_14:

      [(CarCardsOverlay *)self _setCardConfiguration:0 forKey:cardCopy];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100D9429C;
      v20[3] = &unk_101661A90;
      v20[4] = self;
      v21 = v10;
      [(CarCardsOverlay *)self performBatchUpdates:v20 animated:animatedCopy completion:completionCopy];

      goto LABEL_15;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_9:

LABEL_11:
    v18 = @"NO";
    if (animatedCopy)
    {
      v18 = @"YES";
    }

    v19 = v18;
    *buf = 138543874;
    v23 = selfCopy;
    v24 = 2112;
    v25 = cardCopy;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Will dismiss card %@ (animated:%@)", buf, 0x20u);

    goto LABEL_14;
  }

LABEL_15:
}

- (void)presentAllCardsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  v8 = [configurationsByKey count];

  if (v8)
  {
    v9 = sub_10006CF98();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_14:

      configurationKeys = [(CarCardsOverlay *)self configurationKeys];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100D94604;
      v27[3] = &unk_101653AE8;
      v27[4] = self;
      v22 = sub_100021DB0(configurationKeys, v27);

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100D94670;
      v24[3] = &unk_101661A90;
      v25 = v22;
      selfCopy = self;
      v23 = v22;
      [(CarCardsOverlay *)self performBatchUpdates:v24 animated:animatedCopy completion:completionCopy];

      goto LABEL_15;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_11;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v12, selfCopy2, v14];

        goto LABEL_9;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v12, selfCopy2];
LABEL_9:

LABEL_11:
    v16 = selfCopy2;
    configurationsByKey2 = [(CarCardsOverlay *)selfCopy2 configurationsByKey];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [configurationsByKey2 count]);

    v19 = @"NO";
    if (animatedCopy)
    {
      v19 = @"YES";
    }

    v20 = v19;
    *buf = 138543874;
    v29 = selfCopy2;
    v30 = 2112;
    v31 = v18;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Will present %@ cards (animated:%@)", buf, 0x20u);

    goto LABEL_14;
  }

LABEL_15:
}

- (void)insertCard:(id)card animated:(BOOL)animated configurationBlock:(id)block completion:(id)completion
{
  animatedCopy = animated;
  cardCopy = card;
  blockCopy = block;
  completionCopy = completion;
  v13 = sub_10006CF98();
  v14 = v13;
  if (blockCopy)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      v29 = [(CarCardsOverlay *)self _configurationForKey:cardCopy createIfNeeded:1];
      [(CarCardsOverlay *)self _setCardConfiguration:v29 forKey:cardCopy];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100D94B3C;
      v30[3] = &unk_1016605F8;
      v30[4] = self;
      v31 = v29;
      v32 = blockCopy;
      v14 = v29;
      [(CarCardsOverlay *)self performBatchUpdates:v30 animated:animatedCopy completion:completionCopy];

      goto LABEL_25;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_19;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy, v19];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy];
LABEL_9:

LABEL_19:
    v27 = @"NO";
    if (animatedCopy)
    {
      v27 = @"YES";
    }

    v28 = v27;
    *buf = 138543874;
    v34 = selfCopy;
    v35 = 2112;
    v36 = cardCopy;
    v37 = 2112;
    v38 = v28;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] Will present card %@ (animated:%@)", buf, 0x20u);

    goto LABEL_22;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_24;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy2, v25];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy2];
LABEL_17:

LABEL_24:
    *buf = 138543618;
    v34 = selfCopy2;
    v35 = 2112;
    v36 = cardCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Tried to insert card %@ without a configuration block, aborting.", buf, 0x16u);
  }

LABEL_25:
}

- (void)configureCard:(id)card withBlock:(id)block
{
  cardCopy = card;
  blockCopy = block;
  v8 = sub_10006CF98();
  v9 = v8;
  if (blockCopy)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_20:

      v22 = [(CarCardsOverlay *)self _configurationForKey:cardCopy createIfNeeded:1];
      [(CarCardsOverlay *)self _setCardConfiguration:v22 forKey:cardCopy];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100D94F00;
      v23[3] = &unk_1016605F8;
      v23[4] = self;
      v24 = v22;
      v25 = blockCopy;
      v9 = v22;
      [(CarCardsOverlay *)self performBatchUpdates:v23 animated:0 completion:0];

      goto LABEL_23;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_19;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v12, selfCopy, v14];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v12, selfCopy];
LABEL_9:

LABEL_19:
    *buf = 138543618;
    v27 = selfCopy;
    v28 = 2112;
    v29 = cardCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Will configure card %@", buf, 0x16u);

    goto LABEL_20;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy2, v20];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy2];
LABEL_17:

LABEL_22:
    *buf = 138543618;
    v27 = selfCopy2;
    v28 = 2112;
    v29 = cardCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Tried to configure card %@ without a configuration block, aborting.", buf, 0x16u);
  }

LABEL_23:
}

- (BOOL)isCardHidden:(id)hidden
{
  v3 = [(CarCardsOverlay *)self _configurationForKey:hidden createIfNeeded:0];
  v4 = v3;
  if (v3)
  {
    cardView = [v3 cardView];
    isHidden = [cardView isHidden];
  }

  else
  {
    isHidden = 1;
  }

  return isHidden;
}

- (BOOL)hasCard:(id)card
{
  v3 = [(CarCardsOverlay *)self _configurationForKey:card createIfNeeded:0];
  v4 = v3 != 0;

  return v4;
}

- (void)_refreshPinningConstraints
{
  host = [(CarCardsOverlay *)self host];
  host2 = [(CarCardsOverlay *)self host];
  v5 = [host2 layoutGuideForOverlay:self];

  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D95148;
  v10[3] = &unk_101653AC0;
  v11 = host;
  v12 = v5;
  v7 = v5;
  v8 = host;
  [configurationsByKey enumerateKeysAndObjectsUsingBlock:v10];

  [(CarCardsOverlay *)self _captureInsetContraintsFromConfigurations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D95158;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  [UIView performWithoutAnimation:v9];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  if (WeakRetained == viewCopy)
  {
    goto LABEL_41;
  }

  v6 = objc_loadWeakRetained(&self->_contentView);
  if (v6)
  {
    v7 = v6;
    configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
    v9 = [configurationsByKey count];

    if (v9)
    {
      v10 = sub_10006CF98();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
LABEL_22:

        configurationsByKey2 = [(CarCardsOverlay *)self configurationsByKey];
        [configurationsByKey2 enumerateKeysAndObjectsUsingBlock:&stru_101653A98];

        configurationsByKey3 = [(CarCardsOverlay *)self configurationsByKey];
        [configurationsByKey3 removeAllObjects];

        configurationKeys = [(CarCardsOverlay *)self configurationKeys];
        [configurationKeys removeAllObjects];

        [(CarCardsOverlay *)self _captureInsetContraintsFromConfigurations];
        goto LABEL_23;
      }

      selfCopy = self;
      if (!selfCopy)
      {
        selfCopy = @"<nil>";
LABEL_13:

        v17 = selfCopy;
        contentView = [(CarCardsOverlay *)selfCopy contentView];
        if (!contentView)
        {
          v23 = @"<nil>";
          goto LABEL_21;
        }

        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        if (objc_opt_respondsToSelector())
        {
          v21 = [contentView performSelector:"accessibilityIdentifier"];
          v22 = v21;
          if (v21 && ![v21 isEqualToString:v20])
          {
            v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, contentView, v22];

            goto LABEL_19;
          }
        }

        v23 = [NSString stringWithFormat:@"%@<%p>", v20, contentView];
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
        v14 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
        v15 = v14;
        if (v14 && ![v14 isEqualToString:v13])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

          goto LABEL_11;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_11:

      goto LABEL_13;
    }
  }

LABEL_23:
  v27 = objc_storeWeak(&self->_contentView, viewCopy);
  if (viewCopy)
  {
    configurationsByKey4 = [(CarCardsOverlay *)self configurationsByKey];
    v29 = [configurationsByKey4 count];

    if (v29)
    {
      v30 = sub_10006CF98();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
LABEL_40:

        [(CarCardsOverlay *)self _refreshPinningConstraints];
        goto LABEL_41;
      }

      selfCopy2 = self;
      if (!selfCopy2)
      {
        selfCopy2 = @"<nil>";
LABEL_34:

        v37 = selfCopy2;
        v38 = viewCopy;
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
        v34 = [(CarCardsOverlay *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v35 = v34;
        if (v34 && ![v34 isEqualToString:v33])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v33, selfCopy2, v35];

          goto LABEL_32;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v33, selfCopy2];
LABEL_32:

      goto LABEL_34;
    }
  }

LABEL_41:
}

- (void)_userDefaultsChanged:(id)changed
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"__internal_CarVisualizeCardContainersDebug"];

  if (self->_showDebugVisualisation != v5)
  {
    self->_showDebugVisualisation = v5;
    configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100D957B4;
    v7[3] = &unk_101653A58;
    v8 = v5;
    [configurationsByKey enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (hidden)
  {
    [(CarCardsOverlay *)self dismissAllCardsAnimated:animated completion:0];
  }

  else
  {
    [(CarCardsOverlay *)self presentAllCardsAnimated:animated completion:0];
  }
}

- (BOOL)isHidden
{
  allValues = [(NSMutableDictionary *)self->_configurationsByKey allValues];
  v3 = [allValues indexOfObjectPassingTest:&stru_101653A38] == 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (void)setHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_host, obj);
    overlayContentView = [obj overlayContentView];
    [(CarCardsOverlay *)self setContentView:overlayContentView];
  }
}

- (void)setCardDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_cardDelegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_cardDelegate, delegateCopy);
    v6 = sub_10006CF98();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_20:

      configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100D95BF8;
      v21[3] = &unk_1016539F8;
      v21[4] = self;
      [configurationsByKey enumerateKeysAndObjectsUsingBlock:v21];

      goto LABEL_21;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
LABEL_11:

      v13 = selfCopy;
      v14 = delegateCopy;
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
      v10 = [(CarCardsOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_9:

    goto LABEL_11;
  }

LABEL_21:
}

- (CarCardsOverlay)initWithCarSceneType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = CarCardsOverlay;
  v4 = [(CarCardsOverlay *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_carSceneType = type;
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
  configurationsByKey = [(CarCardsOverlay *)self configurationsByKey];
  [configurationsByKey removeAllObjects];

  [(CarCardsOverlay *)self setHost:0];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"CarDisplayDidChangeConnectedNotification" object:0];

  v5.receiver = self;
  v5.super_class = CarCardsOverlay;
  [(CarCardsOverlay *)&v5 dealloc];
}

@end