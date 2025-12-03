@interface TUIHostingController
- (BOOL)_shouldVendViewForIdentifier:(id)identifier inGroup:(id)group;
- (BOOL)hasProviderForIdentifier:(id)identifier;
- (BOOL)needsGeometryUpdateWithOldTraitCollection:(id)collection newTraitCollection:(id)traitCollection;
- (TUIHostingController)initWithFeedId:(id)id delegate:(id)delegate viewController:(id)controller manager:(id)manager;
- (TUIHostingControllerDelegate)delegate;
- (id)_determineSourceViewFromState:(id)state currentView:(id)view;
- (id)_groupIdentifierForIdentifier:(id)identifier;
- (id)_reusableViewForRefId:(id)id inCurrentView:(id)view;
- (id)newGeometryMap;
- (id)viewStateForIdentifier:(id)identifier;
- (unint64_t)_popoverArrowDirectionFromProperties:(id)properties;
- (void)_configurePopoverLayoutForViewState:(id)state superview:(id)superview shouldPresentViewController:(BOOL)controller;
- (void)_finishOngoingModalTransitionAnimationsWithCompletion:(id)completion;
- (void)_notifyGeometryUpdated;
- (void)_notifyProviderObserversForIdentifier:(id)identifier notifyControllerObservers:(BOOL)observers;
- (void)_removeProviderForViewState:(id)state;
- (void)_updateGeomtry:(id)geomtry forIdentifier:(id)identifier;
- (void)addProvider:(id)provider forIdentifier:(id)identifier;
- (void)addProviderObserver:(id)observer forIdentifier:(id)identifier;
- (void)didEndDisplayForViewState:(id)state;
- (void)endViewUpdatesNotifyDelegate:(BOOL)delegate;
- (void)makeAvailableForReuse:(id)reuse;
- (void)removeProviderForIdentifier:(id)identifier;
- (void)removeProviderObserver:(id)observer forIdentifier:(id)identifier;
- (void)reset;
- (void)runAppearanceAnimationIfNeededForViewState:(id)state;
- (void)runAppearanceTransitionForViewState:(id)state barButtonItem:(id)item;
- (void)runAppearanceTransitionForViewState:(id)state superview:(id)superview;
- (void)runDisappearanceTransitionForViewState:(id)state;
- (void)updateFrameIfNeeded:(BOOL)needed forViewState:(id)state requestedSize:(CGSize)size insets:(UIEdgeInsets)insets;
- (void)updateGeometryForViewState:(id)state requestedSize:(CGSize)size insets:(UIEdgeInsets)insets;
- (void)updateHostingMap:(id)map;
- (void)updateTraitCollection:(id)collection;
- (void)updateVisible:(BOOL)visible forIdentifier:(id)identifier;
@end

@implementation TUIHostingController

- (TUIHostingController)initWithFeedId:(id)id delegate:(id)delegate viewController:(id)controller manager:(id)manager
{
  delegateCopy = delegate;
  controllerCopy = controller;
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = TUIHostingController;
  v13 = [(TUIHostingController *)&v30 init];
  v14 = v13;
  if (v13)
  {
    v13->_feedId.uniqueIdentifier = id.var0;
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14->_viewController = controllerCopy;
    traitCollection = [(UIViewController *)controllerCopy traitCollection];
    traitCollection = v14->_traitCollection;
    v14->_traitCollection = traitCollection;

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

    objc_storeStrong(&v14->_manager, manager);
    *&v14->_flags = 0;
  }

  return v14;
}

- (void)addProvider:(id)provider forIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:identifierCopy];

  if (v8)
  {
    [(TUIHostingController *)self removeProviderForIdentifier:identifierCopy];
  }

  v9 = TUIHostingLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v12 = 134218498;
    v13 = uniqueIdentifier;
    v14 = 2112;
    v15 = providerCopy;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[fid:%lu] adding provider=%@ for identifier=%@", &v12, 0x20u);
  }

  v11 = [[_TUIHostedViewState alloc] initWithController:self provider:providerCopy identifier:identifierCopy];
  [(NSMutableDictionary *)self->_statesMap setObject:v11 forKeyedSubscript:identifierCopy];
  [(TUIHostingController *)self _notifyProviderObserversForIdentifier:identifierCopy notifyControllerObservers:1];
}

- (BOOL)hasProviderForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)_removeProviderForViewState:(id)state
{
  stateCopy = state;
  statesMap = self->_statesMap;
  identifier = [stateCopy identifier];
  v6 = [(NSMutableDictionary *)statesMap objectForKeyedSubscript:identifier];

  v7 = stateCopy;
  if (v6 == stateCopy)
  {
    identifier2 = [stateCopy identifier];
    [(TUIHostingController *)self removeProviderForIdentifier:identifier2];

    v7 = stateCopy;
  }
}

- (void)removeProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = TUIHostingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    v20 = uniqueIdentifier;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[fid:%lu] remove provider for identifier=%@", buf, 0x16u);
  }

  [(NSMutableDictionary *)self->_statesMap setObject:0 forKeyedSubscript:identifierCopy];
  [(TUIHostingController *)self _updateGeomtry:0 forIdentifier:identifierCopy];
  [(TUIHostingController *)self _notifyProviderObserversForIdentifier:identifierCopy notifyControllerObservers:1];
  v7 = [(TUIHostingMap *)self->_hostingMap objectForKeyedSubscript:identifierCopy];
  groupIdentifier = [v7 groupIdentifier];

  if (groupIdentifier)
  {
    [(NSMutableSet *)self->_activeGroups removeObject:groupIdentifier];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(TUIHostingMap *)self->_hostingMap reverseEnumeratorForGroup:groupIdentifier, 0];
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

- (void)updateHostingMap:(id)map
{
  mapCopy = map;
  v6 = mapCopy;
  p_hostingMap = &self->_hostingMap;
  if (self->_hostingMap != mapCopy)
  {
    identifiers = [(TUIHostingMap *)mapCopy identifiers];
    v9 = [identifiers mutableCopy];
    identifiers2 = [(TUIHostingMap *)*p_hostingMap identifiers];
    [v9 intersectSet:identifiers2];

    v11 = [identifiers mutableCopy];
    identifiers3 = [(TUIHostingMap *)*p_hostingMap identifiers];
    [v11 unionSet:identifiers3];

    v28 = v9;
    [v11 minusSet:v9];
    identifiers4 = [(TUIHostingMap *)*p_hostingMap identifiers];
    v14 = [identifiers4 mutableCopy];

    [v14 minusSet:identifiers];
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

    objc_storeStrong(&self->_hostingMap, map);
    if ([v11 count])
    {
      v20 = TUIHostingLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier = self->_feedId.uniqueIdentifier;
        identifiers5 = [(TUIHostingMap *)self->_hostingMap identifiers];
        *buf = 134218498;
        v39 = uniqueIdentifier;
        v40 = 2112;
        v41 = identifiers5;
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

- (void)endViewUpdatesNotifyDelegate:(BOOL)delegate
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
          delegateCopy = delegate;
          v8 = TUIHostingLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            sub_19B118();
          }

          *&self->_flags |= 1u;
          if (delegateCopy)
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
  identifiers = [(TUIHostingMap *)self->_hostingMap identifiers];
  hostingMap = self->_hostingMap;
  self->_hostingMap = 0;

  if ([identifiers count])
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

          [*(*(&v10 + 1) + 8 * v9) hostingController:self didChangeContentIdentifiers:{identifiers, v10}];
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

- (BOOL)_shouldVendViewForIdentifier:(id)identifier inGroup:(id)group
{
  identifierCopy = identifier;
  groupCopy = group;
  if (([(NSMutableSet *)self->_activeGroups containsObject:groupCopy]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(TUIHostingMap *)self->_hostingMap reverseEnumeratorForGroup:groupCopy, 0];
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
        if (v14 == identifierCopy || ([identifierCopy isEqual:*(*(&v17 + 1) + 8 * v13)] & 1) != 0)
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

- (id)viewStateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewRegistry = [(TUIManager *)self->_manager viewRegistry];
  type = [identifierCopy type];
  v7 = [viewRegistry useHostedViewFactoryForType:type];

  if (v7)
  {
    identifierWithoutModelIdentifier = [identifierCopy identifierWithoutModelIdentifier];
    v9 = [(NSMutableDictionary *)self->_reuseMap objectForKeyedSubscript:identifierWithoutModelIdentifier];
    if (v9)
    {
      [(NSMutableDictionary *)self->_reuseMap removeObjectForKey:identifierWithoutModelIdentifier];
      v10 = v9;
    }

    else
    {
      viewRegistry2 = [(TUIManager *)self->_manager viewRegistry];
      type2 = [identifierCopy type];
      v13 = [viewRegistry2 hostedViewFactoryForType:type2];

      viewController = self->_viewController;
      type3 = [identifierCopy type];
      identifier = [identifierCopy identifier];
      parameters = [identifierCopy parameters];
      v18 = [v13 viewController:viewController hostedViewWithType:type3 identifier:identifier parameters:parameters];

      if (v18)
      {
        v10 = -[_TUIHostedFactoryViewState initWithIdentifier:view:flags:]([_TUIHostedFactoryViewState alloc], "initWithIdentifier:view:flags:", identifierCopy, v18, [v13 hostedViewFlags]);
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    if (identifierCopy)
    {
      identifierWithoutModelIdentifier = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:identifierCopy];
    }

    else
    {
      identifierWithoutModelIdentifier = 0;
    }

    if ([(_TUIHostedFactoryViewState *)identifierWithoutModelIdentifier isAvailable])
    {
      identifierWithoutModelIdentifier = identifierWithoutModelIdentifier;
      v10 = identifierWithoutModelIdentifier;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)updateVisible:(BOOL)visible forIdentifier:(id)identifier
{
  visibleCopy = visible;
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_statesMap objectForKeyedSubscript:identifier];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v5 setVisible:visibleCopy];
}

- (void)updateGeometryForViewState:(id)state requestedSize:(CGSize)size insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  stateCopy = state;
  identifier = [stateCopy identifier];
  v13 = [(TUIHostingMap *)self->_hostingMap objectForKeyedSubscript:identifier];
  if (![v13 presentation])
  {
    view = [stateCopy view];
    v15 = UIEdgeInsetsZero.left;
    v20 = UIEdgeInsetsZero.right;
    v21 = UIEdgeInsetsZero.bottom;
    [view bounds];
    v18 = [[TUIHostingGeometry alloc] initWithRequestedSize:width layoutSize:height erasableInsets:left + right + v16, top + bottom + v17, UIEdgeInsetsZero.top, v15, v21, v20];
    v19 = [(NSMutableDictionary *)self->_geometryMap objectForKeyedSubscript:identifier];
    if (([v19 isEqualToGeometry:v18] & 1) == 0)
    {
      [(TUIHostingController *)self _updateGeomtry:v18 forIdentifier:identifier];
    }
  }
}

- (void)_updateGeomtry:(id)geomtry forIdentifier:(id)identifier
{
  geomtryCopy = geomtry;
  identifierCopy = identifier;
  v8 = TUIHostingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v10 = 134218498;
    v11 = uniqueIdentifier;
    v12 = 2112;
    v13 = geomtryCopy;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[fid:%lu] updated geometry=%@ for identifier=%@", &v10, 0x20u);
  }

  [(NSMutableDictionary *)self->_geometryMap setObject:geomtryCopy forKeyedSubscript:identifierCopy];
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

- (BOOL)needsGeometryUpdateWithOldTraitCollection:(id)collection newTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  preferredContentSizeCategory2 = [traitCollectionCopy preferredContentSizeCategory];
  if (preferredContentSizeCategory != preferredContentSizeCategory2 || (v9 = [collectionCopy horizontalSizeClass], v9 != objc_msgSend(traitCollectionCopy, "horizontalSizeClass")) || (v10 = objc_msgSend(collectionCopy, "verticalSizeClass"), v10 != objc_msgSend(traitCollectionCopy, "verticalSizeClass")) || (v11 = objc_msgSend(collectionCopy, "layoutDirection"), v11 != objc_msgSend(traitCollectionCopy, "layoutDirection")))
  {

    goto LABEL_8;
  }

  legibilityWeight = [collectionCopy legibilityWeight];
  legibilityWeight2 = [traitCollectionCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)updateTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(TUIHostingController *)self needsGeometryUpdateWithOldTraitCollection:self->_traitCollection newTraitCollection:?];
  objc_storeStrong(&self->_traitCollection, collection);
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
    identifiers = [(TUIHostingMap *)self->_hostingMap identifiers];
    v6 = [(TUIHostingGeometryMap *)v3 initWithMap:geometryMap identifiers:identifiers];
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

- (void)addProviderObserver:(id)observer forIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  v8 = TUIHostingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v11 = 134218498;
    v12 = uniqueIdentifier;
    v13 = 2048;
    v14 = observerCopy;
    v15 = 2112;
    v16 = identifierCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[fid:%lu] add observer=%p for identifier=%@", &v11, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_providerObserversMap objectForKeyedSubscript:identifierCopy];
  if (!v10)
  {
    v10 = [NSHashTable hashTableWithOptions:517];
    [(NSMutableDictionary *)self->_providerObserversMap setObject:v10 forKeyedSubscript:identifierCopy];
  }

  [v10 addObject:observerCopy];
}

- (void)removeProviderObserver:(id)observer forIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  v8 = TUIHostingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v11 = 134218498;
    v12 = uniqueIdentifier;
    v13 = 2048;
    v14 = observerCopy;
    v15 = 2112;
    v16 = identifierCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[fid:%lu] remove observer=%p for identifier=%@", &v11, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_providerObserversMap objectForKeyedSubscript:identifierCopy];
  [v10 removeObject:observerCopy];
  if (v10 && ![v10 count])
  {
    [(NSMutableDictionary *)self->_providerObserversMap setObject:0 forKeyedSubscript:identifierCopy];
  }
}

- (void)_notifyProviderObserversForIdentifier:(id)identifier notifyControllerObservers:(BOOL)observers
{
  observersCopy = observers;
  identifierCopy = identifier;
  v7 = TUIHostingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    v31 = uniqueIdentifier;
    v32 = 2112;
    v33 = identifierCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[fid:%lu] notify observers for identifier=%@", buf, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_providerObserversMap objectForKeyedSubscript:identifierCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allObjects = [v9 allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v24 + 1) + 8 * v14) hostingProviderUpdatedForIdentifier:identifierCopy];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [allObjects countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  if (observersCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allObjects2 = [(NSHashTable *)self->_controllerObservers allObjects];
    v16 = [allObjects2 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(allObjects2);
          }

          [*(*(&v20 + 1) + 8 * v19) hostingControllerProvidersUpdated:self];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [allObjects2 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }
}

- (void)_configurePopoverLayoutForViewState:(id)state superview:(id)superview shouldPresentViewController:(BOOL)controller
{
  controllerCopy = controller;
  stateCopy = state;
  superviewCopy = superview;
  hostingMap = self->_hostingMap;
  identifier = [stateCopy identifier];
  v12 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:identifier];

  if ([v12 presentation] == &dword_0 + 1)
  {
    viewController = [stateCopy viewController];
    isBeingPresented = [viewController isBeingPresented];

    if ((isBeingPresented & 1) == 0)
    {
      v15 = [(TUIHostingController *)self _determineSourceViewFromState:stateCopy currentView:superviewCopy];
      viewController2 = [stateCopy viewController];
      popoverPresentationController = [viewController2 popoverPresentationController];
      sourceView = [popoverPresentationController sourceView];

      if (!v15 || v15 == sourceView)
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
          v37 = sourceView;
          _os_log_debug_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "[fid:%lu] no need to update layout sourceView=%@ oldSourceView=%@", buf, 0x20u);
        }
      }

      else
      {
        viewController3 = [stateCopy viewController];
        [viewController3 setModalPresentationStyle:7];

        viewController4 = [stateCopy viewController];
        popoverPresentationController2 = [viewController4 popoverPresentationController];
        [popoverPresentationController2 setDelegate:stateCopy];

        viewController5 = [stateCopy viewController];
        popoverPresentationController3 = [viewController5 popoverPresentationController];
        [popoverPresentationController3 setSourceView:v15];

        v24 = [(TUIHostingController *)self _popoverArrowDirectionFromProperties:v12];
        viewController6 = [stateCopy viewController];
        popoverPresentationController4 = [viewController6 popoverPresentationController];
        [popoverPresentationController4 setPermittedArrowDirections:v24];

        if (!controllerCopy)
        {
LABEL_10:

          goto LABEL_11;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_CB068;
        v29[3] = &unk_25DCA0;
        v30 = stateCopy;
        selfCopy = self;
        [(TUIHostingController *)self _finishOngoingModalTransitionAnimationsWithCompletion:v29];
        v27 = v30;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)runAppearanceTransitionForViewState:(id)state superview:(id)superview
{
  stateCopy = state;
  superviewCopy = superview;
  hostingMap = self->_hostingMap;
  identifier = [stateCopy identifier];
  v10 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:identifier];

  if ([v10 presentation])
  {
    if ([v10 presentation] == &dword_0 + 1)
    {
      [(TUIHostingController *)self _presentPopoverLayoutForViewState:stateCopy superview:superviewCopy];
    }
  }

  else
  {
    view = [stateCopy view];
    [view setAutoresizingMask:0];
    viewController = [stateCopy viewController];
    [viewController beginAppearanceTransition:1 animated:0];

    [superviewCopy addSubview:view];
    viewController2 = [stateCopy viewController];
    [viewController2 endAppearanceTransition];

    if (([stateCopy previouslyAppeared] & 1) == 0)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_CB364;
      v14[3] = &unk_25E7C0;
      v14[4] = self;
      v15 = stateCopy;
      v16 = view;
      [UIView performWithoutAnimation:v14];
    }
  }
}

- (void)runAppearanceTransitionForViewState:(id)state barButtonItem:(id)item
{
  stateCopy = state;
  itemCopy = item;
  hostingMap = self->_hostingMap;
  identifier = [stateCopy identifier];
  v10 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:identifier];

  if ([v10 presentation] == &dword_0 + 1)
  {
    viewController = [stateCopy viewController];
    isBeingPresented = [viewController isBeingPresented];

    if ((isBeingPresented & 1) == 0)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_CB4F0;
      v13[3] = &unk_25EB18;
      v14 = stateCopy;
      v15 = itemCopy;
      selfCopy = self;
      v17 = v10;
      [(TUIHostingController *)self _finishOngoingModalTransitionAnimationsWithCompletion:v13];
    }
  }
}

- (id)_determineSourceViewFromState:(id)state currentView:(id)view
{
  viewCopy = view;
  identifier = [state identifier];
  v8 = [(TUIHostingMap *)self->_hostingMap objectForKeyedSubscript:identifier];
  designatedIdentifier = [v8 designatedIdentifier];
  if (designatedIdentifier)
  {
    v10 = [(TUIHostingController *)self _reusableViewForRefId:designatedIdentifier inCurrentView:viewCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = viewCopy;
    }

    v13 = v12;
  }

  else
  {
    v13 = viewCopy;
  }

  return v13;
}

- (id)_reusableViewForRefId:(id)id inCurrentView:(id)view
{
  idCopy = id;
  viewCopy = view;
  v8 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, viewCopy);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  layoutAttributes = [v8 layoutAttributes];
  refId = [layoutAttributes refId];
  v12 = [refId isEqualToString:idCopy];

  if (v12)
  {
    v13 = viewCopy;
    goto LABEL_15;
  }

  v13 = [v9 descendentViewWithRefId:idCopy];
  if (!v13)
  {
LABEL_5:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    subviews = [viewCopy subviews];
    v15 = [subviews countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v19 = [(TUIHostingController *)self _reusableViewForRefId:idCopy inCurrentView:*(*(&v21 + 1) + 8 * i)];
          if (v19)
          {
            v13 = v19;

            goto LABEL_15;
          }
        }

        v16 = [subviews countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (void)_finishOngoingModalTransitionAnimationsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    presentedViewController = [(UIViewController *)self->_viewController presentedViewController];
    if ((([presentedViewController isBeingDismissed] & 1) != 0 || objc_msgSend(presentedViewController, "isBeingPresented")) && (objc_msgSend(presentedViewController, "transitionCoordinator"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      transitionCoordinator = [presentedViewController transitionCoordinator];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_CBADC;
      v8[3] = &unk_261490;
      v9 = completionCopy;
      [transitionCoordinator animateAlongsideTransition:&stru_261468 completion:v8];
    }

    else
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)runAppearanceAnimationIfNeededForViewState:(id)state
{
  stateCopy = state;
  hostingMap = self->_hostingMap;
  identifier = [stateCopy identifier];
  v7 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:identifier];

  if (![v7 presentation])
  {
    view = [stateCopy view];
    if (([stateCopy previouslyAppeared] & 1) == 0)
    {
      [stateCopy setPreviouslyAppeared:1];
      v9 = TUIHostingLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier = self->_feedId.uniqueIdentifier;
        identifier2 = [stateCopy identifier];
        *buf = 134218498;
        v18 = uniqueIdentifier;
        v19 = 2112;
        v20 = identifier2;
        v21 = 2048;
        v22 = view;
        _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "[fid:%lu] show view for identifier=%@ view=%p", buf, 0x20u);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_CBD38;
      v15[3] = &unk_25DE30;
      v10 = view;
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

- (void)runDisappearanceTransitionForViewState:(id)state
{
  stateCopy = state;
  view = [stateCopy view];
  viewController = [stateCopy viewController];

  if (viewController)
  {
    viewController2 = [stateCopy viewController];
    parentViewController = [viewController2 parentViewController];

    if (parentViewController)
    {
      v9 = +[TUIFeedView areFeedUpdatesAnimated];
      viewController3 = [stateCopy viewController];
      v11 = viewController3;
      if (!v9)
      {
        [viewController3 beginAppearanceTransition:0 animated:0];

        [stateCopy recycleViewWithController:self];
        viewController4 = [stateCopy viewController];
        [viewController4 endAppearanceTransition];

        goto LABEL_12;
      }

      [viewController3 beginAppearanceTransition:0 animated:1];

      v12 = TUIHostingLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier = self->_feedId.uniqueIdentifier;
        identifier = [stateCopy identifier];
        *buf = 134218498;
        v36 = uniqueIdentifier;
        v37 = 2112;
        v38 = identifier;
        v39 = 2048;
        v40 = view;
        _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "[fid:%lu] removing view for identifier=%@ view=%p", buf, 0x20u);
      }

      v13 = [UIViewPropertyAnimator alloc];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_CC218;
      v33[3] = &unk_25DE30;
      v14 = view;
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
      v30 = stateCopy;
      [v18 addCompletion:v28];
      [v15 startAnimation];
      [v18 startAnimation];

      v19 = v34;
      goto LABEL_10;
    }

    viewController5 = [stateCopy viewController];
    presentingViewController = [viewController5 presentingViewController];

    if (presentingViewController)
    {
      identifier2 = [stateCopy identifier];
      [(TUIHostingController *)self updateVisible:0 forIdentifier:identifier2];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_CC2D4;
      v26[3] = &unk_25DE30;
      v27 = stateCopy;
      [(TUIHostingController *)self _finishOngoingModalTransitionAnimationsWithCompletion:v26];
      v19 = v27;
LABEL_10:
    }
  }

  else
  {
    [stateCopy recycleViewWithController:self];
  }

LABEL_12:
}

- (void)didEndDisplayForViewState:(id)state
{
  stateCopy = state;
  viewController = [stateCopy viewController];
  [viewController beginAppearanceTransition:0 animated:0];

  [stateCopy recycleViewWithController:self];
  viewController2 = [stateCopy viewController];

  [viewController2 endAppearanceTransition];
}

- (void)makeAvailableForReuse:(id)reuse
{
  reuseCopy = reuse;
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

  identifier = [reuseCopy identifier];
  identifierWithoutModelIdentifier = [identifier identifierWithoutModelIdentifier];
  [(NSMutableDictionary *)reuseMap setObject:reuseCopy forKeyedSubscript:identifierWithoutModelIdentifier];
}

- (id)_groupIdentifierForIdentifier:(id)identifier
{
  v3 = [(TUIHostingMap *)self->_hostingMap objectForKeyedSubscript:identifier];
  groupIdentifier = [v3 groupIdentifier];

  return groupIdentifier;
}

- (void)updateFrameIfNeeded:(BOOL)needed forViewState:(id)state requestedSize:(CGSize)size insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  neededCopy = needed;
  stateCopy = state;
  hostingMap = self->_hostingMap;
  identifier = [stateCopy identifier];
  v17 = [(TUIHostingMap *)hostingMap objectForKeyedSubscript:identifier];
  presentation = [v17 presentation];

  if (!presentation)
  {
    view = [stateCopy view];
    v20 = TUIHostingLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      identifier2 = [stateCopy identifier];
      v38 = [NSNumber numberWithBool:neededCopy];
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
      v44 = view;
      v45 = 2112;
      v46 = identifier2;
      v47 = 2112;
      v48 = v38;
      v49 = 2112;
      v50 = v39;
      v51 = 2112;
      v52 = v40;
      _os_log_debug_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "[fid:%lu] updateFrameIfNeeded view=%@ identifier=%@ needsUpdate=%@ requestedSize=%@ insets=%@", &v41, 0x3Eu);
    }

    if (neededCopy)
    {
      flags = [stateCopy flags];
      v22 = fmax(width - left - right, 0.0);
      v23 = fmax(height - top - bottom, 0.0);
      if (flags)
      {
        v24 = 1.79769313e308;
      }

      else
      {
        v24 = v22;
      }

      if ((flags & 2) != 0)
      {
        v25 = 1.79769313e308;
      }

      else
      {
        v25 = v23;
      }

      view2 = [stateCopy view];
      [view2 sizeThatFits:{v24, v25}];
      v28 = v27;
      v30 = v29;

      [view setFrame:{left, top, v28, v30}];
    }

    else
    {
      [view bounds];
      x = v54.origin.x;
      y = v54.origin.y;
      v33 = v54.size.width;
      v34 = v54.size.height;
      v35 = left + CGRectGetMidX(v54);
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = v33;
      v55.size.height = v34;
      [view setCenter:{v35, top + CGRectGetMidY(v55)}];
    }
  }
}

- (unint64_t)_popoverArrowDirectionFromProperties:(id)properties
{
  arrowDirection = [properties arrowDirection];
  if ((arrowDirection - 1) > 3)
  {
    return 15;
  }

  else
  {
    return qword_24CE60[(arrowDirection - 1)];
  }
}

- (TUIHostingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end