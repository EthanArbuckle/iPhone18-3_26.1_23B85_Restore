@interface TUIHostingController
- (BOOL)_shouldVendViewForIdentifier:(id)a3 inGroup:(id)a4;
- (BOOL)hasProviderForIdentifier:(id)a3;
- (BOOL)needsGeometryUpdateWithOldTraitCollection:(id)a3 newTraitCollection:(id)a4;
- (TUIHostingController)initWithFeedId:(id)a3 delegate:(id)a4 viewController:(id)a5 manager:(id)a6;
- (TUIHostingControllerDelegate)delegate;
- (id)_determineSourceViewFromState:(id)a3 currentView:(id)a4;
- (id)_groupIdentifierForIdentifier:(id)a3;
- (id)_reusableViewForRefId:(id)a3 inCurrentView:(id)a4;
- (id)newGeometryMap;
- (id)viewStateForIdentifier:(id)a3;
- (unint64_t)_popoverArrowDirectionFromProperties:(id)a3;
- (void)_configurePopoverLayoutForViewState:(id)a3 superview:(id)a4 shouldPresentViewController:(BOOL)a5;
- (void)_finishOngoingModalTransitionAnimationsWithCompletion:(id)a3;
- (void)_notifyGeometryUpdated;
- (void)_notifyProviderObserversForIdentifier:(id)a3 notifyControllerObservers:(BOOL)a4;
- (void)_removeProviderForViewState:(id)a3;
- (void)_updateGeomtry:(id)a3 forIdentifier:(id)a4;
- (void)addProvider:(id)a3 forIdentifier:(id)a4;
- (void)addProviderObserver:(id)a3 forIdentifier:(id)a4;
- (void)didEndDisplayForViewState:(id)a3;
- (void)endViewUpdatesNotifyDelegate:(BOOL)a3;
- (void)makeAvailableForReuse:(id)a3;
- (void)removeProviderForIdentifier:(id)a3;
- (void)removeProviderObserver:(id)a3 forIdentifier:(id)a4;
- (void)reset;
- (void)runAppearanceAnimationIfNeededForViewState:(id)a3;
- (void)runAppearanceTransitionForViewState:(id)a3 barButtonItem:(id)a4;
- (void)runAppearanceTransitionForViewState:(id)a3 superview:(id)a4;
- (void)runDisappearanceTransitionForViewState:(id)a3;
- (void)updateFrameIfNeeded:(BOOL)a3 forViewState:(id)a4 requestedSize:(CGSize)a5 insets:(UIEdgeInsets)a6;
- (void)updateGeometryForViewState:(id)a3 requestedSize:(CGSize)a4 insets:(UIEdgeInsets)a5;
- (void)updateHostingMap:(id)a3;
- (void)updateTraitCollection:(id)a3;
- (void)updateVisible:(BOOL)a3 forIdentifier:(id)a4;
@end

@implementation TUIHostingController

- (TUIHostingController)initWithFeedId:(id)a3 delegate:(id)a4 viewController:(id)a5 manager:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v30.receiver = self;
  v30.super_class = TUIHostingController;
  v13 = [(TUIHostingController *)&v30 init];
  v14 = v13;
  if (v13)
  {
    v13->_feedId.uniqueIdentifier = a3.var0;
    objc_storeWeak(&v13->_delegate, v10);
    v14->_viewController = v11;
    v15 = [(UIViewController *)v11 traitCollection];
    traitCollection = v14->_traitCollection;
    v14->_traitCollection = v15;

    v17 = objc_opt_new();
    statesMap = v14->_statesMap;
    v14->_statesMap = v17;

    v19 = objc_opt_new();
    geometryMap = v14->_geometryMap;
    v14->_geometryMap = v19;

    v21 = objc_opt_new();
    providerObserversMap = v14->_providerObserversMap;
    v14->_providerObserversMap = v21;

    v23 = [NSHashTable hashTableWithOptions:517];
    contentObservers = v14->_contentObservers;
    v14->_contentObservers = v23;

    v25 = objc_opt_new();
    activeGroups = v14->_activeGroups;
    v14->_activeGroups = v25;

    v27 = [NSHashTable hashTableWithOptions:517];
    controllerObservers = v14->_controllerObservers;
    v14->_controllerObservers = v27;

    objc_storeStrong(&v14->_manager, a6);
    *&v14->_flags = 0;
  }

  return v14;
}

- (void)addProvider:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:v7];

  if (v8)
  {
    [(TUIHostingController *)self removeProviderForIdentifier:v7];
  }

  v9 = TUIHostingLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v12 = 134218498;
    v13 = uniqueIdentifier;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[fid:%lu] adding provider=%@ for identifier=%@", &v12, 0x20u);
  }

  v11 = [[_TUIHostedViewState alloc] initWithController:self provider:v6 identifier:v7];
  [(NSMutableDictionary *)self->_statesMap setObject:v11 forKeyedSubscript:v7];
  [(TUIHostingController *)self _notifyProviderObserversForIdentifier:v7 notifyControllerObservers:1];
}

- (BOOL)hasProviderForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_removeProviderForViewState:(id)a3
{
  v9 = a3;
  statesMap = self->_statesMap;
  v5 = [v9 identifier];
  v6 = [(NSMutableDictionary *)statesMap objectForKeyedSubscript:v5];

  v7 = v9;
  if (v6 == v9)
  {
    v8 = [v9 identifier];
    [(TUIHostingController *)self removeProviderForIdentifier:v8];

    v7 = v9;
  }
}

- (void)removeProviderForIdentifier:(id)a3
{
  v4 = a3;
  v5 = TUIHostingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    v20 = uniqueIdentifier;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[fid:%lu] remove provider for identifier=%@", buf, 0x16u);
  }

  [(NSMutableDictionary *)self->_statesMap setObject:0 forKeyedSubscript:v4];
  [(TUIHostingController *)self _updateGeomtry:0 forIdentifier:v4];
  [(TUIHostingController *)self _notifyProviderObserversForIdentifier:v4 notifyControllerObservers:1];
  v7 = [(TUIHostingMap *)self->_hostingMap objectForKeyedSubscript:v4];
  v8 = [v7 groupIdentifier];

  if (v8)
  {
    [(NSMutableSet *)self->_activeGroups removeObject:v8];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(TUIHostingMap *)self->_hostingMap reverseEnumeratorForGroup:v8, 0];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(TUIHostingController *)self _notifyProviderObserversForIdentifier:*(*(&v14 + 1) + 8 * v13) notifyControllerObservers:0];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)updateHostingMap:(id)a3
{
  v5 = a3;
  v6 = v5;
  p_hostingMap = &self->_hostingMap;
  if (self->_hostingMap != v5)
  {
    v8 = [(TUIHostingMap *)v5 identifiers];
    v9 = [v8 mutableCopy];
    v10 = [(TUIHostingMap *)*p_hostingMap identifiers];
    [v9 intersectSet:v10];

    v11 = [v8 mutableCopy];
    v12 = [(TUIHostingMap *)*p_hostingMap identifiers];
    [v11 unionSet:v12];

    v28 = v9;
    [v11 minusSet:v9];
    v13 = [(TUIHostingMap *)*p_hostingMap identifiers];
    v14 = [v13 mutableCopy];

    [v14 minusSet:v8];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        v19 = 0;
        do
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(NSMutableDictionary *)self->_geometryMap removeObjectForKey:*(*(&v33 + 1) + 8 * v19)];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v17);
    }

    objc_storeStrong(&self->_hostingMap, a3);
    if ([v11 count])
    {
      v20 = TUIHostingLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier = self->_feedId.uniqueIdentifier;
        v27 = [(TUIHostingMap *)self->_hostingMap identifiers];
        *buf = 134218498;
        v39 = uniqueIdentifier;
        v40 = 2112;
        v41 = v27;
        v42 = 2112;
        v43 = v11;
        _os_log_debug_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "[fid:%lu] updated hosting map: identifiers=%@, differences=%@", buf, 0x20u);
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = self->_contentObservers;
    v22 = [(NSHashTable *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        v25 = 0;
        do
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v29 + 1) + 8 * v25) hostingController:self didChangeContentIdentifiers:v11];
          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [(NSHashTable *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v23);
    }
  }
}

- (void)endViewUpdatesNotifyDelegate:(BOOL)a3
{
  viewUpdates = self->_viewUpdates;
  if (viewUpdates)
  {
    v5 = viewUpdates - 1;
    self->_viewUpdates = v5;
    if (!v5)
    {
      flags = self->_flags;
      if ((*&self->_flags & 2) != 0)
      {
        *&self->_flags = flags & 0xFD;
        if ((flags & 1) == 0)
        {
          v7 = a3;
          v8 = TUIHostingLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            sub_19B118();
          }

          *&self->_flags |= 1u;
          if (v7)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained hostingControllerGeometryUpdated:self];
          }
        }
      }
    }
  }
}

- (void)reset
{
  [(NSMutableDictionary *)self->_geometryMap removeAllObjects];
  v3 = [(TUIHostingMap *)self->_hostingMap identifiers];
  hostingMap = self->_hostingMap;
  self->_hostingMap = 0;

  if ([v3 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_contentObservers;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) hostingController:self didChangeContentIdentifiers:{v3, v10}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  *&self->_flags &= 0xFCu;
  [(TUIHostingController *)self _notifyGeometryUpdated];
}

- (BOOL)_shouldVendViewForIdentifier:(id)a3 inGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(NSMutableSet *)self->_activeGroups containsObject:v7]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(TUIHostingMap *)self->_hostingMap reverseEnumeratorForGroup:v7, 0];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if (v14 == v6 || ([v6 isEqual:*(*(&v17 + 1) + 8 * v13)] & 1) != 0)
        {
          break;
        }

        v15 = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:v14];

        if (v15)
        {
          v8 = 0;
          goto LABEL_16;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v8 = 1;
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_16;
        }
      }
    }

    v8 = 1;
LABEL_16:
  }

  return v8;
}

- (id)viewStateForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TUIManager *)self->_manager viewRegistry];
  v6 = [v4 type];
  v7 = [v5 useHostedViewFactoryForType:v6];

  if (v7)
  {
    v8 = [v4 identifierWithoutModelIdentifier];
    v9 = [(NSMutableDictionary *)self->_reuseMap objectForKeyedSubscript:v8];
    if (v9)
    {
      [(NSMutableDictionary *)self->_reuseMap removeObjectForKey:v8];
      v10 = v9;
    }

    else
    {
      v11 = [(TUIManager *)self->_manager viewRegistry];
      v12 = [v4 type];
      v13 = [v11 hostedViewFactoryForType:v12];

      viewController = self->_viewController;
      v15 = [v4 type];
      v16 = [v4 identifier];
      v17 = [v4 parameters];
      v18 = [v13 viewController:viewController hostedViewWithType:v15 identifier:v16 parameters:v17];

      if (v18)
      {
        v10 = -[_TUIHostedFactoryViewState initWithIdentifier:view:flags:]([_TUIHostedFactoryViewState alloc], "initWithIdentifier:view:flags:", v4, v18, [v13 hostedViewFlags]);
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    if (v4)
    {
      v8 = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:v4];
    }

    else
    {
      v8 = 0;
    }

    if ([(_TUIHostedFactoryViewState *)v8 isAvailable])
    {
      v8 = v8;
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)updateVisible:(BOOL)a3 forIdentifier:(id)a4
{
  v4 = a3;
  if (a4)
  {
    v5 = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:a4];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v5 setVisible:v4];
}

- (void)updateGeometryForViewState:(id)a3 requestedSize:(CGSize)a4 insets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.height;
  width = a4.width;
  v22 = a3;
  v12 = [v22 identifier];
  v13 = [(TUIHostingMap *)self->_hostingMap objectForKeyedSubscript:v12];
  if (![v13 presentation])
  {
    v14 = [v22 view];
    v15 = UIEdgeInsetsZero.left;
    v20 = UIEdgeInsetsZero.right;
    v21 = UIEdgeInsetsZero.bottom;
    [v14 bounds];
    v18 = [[TUIHostingGeometry alloc] initWithRequestedSize:width layoutSize:height erasableInsets:left + right + v16, top + bottom + v17, UIEdgeInsetsZero.top, v15, v21, v20];
    v19 = [(NSMutableDictionary *)self->_geometryMap objectForKeyedSubscript:v12];
    if (([v19 isEqualToGeometry:v18] & 1) == 0)
    {
      [(TUIHostingController *)self _updateGeomtry:v18 forIdentifier:v12];
    }
  }
}

- (void)_updateGeomtry:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TUIHostingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v10 = 134218498;
    v11 = uniqueIdentifier;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[fid:%lu] updated geometry=%@ for identifier=%@", &v10, 0x20u);
  }

  [(NSMutableDictionary *)self->_geometryMap setObject:v6 forKeyedSubscript:v7];
  [(TUIHostingController *)self _notifyGeometryUpdated];
}

- (void)_notifyGeometryUpdated
{
  if (self->_viewUpdates)
  {
    if ((*&self->_flags & 2) == 0)
    {
      v3 = TUIHostingLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_19B180();
      }

      *&self->_flags |= 2u;
    }
  }

  else if ((*&self->_flags & 1) == 0)
  {
    v4 = TUIHostingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_19B1E8();
    }

    *&self->_flags |= 1u;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained hostingControllerGeometryUpdated:self];
  }
}

- (BOOL)needsGeometryUpdateWithOldTraitCollection:(id)a3 newTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 preferredContentSizeCategory];
  v8 = [v6 preferredContentSizeCategory];
  if (v7 != v8 || (v9 = [v5 horizontalSizeClass], v9 != objc_msgSend(v6, "horizontalSizeClass")) || (v10 = objc_msgSend(v5, "verticalSizeClass"), v10 != objc_msgSend(v6, "verticalSizeClass")) || (v11 = objc_msgSend(v5, "layoutDirection"), v11 != objc_msgSend(v6, "layoutDirection")))
  {

    goto LABEL_8;
  }

  v12 = [v5 legibilityWeight];
  v13 = [v6 legibilityWeight];

  if (v12 != v13)
  {
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)updateTraitCollection:(id)a3
{
  v6 = a3;
  v5 = [(TUIHostingController *)self needsGeometryUpdateWithOldTraitCollection:self->_traitCollection newTraitCollection:?];
  objc_storeStrong(&self->_traitCollection, a3);
  if (v5)
  {
    [(NSMutableDictionary *)self->_geometryMap removeAllObjects];
    [(TUIHostingController *)self _notifyGeometryUpdated];
  }
}

- (id)newGeometryMap
{
  if ([(NSMutableDictionary *)self->_geometryMap count])
  {
    v3 = [TUIHostingGeometryMap alloc];
    geometryMap = self->_geometryMap;
    v5 = [(TUIHostingMap *)self->_hostingMap identifiers];
    v6 = [(TUIHostingGeometryMap *)v3 initWithMap:geometryMap identifiers:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = TUIHostingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_19B250();
  }

  return v6;
}

- (void)addProviderObserver:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TUIHostingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v11 = 134218498;
    v12 = uniqueIdentifier;
    v13 = 2048;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[fid:%lu] add observer=%p for identifier=%@", &v11, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_providerObserversMap objectForKeyedSubscript:v7];
  if (!v10)
  {
    v10 = [NSHashTable hashTableWithOptions:517];
    [(NSMutableDictionary *)self->_providerObserversMap setObject:v10 forKeyedSubscript:v7];
  }

  [v10 addObject:v6];
}

- (void)removeProviderObserver:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TUIHostingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v11 = 134218498;
    v12 = uniqueIdentifier;
    v13 = 2048;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[fid:%lu] remove observer=%p for identifier=%@", &v11, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_providerObserversMap objectForKeyedSubscript:v7];
  [v10 removeObject:v6];
  if (v10 && ![v10 count])
  {
    [(NSMutableDictionary *)self->_providerObserversMap setObject:0 forKeyedSubscript:v7];
  }
}

- (void)_notifyProviderObserversForIdentifier:(id)a3 notifyControllerObservers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = TUIHostingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    v31 = uniqueIdentifier;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[fid:%lu] notify observers for identifier=%@", buf, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_providerObserversMap objectForKeyedSubscript:v6];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v9 allObjects];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14) hostingProviderUpdatedForIdentifier:v6];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = [(NSHashTable *)self->_controllerObservers allObjects];
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v20 + 1) + 8 * v19) hostingControllerProvidersUpdated:self];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }
}

- (void)_configurePopoverLayoutForViewState:(id)a3 superview:(id)a4 shouldPresentViewController:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  hostingMap = self->_hostingMap;
  v11 = [v8 identifier];
  v12 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:v11];

  if ([v12 presentation] == &dword_0 + 1)
  {
    v13 = [v8 viewController];
    v14 = [v13 isBeingPresented];

    if ((v14 & 1) == 0)
    {
      v15 = [(TUIHostingController *)self _determineSourceViewFromState:v8 currentView:v9];
      v16 = [v8 viewController];
      v17 = [v16 popoverPresentationController];
      v18 = [v17 sourceView];

      if (!v15 || v15 == v18)
      {
        v27 = TUIHostingLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          uniqueIdentifier = self->_feedId.uniqueIdentifier;
          *buf = 134218498;
          v33 = uniqueIdentifier;
          v34 = 2112;
          v35 = v15;
          v36 = 2112;
          v37 = v18;
          _os_log_debug_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "[fid:%lu] no need to update layout sourceView=%@ oldSourceView=%@", buf, 0x20u);
        }
      }

      else
      {
        v19 = [v8 viewController];
        [v19 setModalPresentationStyle:7];

        v20 = [v8 viewController];
        v21 = [v20 popoverPresentationController];
        [v21 setDelegate:v8];

        v22 = [v8 viewController];
        v23 = [v22 popoverPresentationController];
        [v23 setSourceView:v15];

        v24 = [(TUIHostingController *)self _popoverArrowDirectionFromProperties:v12];
        v25 = [v8 viewController];
        v26 = [v25 popoverPresentationController];
        [v26 setPermittedArrowDirections:v24];

        if (!v5)
        {
LABEL_10:

          goto LABEL_11;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_CB068;
        v29[3] = &unk_25DCA0;
        v30 = v8;
        v31 = self;
        [(TUIHostingController *)self _finishOngoingModalTransitionAnimationsWithCompletion:v29];
        v27 = v30;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)runAppearanceTransitionForViewState:(id)a3 superview:(id)a4
{
  v6 = a3;
  v7 = a4;
  hostingMap = self->_hostingMap;
  v9 = [v6 identifier];
  v10 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:v9];

  if ([v10 presentation])
  {
    if ([v10 presentation] == &dword_0 + 1)
    {
      [(TUIHostingController *)self _presentPopoverLayoutForViewState:v6 superview:v7];
    }
  }

  else
  {
    v11 = [v6 view];
    [v11 setAutoresizingMask:0];
    v12 = [v6 viewController];
    [v12 beginAppearanceTransition:1 animated:0];

    [v7 addSubview:v11];
    v13 = [v6 viewController];
    [v13 endAppearanceTransition];

    if (([v6 previouslyAppeared] & 1) == 0)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_CB364;
      v14[3] = &unk_25E7C0;
      v14[4] = self;
      v15 = v6;
      v16 = v11;
      [UIView performWithoutAnimation:v14];
    }
  }
}

- (void)runAppearanceTransitionForViewState:(id)a3 barButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  hostingMap = self->_hostingMap;
  v9 = [v6 identifier];
  v10 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:v9];

  if ([v10 presentation] == &dword_0 + 1)
  {
    v11 = [v6 viewController];
    v12 = [v11 isBeingPresented];

    if ((v12 & 1) == 0)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_CB4F0;
      v13[3] = &unk_25EB18;
      v14 = v6;
      v15 = v7;
      v16 = self;
      v17 = v10;
      [(TUIHostingController *)self _finishOngoingModalTransitionAnimationsWithCompletion:v13];
    }
  }
}

- (id)_determineSourceViewFromState:(id)a3 currentView:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [(TUIHostingMap *)self->_hostingMap objectForKeyedSubscript:v7];
  v9 = [v8 designatedIdentifier];
  if (v9)
  {
    v10 = [(TUIHostingController *)self _reusableViewForRefId:v9 inCurrentView:v6];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

- (id)_reusableViewForRefId:(id)a3 inCurrentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, v7);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  v10 = [v8 layoutAttributes];
  v11 = [v10 refId];
  v12 = [v11 isEqualToString:v6];

  if (v12)
  {
    v13 = v7;
    goto LABEL_15;
  }

  v13 = [v9 descendentViewWithRefId:v6];
  if (!v13)
  {
LABEL_5:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [v7 subviews];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(TUIHostingController *)self _reusableViewForRefId:v6 inCurrentView:*(*(&v21 + 1) + 8 * i)];
          if (v19)
          {
            v13 = v19;

            goto LABEL_15;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
  }

LABEL_15:

  return v13;
}

- (void)_finishOngoingModalTransitionAnimationsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIViewController *)self->_viewController presentedViewController];
    if ((([v5 isBeingDismissed] & 1) != 0 || objc_msgSend(v5, "isBeingPresented")) && (objc_msgSend(v5, "transitionCoordinator"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = [v5 transitionCoordinator];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_CBADC;
      v8[3] = &unk_261490;
      v9 = v4;
      [v7 animateAlongsideTransition:&stru_261468 completion:v8];
    }

    else
    {
      v4[2](v4);
    }
  }
}

- (void)runAppearanceAnimationIfNeededForViewState:(id)a3
{
  v4 = a3;
  hostingMap = self->_hostingMap;
  v6 = [v4 identifier];
  v7 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:v6];

  if (![v7 presentation])
  {
    v8 = [v4 view];
    if (([v4 previouslyAppeared] & 1) == 0)
    {
      [v4 setPreviouslyAppeared:1];
      v9 = TUIHostingLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier = self->_feedId.uniqueIdentifier;
        v12 = [v4 identifier];
        *buf = 134218498;
        v18 = uniqueIdentifier;
        v19 = 2112;
        v20 = v12;
        v21 = 2048;
        v22 = v8;
        _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "[fid:%lu] show view for identifier=%@ view=%p", buf, 0x20u);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_CBD38;
      v15[3] = &unk_25DE30;
      v10 = v8;
      v16 = v10;
      [UIView performWithoutAnimation:v15];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_CBDA8;
      v13[3] = &unk_25DE30;
      v14 = v10;
      [UIView animateWithDuration:32 delay:v13 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.1 animations:0.7 completion:0.1];
    }
  }
}

- (void)runDisappearanceTransitionForViewState:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [v4 viewController];

  if (v6)
  {
    v7 = [v4 viewController];
    v8 = [v7 parentViewController];

    if (v8)
    {
      v9 = +[TUIFeedView areFeedUpdatesAnimated];
      v10 = [v4 viewController];
      v11 = v10;
      if (!v9)
      {
        [v10 beginAppearanceTransition:0 animated:0];

        [v4 recycleViewWithController:self];
        v23 = [v4 viewController];
        [v23 endAppearanceTransition];

        goto LABEL_12;
      }

      [v10 beginAppearanceTransition:0 animated:1];

      v12 = TUIHostingLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier = self->_feedId.uniqueIdentifier;
        v25 = [v4 identifier];
        *buf = 134218498;
        v36 = uniqueIdentifier;
        v37 = 2112;
        v38 = v25;
        v39 = 2048;
        v40 = v5;
        _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "[fid:%lu] removing view for identifier=%@ view=%p", buf, 0x20u);
      }

      v13 = [UIViewPropertyAnimator alloc];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_CC218;
      v33[3] = &unk_25DE30;
      v14 = v5;
      v34 = v14;
      v15 = [v13 initWithDuration:v33 controlPoint1:0.2 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
      v16 = [UIViewPropertyAnimator alloc];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_CC224;
      v31[3] = &unk_25DE30;
      v17 = v14;
      v32 = v17;
      v18 = [v16 initWithDuration:v31 controlPoint1:0.28 controlPoint2:0.33 animations:{0.0, 0.83, 0.76}];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_CC27C;
      v28[3] = &unk_2614B8;
      v29 = v17;
      v30 = v4;
      [v18 addCompletion:v28];
      [v15 startAnimation];
      [v18 startAnimation];

      v19 = v34;
      goto LABEL_10;
    }

    v20 = [v4 viewController];
    v21 = [v20 presentingViewController];

    if (v21)
    {
      v22 = [v4 identifier];
      [(TUIHostingController *)self updateVisible:0 forIdentifier:v22];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_CC2D4;
      v26[3] = &unk_25DE30;
      v27 = v4;
      [(TUIHostingController *)self _finishOngoingModalTransitionAnimationsWithCompletion:v26];
      v19 = v27;
LABEL_10:
    }
  }

  else
  {
    [v4 recycleViewWithController:self];
  }

LABEL_12:
}

- (void)didEndDisplayForViewState:(id)a3
{
  v4 = a3;
  v5 = [v4 viewController];
  [v5 beginAppearanceTransition:0 animated:0];

  [v4 recycleViewWithController:self];
  v6 = [v4 viewController];

  [v6 endAppearanceTransition];
}

- (void)makeAvailableForReuse:(id)a3
{
  v4 = a3;
  reuseMap = self->_reuseMap;
  if (!reuseMap)
  {
    v6 = objc_opt_new();
    v7 = self->_reuseMap;
    self->_reuseMap = v6;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_CC4F4;
    v10[3] = &unk_25DE30;
    v10[4] = self;
    TUIDispatchAsyncViaRunLoop(v10);
    reuseMap = self->_reuseMap;
  }

  v8 = [v4 identifier];
  v9 = [v8 identifierWithoutModelIdentifier];
  [(NSMutableDictionary *)reuseMap setObject:v4 forKeyedSubscript:v9];
}

- (id)_groupIdentifierForIdentifier:(id)a3
{
  v3 = [(TUIHostingMap *)self->_hostingMap objectForKeyedSubscript:a3];
  v4 = [v3 groupIdentifier];

  return v4;
}

- (void)updateFrameIfNeeded:(BOOL)a3 forViewState:(id)a4 requestedSize:(CGSize)a5 insets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v14 = a4;
  hostingMap = self->_hostingMap;
  v16 = [v14 identifier];
  v17 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:v16];
  v18 = [v17 presentation];

  if (!v18)
  {
    v19 = [v14 view];
    v20 = TUIHostingLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      v37 = [v14 identifier];
      v38 = [NSNumber numberWithBool:v12];
      v53.width = width;
      v53.height = height;
      v39 = NSStringFromCGSize(v53);
      v56.top = top;
      v56.left = left;
      v56.bottom = bottom;
      v56.right = right;
      v40 = NSStringFromUIEdgeInsets(v56);
      v41 = 134219266;
      v42 = uniqueIdentifier;
      v43 = 2112;
      v44 = v19;
      v45 = 2112;
      v46 = v37;
      v47 = 2112;
      v48 = v38;
      v49 = 2112;
      v50 = v39;
      v51 = 2112;
      v52 = v40;
      _os_log_debug_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "[fid:%lu] updateFrameIfNeeded view=%@ identifier=%@ needsUpdate=%@ requestedSize=%@ insets=%@", &v41, 0x3Eu);
    }

    if (v12)
    {
      v21 = [v14 flags];
      v22 = fmax(width - left - right, 0.0);
      v23 = fmax(height - top - bottom, 0.0);
      if (v21)
      {
        v24 = 1.79769313e308;
      }

      else
      {
        v24 = v22;
      }

      if ((v21 & 2) != 0)
      {
        v25 = 1.79769313e308;
      }

      else
      {
        v25 = v23;
      }

      v26 = [v14 view];
      [v26 sizeThatFits:{v24, v25}];
      v28 = v27;
      v30 = v29;

      [v19 setFrame:{left, top, v28, v30}];
    }

    else
    {
      [v19 bounds];
      x = v54.origin.x;
      y = v54.origin.y;
      v33 = v54.size.width;
      v34 = v54.size.height;
      v35 = left + CGRectGetMidX(v54);
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = v33;
      v55.size.height = v34;
      [v19 setCenter:{v35, top + CGRectGetMidY(v55)}];
    }
  }
}

- (unint64_t)_popoverArrowDirectionFromProperties:(id)a3
{
  v3 = [a3 arrowDirection];
  if ((v3 - 1) > 3)
  {
    return 15;
  }

  else
  {
    return qword_24CE60[(v3 - 1)];
  }
}

- (TUIHostingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end