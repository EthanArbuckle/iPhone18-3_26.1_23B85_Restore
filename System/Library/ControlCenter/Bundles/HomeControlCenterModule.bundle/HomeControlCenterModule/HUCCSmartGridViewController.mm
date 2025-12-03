@interface HUCCSmartGridViewController
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_gridLayout;
- (BOOL)_hasTapActionForItem:(id)item;
- (BOOL)_shouldShowHomeNameInHomeCell;
- (BOOL)canDismissQuickControl;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUCCSmartGridViewController)initWithItemType:(unint64_t)type delegate:(id)delegate;
- (HUCCSmartGridViewControllerDelegate)delegate;
- (HUGridHomeCell)homeCell;
- (HUGridSize)occupiedGridSizeForOrientation:(int64_t)orientation;
- (HUMosaicLayoutGeometry)mosaicLayoutGeometry;
- (NSString)description;
- (UICollectionViewCell)pressedTile;
- (id)_cellLayoutOptionsForItem:(id)item;
- (id)_performTapActionForItem:(id)item tappedArea:(id)area;
- (id)arranger;
- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options;
- (id)prepareToPerformToggleActionForItem:(id)item sourceItem:(id)sourceItem;
- (id)presentAccessoryControlsForItem:(id)item;
- (unint64_t)cellSizeForItemAtIndexPath:(id)path;
- (void)_checkForCollectionViewAssertions:(id)assertions;
- (void)_enqueueLayoutOptionsUpdate;
- (void)_performItemConsistencyCheckForIndexPaths:(id)paths withUpdateRequest:(id)request;
- (void)_preloadItemsForPossiblePresentation;
- (void)_restorePressedTileIfNeeded;
- (void)_showDashboardControllerForHome:(id)home;
- (void)_updateHomeCell;
- (void)_updateLayoutOptions;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)dealloc;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load;
- (void)itemManager:(id)manager performUpdateRequest:(id)request;
- (void)itemManagerDidChangeMosaicLayout:(id)layout;
- (void)itemManagerDidChangeNumberOfPlaceholderItems:(id)items;
- (void)presentationCoordinator:(id)coordinator didEndPresentationWithContext:(id)context;
- (void)presentationCoordinatorWillBeginTransition:(id)transition presenting:(BOOL)presenting;
- (void)presentationCoordinatorWillEndTransition:(id)transition presenting:(BOOL)presenting;
- (void)setSizeSubclass:(unint64_t)subclass;
- (void)viewDidLoad;
- (void)willDismissWithViewController:(id)controller;
@end

@implementation HUCCSmartGridViewController

- (HUCCSmartGridViewController)initWithItemType:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = objc_alloc_init(MEMORY[0x29EDC54E0]);
  objc_msgSend_setMosaicLayout_(self, v8, v7);

  v9 = [HUCCSmartGridItemManager alloc];
  v11 = objc_msgSend_initWithMosaicLayoutDelegate_(v9, v10, self);
  v14 = objc_msgSend_mosaicLayout(self, v12, v13);
  v28.receiver = self;
  v28.super_class = HUCCSmartGridViewController;
  v15 = [(HUControllableItemCollectionViewController *)&v28 initWithItemManager:v11 collectionViewLayout:v14];

  if (v15)
  {
    v15->_itemType = type;
    v15->_needsLayoutOptionsUpdate = 1;
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v18 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v16, v17);
    dispatcher = v15->_dispatcher;
    v15->_dispatcher = v18;

    objc_msgSend_addHomeManagerObserver_(v15->_dispatcher, v20, v15);
    v23 = objc_msgSend_mosaicLayout(v15, v21, v22);
    objc_msgSend_setDelegate_(v23, v24, v15);

    if (objc_msgSend_isViewLoaded(v15, v25, v26))
    {
      NSLog(&cfstr_ViewWasLoadedT.isa);
    }
  }

  return v15;
}

- (void)dealloc
{
  v4 = objc_msgSend_mosaicLayout(self, a2, v2);
  objc_msgSend_setDelegate_(v4, v5, 0);

  v6.receiver = self;
  v6.super_class = HUCCSmartGridViewController;
  [(HUCCSmartGridViewController *)&v6 dealloc];
}

- (void)setSizeSubclass:(unint64_t)subclass
{
  if (self->_sizeSubclass != subclass)
  {
    self->_sizeSubclass = subclass;
    MEMORY[0x2A1C70FE8]();
  }
}

- (void)_preloadItemsForPossiblePresentation
{
  v5 = objc_msgSend_itemManager(self, a2, v2);
  v8 = objc_msgSend_home(v5, v6, v7);
  self->_shouldBlockCurrentUserFromHome = objc_msgSend_hf_shouldBlockCurrentUserFromHome(v8, v9, v10);

  v11 = dispatch_time(0, 1000000000);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C997918;
  v12[3] = &unk_29F33A970;
  v12[4] = self;
  v12[5] = a2;
  dispatch_after(v11, MEMORY[0x29EDCA578], v12);
}

- (BOOL)canDismissQuickControl
{
  v3 = objc_msgSend_quickControlPresentationCoordinator(self, a2, v2);
  isQuickControlPresented = objc_msgSend_isQuickControlPresented(v3, v4, v5);

  return isQuickControlPresented;
}

- (HUMosaicLayoutGeometry)mosaicLayoutGeometry
{
  mosaicLayoutGeometry = self->_mosaicLayoutGeometry;
  if (!mosaicLayoutGeometry)
  {
    v5 = objc_msgSend_layoutGeometry(HUCCSmartGridLayout, a2, v2);
    v6 = self->_mosaicLayoutGeometry;
    self->_mosaicLayoutGeometry = v5;

    mosaicLayoutGeometry = self->_mosaicLayoutGeometry;
  }

  return mosaicLayoutGeometry;
}

- (HUGridHomeCell)homeCell
{
  WeakRetained = objc_loadWeakRetained(&self->_homeCell);
  if (!WeakRetained)
  {
    goto LABEL_3;
  }

  v6 = WeakRetained;
  v7 = objc_msgSend_collectionView(self, v4, v5);
  v8 = objc_loadWeakRetained(&self->_homeCell);
  v10 = objc_msgSend_indexPathForCell_(v7, v9, v8);

  if (!v10)
  {
LABEL_3:
    v11 = objc_msgSend_collectionView(self, v4, v5);
    v14 = objc_msgSend_visibleCells(v11, v12, v13);
    v16 = objc_msgSend_na_firstObjectPassingTest_(v14, v15, &unk_2A23EA668);
    objc_storeWeak(&self->_homeCell, v16);
  }

  v17 = objc_loadWeakRetained(&self->_homeCell);

  return v17;
}

- (HUGridSize)occupiedGridSizeForOrientation:(int64_t)orientation
{
  v58 = *MEMORY[0x29EDCA608];
  v4 = orientation - 1;
  if ((orientation - 1) >= 2)
  {
    v5 = objc_msgSend_currentDevice(MEMORY[0x29EDC7A58], a2, orientation);
    v8 = objc_msgSend_userInterfaceIdiom(v5, v6, v7);

    if (v8 != 1)
    {
      v48 = HFLogForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v54) = 0;
        _os_log_impl(&dword_29C992000, v48, OS_LOG_TYPE_DEFAULT, "Using landscape mosaic layout geometry", &v54, 2u);
      }

      v27 = objc_msgSend_layoutGeometryIsPortrait_(HUCCSmartGridLayout, v49, 0);
      v46 = objc_msgSend_gridSizeForGeometry_withEmptyCells_(MEMORY[0x29EDC54F0], v50, v27, 0);
      goto LABEL_17;
    }
  }

  mosaicLayoutGeometry = self->_mosaicLayoutGeometry;
  if (!mosaicLayoutGeometry)
  {
    v38 = HFLogForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v54) = 0;
      _os_log_impl(&dword_29C992000, v38, OS_LOG_TYPE_DEFAULT, "No mosaic layout geometry available. Using full size grid", &v54, 2u);
    }

    v40 = objc_msgSend_layoutGeometryIsPortrait_(HUCCSmartGridLayout, v39, v4 < 2);
    v41 = self->_mosaicLayoutGeometry;
    self->_mosaicLayoutGeometry = v40;

    v42 = MEMORY[0x29EDC54F0];
    v27 = objc_msgSend_mosaicLayoutGeometry(self, v43, v44);
    v46 = objc_msgSend_gridSizeForGeometry_withEmptyCells_(v42, v45, v27, 0);
LABEL_17:
    v35 = v46;
    v37 = v47;
    goto LABEL_18;
  }

  if (v4 < 2 != objc_msgSend_isPortrait(mosaicLayoutGeometry, a2, orientation))
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 67109120;
      LODWORD(v55) = v4 < 2;
      _os_log_impl(&dword_29C992000, v10, OS_LOG_TYPE_DEFAULT, "Updating isPortrait to %{BOOL}d because orientation changed", &v54, 8u);
    }

    v12 = objc_msgSend_layoutGeometryIsPortrait_(HUCCSmartGridLayout, v11, v4 < 2);
    v13 = self->_mosaicLayoutGeometry;
    self->_mosaicLayoutGeometry = v12;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_itemManager(self, v15, v16);
    v20 = objc_msgSend_numberOfPlaceholderItems(v17, v18, v19);
    v23 = objc_msgSend_mosaicLayoutGeometry(self, v21, v22);
    v54 = 134218242;
    v55 = v20;
    v56 = 2112;
    v57 = v23;
    _os_log_impl(&dword_29C992000, v14, OS_LOG_TYPE_DEFAULT, "Using mosiac layout geometry for %lu placeholder items: %@", &v54, 0x16u);
  }

  v24 = MEMORY[0x29EDC54F0];
  v27 = objc_msgSend_mosaicLayoutGeometry(self, v25, v26);
  v30 = objc_msgSend_itemManager(self, v28, v29);
  v33 = objc_msgSend_numberOfPlaceholderItems(v30, v31, v32);
  v35 = objc_msgSend_gridSizeForGeometry_withEmptyCells_(v24, v34, v27, v33);
  v37 = v36;

LABEL_18:
  v51 = *MEMORY[0x29EDCA608];
  v52 = v35;
  v53 = v37;
  result.var1 = v53;
  result.var0 = v52;
  return result;
}

- (void)viewDidLoad
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v25 = v5;
    v26 = 2080;
    v27 = "[HUCCSmartGridViewController viewDidLoad]";
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s", buf, 0x16u);
  }

  v23.receiver = self;
  v23.super_class = HUCCSmartGridViewController;
  [(HUControllableItemCollectionViewController *)&v23 viewDidLoad];
  v8 = objc_msgSend_clearColor(MEMORY[0x29EDC7A00], v6, v7);
  v11 = objc_msgSend_collectionView(self, v9, v10);
  objc_msgSend_setBackgroundColor_(v11, v12, v8);

  v15 = objc_msgSend_collectionView(self, v13, v14);
  objc_msgSend_setScrollEnabled_(v15, v16, 0);

  v19 = objc_msgSend_itemManager(self, v17, v18);
  objc_msgSend_loadDefaultProviderItem(v19, v20, v21);

  v22 = *MEMORY[0x29EDCA608];
}

- (void)_enqueueLayoutOptionsUpdate
{
  if (objc_msgSend_isViewVisible(self, a2, v2))
  {

    objc_msgSend__updateLayoutOptions(self, v4, v5);
  }

  else
  {

    MEMORY[0x2A1C70FE8](self, sel_setNeedsLayoutOptionsUpdate_, 1);
  }
}

- (void)_updateLayoutOptions
{
  v4 = objc_msgSend_view(self, a2, v2);
  objc_msgSend_bounds(v4, v5, v6);
  v10 = objc_msgSend_layoutOptionsForViewSize_andMosaicSize_(HUCCSmartGridLayout, v7, 1, v8, v9);
  objc_msgSend_setSingleCellLayoutOptions_(self, v11, v10);

  v14 = objc_msgSend_view(self, v12, v13);
  objc_msgSend_bounds(v14, v15, v16);
  v20 = objc_msgSend_layoutOptionsForViewSize_andMosaicSize_(HUCCSmartGridLayout, v17, 2, v18, v19);
  objc_msgSend_setExpandedCellLayoutOptions_(self, v21, v20);

  MEMORY[0x2A1C70FE8](self, sel_setNeedsLayoutOptionsUpdate_, 0);
}

- (id)_cellLayoutOptionsForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_expandedCellLayoutOptions(self, v5, v6);
    v10 = objc_msgSend_sceneCellOptions(v7, v8, v9);
    goto LABEL_5;
  }

  if (objc_msgSend_conformsToProtocol_(itemCopy, v5, &unk_2A2423040))
  {
    v7 = objc_msgSend_singleCellLayoutOptions(self, v11, v12);
    v10 = objc_msgSend_serviceCellOptions(v7, v13, v14);
LABEL_5:
    v15 = v10;

    if (v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_expandedCellLayoutOptions(self, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend_sceneCellOptions(v18, v19, v20), v15 = objc_claimAutoreleasedReturnValue(), v18, objc_msgSend_setCellInnerMargin_(v15, v21, v22, 12.0), objc_msgSend_setIconInnerHorizontalMargin_(v15, v23, v24, 10.0), !v15))
  {
LABEL_9:
    NSLog(&cfstr_MissingCellLay.isa, itemCopy);
    v15 = 0;
  }

LABEL_10:

  return v15;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_gridLayout
{
  v4 = MEMORY[0x29EDC54C8];
  v5 = objc_msgSend_itemType(self, a2, v2);
  v9 = objc_msgSend_sizeSubclass(self, v6, v7);

  v10 = objc_msgSend_controlCenterGridLayoutForItemType_sizeSubclass_(v4, v8, v5, v9);
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  if (objc_msgSend_conformsToProtocol_(itemCopy, v7, &unk_2A2423040) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"HUCCSmartGridViewController.m", 277, @"Unknown item %@", itemCopy);

    v10 = 0;
  }

  return v10;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v46.receiver = self;
  v46.super_class = HUCCSmartGridViewController;
  [(HUControllableItemCollectionViewController *)&v46 configureCell:cellCopy forItem:itemCopy];
  v8 = cellCopy;
  if (objc_msgSend_conformsToProtocol_(v8, v9, &unk_2A24232C8))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v13 = objc_msgSend__cellLayoutOptionsForItem_(self, v12, itemCopy);
    objc_msgSend_setLayoutOptions_(v11, v14, v13);

    objc_msgSend_setPointerInteractionEnabled_(v11, v15, 1);
    objc_msgSend_cellSpacing(HUCCSmartGridLayout, v16, v17);
    objc_msgSend_setPointerRegionMargin_(v11, v18, v19);
  }

  objc_opt_class();
  v20 = v8;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    objc_opt_class();
    v23 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v28 = objc_msgSend_itemManager(self, v26, v27);
    v31 = objc_msgSend_allDisplayedItems(v28, v29, v30);
    if (objc_msgSend_count(v31, v32, v33) == 1)
    {
    }

    else
    {
      v37 = objc_msgSend_home(v25, v34, v35);

      if (v37)
      {
        shouldShowHomeNameInHomeCell = objc_msgSend__shouldShowHomeNameInHomeCell(self, v36, v38);
        objc_msgSend_setShouldShowHomeName_(v22, v40, shouldShowHomeNameInHomeCell);
        objc_msgSend_setShouldShowAsEmptyHome_(v22, v41, 0);
LABEL_18:

        goto LABEL_19;
      }
    }

    objc_msgSend_setShouldShowAsEmptyHome_(v22, v36, 1);
    v44 = objc_msgSend_mosaicLayoutGeometry(self, v42, v43);
    objc_msgSend_setMosaicLayoutGeometry_(v22, v45, v44);

    goto LABEL_18;
  }

LABEL_19:
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_msgSend_deselectItemAtIndexPath_animated_(viewCopy, v8, pathCopy, 0);
  v9.receiver = self;
  v9.super_class = HUCCSmartGridViewController;
  [(HUItemCollectionViewController *)&v9 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
}

- (id)prepareToPerformToggleActionForItem:(id)item sourceItem:(id)sourceItem
{
  itemCopy = item;
  sourceItemCopy = sourceItem;
  if (!objc_msgSend_requiresUnlockToPerformActionForItem_(self, v8, itemCopy))
  {
    goto LABEL_5;
  }

  v11 = objc_msgSend_delegate(self, v9, v10);
  isDeviceUnlockedForGridViewController = objc_msgSend_isDeviceUnlockedForGridViewController_(v11, v12, self);

  if (isDeviceUnlockedForGridViewController)
  {
    goto LABEL_5;
  }

  v14 = objc_msgSend_delegate(self, v9, v10);
  v16 = objc_msgSend_prepareForActionRequiringDeviceUnlockForGridViewController_(v14, v15, self);

  if (v16)
  {
    v17 = 0;
    v18 = v16;
  }

  else
  {
LABEL_5:
    v18 = objc_msgSend_futureWithNoResult(MEMORY[0x29EDC5E50], v9, v10);
    v16 = 0;
    v17 = 1;
  }

  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = sub_29C998C70;
  v24[3] = &unk_29F33A9B8;
  v25 = itemCopy;
  v26 = sourceItemCopy;
  selfCopy = self;
  v19 = sourceItemCopy;
  v20 = itemCopy;
  v22 = objc_msgSend_flatMap_(v18, v21, v24);

  if (v17)
  {
  }

  return v22;
}

- (BOOL)_hasTapActionForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HUCCSmartGridViewController;
    v8 = [(HUControllableItemCollectionViewController *)&v10 _hasTapActionForItem:v5];
  }

  return v8;
}

- (id)_performTapActionForItem:(id)item tappedArea:(id)area
{
  v32 = *MEMORY[0x29EDCA608];
  itemCopy = item;
  areaCopy = area;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412802;
    v27 = v10;
    v28 = 2080;
    v29 = "[HUCCSmartGridViewController _performTapActionForItem:tappedArea:]";
    v30 = 2112;
    v31 = itemCopy;
    _os_log_impl(&dword_29C992000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s %@", buf, 0x20u);
  }

  objc_opt_class();
  v11 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    objc_initWeak(buf, self);
    v14 = MEMORY[0x29EDC5E50];
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = sub_29C998FD0;
    v23[3] = &unk_29F33A9E0;
    objc_copyWeak(&v25, buf);
    v24 = v13;
    v17 = objc_msgSend_mainThreadScheduler(MEMORY[0x29EDC5E58], v15, v16);
    v19 = objc_msgSend_futureWithBlock_scheduler_(v14, v18, v23, v17);

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = HUCCSmartGridViewController;
    v19 = [(HUControllableItemCollectionViewController *)&v22 _performTapActionForItem:v11 tappedArea:areaCopy];
  }

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

- (void)_showDashboardControllerForHome:(id)home
{
  homeCopy = home;
  v8 = objc_msgSend_delegate(self, v5, v6);
  objc_msgSend_displayHome_(v8, v7, homeCopy);
}

- (void)_updateHomeCell
{
  shouldShowHomeNameInHomeCell = objc_msgSend__shouldShowHomeNameInHomeCell(self, a2, v2);
  v8 = objc_msgSend_homeCell(self, v5, v6);
  objc_msgSend_setShouldShowHomeName_(v8, v7, shouldShowHomeNameInHomeCell);
}

- (BOOL)_shouldShowHomeNameInHomeCell
{
  v3 = objc_msgSend_dispatcher(self, a2, v2);
  v6 = objc_msgSend_homeManager(v3, v4, v5);
  v9 = objc_msgSend_homes(v6, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11) > 1;

  return v12;
}

- (void)_restorePressedTileIfNeeded
{
  v4 = objc_msgSend_pressedTile(self, a2, v2);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_pressedTile(self, v5, v6);
    isHidden = objc_msgSend_isHidden(v8, v9, v10);

    if (isHidden)
    {
      v15 = objc_msgSend_pressedTile(self, v12, v13);
      objc_msgSend_setHidden_(v15, v14, 0);
    }
  }
}

- (id)arranger
{
  v2 = objc_alloc(MEMORY[0x29EDC5488]);
  v5 = objc_msgSend_mosaicType(HUCCSmartGridLayout, v3, v4);
  v7 = objc_msgSend_initWithCCMosaicType_(v2, v6, v5);

  return v7;
}

- (void)itemManagerDidChangeMosaicLayout:(id)layout
{
  v44 = *MEMORY[0x29EDCA608];
  if (objc_msgSend_isBoundsChangeUpdate(self, a2, layout))
  {
    objc_msgSend_setIsBoundsChangeUpdate_(self, v4, 0);
  }

  else
  {
    v8 = objc_msgSend_delegate(self, v4, v5);
    objc_msgSend_gridSizeMayHaveChanged(v8, v9, v10);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = objc_msgSend_collectionView(self, v6, v7, 0);
  v14 = objc_msgSend_visibleCells(v11, v12, v13);

  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v39, v43, 16);
  if (v16)
  {
    v19 = v16;
    v20 = *v40;
    do
    {
      v21 = 0;
      do
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v39 + 1) + 8 * v21);
        v23 = objc_msgSend_collectionView(self, v17, v18);
        v25 = objc_msgSend_indexPathForCell_(v23, v24, v22);

        if (v25)
        {
          v28 = objc_msgSend_itemManager(self, v26, v27);
          v30 = objc_msgSend_mosaicDetailsForDisplayedItemAtIndexPath_(v28, v29, v25);

          if (v30)
          {
            v33 = objc_msgSend_baseItem(v30, v31, v32);

            if (v33)
            {
              v36 = objc_msgSend_baseItem(v30, v34, v35);
              objc_msgSend_configureCell_forItem_(self, v37, v22, v36);
            }
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v39, v43, 16);
    }

    while (v19);
  }

  v38 = *MEMORY[0x29EDCA608];
}

- (void)itemManagerDidChangeNumberOfPlaceholderItems:(id)items
{
  v5 = objc_msgSend_delegate(self, a2, items);
  objc_msgSend_gridSizeMayHaveChanged(v5, v3, v4);
}

- (void)itemManager:(id)manager performUpdateRequest:(id)request
{
  v37 = *MEMORY[0x29EDCA608];
  managerCopy = manager;
  requestCopy = request;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v13 = objc_msgSend_changes(requestCopy, v11, v12);
    v16 = objc_msgSend_operationDescription(v13, v14, v15);
    *buf = 138413058;
    v30 = v10;
    v31 = 2080;
    v32 = "[HUCCSmartGridViewController itemManager:performUpdateRequest:]";
    v33 = 2112;
    v34 = managerCopy;
    v35 = 2112;
    v36 = v16;
    _os_log_impl(&dword_29C992000, v8, OS_LOG_TYPE_INFO, "%@:%s %@ performing item operations: %@", buf, 0x2Au);
  }

  objc_msgSend__checkForCollectionViewAssertions_(self, v17, requestCopy);
  v28.receiver = self;
  v28.super_class = HUCCSmartGridViewController;
  [(HUControllableItemCollectionViewController *)&v28 itemManager:managerCopy performUpdateRequest:requestCopy];
  if (objc_msgSend_isViewLoaded(self, v18, v19))
  {
    v22 = objc_msgSend_collectionView(self, v20, v21);
    v25 = objc_msgSend_indexPathsForVisibleItems(v22, v23, v24);
    objc_msgSend__performItemConsistencyCheckForIndexPaths_withUpdateRequest_(self, v26, v25, requestCopy);
  }

  v27 = *MEMORY[0x29EDCA608];
}

- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options
{
  v34 = *MEMORY[0x29EDCA608];
  managerCopy = manager;
  itemsCopy = items;
  optionsCopy = options;
  if (self && ((objc_msgSend_isViewVisible(self, v11, v12) & 1) != 0 || (objc_msgSend_objectForKeyedSubscript_(optionsCopy, v14, *MEMORY[0x29EDC52F8]), v16 = objc_claimAutoreleasedReturnValue(), v16, v16)))
  {
    v17 = objc_msgSend_superclass(HUCCSmartGridViewController, v14, v15);
    if (objc_msgSend_instancesRespondToSelector_(v17, v18, a2))
    {
      v31.receiver = self;
      v31.super_class = HUCCSmartGridViewController;
      v21 = [(HUItemCollectionViewController *)&v31 itemManager:managerCopy futureToUpdateItems:itemsCopy itemUpdateOptions:optionsCopy];
    }

    else
    {
      v21 = objc_msgSend_futureWithNoResult(MEMORY[0x29EDC5E50], v19, v20);
    }

    v28 = v21;
  }

  else
  {
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_29C992000, v22, OS_LOG_TYPE_DEFAULT, "Blocking full item update for view controller %@ as we are not visible.", buf, 0xCu);
    }

    v23 = MEMORY[0x29EDC5E50];
    v26 = objc_msgSend_na_cancelledError(MEMORY[0x29EDB9FA0], v24, v25);
    v28 = objc_msgSend_futureWithError_(v23, v27, v26);
  }

  v29 = *MEMORY[0x29EDCA608];

  return v28;
}

- (unint64_t)cellSizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = objc_msgSend_itemManager(self, v5, v6);
  v9 = objc_msgSend_mosaicDetailsForDisplayedItemAtIndexPath_(v7, v8, pathCopy);

  v12 = objc_msgSend_itemSize(v9, v10, v11);
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view
{
  y = location.y;
  x = location.x;
  v32[1] = *MEMORY[0x29EDCA608];
  v31.receiver = self;
  v31.super_class = HUCCSmartGridViewController;
  v10 = [(HUControllableItemCollectionViewController *)&v31 presentationCoordinator:coordinator shouldBeginInteractivePresentationWithTouchLocation:view view:?];
  if (v10)
  {
    v11 = objc_msgSend_collectionView(self, v8, v9);
    v14 = objc_msgSend_indexPathForItemAtPoint_(v11, v12, v13, x, y);

    if (v14)
    {
      v32[0] = v14;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v15, v32, 1);
      objc_msgSend__performItemConsistencyCheckForIndexPaths_withUpdateRequest_(self, v17, v16, 0);

      v20 = objc_msgSend_itemManager(self, v18, v19);
      v22 = objc_msgSend_displayedItemAtIndexPath_(v20, v21, v14);

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = objc_msgSend_collectionView(self, v23, v24);
        v27 = objc_msgSend_cellForItemAtIndexPath_(v25, v26, v14);
        objc_msgSend_setPressedTile_(self, v28, v27);
      }
    }
  }

  v29 = *MEMORY[0x29EDCA608];
  return v10;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v11 = objc_msgSend_itemManager(self, v9, v10);
  v14 = objc_msgSend_item(contextCopy, v12, v13);
  v15 = objc_opt_class();
  v17 = objc_msgSend_childItemsForItem_ofClass_(v11, v16, v14, v15);
  v46[0] = MEMORY[0x29EDCA5F8];
  v46[1] = 3221225472;
  v46[2] = sub_29C999C58;
  v46[3] = &unk_29F33AA08;
  v46[4] = self;
  v19 = objc_msgSend_na_any_(v17, v18, v46);

  if (v19)
  {
    v22 = objc_msgSend_delegate(self, v20, v21);
    isDeviceUnlockedForGridViewController = objc_msgSend_isDeviceUnlockedForGridViewController_(v22, v23, self);

    if ((isDeviceUnlockedForGridViewController & 1) == 0)
    {
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = sub_29C999C64;
      block[3] = &unk_29F33AA58;
      block[4] = self;
      v44 = contextCopy;
      v45 = coordinatorCopy;
      dispatch_async(MEMORY[0x29EDCA578], block);

      goto LABEL_9;
    }
  }

  v25 = objc_msgSend_item(contextCopy, v20, v21);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v29 = objc_msgSend_item(contextCopy, v27, v28);
    v31 = objc_msgSend__performTapActionForItem_(self, v30, v29);

LABEL_9:
    v40 = 0;
    goto LABEL_10;
  }

  v32 = objc_msgSend_controlItems(contextCopy, v27, v28);
  v35 = objc_msgSend_count(v32, v33, v34);

  if (!v35)
  {
    goto LABEL_9;
  }

  v38 = objc_msgSend_superclass(HUCCSmartGridViewController, v36, v37);
  if (objc_msgSend_instancesRespondToSelector_(v38, v39, a2))
  {
    v42.receiver = self;
    v42.super_class = HUCCSmartGridViewController;
    v40 = [(HUControllableItemCollectionViewController *)&v42 presentationCoordinator:coordinatorCopy shouldBeginPresentationWithContext:contextCopy];
  }

  else
  {
    v40 = 1;
  }

LABEL_10:

  return v40;
}

- (void)presentationCoordinatorWillBeginTransition:(id)transition presenting:(BOOL)presenting
{
  if (presenting)
  {
    v5 = objc_msgSend_pressedTile(self, a2, transition);
    objc_msgSend_setHidden_(v5, v4, 1);
  }
}

- (void)presentationCoordinatorWillEndTransition:(id)transition presenting:(BOOL)presenting
{
  if (!presenting)
  {
    objc_msgSend__restorePressedTileIfNeeded(self, a2, transition);
  }
}

- (void)presentationCoordinator:(id)coordinator didEndPresentationWithContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v11 = objc_msgSend_superclass(HUCCSmartGridViewController, v9, v10);
  if (objc_msgSend_instancesRespondToSelector_(v11, v12, a2))
  {
    v16.receiver = self;
    v16.super_class = HUCCSmartGridViewController;
    [(HUControllableItemCollectionViewController *)&v16 presentationCoordinator:coordinatorCopy didEndPresentationWithContext:contextCopy];
  }

  objc_msgSend__restorePressedTileIfNeeded(self, v13, v14);
  objc_msgSend_setPressedTile_(self, v15, 0);
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  objc_msgSend__updateHomeCell(self, a2, dispatcher, manager, home);

  MEMORY[0x2A1C70FE8](self, sel__preloadItemsForPossiblePresentation, v6);
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load
{
  objc_msgSend__updateHomeCell(self, a2, load);

  MEMORY[0x2A1C70FE8](self, sel__preloadItemsForPossiblePresentation, v4);
}

- (void)_performItemConsistencyCheckForIndexPaths:(id)paths withUpdateRequest:(id)request
{
  pathsCopy = paths;
  requestCopy = request;
  if (objc_msgSend_isViewLoaded(self, v8, v9))
  {
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = sub_29C99A054;
    v17[3] = &unk_29F33AA80;
    v17[4] = self;
    v11 = objc_msgSend_na_map_(pathsCopy, v10, v17);
    if (objc_msgSend_count(v11, v12, v13))
    {
      activity_block[0] = MEMORY[0x29EDCA5F8];
      activity_block[1] = 3221225472;
      activity_block[2] = sub_29C99A18C;
      activity_block[3] = &unk_29F33AAA8;
      v15 = v11;
      v16 = requestCopy;
      _os_activity_initiate(&dword_29C992000, "Control Center item update inconsistency", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    }
  }
}

- (void)_checkForCollectionViewAssertions:(id)assertions
{
  assertionsCopy = assertions;
  v7 = objc_msgSend_collectionView(self, v5, v6);
  v10 = objc_msgSend_numberOfSections(v7, v8, v9);

  if (!v10)
  {
    v13 = objc_msgSend_changes(assertionsCopy, v11, v12);
    v16 = objc_msgSend_allOperations(v13, v14, v15);
    v18 = objc_msgSend_na_any_(v16, v17, &unk_2A23EA688);

    if ((v18 & 1) == 0)
    {
      v19[0] = MEMORY[0x29EDCA5F8];
      v19[1] = 3221225472;
      v19[2] = sub_29C99A7E0;
      v19[3] = &unk_29F33AAA8;
      v19[4] = self;
      v20 = assertionsCopy;
      _os_activity_initiate(&dword_29C992000, "Control Center collection view inconsistency", OS_ACTIVITY_FLAG_DEFAULT, v19);
    }
  }
}

- (NSString)description
{
  v3 = objc_msgSend_builderWithObject_(MEMORY[0x29EDC5E48], a2, self);
  if (objc_msgSend_itemType(self, v4, v5) == 1)
  {
    objc_msgSend_appendString_withName_(v3, v6, @"Scenes", @"itemType");
  }

  else
  {
    objc_msgSend_appendString_withName_(v3, v6, @"Services", @"itemType");
  }

  isViewVisible = objc_msgSend_isViewVisible(self, v7, v8);
  v11 = objc_msgSend_appendBool_withName_(v3, v10, isViewVisible, @"viewVisible");
  v14 = objc_msgSend_build(v3, v12, v13);

  return v14;
}

- (HUCCSmartGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UICollectionViewCell)pressedTile
{
  WeakRetained = objc_loadWeakRetained(&self->_pressedTile);

  return WeakRetained;
}

- (id)presentAccessoryControlsForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = HUCCSmartGridViewController.presentAccessoryControls(for:)(itemCopy);

  return v6;
}

- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler
{
  v9 = (*(*(sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = item;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_29C9AC3C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_29C9AE8F0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_29C9AE8F8;
  v16[5] = v15;
  forCopy = for;
  itemCopy = item;
  selfCopy = self;
  sub_29C9AA764(0, 0, v11, &unk_29C9AE900, v16);
}

- (void)willDismissWithViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  HUCCSmartGridViewController.willDismiss(viewController:)(controllerCopy);
}

@end