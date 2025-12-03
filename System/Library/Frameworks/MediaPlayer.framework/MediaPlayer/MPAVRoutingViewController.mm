@interface MPAVRoutingViewController
- (BOOL)_operationRequiresOptimisticState:(int64_t)state routes:(id)routes;
- (BOOL)_shouldDisplayRouteAsPicked:(id)picked;
- (BOOL)_wouldShareAudioForPickedRoute:(id)route operation:(int64_t)operation pickedRoutes:(id)routes;
- (BOOL)hasCarKitRoute;
- (BOOL)isInCarPlay;
- (BOOL)isInVehicle;
- (BOOL)shouldOverrideContentSizeCategory:(id)category;
- (CGSize)preferredContentSize;
- (MPAVRoutingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MPAVRoutingViewController)initWithStyle:(unint64_t)style;
- (MPAVRoutingViewController)initWithStyle:(unint64_t)style routingController:(id)controller;
- (MPAVRoutingViewControllerDelegate)delegate;
- (MPAVRoutingViewControllerThemeDelegate)themeDelegate;
- (double)_tableViewFooterViewHeight;
- (double)_tableViewHeaderViewHeight;
- (double)_tableViewHeightAccordingToDataSource;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_createRefreshUpdate;
- (id)_createReloadUpdate;
- (id)_createRoutingViewItemsForRoutes:(id)routes;
- (id)_createSectionedCollection:(id)collection withPickedRoutes:(id)routes;
- (id)_displayAsPickedRoutesInRoutes:(id)routes;
- (id)_displayableRoutesInRoutes:(id)routes;
- (id)_stateDumpObject;
- (id)_volumeCapableRoutesInRoutes:(id)routes;
- (id)endpointGroupUID;
- (id)groupUIDForRoute:(id)route;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_applicationWillEnterForegroundNotification:(id)notification;
- (void)_applyUpdate:(id)update;
- (void)_configureCell:(id)cell forIndexPath:(id)path;
- (void)_createUpdateWithCompletion:(id)completion;
- (void)_diplayShareAudioDisabledAlertForReason:(id)reason;
- (void)_endUpdates;
- (void)_enqueueUpdate:(id)update;
- (void)_initWithStyle:(unint64_t)style routingController:(id)controller;
- (void)_registerCarPlayObserver;
- (void)_registerNotifications;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setNeedsDisplayedRoutesUpdate;
- (void)_setNeedsRouteDiscoveryModeUpdate;
- (void)_setRouteDiscoveryMode:(int64_t)mode;
- (void)_setTableCellsBackgroundColor:(id)color;
- (void)_setTableCellsContentColor:(id)color;
- (void)_setupUpdateTimerIfNecessary;
- (void)_unregisterNotifications;
- (void)_updateDisplayedRoutes;
- (void)_volumeSliderVolumeControlAvailabilityDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)enqueueRefreshUpdate;
- (void)registerTableViewCells;
- (void)routingCellDidTapToExpand:(id)expand;
- (void)routingController:(id)controller shouldHijackRoute:(id)route alertStyle:(int64_t)style busyRouteName:(id)name presentingAppName:(id)appName completion:(id)completion;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setAVItemType:(int64_t)type;
- (void)setDiscoveryModeOverride:(id)override;
- (void)setEndpointRoute:(id)route;
- (void)setGroupSliderCoordinator:(id)coordinator;
- (void)setIconStyle:(unint64_t)style;
- (void)setMirroringStyle:(unint64_t)style;
- (void)setOptimisticUpdate:(id)update;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateExpandedGroups;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation MPAVRoutingViewController

- (MPAVRoutingViewControllerThemeDelegate)themeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_themeDelegate);

  return WeakRetained;
}

- (MPAVRoutingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_stateDumpObject
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13[0] = @"style";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_style];
  v4 = v3;
  displayedEndpointRoute = self->_displayedEndpointRoute;
  if (!displayedEndpointRoute)
  {
    displayedEndpointRoute = @"<NONE>";
  }

  v14[0] = v3;
  v14[1] = displayedEndpointRoute;
  v13[1] = @"displayedEndpointRoute";
  v13[2] = @"routeDiscoveryMode";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_routeDiscoveryMode];
  v14[2] = v6;
  v13[3] = @"onScreen";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_onScreen];
  v14[3] = v7;
  v13[4] = @"inCarPlay";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPAVRoutingViewController isInCarPlay](self, "isInCarPlay")}];
  v9 = v8;
  v13[5] = @"routingViewItems";
  routingViewItems = self->_routingViewItems;
  if (!routingViewItems)
  {
    routingViewItems = @"<NONE>";
  }

  v14[4] = v8;
  v14[5] = routingViewItems;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

- (id)_createSectionedCollection:(id)collection withPickedRoutes:(id)routes
{
  v27[1] = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  collectionCopy = collection;
  v8 = objc_alloc_init(MPMutableSectionedCollection);
  localDevices = [collectionCopy localDevices];
  headphones = [collectionCopy headphones];
  speakersAndTVs = [collectionCopy speakersAndTVs];

  if ([localDevices count])
  {
    [(MPMutableSectionedCollection *)v8 appendSection:@"LOCAL DEVICES"];
    [(MPMutableSectionedCollection *)v8 appendItems:localDevices];
  }

  if ([headphones count] || _MPAVRoutingViewControllerRoutesContainsSplitterCapableRoute(routesCopy))
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v13 = [v12 localizedStringForKey:@"ROUTING_VIEW_HEADER_HEADPHONES" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    [(MPMutableSectionedCollection *)v8 appendSection:v13];

    [(MPMutableSectionedCollection *)v8 appendItems:headphones];
    endpointRoute = [(MPAVRoutingViewController *)self endpointRoute];
    if ([endpointRoute isSplitRoute])
    {

      goto LABEL_15;
    }

    v15 = _MPAVRoutingViewControllerRoutesContainsSplitterCapableRoute(routesCopy);

    if (v15)
    {
      isInVehicle = [(MPAVRoutingViewController *)self isInVehicle];
      if ([(MPAVRoutingViewController *)self isInCarPlay])
      {
        v17 = @"ROUTING_VIEW_SHARE_AUDIO_DISABLED_CARPLAY";
      }

      else
      {
        if (![(MPAVRoutingViewController *)self hasCarKitRoute])
        {
          v19 = 0;
          goto LABEL_14;
        }

        v17 = @"ROUTING_VIEW_SHARE_AUDIO_DISABLED_CARKIT";
      }

      v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v19 = [v18 localizedStringForKey:v17 value:&stru_1F149ECA8 table:@"MediaPlayer"];

LABEL_14:
      v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v21 = [v20 localizedStringForKey:@"ROUTING_VIEW_SHARE_AUDIO" value:&stru_1F149ECA8 table:@"MediaPlayer"];
      v22 = [MPAVRoutingViewItem itemWithActionTitle:v21 subtitle:v19 enabled:!isInVehicle identifier:@"Share Audio" image:0];

      v27[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [(MPMutableSectionedCollection *)v8 appendItems:v23];
    }
  }

LABEL_15:
  if ([speakersAndTVs count])
  {
    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v25 = [v24 localizedStringForKey:@"ROUTING_VIEW_HEADER_SPEAKERS_AND_TVS" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    [(MPMutableSectionedCollection *)v8 appendSection:v25];

    [(MPMutableSectionedCollection *)v8 appendItems:speakersAndTVs];
  }

  return v8;
}

- (id)_createRoutingViewItemsForRoutes:(id)routes
{
  v78 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v62 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v58 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v6 = MRAVEndpointGetLocalEndpoint();
  v7 = MEMORY[0x1E695DFD8];
  outputDeviceUIDs = [v6 outputDeviceUIDs];
  v56 = [v7 setWithArray:outputDeviceUIDs];

  localDeviceUID = [MEMORY[0x1E69B09A8] localDeviceUID];
  v50 = v6;
  outputDevices = [v6 outputDevices];
  firstObject = [outputDevices firstObject];
  v52 = [firstObject uid];

  v51 = routesCopy;
  v11 = [routesCopy mutableCopy];
  selfCopy = self;
  if ([(MPAVRoutingViewController *)self shouldGroupRoutingViewItems])
  {
    obj = v11;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v12 = routesCopy;
    v13 = [v12 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = v13;
    v15 = *v73;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v73 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v72 + 1) + 8 * v16);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v17 isDeviceSpeakerRoute] & 1) == 0)
        {
          v18 = v17;
          v19 = [(MPAVRoutingViewController *)selfCopy groupUIDForRoute:v18];
          routeUID = [v18 routeUID];
          v21 = [routeUID isEqualToString:v52];

          if (v21)
          {
            v22 = v5;
            v23 = v18;
            v24 = localDeviceUID;
            goto LABEL_15;
          }

          if ([v18 isGroupLeader] && v19 && v19 != localDeviceUID)
          {
            v22 = v5;
            v23 = v18;
            v24 = v19;
LABEL_15:
            [v22 setObject:v23 forKeyedSubscript:v24];
          }

          else if (v19)
          {
            v25 = [v58 objectForKeyedSubscript:v19];
            if (!v25)
            {
              v25 = objc_opt_new();
              [v58 setObject:v25 forKeyedSubscript:v19];
            }

            [v25 addObject:v18];
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v26 = [v12 countByEnumeratingWithState:&v72 objects:v77 count:16];
      v14 = v26;
      if (!v26)
      {
LABEL_24:

        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __62__MPAVRoutingViewController__createRoutingViewItemsForRoutes___block_invoke;
        v69[3] = &unk_1E7676680;
        v70 = v5;
        v11 = obj;
        v71 = obj;
        [v58 enumerateKeysAndObjectsUsingBlock:v69];

        break;
      }
    }
  }

  v57 = v5;
  v54 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obja = v11;
  v27 = [obja countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v66;
    do
    {
      v30 = 0;
      v59 = v28;
      do
      {
        if (*v66 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = *(*(&v65 + 1) + 8 * v30);
        v32 = [MPAVRoutingViewItem itemWithRoute:v31];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_41;
        }

        v33 = v31;
        v34 = [(MPAVRoutingViewController *)selfCopy groupUIDForRoute:v33];
        routeUID2 = [v33 routeUID];
        v36 = [v56 containsObject:routeUID2];

        if (v36)
        {
          v37 = localDeviceUID;

          v34 = v37;
        }

        v38 = [v57 objectForKeyedSubscript:v34];
        v39 = [v58 objectForKeyedSubscript:v34];
        v40 = [(NSMutableSet *)selfCopy->_expandedGroupUIDs containsObject:v34];
        v41 = [v39 count];
        v42 = 1;
        if (v34 && v41)
        {
          v43 = [v39 arrayByAddingObject:v38];
          [v54 setObject:v43 forKeyedSubscript:v34];

          if (v40)
          {
            v42 = 1;
          }

          else if (v33 == v38)
          {
            v44 = [MPAVRoutingViewItem itemWithLeader:v33 members:v39];

            v42 = 1;
            v32 = v44;
          }

          else
          {
            v42 = 0;
          }
        }

        v28 = v59;
        if (v42)
        {
LABEL_41:
          isDeviceSpeakerRoute = [v31 isDeviceSpeakerRoute];
          v46 = v63;
          if ((isDeviceSpeakerRoute & 1) == 0)
          {
            isShareableRoute = [v31 isShareableRoute];
            v46 = v62;
            if ((isShareableRoute & 1) == 0)
            {
              if ([v31 isHeadphonesRoute])
              {
                v46 = v62;
              }

              else
              {
                v46 = v53;
              }
            }
          }

          [v46 addObject:v32];
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [obja countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v28);
  }

  v48 = objc_opt_new();
  [v48 setRouteGrouping:v54];
  [v48 setHeadphones:v62];
  [v48 setLocalDevices:v63];
  [v48 setSpeakersAndTVs:v53];

  return v48;
}

void __62__MPAVRoutingViewController__createRoutingViewItemsForRoutes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];

  if (!v6)
  {
    v7 = [v5 firstObject];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v12];
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:v12];
  if ([v5 count])
  {
    v9 = 0;
    do
    {
      v10 = [v5 objectAtIndexedSubscript:v9];
      v11 = v10;
      if (!v8 || v8 == v10)
      {
        ++v9;
      }

      else
      {
        [*(a1 + 40) removeObject:v10];
        [*(a1 + 40) insertObject:v11 atIndex:{++v9 + objc_msgSend(*(a1 + 40), "indexOfObject:", v8)}];
      }
    }

    while ([v5 count] > v9);
  }
}

- (id)groupUIDForRoute:(id)route
{
  routeCopy = route;
  v4 = MRAVEndpointGetLocalEndpoint();
  outputDeviceUIDs = [v4 outputDeviceUIDs];
  routeUID = [routeCopy routeUID];
  v7 = [outputDeviceUIDs containsObject:routeUID];

  if (v7)
  {
    [MEMORY[0x1E69B09A8] localDeviceUID];
  }

  else
  {
    [routeCopy groupUID];
  }
  v8 = ;

  return v8;
}

- (void)_endUpdates
{
  _routingController = [(MPAVRoutingViewController *)self _routingController];
  [_routingController setDelegate:0];
}

- (BOOL)_shouldDisplayRouteAsPicked:(id)picked
{
  selfCopy = self;
  routingController = self->_routingController;
  pickedCopy = picked;
  [(MPAVRoutingController *)routingController supportsMultipleSelection];
  [(MPAVRoutingController *)selfCopy->_routingController hasPendingPickedRoutes];
  LOBYTE(selfCopy) = [pickedCopy isDisplayedAsPicked];

  return selfCopy;
}

- (double)_tableViewFooterViewHeight
{
  result = 36.0;
  if (self->_style != 1)
  {
    return 0.0;
  }

  return result;
}

- (double)_tableViewHeaderViewHeight
{
  result = 36.0;
  if (self->_style != 1)
  {
    return 0.0;
  }

  return result;
}

- (void)_applyUpdate:(id)update
{
  v46 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (self->_tableView)
  {
    v5 = [(MPSectionedCollection *)self->_routingViewItems copy];
    displayableAvailableRoutes = [updateCopy displayableAvailableRoutes];
    v27 = [(MPAVRoutingViewController *)self _createRoutingViewItemsForRoutes:displayableAvailableRoutes];

    routeGrouping = [v27 routeGrouping];
    pickedRoutes = [updateCopy pickedRoutes];
    v9 = [(MPAVRoutingViewController *)self _createSectionedCollection:v27 withPickedRoutes:pickedRoutes];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__MPAVRoutingViewController__applyUpdate___block_invoke;
    aBlock[3] = &unk_1E767C7D0;
    aBlock[4] = self;
    v10 = updateCopy;
    v43 = v10;
    v11 = v9;
    v44 = v11;
    v25 = routeGrouping;
    v45 = v25;
    v12 = _Block_copy(aBlock);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __42__MPAVRoutingViewController__applyUpdate___block_invoke_2;
    v39[3] = &unk_1E767A7E8;
    v13 = v5;
    v40 = v13;
    v14 = v11;
    v41 = v14;
    v26 = _Block_copy(v39);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __42__MPAVRoutingViewController__applyUpdate___block_invoke_3;
    v34[3] = &unk_1E7676630;
    v15 = v13;
    v35 = v15;
    v16 = v14;
    v36 = v16;
    v17 = v10;
    v37 = v17;
    selfCopy = self;
    v18 = _Block_copy(v34);
    if (-[MPAVRoutingViewControllerUpdate shouldReload](v17, "shouldReload") || ([v15 changeDetailsToSectionedCollection:v16 isEqualBlock:v26 isUpdatedBlock:v18], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12[2](v12);
      objc_storeStrong(&self->_displayedEndpointRoute, self->_endpointRoute);
      if ([(MPAVRoutingViewControllerUpdate *)v17 shouldReload])
      {
        [(MPAVClippingTableView *)self->_tableView reloadData];
      }
    }

    else
    {
      self->_isAnimatingUpdate = 1;
      tableView = self->_tableView;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __42__MPAVRoutingViewController__applyUpdate___block_invoke_4;
      v30[3] = &unk_1E7681568;
      v33 = v12;
      v21 = v19;
      v31 = v21;
      selfCopy2 = self;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __42__MPAVRoutingViewController__applyUpdate___block_invoke_6;
      v29[3] = &unk_1E7679340;
      v29[4] = self;
      [(MPAVClippingTableView *)tableView performBatchUpdates:v30 completion:v29];
    }

    self->_needsDisplayedRoutesUpdate = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__MPAVRoutingViewController__applyUpdate___block_invoke_134;
      block[3] = &unk_1E7682518;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    pendingUpdate = self->_pendingUpdate;
    if (pendingUpdate == v17)
    {
      self->_pendingUpdate = 0;
    }
  }
}

uint64_t __42__MPAVRoutingViewController__applyUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) displayableAvailableRoutes];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1048);
  *(v3 + 1048) = v2;

  v5 = [*(a1 + 40) pickedRoutes];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1040);
  *(v6 + 1040) = v5;

  v8 = [*(a1 + 40) pendingPickedRoutes];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1056);
  *(v9 + 1056) = v8;

  v11 = [*(a1 + 40) displayAsPickedRoutes];
  v12 = *(a1 + 32);
  v13 = *(v12 + 1064);
  *(v12 + 1064) = v11;

  v14 = [*(a1 + 40) volumeCapableRoutes];
  v15 = *(a1 + 32);
  v16 = *(v15 + 1072);
  *(v15 + 1072) = v14;

  objc_storeStrong((*(a1 + 32) + 1032), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 1080), *(a1 + 56));
  v17 = *(a1 + 32);

  return [v17 updateExpandedGroups];
}

uint64_t __42__MPAVRoutingViewController__applyUpdate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 length];
  v8 = *(a1 + 32);
  if (v7 == 1)
  {
    v9 = [v6 section];

    v10 = [v8 sectionAtIndex:v9];
    v11 = *(a1 + 40);
    v12 = [v5 section];

    v13 = [v11 sectionAtIndex:v12];
    v14 = [v10 isEqualToString:v13];
  }

  else
  {
    v10 = [*(a1 + 32) itemAtIndexPath:v6];

    v13 = [*(a1 + 40) itemAtIndexPath:v5];

    v14 = [v10 isEqual:v13];
  }

  v15 = v14;

  return v15;
}

uint64_t __42__MPAVRoutingViewController__applyUpdate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length] != 1)
  {
    v8 = [*(a1 + 32) itemAtIndexPath:v5];
    v9 = [*(a1 + 40) itemAtIndexPath:v6];
    v10 = [v8 mainRoute];
    v11 = [v9 mainRoute];
    v12 = [v8 type];
    if (v12 == [v9 type])
    {
      v13 = [v8 type];
      if (v13 == 2)
      {
        v7 = [v8 isEqual:v9] ^ 1;
LABEL_10:

        goto LABEL_11;
      }

      if (v13 <= 1)
      {
        v14 = [*(a1 + 48) displayAsPickedRoutes];
        v42 = [v14 containsObject:v11];
        v40 = [*(*(a1 + 56) + 1064) containsObject:v11];

        v15 = [*(a1 + 48) pickedRoutes];
        v38 = [v15 containsObject:v11];
        v36 = [*(*(a1 + 56) + 1040) containsObject:v11];

        v16 = [*(a1 + 48) pendingPickedRoutes];
        v34 = [v16 containsObject:v11];
        v32 = [*(*(a1 + 56) + 1056) containsObject:v11];

        v17 = [*(a1 + 48) volumeCapableRoutes];
        v18 = [v17 containsObject:v11];
        v19 = [*(*(a1 + 56) + 1072) containsObject:v11];

        v20 = [v10 batteryLevel];
        v21 = [v11 batteryLevel];
        if (v20 == v21)
        {
          LOBYTE(v33) = 0;
        }

        else
        {
          [v10 batteryLevel];
          v22 = v31 = v18;
          [v11 batteryLevel];
          v23 = v30 = v19;
          v33 = [v22 isEqual:v23] ^ 1;

          v19 = v30;
          v18 = v31;
        }

        v43 = v42 ^ v40;
        v41 = v38 ^ v36;
        v39 = v34 ^ v32;
        v25 = v18 ^ v19;

        v26 = [v10 routeName];
        v27 = [v11 routeName];
        if (v26 != v27)
        {
          [v10 routeName];
          v28 = v37 = v26;
          v29 = [v11 routeName];
          v35 = [v28 isEqual:v29] ^ 1;

          v26 = v37;
          v25 |= v35;
        }

        v7 = v43 | v41 | v39 | v33 | v25;
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

void __42__MPAVRoutingViewController__applyUpdate___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) deletedSections];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 992);
    v5 = [*(a1 + 32) deletedSections];
    [v4 deleteSections:v5 withRowAnimation:0];
  }

  v6 = [*(a1 + 32) insertedSections];
  v7 = [v6 count];

  if (v7)
  {
    v8 = *(*(a1 + 40) + 992);
    v9 = [*(a1 + 32) insertedSections];
    [v8 insertSections:v9 withRowAnimation:0];
  }

  v10 = [*(a1 + 32) deletedItemIndexPaths];
  v11 = [v10 count];

  if (v11)
  {
    v12 = *(*(a1 + 40) + 992);
    v13 = [*(a1 + 32) deletedItemIndexPaths];
    [v12 deleteRowsAtIndexPaths:v13 withRowAnimation:0];
  }

  v14 = [*(a1 + 32) insertedItemIndexPaths];
  v15 = [v14 count];

  if (v15)
  {
    v16 = *(*(a1 + 40) + 992);
    v17 = [*(a1 + 32) insertedItemIndexPaths];
    [v16 insertRowsAtIndexPaths:v17 withRowAnimation:0];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __42__MPAVRoutingViewController__applyUpdate___block_invoke_5;
  v24[3] = &unk_1E7676658;
  v18 = *(a1 + 32);
  v24[4] = *(a1 + 40);
  [v18 enumerateItemMovesUsingBlock:v24];
  v19 = [*(a1 + 32) updatedItemIndexPaths];
  v20 = [v19 count];

  if (v20)
  {
    v21 = *(a1 + 32);
    v22 = *(*(a1 + 40) + 992);
    v23 = [v21 updatedItemIndexPaths];
    [v22 reloadRowsAtIndexPaths:v23 withRowAnimation:0];
  }
}

void __42__MPAVRoutingViewController__applyUpdate___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MPAVRoutingViewController__applyUpdate___block_invoke_7;
  block[3] = &unk_1E7682518;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __42__MPAVRoutingViewController__applyUpdate___block_invoke_134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1192));
  [WeakRetained routingViewControllerDidUpdateContents:*(a1 + 32)];
}

void *__42__MPAVRoutingViewController__applyUpdate___block_invoke_7(uint64_t a1)
{
  *(*(a1 + 32) + 1016) = 0;
  objc_storeStrong((*(a1 + 32) + 1024), *(*(a1 + 32) + 1240));
  result = *(a1 + 32);
  if (result[125])
  {

    return [result _applyUpdate:?];
  }

  return result;
}

- (void)updateExpandedGroups
{
  v3 = MEMORY[0x1E695DFD8];
  allKeys = [(NSDictionary *)self->_cachedRouteGrouping allKeys];
  v7 = [v3 setWithArray:allKeys];

  [(NSMutableSet *)self->_expandedGroupUIDs intersectSet:v7];
  if ([(NSArray *)self->_cachedPickedRoutes count]== 1)
  {
    expandedGroupUIDs = self->_expandedGroupUIDs;
    endpointGroupUID = [(MPAVRoutingViewController *)self endpointGroupUID];
    [(NSMutableSet *)expandedGroupUIDs addObject:endpointGroupUID];
  }
}

- (id)endpointGroupUID
{
  endpoint = [(MPAVEndpointRoute *)self->_endpointRoute endpoint];
  designatedGroupLeader = [endpoint designatedGroupLeader];
  groupID = [designatedGroupLeader groupID];
  v5 = groupID;
  if (groupID)
  {
    localDeviceUID = groupID;
  }

  else
  {
    localDeviceUID = [MEMORY[0x1E69B09A8] localDeviceUID];
  }

  v7 = localDeviceUID;

  return v7;
}

- (id)_createReloadUpdate
{
  _createRefreshUpdate = [(MPAVRoutingViewController *)self _createRefreshUpdate];
  [_createRefreshUpdate setShouldReload:1];

  return _createRefreshUpdate;
}

- (id)_createRefreshUpdate
{
  v3 = objc_alloc_init(MPAVRoutingViewControllerUpdate);
  [(MPAVRoutingViewControllerUpdate *)v3 setDisplayableAvailableRoutes:self->_cachedDisplayableAvailableRoutes];
  [(MPAVRoutingViewControllerUpdate *)v3 setPickedRoutes:self->_cachedPickedRoutes];
  [(MPAVRoutingViewControllerUpdate *)v3 setPendingPickedRoutes:self->_cachedPendingPickedRoutes];
  [(MPAVRoutingViewControllerUpdate *)v3 setDisplayAsPickedRoutes:self->_cachedDisplayAsPickedRoutes];
  [(MPAVRoutingViewControllerUpdate *)v3 setVolumeCapableRoutes:self->_cachedVolumeCapableRoutes];

  return v3;
}

- (void)_enqueueUpdate:(id)update
{
  updateCopy = update;
  v7 = updateCopy;
  if (!self->_optimisticUpdate)
  {
    v8 = updateCopy;
    if (self->_isAnimatingUpdate)
    {
      objc_storeStrong(&self->_pendingUpdate, update);
    }

    else
    {
      updateCopy = [(MPAVRoutingViewController *)self _applyUpdate:updateCopy];
    }

    v7 = v8;
  }

  MEMORY[0x1EEE66BE0](updateCopy, v6, v7);
}

- (void)setOptimisticUpdate:(id)update
{
  updateCopy = update;
  v7 = updateCopy;
  if (updateCopy)
  {
    [(MPAVRoutingViewController *)self _enqueueUpdate:updateCopy];
    objc_storeStrong(&self->_optimisticUpdate, update);
  }

  else
  {
    optimisticUpdate = self->_optimisticUpdate;
    self->_optimisticUpdate = 0;

    [(MPAVRoutingViewController *)self _updateDisplayedRoutes];
  }
}

- (void)_updateDisplayedRoutes
{
  if (self->_shouldAutomaticallyUpdateRoutesList)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__MPAVRoutingViewController__updateDisplayedRoutes__block_invoke;
    v4[3] = &unk_1E7676608;
    v4[4] = self;
    [(MPAVRoutingViewController *)self _createUpdateWithCompletion:v4];
  }
}

- (void)_createUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  routingController = self->_routingController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MPAVRoutingViewController__createUpdateWithCompletion___block_invoke;
  v7[3] = &unk_1E76765E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MPAVRoutingController *)routingController fetchAvailableRoutesWithCompletionHandler:v7];
}

void __57__MPAVRoutingViewController__createUpdateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MPAVRoutingViewControllerUpdate);
  v5 = [*(*(a1 + 32) + 1104) pickedRoutes];
  v6 = [v5 copy];
  [(MPAVRoutingViewControllerUpdate *)v4 setPickedRoutes:v6];

  v7 = [*(*(a1 + 32) + 1104) pendingPickedRoutes];
  v8 = [v7 allObjects];
  [(MPAVRoutingViewControllerUpdate *)v4 setPendingPickedRoutes:v8];

  v9 = [*(a1 + 32) _displayableRoutesInRoutes:v3];
  [(MPAVRoutingViewControllerUpdate *)v4 setDisplayableAvailableRoutes:v9];

  v38 = v3;
  v10 = [*(a1 + 32) _displayAsPickedRoutesInRoutes:v3];
  [(MPAVRoutingViewControllerUpdate *)v4 setDisplayAsPickedRoutes:v10];

  -[MPAVRoutingViewControllerUpdate setCanGroup:](v4, "setCanGroup:", [*(*(a1 + 32) + 1104) supportsMultipleSelection]);
  -[MPAVRoutingViewControllerUpdate setHasPendingPickedRoutes:](v4, "setHasPendingPickedRoutes:", [*(*(a1 + 32) + 1104) hasPendingPickedRoutes]);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = v4;
  obj = [(MPAVRoutingViewControllerUpdate *)v4 displayAsPickedRoutes];
  v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    v14 = 0x1EB091000uLL;
    v15 = 0x1EB091000uLL;
    do
    {
      v16 = 0;
      v39 = v12;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v42 + 1) + 8 * v16);
        v41 = [*(*(a1 + 32) + *(v14 + 3640)) containsObject:v17];
        v18 = *(v15 + 3548);
        v19 = *(*(a1 + 32) + v18);
        v20 = [v17 routeUID];
        v21 = [v19 objectForKey:v20];

        if (!v21)
        {
          v21 = [*(a1 + 32) _createVolumeSlider];
          v22 = [[MPVolumeControllerRouteDataSource alloc] initWithGroupRoute:*(*(a1 + 32) + 1240) outputDeviceRoute:v17];
          [v21 volumeController];
          v23 = a1;
          v24 = v15;
          v25 = v13;
          v27 = v26 = v14;
          [v27 setDataSource:v22];

          v14 = v26;
          v13 = v25;
          v15 = v24;
          a1 = v23;
          v12 = v39;

          v28 = *(*(a1 + 32) + v18);
          v29 = [v17 routeUID];
          [v28 setObject:v21 forKey:v29];
        }

        v30 = *(*(a1 + 32) + 1264);
        if (v41)
        {
          [v30 addIndividualVolumeSlider:v21];
        }

        else
        {
          [v30 removeIndividualVolumeSlider:v21];
        }

        ++v16;
      }

      while (v12 != v16);
      v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v12);
  }

  v31 = [*(a1 + 32) _volumeCapableRoutesInRoutes:v38];
  [(MPAVRoutingViewControllerUpdate *)v37 setVolumeCapableRoutes:v31];

  v32 = *(a1 + 32);
  v33 = *(v32 + 1024);
  v34 = *(v32 + 1240);
  v35 = v34;
  if (v34 == v33)
  {
    v36 = 0;
  }

  else
  {
    v36 = [v34 isEqual:v33] ^ 1;
  }

  [(MPAVRoutingViewControllerUpdate *)v37 setShouldReload:v36];
  (*(*(a1 + 40) + 16))();
}

- (id)_volumeCapableRoutesInRoutes:(id)routes
{
  v25 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pickedRoutes = [(MPAVRoutingController *)self->_routingController pickedRoutes];
  v6 = [pickedRoutes count];

  if (v6 >= 2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = routesCopy;
    v7 = routesCopy;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          outputDeviceVolumeSliders = self->_outputDeviceVolumeSliders;
          routeUID = [v12 routeUID];
          v15 = [(NSMapTable *)outputDeviceVolumeSliders objectForKey:routeUID];
          volumeController = [v15 volumeController];

          if ([volumeController isVolumeControlAvailable] && -[MPAVRoutingViewController _shouldDisplayRouteAsPicked:](self, "_shouldDisplayRouteAsPicked:", v12))
          {
            [v19 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    routesCopy = v18;
  }

  return v19;
}

- (id)_displayAsPickedRoutesInRoutes:(id)routes
{
  v18 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = routesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(MPAVRoutingViewController *)self _shouldDisplayRouteAsPicked:v11, v13])
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

- (id)_displayableRoutesInRoutes:(id)routes
{
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:routes];
  supportsMultipleSelection = [(MPAVRoutingController *)self->_routingController supportsMultipleSelection];
  hasPendingPickedRoutes = [(MPAVRoutingController *)self->_routingController hasPendingPickedRoutes];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MPAVRoutingViewController__displayableRoutesInRoutes___block_invoke;
  v8[3] = &unk_1E76765B8;
  v9 = supportsMultipleSelection;
  v10 = hasPendingPickedRoutes;
  v8[4] = self;
  v8[5] = 577;
  [v4 sortUsingComparator:v8];

  return v4;
}

uint64_t __56__MPAVRoutingViewController__displayableRoutesInRoutes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(v7 + 1150) != 1)
  {
LABEL_11:
    v12 = [*(v7 + 1104) dataSource];
    v27 = [v12 routeIsLeaderOfEndpoint:v5];

    v13 = [*(*(a1 + 32) + 1104) dataSource];
    v26 = [v13 routeIsLeaderOfEndpoint:v6];

    v31 = [v5 supportsGrouping];
    v30 = [v6 supportsGrouping];
    v29 = [v5 isHomePodRoute];
    v28 = [v6 isHomePodRoute];
    v34 = [v5 isW1Route];
    v33 = [v6 isW1Route];
    v35 = [v5 isH1Route];
    v14 = [v6 isH1Route];
    v15 = [v5 isDisplayedAsPicked];
    v16 = [v6 isDisplayedAsPicked];
    if ([v5 isAppleTVRoute] & 1) != 0 || (objc_msgSend(v5, "isTVRoute"))
    {
      v32 = 1;
    }

    else
    {
      v32 = [v5 containsDeviceWithSubtype:18];
    }

    if ([v6 isAppleTVRoute] & 1) != 0 || (objc_msgSend(v6, "isTVRoute"))
    {
      v17 = 1;
    }

    else
    {
      v17 = [v6 containsDeviceWithSubtype:18];
    }

    v18 = [v5 supportsGrouping];
    v19 = [v6 supportsGrouping];
    if ([*(a1 + 32) sortByIsVideoRoute])
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      v20 = [*(*(a1 + 32) + 1104) representsLongFormVideoContent] ^ 1;
    }

    if (![v5 pickableRouteType] && objc_msgSend(v6, "pickableRouteType"))
    {
      goto LABEL_43;
    }

    if ([v6 pickableRouteType] || !objc_msgSend(v5, "pickableRouteType"))
    {
      if (!(v16 & 1 | ((v15 & 1) == 0)))
      {
        goto LABEL_43;
      }

      if (!(v15 & 1 | ((v16 & 1) == 0)))
      {
        goto LABEL_45;
      }

      if (!(v14 & 1 | ((v35 & 1) == 0)))
      {
        goto LABEL_43;
      }

      if (!(v35 & 1 | ((v14 & 1) == 0)))
      {
        goto LABEL_45;
      }

      if (!(v33 & 1 | ((v34 & 1) == 0)))
      {
        goto LABEL_43;
      }

      if (!(v34 & 1 | ((v33 & 1) == 0)))
      {
        goto LABEL_45;
      }

      if (!(v20 & 1 | ((v18 & v32 & 1) == 0) | v19 & v17 & 1))
      {
        goto LABEL_43;
      }

      if (!(v20 & 1 | ((v19 & v17 & 1) == 0) | v18 & v32 & 1))
      {
        goto LABEL_45;
      }

      if (!(v30 & 1 | ((v31 & 1) == 0)))
      {
        goto LABEL_43;
      }

      if (!(v31 & 1 | ((v30 & 1) == 0)))
      {
        goto LABEL_45;
      }

      if (!(v20 & 1 | ((v32 & 1) == 0) | v17 & 1))
      {
        goto LABEL_43;
      }

      if (!(v20 & 1 | ((v17 & 1) == 0) | v32 & 1))
      {
        goto LABEL_45;
      }

      if (!(v28 & 1 | ((v29 & 1) == 0)))
      {
        goto LABEL_43;
      }

      if (!(v29 & 1 | ((v28 & 1) == 0)))
      {
        goto LABEL_45;
      }

      if (!(v26 & 1 | ((v27 & 1) == 0)))
      {
LABEL_43:
        v10 = -1;
        goto LABEL_46;
      }

      if (v27 & 1 | ((v26 & 1) == 0))
      {
        v21 = [v5 routeName];
        v22 = [v6 routeName];
        v10 = [v21 compare:v22 options:*(a1 + 40)];

        if (!v10)
        {
          v23 = [v5 routeUID];
          v24 = [v6 routeUID];
          v10 = [v23 compare:v24 options:*(a1 + 40)];
        }

        goto LABEL_46;
      }
    }

LABEL_45:
    v10 = 1;
    goto LABEL_46;
  }

  v8 = [*(v7 + 1048) indexOfObject:v5];
  v9 = [*(*(a1 + 32) + 1048) indexOfObject:v6];
  if (v8 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1 + 32);
    goto LABEL_11;
  }

LABEL_46:

  return v10;
}

- (void)_volumeSliderVolumeControlAvailabilityDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__MPAVRoutingViewController__volumeSliderVolumeControlAvailabilityDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setNeedsDisplayedRoutesUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MPAVRoutingViewController__setNeedsDisplayedRoutesUpdate__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setNeedsRouteDiscoveryModeUpdate
{
  if (self->_onScreen)
  {
    discoveryModeOverride = self->_discoveryModeOverride;
    if (discoveryModeOverride)
    {
      routeDiscoveryMode = [(NSNumber *)discoveryModeOverride integerValue];
    }

    else
    {
      routeDiscoveryMode = self->_routeDiscoveryMode;
    }
  }

  else
  {
    routeDiscoveryMode = 0;
  }

  if ([(MPAVRoutingController *)self->_routingController discoveryMode]!= routeDiscoveryMode)
  {
    [(MPAVRoutingController *)self->_routingController setDiscoveryMode:routeDiscoveryMode];

    notify_post("com.apple.airplay.startlogging");
  }
}

- (void)_setRouteDiscoveryMode:(int64_t)mode
{
  if (self->_routeDiscoveryMode != mode)
  {
    self->_routeDiscoveryMode = mode;
    [(MPAVRoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
  }
}

- (void)_setupUpdateTimerIfNecessary
{
  if (self->_onScreen && !self->_updateTimer)
  {
    v3 = MEMORY[0x1E69E96A0];
    objc_initWeak(&location, self);
    v4 = [MPWeakTimer alloc];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __57__MPAVRoutingViewController__setupUpdateTimerIfNecessary__block_invoke;
    v10 = &unk_1E76825E8;
    objc_copyWeak(&v11, &location);
    v5 = [(MPWeakTimer *)v4 initWithInterval:MEMORY[0x1E69E96A0] queue:&v7 block:2.0];
    updateTimer = self->_updateTimer;
    self->_updateTimer = v5;

    [(MPAVRoutingViewController *)self _updateDisplayedRoutes:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __57__MPAVRoutingViewController__setupUpdateTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1145] == 1)
  {
    v2 = WeakRetained;
    [WeakRetained _updateDisplayedRoutes];
    WeakRetained = v2;
  }
}

- (void)_unregisterNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69B1308] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter removeObserver:self name:@"MPVolumeSliderVolumeControlLabelDidChangeNotification" object:0];
}

- (void)_registerCarPlayObserver
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getCARSessionStatusClass_softClass;
  v11 = getCARSessionStatusClass_softClass;
  if (!getCARSessionStatusClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getCARSessionStatusClass_block_invoke;
    v7[3] = &unk_1E7680410;
    v7[4] = &v8;
    __getCARSessionStatusClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = objc_alloc_init(v3);
  carPlayStatus = self->_carPlayStatus;
  self->_carPlayStatus = v5;

  [(CARSessionStatus *)self->_carPlayStatus addSessionObserver:self];
}

- (void)_registerNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter addObserver:self selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter addObserver:self selector:sel__volumeSliderVolumeControlAvailabilityDidChangeNotification_ name:@"MPVolumeSliderVolumeControlAvailabilityDidChangeNotification" object:0];
}

- (void)_configureCell:(id)cell forIndexPath:(id)path
{
  v74 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  [cellCopy setMirroringStyle:self->_mirroringStyle];
  [cellCopy setIconStyle:self->_iconStyle];
  [cellCopy setShouldHideSectionBottomSeparator:1];
  if (self->_tableCellsContentColor)
  {
    [cellCopy setTintColor:?];
  }

  v63 = cellCopy;
  v7 = self->_cachedDisplayableAvailableRoutes;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v8 = v7;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v69;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v69 != v12)
        {
          objc_enumerationMutation(v8);
        }

        if (![*(*(&v68 + 1) + 8 * i) pickableRouteType])
        {
          if (v11)
          {
            v14 = 0;
            goto LABEL_15;
          }

          v11 = 1;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_15:
  v60 = v14;

  v15 = v63;
  delegate = [v63 delegate];

  if (!delegate)
  {
    [v63 setDelegate:self];
  }

  v18 = *MEMORY[0x1E69DDCE0];
  v17 = *(MEMORY[0x1E69DDCE0] + 8);
  v20 = *(MEMORY[0x1E69DDCE0] + 16);
  v19 = *(MEMORY[0x1E69DDCE0] + 24);
  v21 = pathCopy;
  v22 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:pathCopy];
  mainRoute = [v22 mainRoute];
  type = [v22 type];
  v24 = [(MPAVRoutingViewController *)self style]== 3;
  supportsGrouping = [mainRoute supportsGrouping];
  v26 = v24 & [(MPAVRoutingController *)self->_routingController supportsMultipleSelection]& supportsGrouping;
  section = [pathCopy section];
  v61 = mainRoute;
  if (section < [(MPSectionedCollection *)self->_routingViewItems numberOfSections])
  {
    v28 = [pathCopy row];
    v29 = v28 == -[MPSectionedCollection numberOfItemsInSection:](self->_routingViewItems, "numberOfItemsInSection:", [pathCopy section]) - 1 ? 0 : v26;
    if (v29 == 1)
    {
      v30 = [pathCopy row];
      routingViewItems = self->_routingViewItems;
      v32 = [MEMORY[0x1E696AC88] indexPathForItem:v30 + 1 inSection:{objc_msgSend(pathCopy, "section")}];
      v33 = [(MPSectionedCollection *)routingViewItems itemAtIndexPath:v32];

      mainRoute2 = [v33 mainRoute];
      if ([mainRoute2 supportsGrouping])
      {
        v19 = 0.0;
        v17 = 69.0;
        v20 = 0.0;
        v18 = 0.0;
      }
    }
  }

  [v63 setSeparatorInset:{v18, v17, v20, v19}];
  [v63 setTintColor:self->_tableCellsContentColor];
  [v63 setUseSmartAudioCheckmarkStyle:v26];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  routes = [v22 routes];
  v36 = [routes countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (!v36)
  {

    LOBYTE(v39) = 0;
    LOBYTE(v38) = 0;
    goto LABEL_35;
  }

  v37 = v36;
  v58 = v22;
  v38 = 0;
  v39 = 0;
  v40 = *v65;
  do
  {
    for (j = 0; j != v37; ++j)
    {
      if (*v65 != v40)
      {
        objc_enumerationMutation(routes);
      }

      v42 = *(*(&v64 + 1) + 8 * j);
      v38 |= [(NSArray *)self->_cachedPendingPickedRoutes containsObject:v42, v58];
      v39 |= [(NSArray *)self->_cachedDisplayAsPickedRoutes containsObject:v42];
    }

    v37 = [routes countByEnumeratingWithState:&v64 objects:v72 count:16];
  }

  while (v37);

  if (v38 & 1 | ((v39 & 1) == 0))
  {
    v21 = pathCopy;
    v15 = v63;
    v22 = v58;
LABEL_35:
    v43 = 0;
    goto LABEL_37;
  }

  LOBYTE(v38) = 0;
  v43 = 3;
  v21 = pathCopy;
  v15 = v63;
  v22 = v58;
LABEL_37:
  [v15 setAccessoryType:v43];
  [v15 setIsDisplayedAsPicked:v39 & 1];
  [v15 setPendingSelection:v38 & 1];
  v44 = [(NSArray *)self->_cachedVolumeCapableRoutes containsObject:v61];
  v45 = type != 1 && v44;
  if (v45)
  {
    outputDeviceVolumeSliders = self->_outputDeviceVolumeSliders;
    routeUID = [v61 routeUID];
    v48 = [(NSMapTable *)outputDeviceVolumeSliders objectForKey:routeUID];

    [v15 setVolumeSlider:v48];
    volumeSlider = [v15 volumeSlider];
    volumeController = [volumeSlider volumeController];
    [volumeController updateVolumeValue];

    volumeSlider2 = [v15 volumeSlider];
    [volumeSlider2 updateVolume];
  }

  else
  {
    [v15 setVolumeSlider:0];
  }

  [v15 setShowingVolumeSlider:v45];
  endpointRoute = [(MPAVRoutingViewController *)self endpointRoute];
  [v15 updateForEndpoint:endpointRoute routeItem:v22 inferLocalizedModelName:v60];

  if (self->_tableCellsBackgroundColor)
  {
    [v15 setBackgroundColor:?];
  }

  else
  {
    _tableView = [(MPAVRoutingViewController *)self _tableView];
    backgroundColor = [_tableView backgroundColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v56 = [backgroundColor isEqual:clearColor];

    if (v56)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v57 = ;
    [v15 setBackgroundColor:v57];
  }
}

- (BOOL)_operationRequiresOptimisticState:(int64_t)state routes:(id)routes
{
  v21 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v16 = 0u;
  v17 = 0u;
  v6 = [routesCopy count] > 1;
  v18 = 0u;
  v19 = 0u;
  v7 = routesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {

LABEL_12:
    v14 = (state == 2) & v6;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v17;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v16 + 1) + 8 * i);
      v10 |= [v13 isDeviceRoute];
      v6 &= [v13 isSmartAudio];
    }

    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v9);

  if (((state == 1) & v10) != 1 || [v7 count] != 1)
  {
    goto LABEL_12;
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)_applicationWillEnterForegroundNotification:(id)notification
{
  if (self->_discoveryModeBeforeEnteringBackground)
  {
    [(MPAVRoutingViewController *)self _beginRouteDiscovery];
  }

  self->_suspendedDiscoveryModeDueToApplicationState = 0;
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  self->_suspendedDiscoveryModeDueToApplicationState = 1;
  self->_discoveryModeBeforeEnteringBackground = [(MPAVRoutingController *)self->_routingController discoveryMode];

  [(MPAVRoutingViewController *)self _endRouteDiscovery];
}

- (double)_tableViewHeightAccordingToDataSource
{
  [(MPAVRoutingViewController *)self _tableViewHeaderViewHeight];
  v4 = v3;
  [(MPAVRoutingViewController *)self _tableViewFooterViewHeight];
  v6 = v5;
  v7 = [(NSArray *)self->_cachedDisplayAsPickedRoutes count];
  [(MPAVRoutingViewController *)self _normalCellHeight];
  v9 = v8;
  v10 = 0.0;
  if (self->_style == 3)
  {
    v10 = ([(MPSectionedCollection *)self->_routingViewItems numberOfSections]- 1) * 24.0;
  }

  return v6 + v9 * v7 + v4 + v10;
}

- (void)_diplayShareAudioDisabledAlertForReason:(id)reason
{
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:reason preferredStyle:1];
  v4 = MEMORY[0x1E69DC648];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v7 = [v4 actionWithTitle:v6 style:0 handler:0];
  [v8 addAction:v7];

  [(MPAVRoutingViewController *)self showViewController:v8 sender:self];
}

- (BOOL)_wouldShareAudioForPickedRoute:(id)route operation:(int64_t)operation pickedRoutes:(id)routes
{
  routeCopy = route;
  routesCopy = routes;
  firstObject = [routesCopy firstObject];
  if (operation == 1 && [routesCopy count] == 1 && objc_msgSend(routeCopy, "isShareableRoute") && objc_msgSend(firstObject, "isShareableRoute") && objc_msgSend(routeCopy, "supportsGrouping"))
  {
    supportsGrouping = [firstObject supportsGrouping];
  }

  else
  {
    supportsGrouping = 0;
  }

  return supportsGrouping;
}

- (void)_setTableCellsContentColor:(id)color
{
  colorCopy = color;
  if (self->_tableCellsContentColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_tableCellsContentColor, color);
    _createReloadUpdate = [(MPAVRoutingViewController *)self _createReloadUpdate];
    [(MPAVRoutingViewController *)self _enqueueUpdate:_createReloadUpdate];

    colorCopy = v7;
  }
}

- (void)_setTableCellsBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_tableCellsBackgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_tableCellsBackgroundColor, color);
    _createReloadUpdate = [(MPAVRoutingViewController *)self _createReloadUpdate];
    [(MPAVRoutingViewController *)self _enqueueUpdate:_createReloadUpdate];

    colorCopy = v7;
  }
}

- (void)setEndpointRoute:(id)route
{
  routeCopy = route;
  if (self->_endpointRoute != routeCopy)
  {
    v7 = routeCopy;
    objc_storeStrong(&self->_endpointRoute, route);
    [(NSMapTable *)self->_outputDeviceVolumeSliders removeAllObjects];
    v6 = objc_alloc_init(MPAVRoutingViewControllerUpdate);
    [(MPAVRoutingViewControllerUpdate *)v6 setShouldReload:1];
    [(MPAVRoutingViewController *)self _enqueueUpdate:v6];

    routeCopy = v7;
  }
}

- (void)enqueueRefreshUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MPAVRoutingViewController_enqueueRefreshUpdate__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__MPAVRoutingViewController_enqueueRefreshUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _createRefreshUpdate];
  [v1 _enqueueUpdate:v2];
}

- (void)sessionDidDisconnect:(id)disconnect
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = [(MPAVRoutingViewController *)self isInCarPlay];
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_INFO, "CarPlay connected: %{BOOL}u", v5, 8u);
  }

  [(MPAVRoutingViewController *)self enqueueRefreshUpdate];
}

- (void)sessionDidConnect:(id)connect
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = [(MPAVRoutingViewController *)self isInCarPlay];
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_INFO, "CarPlay connected: %{BOOL}u", v5, 8u);
  }

  [(MPAVRoutingViewController *)self enqueueRefreshUpdate];
}

- (void)routingCellDidTapToExpand:(id)expand
{
  v7 = [(MPAVClippingTableView *)self->_tableView indexPathForCell:expand];
  v4 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:?];
  if ([v4 type] == 1)
  {
    mainRoute = [v4 mainRoute];
    v6 = [(MPAVRoutingViewController *)self groupUIDForRoute:mainRoute];

    [(NSMutableSet *)self->_expandedGroupUIDs addObject:v6];
    [(MPAVRoutingViewController *)self enqueueRefreshUpdate];
  }
}

- (void)routingController:(id)controller shouldHijackRoute:(id)route alertStyle:(int64_t)style busyRouteName:(id)name presentingAppName:(id)appName completion:(id)completion
{
  controllerCopy = controller;
  routeCopy = route;
  nameCopy = name;
  appNameCopy = appName;
  completionCopy = completion;
  v17 = completionCopy;
  v43 = routeCopy;
  if (style)
  {
    if (style != 1)
    {
      nameCopy2 = 0;
      v32 = 0;
      v34 = 0;
      nameCopy = 0;
      goto LABEL_13;
    }

    v42 = completionCopy;
    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v20 = [v19 localizedStringForKey:@"ROUTING_SPEAKER_HIJACK_INTERRUPT_LOCAL_MULTITASK_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    nameCopy = [v18 stringWithFormat:v20, nameCopy];

    v22 = MEMORY[0x1E696AEC0];
    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v24 = [v23 localizedStringForKey:@"ROUTING_SPEAKER_HIJACK_INTERRUPT_LOCAL_MULTITASK_MESSAGE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    nameCopy2 = [v22 stringWithFormat:v24, appNameCopy, nameCopy];
  }

  else
  {
    v42 = completionCopy;
    isTVRoute = [routeCopy isTVRoute];
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v28 = v27;
    if (isTVRoute)
    {
      v29 = @"ROUTING_SPEAKER_HIJACK_NAG_MULTITASK_TV_TITLE";
    }

    else
    {
      v29 = @"ROUTING_SPEAKER_HIJACK_NAG_MULTITASK_SPEAKER_TITLE";
    }

    nameCopy = [v27 localizedStringForKey:v29 value:&stru_1F149ECA8 table:@"MediaPlayer"];

    if ([routeCopy isTVRoute])
    {
      v30 = @"ROUTING_SPEAKER_HIJACK_NAG_MULTITASK_TV_MESSAGE";
    }

    else
    {
      v30 = @"ROUTING_SPEAKER_HIJACK_NAG_MULTITASK_SPEAKER_MESSAGE";
    }

    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    nameCopy2 = [v23 localizedStringForKey:v30 value:&stru_1F149ECA8 table:@"MediaPlayer"];
  }

  v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v32 = [v31 localizedStringForKey:@"ROUTING_SPEAKER_HIJACK_NAG_CANCEL" value:&stru_1F149ECA8 table:@"MediaPlayer"];

  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v34 = [v33 localizedStringForKey:@"ROUTING_SPEAKER_HIJACK_NAG_CONFIRM" value:&stru_1F149ECA8 table:@"MediaPlayer"];

  v17 = v42;
LABEL_13:
  v35 = [MEMORY[0x1E69DC650] alertControllerWithTitle:nameCopy message:nameCopy2 preferredStyle:1];
  v36 = MEMORY[0x1E69DC648];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __119__MPAVRoutingViewController_routingController_shouldHijackRoute_alertStyle_busyRouteName_presentingAppName_completion___block_invoke;
  v48[3] = &unk_1E7676590;
  v37 = v17;
  v49 = v37;
  v38 = [v36 actionWithTitle:v32 style:1 handler:v48];
  [v35 addAction:v38];

  v39 = MEMORY[0x1E69DC648];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __119__MPAVRoutingViewController_routingController_shouldHijackRoute_alertStyle_busyRouteName_presentingAppName_completion___block_invoke_2;
  v46[3] = &unk_1E7676590;
  v47 = v37;
  v40 = v37;
  v41 = [v39 actionWithTitle:v34 style:0 handler:v46];
  [v35 addAction:v41];

  [(MPAVRoutingViewController *)self showViewController:v35 sender:self];
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  updatesSincePresentation = self->_updatesSincePresentation;
  self->_updatesSincePresentation = updatesSincePresentation + 1;
  if (updatesSincePresentation > 4)
  {
    [(MPAVRoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
  }

  else
  {
    [(MPAVRoutingViewController *)self _updateDisplayedRoutes];
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  [(MPAVRoutingViewController *)self _normalCellHeight:view];
  traitCollection = [(MPAVRoutingViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v7 = v6;

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  [(MPAVRoutingViewController *)self _normalCellHeight:view];
  traitCollection = [(MPAVRoutingViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v7 = v6;

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v40 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:pathCopy];
  routes = [v8 routes];
  mainRoute = [v8 mainRoute];
  type = [v8 type];
  if (type >= 2)
  {
    if (type != 2)
    {
      goto LABEL_15;
    }

    v12 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      actionIdentifier = [v8 actionIdentifier];
      *buf = 138543362;
      *&buf[4] = actionIdentifier;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "RCS user selected: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (!self->_shouldPickRouteOnSelection || mainRoute == 0)
  {
    if (mainRoute)
    {
      goto LABEL_15;
    }

    v12 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "RCS attempted to select a nil route, ignoring.", buf, 2u);
    }

    goto LABEL_14;
  }

  self->_hasUserSelections = 1;
  if ([(MPAVRoutingController *)self->_routingController routeIsPendingPick:mainRoute])
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = [mainRoute isPicked] ^ 1;
  }

  v16 = [(MPAVRoutingController *)self->_routingController routeIsPendingPick:mainRoute];
  if (v16)
  {
    LOBYTE(v16) = [mainRoute isPicked];
  }

  v17 = v15 | v16;
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  pickedRoutes = [(MPAVRoutingController *)self->_routingController pickedRoutes];
  v20 = [(MPAVRoutingViewController *)self _wouldShareAudioForPickedRoute:mainRoute operation:v18 pickedRoutes:pickedRoutes];

  supportsMultipleSelection = [(MPAVRoutingController *)self->_routingController supportsMultipleSelection];
  if ((v17 & 1) == 0 && [mainRoute isDeviceSpeakerRoute])
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "RCS cannot remove device route", buf, 2u);
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([(MPAVRoutingViewController *)self isInVehicle]&& supportsMultipleSelection && v20)
  {
    v22 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      pickedRoutes2 = [(MPAVRoutingController *)self->_routingController pickedRoutes];
      *buf = 138543618;
      *&buf[4] = mainRoute;
      *&buf[12] = 2114;
      *&buf[14] = pickedRoutes2;
      _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "Can't share audio while in the Car. Route: %{public}@, picked: %{public}@", buf, 0x16u);
    }

    isInCarPlay = [(MPAVRoutingViewController *)self isInCarPlay];
    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v26 = v25;
    if (isInCarPlay)
    {
      v27 = @"ROUTING_VIEW_SHARE_AUDIO_DISABLED_CARPLAY_SAME_OWNER";
    }

    else
    {
      v27 = @"ROUTING_VIEW_SHARE_AUDIO_DISABLED_CARKIT_SAME_OWNER";
    }

    v28 = [v25 localizedStringForKey:v27 value:&stru_1F149ECA8 table:@"MediaPlayer"];

    [(MPAVRoutingViewController *)self _diplayShareAudioDisabledAlertForReason:v28];
LABEL_15:
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v39 = [(MPAVRoutingViewController *)self _operationRequiresOptimisticState:v18 routes:routes];
  routingController = self->_routingController;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __63__MPAVRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v32[3] = &unk_1E7676540;
  v37 = v18;
  v33 = routes;
  selfCopy = self;
  v36 = buf;
  v35 = mainRoute;
  [(MPAVRoutingController *)routingController selectRoutes:v33 operation:v18 completion:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__MPAVRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
  v31[3] = &unk_1E7676568;
  v31[4] = self;
  v31[5] = buf;
  [(MPAVRoutingViewController *)self _createUpdateWithCompletion:v31];

  _Block_object_dispose(buf, 8);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained routingViewController:self didSelectRoutingViewItem:v8];
  }

LABEL_19:
}

void __63__MPAVRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 64) == 1 && [*(a1 + 32) count] >= 2)
  {
    v4 = *(a1 + 40);
    v5 = v4[136];
    v6 = [v4 endpointGroupUID];
    [v5 removeObject:v6];
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  [*(a1 + 40) setOptimisticUpdate:0];
  if (!v3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__MPAVRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v8[3] = &unk_1E76823C0;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __63__MPAVRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MPAVRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
  block[3] = &unk_1E7681330;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  block[4] = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63__MPAVRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 24) == 1)
  {
    return [*(result + 32) setOptimisticUpdate:*(result + 40)];
  }

  return result;
}

void __63__MPAVRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1192));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained routingViewController:*(a1 + 32) didPickRoute:*(a1 + 40)];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  themeDelegate = [(MPAVRoutingViewController *)self themeDelegate];
  if (objc_opt_respondsToSelector())
  {
    [themeDelegate routingViewController:self willDisplayCell:cellCopy];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"_MPAVRoutingViewCellIdentifier" forIndexPath:pathCopy];
  [(MPAVRoutingViewController *)self _configureCell:v7 forIndexPath:pathCopy];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v5 = [(MPSectionedCollection *)self->_routingViewItems sectionAtIndex:section];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section && [(MPAVRoutingViewController *)self style]== 3)
  {
    v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"_MPAVRoutingViewHeaderIdentifier"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 24.0;
  if (!section)
  {
    return 0.0;
  }

  return result;
}

- (CGSize)preferredContentSize
{
  if (self->_tableView)
  {
    view = [(MPAVRoutingViewController *)self view];
    [view layoutIfNeeded];

    [(MPAVClippingTableView *)self->_tableView layoutIfNeeded];
    [(MPAVRoutingViewController *)self _tableViewHeightAccordingToDataSource];
    v5 = 156.0;
    if (v4 >= 156.0 || self->_style != 2)
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0.0;
  }

  v7 = 320.0;
  result.height = v5;
  result.width = v7;
  return result;
}

- (BOOL)shouldOverrideContentSizeCategory:(id)category
{
  categoryCopy = category;
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(categoryCopy);
  v5 = *MEMORY[0x1E69DDC50];

  return v5 == categoryCopy || IsAccessibilityCategory;
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = MPAVRoutingViewController;
  [(MPAVRoutingViewController *)&v12 viewWillLayoutSubviews];
  view = [(MPAVRoutingViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(MPAVClippingTableView *)self->_tableView setFrame:0.0, 0.0, v5, v7];
  traitCollection = [(MPAVRoutingViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if ([(MPAVRoutingViewController *)self shouldOverrideContentSizeCategory:preferredContentSizeCategory])
  {
    view3 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC58]];
    view2 = [(MPAVRoutingViewController *)self view];
    [view2 _setLocalOverrideTraitCollection:view3];
  }

  else
  {
    view3 = [(MPAVRoutingViewController *)self view];
    [view3 _setLocalOverrideTraitCollection:0];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MPAVRoutingViewController;
  [(MPAVRoutingViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (!self->_onScreen)
  {
    [(MPAVRoutingViewController *)self _endRouteDiscovery];
    [(MPWeakTimer *)self->_updateTimer invalidate];
    updateTimer = self->_updateTimer;
    self->_updateTimer = 0;

    [(MPAVRoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MPAVRoutingViewController;
  [(MPAVRoutingViewController *)&v5 viewDidDisappear:disappear];
  [(MPAVRoutingViewController *)self _endRouteDiscovery];
  [(MPWeakTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;

  self->_onScreen = 0;
  [(MPAVRoutingViewController *)self _collapseAllGroups];
  [(MPAVRoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
  [(MPAVRoutingViewController *)self resetDisplayedRoutes];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MPAVRoutingViewController;
  [(MPAVRoutingViewController *)&v4 viewDidAppear:appear];
  if (self->_suspendedDiscoveryModeDueToApplicationState)
  {
    self->_discoveryModeBeforeEnteringBackground = 3;
  }

  else
  {
    [(MPAVRoutingViewController *)self _beginRouteDiscovery];
  }

  self->_updatesSincePresentation = 0;
  [(MPAVRoutingViewController *)self _updateDisplayedRoutes];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MPAVRoutingViewController;
  [(MPAVRoutingViewController *)&v4 viewWillAppear:appear];
  self->_onScreen = 1;
  [(MPAVRoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
}

- (void)registerTableViewCells
{
  [(MPAVClippingTableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"_MPAVRoutingViewHeaderIdentifier"];
  tableView = self->_tableView;
  v4 = objc_opt_class();

  [(MPAVClippingTableView *)tableView registerClass:v4 forCellReuseIdentifier:@"_MPAVRoutingViewCellIdentifier"];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = MPAVRoutingViewController;
  [(MPAVRoutingViewController *)&v21 viewDidLoad];
  view = [(MPAVRoutingViewController *)self view];
  v4 = self->_style == 1;
  v5 = [MPAVClippingTableView alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(MPAVClippingTableView *)v5 initWithFrame:v4 style:*MEMORY[0x1E695F058], v7, v8, v9];
  tableView = self->_tableView;
  self->_tableView = v10;

  [(MPAVClippingTableView *)self->_tableView setSeparatorInset:0.0, 10.0, 0.0, 10.0];
  [(MPAVClippingTableView *)self->_tableView setDataSource:self];
  [(MPAVClippingTableView *)self->_tableView setDelegate:self];
  v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
  [(MPAVClippingTableView *)self->_tableView setTableFooterView:v12];

  continuousCornerRadius = self->_continuousCornerRadius;
  layer = [(MPAVClippingTableView *)self->_tableView layer];
  [layer setCornerRadius:continuousCornerRadius];

  layer2 = [(MPAVClippingTableView *)self->_tableView layer];
  [layer2 setMasksToBounds:1];

  [(MPAVRoutingViewController *)self registerTableViewCells];
  [view addSubview:self->_tableView];
  style = self->_style;
  if (style == 3)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(MPAVRoutingViewController *)self _setTableCellsContentColor:whiteColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(MPAVClippingTableView *)self->_tableView setBackgroundColor:clearColor2];

    [(MPAVClippingTableView *)self->_tableView setIndicatorStyle:2];
    [(MPAVRoutingViewController *)self setIconStyle:1];
  }

  else if (!style)
  {
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [view setBackgroundColor:whiteColor2];
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  self->_continuousCornerRadius = radius;
  layer = [(MPAVClippingTableView *)self->_tableView layer];
  [layer setCornerRadius:radius];
}

- (BOOL)isInVehicle
{
  if ([(MPAVRoutingViewController *)self isInCarPlay])
  {
    return 1;
  }

  return [(MPAVRoutingViewController *)self hasCarKitRoute];
}

- (BOOL)hasCarKitRoute
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  availableRoutes = [(MPAVRoutingController *)self->_routingController availableRoutes];
  v3 = [availableRoutes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(availableRoutes);
        }

        if ([*(*(&v7 + 1) + 8 * i) routeSubtype] == 19)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [availableRoutes countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isInCarPlay
{
  currentSession = [(CARSessionStatus *)self->_carPlayStatus currentSession];
  v3 = currentSession != 0;

  return v3;
}

- (void)setGroupSliderCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (self->_groupSliderCoordinator != coordinatorCopy)
  {
    objc_storeStrong(&self->_groupSliderCoordinator, coordinator);
    [(NSMapTable *)self->_outputDeviceVolumeSliders removeAllObjects];
    [(MPVolumeGroupSliderCoordinator *)self->_groupSliderCoordinator removeAllIndividualVolumeSliders];
  }

  _createReloadUpdate = [(MPAVRoutingViewController *)self _createReloadUpdate];
  [(MPAVRoutingViewController *)self _enqueueUpdate:_createReloadUpdate];
}

- (void)setDiscoveryModeOverride:(id)override
{
  objc_storeStrong(&self->_discoveryModeOverride, override);

  [(MPAVRoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
}

- (void)setIconStyle:(unint64_t)style
{
  if (self->_iconStyle != style)
  {
    self->_iconStyle = style;
    _createReloadUpdate = [(MPAVRoutingViewController *)self _createReloadUpdate];
    [(MPAVRoutingViewController *)self _enqueueUpdate:_createReloadUpdate];
  }
}

- (void)setMirroringStyle:(unint64_t)style
{
  if (self->_mirroringStyle != style)
  {
    self->_mirroringStyle = style;
    [(MPAVRoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
  }
}

- (void)setAVItemType:(int64_t)type
{
  if (self->_avItemType != type)
  {
    self->_avItemType = type;
    [(MPAVRoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
  }
}

- (void)dealloc
{
  notify_cancel(self->_airPlayPasswordAlertDidAppearToken);
  notify_cancel(self->_airPlayPasswordAlertDidCancelToken);
  [(MPAVRoutingViewController *)self _unregisterNotifications];
  [(MPWeakTimer *)self->_updateTimer invalidate];
  v3.receiver = self;
  v3.super_class = MPAVRoutingViewController;
  [(MPAVRoutingViewController *)&v3 dealloc];
}

- (MPAVRoutingViewController)initWithStyle:(unint64_t)style routingController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = MPAVRoutingViewController;
  v7 = [(MPAVRoutingViewController *)&v10 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    [(MPAVRoutingViewController *)v7 _initWithStyle:style routingController:controllerCopy];
  }

  return v8;
}

- (MPAVRoutingViewController)initWithStyle:(unint64_t)style
{
  v7.receiver = self;
  v7.super_class = MPAVRoutingViewController;
  v4 = [(MPAVRoutingViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(MPAVRoutingViewController *)v4 _initWithStyle:style routingController:0];
  }

  return v5;
}

- (MPAVRoutingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = MPAVRoutingViewController;
  v4 = [(MPAVRoutingViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(MPAVRoutingViewController *)v4 _initWithStyle:1 routingController:0];
  }

  return v5;
}

- (void)_initWithStyle:(unint64_t)style routingController:(id)controller
{
  controllerCopy = controller;
  self->_style = style;
  self->_mirroringStyle = 0;
  self->_routeDiscoveryMode = 0;
  if (!controllerCopy)
  {
    v7 = [MPAVRoutingController alloc];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    controllerCopy = [(MPAVRoutingController *)v7 initWithName:v9];
  }

  objc_storeStrong(&self->_routingController, controllerCopy);
  [(MPAVRoutingController *)self->_routingController setDelegate:self];
  self->_suspendedDiscoveryModeDueToApplicationState = 0;
  self->_discoveryModeBeforeEnteringBackground = 0;
  self->_shouldAutomaticallyUpdateRoutesList = 1;
  self->_shouldPickRouteOnSelection = 1;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  outputDeviceVolumeSliders = self->_outputDeviceVolumeSliders;
  self->_outputDeviceVolumeSliders = strongToStrongObjectsMapTable;

  v12 = objc_opt_new();
  expandedGroupUIDs = self->_expandedGroupUIDs;
  self->_expandedGroupUIDs = v12;

  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v15 = [v14 localizedStringForKey:@"AIRTUNES_POPOVER_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  [(MPAVRoutingViewController *)self setTitle:v15];

  [(MPAVRoutingViewController *)self _registerNotifications];
  [(MPAVRoutingViewController *)self _registerCarPlayObserver];
  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69E96A0];
  v17 = MEMORY[0x1E69E96A0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__MPAVRoutingViewController__initWithStyle_routingController___block_invoke;
  v18[3] = &unk_1E7676D98;
  objc_copyWeak(&v19, &location);
  notify_register_dispatch("com.apple.mediaplayer.airPlayPasswordAlertDidCancel", &self->_airPlayPasswordAlertDidCancelToken, v16, v18);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __62__MPAVRoutingViewController__initWithStyle_routingController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[138] clearCachedRoutes];
    [v2 _setNeedsDisplayedRoutesUpdate];
    WeakRetained = v2;
  }
}

@end