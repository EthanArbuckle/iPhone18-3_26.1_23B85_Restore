@interface EKCalendarChooserDefaultImpl
+ (BOOL)groups:(id)groups differStructurallyFromGroups:(id)fromGroups;
+ (id)_disabledIntegrationLocalizedString;
+ (id)_subscribedLocalizedString;
+ (id)delegatesString;
+ (id)hideAllString;
+ (id)showAllString;
- (BOOL)_applySelection;
- (BOOL)_calendarAvailableForEditing:(id)editing;
- (BOOL)_collectionViewHasHeader;
- (BOOL)_isAddCalendarButtonSection:(int64_t)section;
- (BOOL)_isDeclinedEventsSwitchSection:(int64_t)section;
- (BOOL)_isDelegateCalendarsButtonSection:(int64_t)section;
- (BOOL)_isFocusBannerSection:(int64_t)section;
- (BOOL)_isIdentityChooserSection:(int64_t)section;
- (BOOL)_sectionHasFooter:(int64_t)footer;
- (BOOL)_sectionHasHeader:(int64_t)header;
- (BOOL)_shouldDisplayAccountErrorActionCellForGroup:(id)group;
- (BOOL)_shouldShowAddCalendarButtonSection;
- (BOOL)_shouldShowAddHolidayCalendarMenuItem;
- (BOOL)_shouldShowDeclinedEventsSection;
- (BOOL)_shouldShowFocusBanner;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)hasAccountThatCanCreateCalendars;
- (CGSize)preferredContentSize;
- (EKCalendar)selectedCalendar;
- (EKCalendarChooserDefaultImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type eventStore:(id)store;
- (EKCalendarChooserDefaultImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)chooser showDelegateSetupCell:(BOOL)self0 showAccountStatus:(BOOL)self1;
- (EKCalendarChooserDefaultImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle eventStore:(id)store;
- (EKCalendarChooserDelegate)delegate;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (NSSet)selectedCalendars;
- (_UIAccessDeniedView)accessDeniedView;
- (double)_extraSpaceAboveSection:(int64_t)section;
- (double)_maxButtonImageWidthWithSizeCapping;
- (double)_maxCalendarCellCheckmarkImageWidth;
- (id)_allCalendars;
- (id)_buttonConfigurationForImageNamed:(id)named title:(id)title;
- (id)_buttonImageConfiguration;
- (id)_calendarInfoForCalendar:(id)calendar;
- (id)_calendarSetToCalendarIdSet:(id)set;
- (id)_calendarsForSelectedSource;
- (id)_collectionViewLayout;
- (id)_contactForSource:(id)source;
- (id)_currentKnownCalendarIds;
- (id)_filterCalendars:(id)calendars;
- (id)_groupForSection:(int64_t)section;
- (id)_indexPathForCalendar:(id)calendar;
- (id)_loadCalendars;
- (id)_menuForAddCalendarButton:(id)button;
- (id)_preferredAddressFromOwnerAddresses:(id)addresses;
- (id)_saveSelection;
- (id)_sectionIdentifierForGroup:(id)group;
- (id)_statusTextForGroup:(id)group;
- (id)_viewModeTitle;
- (id)centeredCalendar;
- (id)navigationController;
- (id)navigationItem;
- (id)presentationNavigationDelegate;
- (id)toolbarItems;
- (int)_numSelectedGroups;
- (int64_t)_accountErrorActionRowIndexForGroup:(id)group;
- (int64_t)_addCalendarButtonSection;
- (int64_t)_calendarIndex:(int64_t)index toRowIndexInGroup:(id)group;
- (int64_t)_groupsOffset;
- (int64_t)_rowIndex:(int64_t)index toCalendarIndexInGroup:(id)group;
- (unint64_t)supportedInterfaceOrientations;
- (void)_accessoryButtonTappedAtIndexPath:(id)path;
- (void)_calendarEditorDidCompleteWithAction:(int)action createdCalendar:(id)calendar;
- (void)_cleanupCollapsedSectionIdentifiers;
- (void)_collectionViewBuildAndApplyNewSnapshotAnimated:(BOOL)animated completion:(id)completion;
- (void)_commonAddCalendarButtonPressed:(id)pressed;
- (void)_configureAccountErrorCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_configureAddCalendarButtonCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_configureCalendarCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_configureCollectionViewHeaderCell:(id)cell indexPath:(id)path;
- (void)_configureCompletedRemindersCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_configureDeclinedEventsCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_configureDelegateButtonCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_configureDelegateNameCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_configureFocusCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_configureFooterCell:(id)cell indexPath:(id)path;
- (void)_configureHeaderCell:(id)cell indexPath:(id)path item:(id)item;
- (void)_delegateSelectionDidChange:(BOOL)change;
- (void)_ensureWritableCalendarExists;
- (void)_eventStoreChanged:(id)changed;
- (void)_finishRefreshing;
- (void)_layoutNavToolbarControls;
- (void)_presentEditor:(id)editor animated:(BOOL)animated completion:(id)completion;
- (void)_presentEditor:(id)editor withIndexPath:(id)path barButtonItem:(id)item permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated completion:(id)completion;
- (void)_reconfigureCollectionViewAtIndexPath:(id)path;
- (void)_reconfigureHeaders;
- (void)_reconfigureIdentifierInCollectionView:(id)view;
- (void)_reloadCalendarsForcingCollectionViewReload:(BOOL)reload;
- (void)_reloadCollectionViewSection:(int64_t)section;
- (void)_reloadCollectionViewSectionWithIdentifier:(id)identifier;
- (void)_restoreSelection:(id)selection calendarsForSelectedSource:(id)source allCalendars:(id)calendars;
- (void)_selectAllCalendarsAndNotify:(BOOL)notify;
- (void)_selectAllCalendarsAndStores:(BOOL)stores;
- (void)_selectCalendar:(id)calendar selected:(BOOL)selected;
- (void)_selectGroup:(id)group selected:(BOOL)selected;
- (void)_sendAnalyticsEvent:(unint64_t)event forGroup:(id)group;
- (void)_setCalendars:(id)calendars changedObjectsHint:(id)hint forceCollectionViewReload:(BOOL)reload;
- (void)_setSelectedCalendars:(id)calendars notify:(BOOL)notify;
- (void)_showCompletedRemindersChanged:(id)changed;
- (void)_showDeclinedEventsChanged:(id)changed;
- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)status;
- (void)_updateAppEntityAnnotationIfNeededForCalendarCell:(id)cell calendarInfo:(id)info;
- (void)_updateCurrentKnownCalendarIds;
- (void)_updateDelegateSources;
- (void)_updateOrCreateAddCalendarBarButtonItem;
- (void)_updatePossiblyChangedIndexPaths:(id)paths possiblyChangedSectionIndices:(id)indices forGroups:(id)groups withFirstSection:(int64_t)section changedObjectIDSet:(id)set footersChanged:(BOOL)changed reloadEverything:(BOOL)everything;
- (void)_updateShowDelegateCalendarsCell;
- (void)_updateViewControllerTitle;
- (void)_userDidSelectCalendar:(id)calendar selected:(BOOL)selected withIndexPath:(id)path;
- (void)accountRefreshFinished:(id)finished;
- (void)addCalendarButtonPressed:(id)pressed;
- (void)addFamilyCalendarButtonPressed:(id)pressed;
- (void)addHolidayCalendarButtonPressed:(id)pressed;
- (void)addSubscribedCalendarButtonPressed:(id)pressed prefillURL:(id)l;
- (void)calendarEditor:(id)editor didCompleteWithAction:(int)action;
- (void)cancel:(id)cancel;
- (void)centerOnCalendar:(id)calendar;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)completedRemindersChanged;
- (void)declinedEventsChanged;
- (void)done:(id)done;
- (void)focusBannerCollectionViewCellToggled:(id)toggled;
- (void)groupShowAllTapped:(id)tapped;
- (void)identityChanged:(id)changed;
- (void)loadView;
- (void)openAddRegularCalendarWithTitle:(id)title;
- (void)presentAccountErrorAlertForGroup:(id)group;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)refresh:(id)refresh;
- (void)resetBackgroundColor;
- (void)setAllSelected:(BOOL)selected;
- (void)setAllowsPullToRefresh:(BOOL)refresh;
- (void)setCheckedRow:(id)row;
- (void)setChooserMode:(int64_t)mode;
- (void)setCollapsedSectionIdentifiers:(id)identifiers;
- (void)setDisableCalendarsUnselectedByFocus:(BOOL)focus;
- (void)setExplanatoryTextMode:(int)mode;
- (void)setSelectedCalendar:(id)calendar;
- (void)setSelectedCalendars:(id)calendars;
- (void)setShouldOverrideAuthorizationStatus:(BOOL)status withRemoteUIStatus:(int64_t)iStatus displayStyle:(int64_t)style;
- (void)setShowsCancelButton:(BOOL)button;
- (void)setShowsDoneButton:(BOOL)button;
- (void)setToolbarItems:(id)items;
- (void)setToolbarItems:(id)items animated:(BOOL)animated;
- (void)showAddSubscribedCalendarWithURL:(id)l;
- (void)showAllButtonPressed;
- (void)showCalendar:(id)calendar enableDoneInitially:(BOOL)initially;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EKCalendarChooserDefaultImpl

- (EKCalendarChooserDefaultImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)chooser showDelegateSetupCell:(BOOL)self0 showAccountStatus:(BOOL)self1
{
  v33[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  storeCopy = store;
  sourceCopy = source;
  if (type >= 2)
  {
    [EKCalendarChooserDefaultImpl initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:];
  }

  v32.receiver = self;
  v32.super_class = EKCalendarChooserDefaultImpl;
  v20 = [(EKCalendarChooserDefaultImpl *)&v32 initWithNibName:0 bundle:0];
  if (v20)
  {
    EKUILogInitIfNeeded();
    v20->_style = style;
    v20->_displayStyle = displayStyle;
    *&v20->_flags = *&v20->_flags & 0xEF | (16 * (displayStyle == 1));
    v20->_entityType = type;
    v20->_chooserMode = 0;
    objc_storeStrong(&v20->_event, event);
    objc_storeStrong(&v20->_eventStore, store);
    objc_storeStrong(&v20->_limitedToSource, source);
    *&v20->_flags &= ~0x20u;
    v20->_canShowIdentityChooser = chooser;
    v20->_canShowDelegateSetupCell = cell;
    v20->_showAccountStatus = status;
    v21 = objc_opt_new();
    selectedCalendars = v20->_selectedCalendars;
    v20->_selectedCalendars = v21;

    *&v20->_flags |= 1u;
    v23 = [MEMORY[0x1E695DFD8] set];
    collapsedSectionIdentifiers = v20->_collapsedSectionIdentifiers;
    v20->_collapsedSectionIdentifiers = v23;

    objc_initWeak(&location, v20);
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v33[2] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __175__EKCalendarChooserDefaultImpl_initWithSelectionStyle_displayStyle_entityType_forEvent_eventStore_limitedToSource_showIdentityChooser_showDelegateSetupCell_showAccountStatus___block_invoke;
    v29[3] = &unk_1E843EBE8;
    objc_copyWeak(&v30, &location);
    v26 = [(EKCalendarChooserDefaultImpl *)v20 registerForTraitChanges:v25 withHandler:v29];
    objc_destroyWeak(&v30);

    objc_destroyWeak(&location);
  }

  return v20;
}

void __175__EKCalendarChooserDefaultImpl_initWithSelectionStyle_displayStyle_entityType_forEvent_eventStore_limitedToSource_showIdentityChooser_showDelegateSetupCell_showAccountStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 _presentationSemanticContext];
  v8 = [v15 traitCollection];
  v9 = [v8 _presentationSemanticContext];

  if (v7 != v9)
  {
    [WeakRetained resetBackgroundColor];
  }

  v10 = [v5 userInterfaceStyle];
  v11 = [v15 traitCollection];
  if (v10 != [v11 userInterfaceStyle])
  {

    goto LABEL_7;
  }

  v12 = [v5 preferredContentSizeCategory];
  v13 = [v15 traitCollection];
  v14 = [v13 preferredContentSizeCategory];

  if (v12 != v14)
  {
LABEL_7:
    [WeakRetained _collectionViewBuildAndApplyNewSnapshotAnimated:1];
  }
}

- (EKCalendarChooserDefaultImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type eventStore:(id)store
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 0;
  return [EKCalendarChooserDefaultImpl initWithSelectionStyle:"initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:style entityType:displayStyle forEvent:type eventStore:0 limitedToSource:store showIdentityChooser:0 showDelegateSetupCell:v7 showAccountStatus:?];
}

- (EKCalendarChooserDefaultImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle eventStore:(id)store
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [EKCalendarChooserDefaultImpl initWithSelectionStyle:"initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:style entityType:displayStyle forEvent:0 eventStore:0 limitedToSource:store showIdentityChooser:0 showDelegateSetupCell:v6 showAccountStatus:?];
}

- (void)setExplanatoryTextMode:(int)mode
{
  if (self->_explanatoryTextMode != mode)
  {
    self->_explanatoryTextMode = mode;
    _collectionViewLayout = [(EKCalendarChooserDefaultImpl *)self _collectionViewLayout];
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:_collectionViewLayout];
  }
}

- (BOOL)_sectionHasHeader:(int64_t)header
{
  v5 = [(EKCalendarChooserDefaultImpl *)self _isIdentityChooserSection:?];
  if ([(EKCalendarChooserDefaultImpl *)self _isDeclinedEventsSwitchSection:header]|| [(EKCalendarChooserDefaultImpl *)self _isIdentityChooserSection:header]|| [(EKCalendarChooserDefaultImpl *)self _isDelegateCalendarsButtonSection:header]|| [(EKCalendarChooserDefaultImpl *)self _isFocusBannerSection:header])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(EKCalendarChooserDefaultImpl *)self _isAddCalendarButtonSection:header];
  }

  return (v5 | v6) & 1;
}

- (BOOL)_sectionHasFooter:(int64_t)footer
{
  if (!self->_showAccountStatus)
  {
    return 0;
  }

  v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:?];
  v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshotForSection:v5];
  expandedItems = [v6 expandedItems];
  v8 = [expandedItems count];

  if (v8)
  {
    v9 = [(EKCalendarChooserDefaultImpl *)self _groupForSection:footer];
    footer = [v9 footer];
    v11 = footer != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)_extraSpaceAboveSection:(int64_t)section
{
  result = 0.0;
  if (self->_displayStyle == 1000)
  {
    v5 = section - 1;
    v6 = [(EKCalendarChooserDefaultImpl *)self _isLastGroupSection:section - 1, 0.0];
    result = 16.0;
    if (!v6)
    {
      v7 = [(EKCalendarChooserDefaultImpl *)self _isDeclinedEventsSwitchSection:v5, 16.0];
      result = 0.0;
      if (v7)
      {
        return 12.0;
      }
    }
  }

  return result;
}

- (BOOL)_collectionViewHasHeader
{
  explanatoryTextMode = [(EKCalendarChooserDefaultImpl *)self explanatoryTextMode];
  if (explanatoryTextMode != 1)
  {
    LOBYTE(explanatoryTextMode) = [(EKCalendarChooserDefaultImpl *)self explanatoryTextMode]== 2;
  }

  return explanatoryTextMode;
}

- (id)_collectionViewLayout
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (self->_displayStyle == 1000)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69DC810]);
  if ([(EKCalendarChooserDefaultImpl *)self _collectionViewHasHeader])
  {
    v5 = MEMORY[0x1E6995588];
    v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v7 = [MEMORY[0x1E6995558] estimatedDimension:EKUITableRowHeightDefault()];
    v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

    v9 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v8 elementKind:@"COLLECTION_VIEW_HEADER_ELEMENT_KIND" alignment:1];
    v17[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v4 setBoundarySupplementaryItems:v10];
  }

  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x1E69DC808]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__EKCalendarChooserDefaultImpl__collectionViewLayout__block_invoke;
  v14[3] = &unk_1E8440468;
  objc_copyWeak(v15, &location);
  v15[1] = v3;
  v14[4] = self;
  v12 = [v11 initWithSectionProvider:v14 configuration:v4];
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v12;
}

id __53__EKCalendarChooserDefaultImpl__collectionViewLayout__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:*(a1 + 48)];
  if ([WeakRetained _sectionHasHeader:a2])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  [v7 setHeaderMode:v8];
  [v7 setFooterMode:{objc_msgSend(WeakRetained, "_sectionHasFooter:", a2)}];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __53__EKCalendarChooserDefaultImpl__collectionViewLayout__block_invoke_2;
  v27 = &unk_1E8440440;
  objc_copyWeak(v28, (a1 + 40));
  v28[1] = a2;
  [v7 setItemSeparatorHandler:&v24];
  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:{v5, v24, v25, v26, v27}];
  [*(a1 + 32) _extraSpaceAboveSection:a2];
  v11 = v10;
  if (v10 > 0.0)
  {
    [v9 contentInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v20 _scaledValueForValue:v11];
    v22 = v13 + v21;

    [v9 setContentInsets:{v22, v15, v17, v19}];
  }

  objc_destroyWeak(v28);

  return v9;
}

id __53__EKCalendarChooserDefaultImpl__collectionViewLayout__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _sectionHasHeader:*(a1 + 40)] && !objc_msgSend(v5, "row"))
  {
    [v6 setTopSeparatorVisibility:2];
    [v6 setBottomSeparatorVisibility:2];
  }

  return v6;
}

- (id)_sectionIdentifierForGroup:(id)group
{
  source = [group source];
  sourceIdentifier = [source sourceIdentifier];
  v5 = sourceIdentifier;
  if (sourceIdentifier)
  {
    v6 = sourceIdentifier;
  }

  else
  {
    v6 = @"CollectionViewSectionIdentifierOtherCalendarsGroup";
  }

  v7 = v6;

  return v6;
}

- (void)_reconfigureHeaders
{
  v17 = *MEMORY[0x1E69E9840];
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v6 = [sectionIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(sectionIdentifiers);
        }

        v10 = [snapshot itemIdentifiersInSectionWithIdentifier:*(*(&v12 + 1) + 8 * v9)];
        firstObject = [v10 firstObject];

        if (firstObject)
        {
          [array addObject:firstObject];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [sectionIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [snapshot reconfigureItemsWithIdentifiers:array];
  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
}

- (void)_reconfigureCollectionViewAtIndexPath:(id)path
{
  v9[1] = *MEMORY[0x1E69E9840];
  dataSource = self->_dataSource;
  pathCopy = path;
  snapshot = [(UICollectionViewDiffableDataSource *)dataSource snapshot];
  v7 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];

  if (v7)
  {
    v9[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [snapshot reconfigureItemsWithIdentifiers:v8];

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
  }
}

- (void)_reconfigureIdentifierInCollectionView:(id)view
{
  v8[1] = *MEMORY[0x1E69E9840];
  dataSource = self->_dataSource;
  viewCopy = view;
  snapshot = [(UICollectionViewDiffableDataSource *)dataSource snapshot];
  v8[0] = viewCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [snapshot reconfigureItemsWithIdentifiers:v7];

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
}

- (void)_reloadCollectionViewSection:(int64_t)section
{
  v9[1] = *MEMORY[0x1E69E9840];
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionIdentifierForIndex:section];
  v7 = v6;
  if (v6)
  {
    v9[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [snapshot reloadSectionsWithIdentifiers:v8];

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
  }
}

- (void)_reloadCollectionViewSectionWithIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  dataSource = self->_dataSource;
  identifierCopy = identifier;
  snapshot = [(UICollectionViewDiffableDataSource *)dataSource snapshot];
  v8[0] = identifierCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [snapshot reloadSectionsWithIdentifiers:v7];

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
}

- (void)_collectionViewBuildAndApplyNewSnapshotAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v77[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x1E69955A0]);
  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowFocusBanner])
  {
    v77[0] = @"CollectionViewSectionIdentifierFocusBanner";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
    [v6 appendSectionsWithIdentifiers:v7];

    v76 = @"CollectionViewRowIdentifierFocusBanner";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    [v6 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:@"CollectionViewSectionIdentifierFocusBanner"];
  }

  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowIdentityChooser])
  {
    v75 = @"CollectionViewSectionIdentifierIdentitySwitcher";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    [v6 appendSectionsWithIdentifiers:v9];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = self->_allGroups;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v55 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v56;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(EKCalendarChooserDefaultImpl *)self _sectionIdentifierForGroup:*(*(&v55 + 1) + 8 * i)];
        v73 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
        [v6 appendSectionsWithIdentifiers:v16];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v55 objects:v74 count:16];
    }

    while (v12);
  }

  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowDeclinedEventsSection])
  {
    v72 = @"CollectionViewSectionIdentifierDeclinedEvents";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    [v6 appendSectionsWithIdentifiers:v17];
  }

  if ([(EKCalendarChooserDefaultImpl *)self showsDeclinedEventsSetting])
  {
    v71 = @"CollectionViewRowIdentifierDeclinedEvents";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    [v6 appendItemsWithIdentifiers:v18 intoSectionWithIdentifier:@"CollectionViewSectionIdentifierDeclinedEvents"];
  }

  if ([(EKCalendarChooserDefaultImpl *)self showsCompletedRemindersSetting]&& !self->_limitedToSource)
  {
    v70 = @"CollectionViewRowIdentifierCompletedReminders";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
    [v6 appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:@"CollectionViewSectionIdentifierDeclinedEvents"];
  }

  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowDelegateCalendarsButtonSection])
  {
    v69 = @"CollectionViewSectionIdentifierDelegateCalendarsButton";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
    [v6 appendSectionsWithIdentifiers:v20];

    v68 = @"CollectionViewRowIdentifierDelegateCalendarsButton";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
    [v6 appendItemsWithIdentifiers:v21 intoSectionWithIdentifier:@"CollectionViewSectionIdentifierDelegateCalendarsButton"];
  }

  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowAddCalendarButtonSection])
  {
    v67 = @"CollectionViewSectionIdentifierAddCalendarButton";
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
    [v6 appendSectionsWithIdentifiers:v22];

    v66 = @"CollectionViewRowIdentifierAddCalendarButton";
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    [v6 appendItemsWithIdentifiers:v23 intoSectionWithIdentifier:@"CollectionViewSectionIdentifierAddCalendarButton"];
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v6 animatingDifferences:animatedCopy completion:completionCopy];
  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowIdentityChooser])
  {
    v24 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
    v65 = @"CollectionViewRowIdentifierIdentitySwitcherHeader";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    [v24 appendItems:v25];

    collapsedSectionIdentifiers = [(EKCalendarChooserDefaultImpl *)self collapsedSectionIdentifiers];
    v27 = [collapsedSectionIdentifiers containsObject:@"CollectionViewRowIdentifierIdentitySwitcherHeader"];

    if ((v27 & 1) == 0)
    {
      v64 = @"CollectionViewRowIdentifierIdentitySwitcherHeader";
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      [v24 expandItems:v28];
    }

    v63 = @"CollectionViewRowIdentifierIdentitySwitcherMe";
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    [v24 appendItems:v29 intoParentItem:@"CollectionViewRowIdentifierIdentitySwitcherHeader"];

    v30 = [(NSArray *)self->_delegateSources CalMap:&__block_literal_global_19];
    [v24 appendItems:v30 intoParentItem:@"CollectionViewRowIdentifierIdentitySwitcherHeader"];
    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v24 toSection:@"CollectionViewSectionIdentifierIdentitySwitcher" animatingDifferences:animatedCopy];
  }

  v46 = v6;
  v47 = completionCopy;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->_allGroups;
  v31 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v31)
  {
    v32 = v31;
    v49 = *v52;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v51 + 1) + 8 * j);
        v35 = [(EKCalendarChooserDefaultImpl *)self _sectionIdentifierForGroup:v34];
        calendarInfos = [v34 calendarInfos];
        v37 = [calendarInfos CalMap:&__block_literal_global_82];

        v38 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
        v39 = [(EKCalendarChooserDefaultImpl *)self _calendarHeaderRowIdentifierFromSectionIdentifier:v35];
        v61 = v39;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
        [v38 appendItems:v40];

        collapsedSectionIdentifiers2 = [(EKCalendarChooserDefaultImpl *)self collapsedSectionIdentifiers];
        v42 = [collapsedSectionIdentifiers2 containsObject:v39];

        if ((v42 & 1) == 0)
        {
          v60 = v39;
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
          [v38 expandItems:v43];
        }

        if ([(EKCalendarChooserDefaultImpl *)self _shouldDisplayAccountErrorActionCellForGroup:v34])
        {
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"account_error_%@", v35];
          v59 = v44;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
          [v38 appendItems:v45 intoParentItem:v39];
        }

        [v38 appendItems:v37 intoParentItem:v39];
        [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v38 toSection:v35 animatingDifferences:animatedCopy];
      }

      v32 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v32);
  }
}

id __91__EKCalendarChooserDefaultImpl__collectionViewBuildAndApplyNewSnapshotAnimated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a2 sourceIdentifier];
  v4 = [v2 stringWithFormat:@"identity_chooser_%@", v3];

  return v4;
}

id __91__EKCalendarChooserDefaultImpl__collectionViewBuildAndApplyNewSnapshotAnimated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a2 calendar];
  v4 = [v3 calendarIdentifier];
  v5 = [v2 stringWithFormat:@"calendar_%@", v4];

  return v5;
}

- (void)_configureHeaderCell:(id)cell indexPath:(id)path item:(id)item
{
  cellCopy = cell;
  section = [path section];
  v9 = [(EKCalendarChooserDefaultImpl *)self _groupForSection:section];
  if ([(EKCalendarChooserDefaultImpl *)self _isIdentityChooserSection:section])
  {
    delegatesString = [objc_opt_class() delegatesString];
  }

  else if ([(EKCalendarChooserDefaultImpl *)self _isDeclinedEventsSwitchSection:section]|| [(EKCalendarChooserDefaultImpl *)self _isIdentityChooserSection:section]|| [(EKCalendarChooserDefaultImpl *)self _isDelegateCalendarsButtonSection:section]|| !self->_limitedToSource)
  {
    delegatesString = [v9 title];
  }

  else
  {
    delegatesString = CUIKDisplayedTitleForSource();
  }

  v11 = delegatesString;
  defaultContentConfiguration = [cellCopy defaultContentConfiguration];
  if ((MEMORY[0x1D38B98D0]() & 1) == 0 && self->_displayStyle != 1000)
  {
    prominentInsetGroupedHeaderConfiguration = [MEMORY[0x1E69DCC28] prominentInsetGroupedHeaderConfiguration];

    defaultContentConfiguration = prominentInsetGroupedHeaderConfiguration;
  }

  [defaultContentConfiguration setText:v11];
  [cellCopy setContentConfiguration:defaultContentConfiguration];
  array = [MEMORY[0x1E695DF70] array];
  if ([(EKCalendarChooserDefaultImpl *)self allowsPullToRefresh])
  {
    source = [v9 source];
    if ([source isSyncing])
    {
      source2 = [v9 source];
      lastSyncEndDate = [source2 lastSyncEndDate];

      if (lastSyncEndDate)
      {
        goto LABEL_17;
      }

      source = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:8];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [source setColor:secondaryLabelColor];

      [source startAnimating];
      v19 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:source placement:1];
      [array addObject:v19];
    }
  }

LABEL_17:
  if ([v9 accountError])
  {
    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v20];
    v22 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v21 placement:1];
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [v22 setTintColor:systemYellowColor];

    [array addObject:v22];
  }

  mEMORY[0x1E6993470] = [MEMORY[0x1E6993470] sharedPreferences];
  perSectionShowAllHideAllButtonSpecifier = [mEMORY[0x1E6993470] perSectionShowAllHideAllButtonSpecifier];

  if (perSectionShowAllHideAllButtonSpecifier && v9 && [v9 showSelectAllButton] && self->_style == 1)
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [plainButtonConfiguration setButtonSize:1];
    selected = [v9 selected];
    v28 = objc_opt_class();
    if (selected)
    {
      [v28 hideAllString];
    }

    else
    {
      [v28 showAllString];
    }
    v29 = ;
    [plainButtonConfiguration setTitle:v29];
    v30 = MEMORY[0x1E69DC738];
    v31 = MEMORY[0x1E69DC628];
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __68__EKCalendarChooserDefaultImpl__configureHeaderCell_indexPath_item___block_invoke;
    v40 = &unk_1E843F560;
    selfCopy = self;
    v42 = v9;
    v32 = [v31 actionWithHandler:&v37];
    v33 = [v30 buttonWithConfiguration:plainButtonConfiguration primaryAction:{v32, v37, v38, v39, v40, selfCopy}];

    v34 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v33 placement:1];
    [array addObject:v34];
  }

  if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
  {
    v35 = objc_alloc_init(MEMORY[0x1E69DC7C8]);
    [array addObject:v35];
  }

  v36 = [array copy];
  [cellCopy setAccessories:v36];
}

- (double)_maxCalendarCellCheckmarkImageWidth
{
  v22 = *MEMORY[0x1E69E9840];
  if (_maxCalendarCellCheckmarkImageWidth_onceToken != -1)
  {
    [EKCalendarChooserDefaultImpl _maxCalendarCellCheckmarkImageWidth];
  }

  v2 = +[EKUIApplicationExtensionOverrides shared];
  preferredContentSizeCategoryOrOverride = [v2 preferredContentSizeCategoryOrOverride];

  v4 = [_maxCalendarCellCheckmarkImageWidth_cache objectForKeyedSubscript:preferredContentSizeCategoryOrOverride];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [&unk_1F4F32188 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(&unk_1F4F32188);
          }

          v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:*(*(&v17 + 1) + 8 * i) withConfiguration:v8];
          [v13 size];
          if (v7 < v14)
          {
            v7 = v14;
          }
        }

        v10 = [&unk_1F4F32188 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v7 = 0.0;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    [_maxCalendarCellCheckmarkImageWidth_cache setObject:v15 forKeyedSubscript:preferredContentSizeCategoryOrOverride];
  }

  return v7;
}

void __67__EKCalendarChooserDefaultImpl__maxCalendarCellCheckmarkImageWidth__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _maxCalendarCellCheckmarkImageWidth_cache;
  _maxCalendarCellCheckmarkImageWidth_cache = v0;
}

- (id)_buttonImageConfiguration
{
  v2 = +[EKUIApplicationExtensionOverrides shared];
  preferredContentSizeCategoryOrOverride = [v2 preferredContentSizeCategoryOrOverride];

  v4 = *MEMORY[0x1E69DDC40];
  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategoryOrOverride, v4) == NSOrderedDescending)
  {
    v5 = v4;

    preferredContentSizeCategoryOrOverride = v5;
  }

  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategoryOrOverride];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v6];
  v8 = MEMORY[0x1E69DCAD8];
  [v7 pointSize];
  v9 = [v8 configurationWithPointSize:?];

  return v9;
}

- (double)_maxButtonImageWidthWithSizeCapping
{
  v23 = *MEMORY[0x1E69E9840];
  if (_maxButtonImageWidthWithSizeCapping_onceToken != -1)
  {
    [EKCalendarChooserDefaultImpl _maxButtonImageWidthWithSizeCapping];
  }

  v3 = +[EKUIApplicationExtensionOverrides shared];
  preferredContentSizeCategoryOrOverride = [v3 preferredContentSizeCategoryOrOverride];

  v5 = [_maxButtonImageWidthWithSizeCapping_cache objectForKeyedSubscript:preferredContentSizeCategoryOrOverride];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    _buttonImageConfiguration = [(EKCalendarChooserDefaultImpl *)self _buttonImageConfiguration];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [&unk_1F4F321A0 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(&unk_1F4F321A0);
          }

          v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:*(*(&v18 + 1) + 8 * i) withConfiguration:_buttonImageConfiguration];
          [v14 size];
          if (v8 < v15)
          {
            v8 = v15;
          }
        }

        v11 = [&unk_1F4F321A0 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    else
    {
      v8 = 0.0;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [_maxButtonImageWidthWithSizeCapping_cache setObject:v16 forKeyedSubscript:preferredContentSizeCategoryOrOverride];
  }

  return v8;
}

void __67__EKCalendarChooserDefaultImpl__maxButtonImageWidthWithSizeCapping__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _maxButtonImageWidthWithSizeCapping_cache;
  _maxButtonImageWidthWithSizeCapping_cache = v0;
}

- (id)_buttonConfigurationForImageNamed:(id)named title:(id)title
{
  v6 = MEMORY[0x1E69DC740];
  titleCopy = title;
  namedCopy = named;
  plainButtonConfiguration = [v6 plainButtonConfiguration];
  [plainButtonConfiguration contentInsets];
  [plainButtonConfiguration setContentInsets:?];
  _buttonImageConfiguration = [(EKCalendarChooserDefaultImpl *)self _buttonImageConfiguration];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:namedCopy withConfiguration:_buttonImageConfiguration];

  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v12 _scaledValueForValue:14.8];
  v14 = v13 + 22.2;
  [v11 size];
  v16 = v15;
  [(EKCalendarChooserDefaultImpl *)self _maxButtonImageWidthWithSizeCapping];
  v18 = v17;
  [(EKCalendarChooserDefaultImpl *)self _maxCalendarCellCheckmarkImageWidth];
  if (v18 < v19)
  {
    v18 = v19;
  }

  [v11 size];
  v21 = (v18 - v20) * 0.5;
  if (CalInterfaceIsLeftToRight())
  {
    v22 = v21;
  }

  else
  {
    v22 = v14 - v18 + v21;
  }

  v40.width = v14;
  v40.height = v16;
  UIGraphicsBeginImageContextWithOptions(v40, 0, 0.0);
  [v11 drawAtPoint:{v22, 0.0}];
  v23 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();
  v24 = [v23 imageWithRenderingMode:2];

  v25 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v24];
  [v12 capHeight];
  v27 = v26;
  [v24 size];
  v29 = (v27 - v28) * 0.5;
  v30 = roundf(v29);
  [v24 size];
  v32 = v31;
  [v24 size];
  [v25 setBounds:{0.0, v30, v32, v33}];
  v34 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v35 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v25];
  [v34 appendAttributedString:v35];

  v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy];
  [v34 appendAttributedString:v36];

  [plainButtonConfiguration setAttributedTitle:v34];
  v37 = CalendarAppBarButtonItemTintColor();
  [plainButtonConfiguration setBaseForegroundColor:v37];

  return plainButtonConfiguration;
}

- (void)_configureDelegateButtonCell:(id)cell indexPath:(id)path item:(id)item
{
  v40[5] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  [(EKCalendarChooserDefaultImpl *)self _preventDefaultCellSelectionBehavior:cellCopy];
  contentView = [cellCopy contentView];
  subviews = [contentView subviews];
  v9 = [subviews count];

  if (!v9)
  {
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Delegate Calendars" value:&stru_1F4EF6790 table:0];
    v39 = [(EKCalendarChooserDefaultImpl *)self _buttonConfigurationForImageNamed:@"person.2.fill" title:v11];

    v38 = [MEMORY[0x1E69DC628] actionWithHandler:&__block_literal_global_143];
    v12 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v39 primaryAction:v38];
    [v12 setContentHorizontalAlignment:4];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [cellCopy contentView];
    [contentView2 addSubview:v12];

    v27 = MEMORY[0x1E696ACD8];
    contentView3 = [cellCopy contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide leadingAnchor];
    leadingAnchor2 = [v12 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[0] = v33;
    contentView4 = [cellCopy contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    trailingAnchor2 = [v12 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[1] = v28;
    contentView5 = [cellCopy contentView];
    topAnchor = [contentView5 topAnchor];
    topAnchor2 = [v12 topAnchor];
    v23 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
    v40[2] = v23;
    contentView6 = [cellCopy contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    bottomAnchor2 = [v12 bottomAnchor];
    v16 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v40[3] = v16;
    contentView7 = [cellCopy contentView];
    centerYAnchor = [contentView7 centerYAnchor];
    centerYAnchor2 = [v12 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v40[4] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:5];
    [v27 activateConstraints:v21];
  }
}

void __76__EKCalendarChooserDefaultImpl__configureDelegateButtonCell_indexPath_item___block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=CALENDAR&path=DELEGATE_CALENDARS"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0 error:0];
}

- (void)_configureAddCalendarButtonCell:(id)cell indexPath:(id)path item:(id)item
{
  v44[5] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  [(EKCalendarChooserDefaultImpl *)self _preventDefaultCellSelectionBehavior:cellCopy];
  contentView = [cellCopy contentView];
  subviews = [contentView subviews];
  v9 = [subviews count];

  if (!v9)
  {
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Add Calendar Menu Button" value:@"Add Calendar" table:0];
    v12 = [(EKCalendarChooserDefaultImpl *)self _buttonConfigurationForImageNamed:@"calendar.badge.plus" title:v11];

    v43 = v12;
    v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v12 primaryAction:0];
    if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
    {
      v14 = [(EKCalendarChooserDefaultImpl *)self _menuForAddCalendarButton:v13];
      [(UIButton *)v13 setMenu:v14];

      [(UIButton *)v13 setShowsMenuAsPrimaryAction:1];
    }

    else
    {
      [(UIButton *)v13 addTarget:self action:sel_addCalendarButtonPressed_ forControlEvents:64];
    }

    [(UIButton *)v13 setContentHorizontalAlignment:4];
    [(UIButton *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v13 setAccessibilityIdentifier:@"add-calendar-button"];
    contentView2 = [cellCopy contentView];
    [contentView2 addSubview:v13];

    LODWORD(v16) = 1144750080;
    [(UIButton *)v13 setContentHuggingPriority:0 forAxis:v16];
    inContentAddCalendarButton = self->_inContentAddCalendarButton;
    self->_inContentAddCalendarButton = v13;
    v18 = v13;

    v32 = MEMORY[0x1E696ACD8];
    contentView3 = [cellCopy contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide leadingAnchor];
    leadingAnchor2 = [(UIButton *)v18 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v44[0] = v38;
    contentView4 = [cellCopy contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    trailingAnchor2 = [(UIButton *)v18 trailingAnchor];
    v33 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    v44[1] = v33;
    contentView5 = [cellCopy contentView];
    topAnchor = [contentView5 topAnchor];
    topAnchor2 = [(UIButton *)v18 topAnchor];
    v28 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
    v44[2] = v28;
    contentView6 = [cellCopy contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    bottomAnchor2 = [(UIButton *)v18 bottomAnchor];
    v21 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v44[3] = v21;
    contentView7 = [cellCopy contentView];
    centerYAnchor = [contentView7 centerYAnchor];
    centerYAnchor2 = [(UIButton *)v18 centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v44[4] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:5];
    [v32 activateConstraints:v26];
  }
}

- (void)_configureDeclinedEventsCell:(id)cell indexPath:(id)path item:(id)item
{
  v20[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  [(EKCalendarChooserDefaultImpl *)self _preventDefaultCellSelectionBehavior:cellCopy];
  defaultContentConfiguration = [cellCopy defaultContentConfiguration];
  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"Show Declined Events" value:&stru_1F4EF6790 table:0];
  [defaultContentConfiguration setText:v9];

  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setNumberOfLines:0];

  [cellCopy setContentConfiguration:defaultContentConfiguration];
  [cellCopy setAccessibilityIdentifier:@"show-declined-events-cell"];
  accessories = [cellCopy accessories];
  v12 = [accessories count];

  if (v12)
  {
    accessories2 = [cellCopy accessories];
    firstObject = [accessories2 firstObject];

    customView = [firstObject customView];
  }

  else
  {
    customView = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [customView setAccessibilityIdentifier:@"show-declined-events-switch"];
    [customView addTarget:self action:sel_declinedEventsChanged forControlEvents:64];
    firstObject = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:customView placement:1];
    v20[0] = firstObject;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [cellCopy setAccessories:v16];
  }

  pendingShowDeclinedEvents = self->_pendingShowDeclinedEvents;
  if (pendingShowDeclinedEvents)
  {
    bOOLValue = [(NSNumber *)pendingShowDeclinedEvents BOOLValue];
  }

  else
  {
    mEMORY[0x1E6966A98] = [MEMORY[0x1E6966A98] shared];
    bOOLValue = [mEMORY[0x1E6966A98] showDeclinedEvents];
  }

  [customView setOn:bOOLValue];
}

- (void)_configureCompletedRemindersCell:(id)cell indexPath:(id)path item:(id)item
{
  v20[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  [(EKCalendarChooserDefaultImpl *)self _preventDefaultCellSelectionBehavior:cellCopy];
  defaultContentConfiguration = [cellCopy defaultContentConfiguration];
  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"Show Completed Reminders" value:&stru_1F4EF6790 table:0];
  [defaultContentConfiguration setText:v9];

  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setNumberOfLines:0];

  [cellCopy setContentConfiguration:defaultContentConfiguration];
  [cellCopy setAccessibilityIdentifier:@"show-completed-reminders-cell"];
  accessories = [cellCopy accessories];
  v12 = [accessories count];

  if (v12)
  {
    accessories2 = [cellCopy accessories];
    firstObject = [accessories2 firstObject];

    customView = [firstObject customView];
  }

  else
  {
    customView = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [customView setAccessibilityIdentifier:@"show-completed-reminders-switch"];
    [customView addTarget:self action:sel_completedRemindersChanged forControlEvents:64];
    firstObject = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:customView placement:1];
    v20[0] = firstObject;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [cellCopy setAccessories:v16];
  }

  pendingShowCompletedReminders = self->_pendingShowCompletedReminders;
  if (pendingShowCompletedReminders)
  {
    bOOLValue = [(NSNumber *)pendingShowCompletedReminders BOOLValue];
  }

  else
  {
    mEMORY[0x1E6966A98] = [MEMORY[0x1E6966A98] shared];
    bOOLValue = [mEMORY[0x1E6966A98] showCompletedReminders];
  }

  [customView setOn:bOOLValue];
}

- (void)_configureCalendarCell:(id)cell indexPath:(id)path item:(id)item
{
  v66[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  itemCopy = item;
  [(EKCalendarChooserDefaultImpl *)self _preventDefaultCellSelectionBehavior:cellCopy];
  v58 = pathCopy;
  v59 = -[EKCalendarChooserDefaultImpl _groupForSection:](self, "_groupForSection:", [pathCopy section]);
  defaultContentConfiguration = [cellCopy defaultContentConfiguration];
  configurationState = [cellCopy configurationState];
  v12 = [defaultContentConfiguration updatedConfigurationForState:configurationState];

  [v12 setTextToSecondaryTextVerticalPadding:1.0];
  v13 = -[EKCalendarChooserDefaultImpl _rowIndex:toCalendarIndexInGroup:](self, "_rowIndex:toCalendarIndexInGroup:", [v58 row], v59);
  calendarInfos = [v59 calendarInfos];
  v15 = [calendarInfos objectAtIndex:v13];

  title = [v15 title];
  v16 = MEMORY[0x1E696AEC0];
  calendar = [v15 calendar];
  source = [calendar source];
  title2 = [source title];
  v20 = [v16 stringWithFormat:@"calendarlist-cell:%@:%@", title2, title];
  [cellCopy setAccessibilityIdentifier:v20];

  if ([v15 isSubscribed] && (objc_msgSend(v59, "isSubscribed") & 1) == 0)
  {
    _subscribedLocalizedString = [objc_opt_class() _subscribedLocalizedString];
  }

  else if (([v15 isShared] & 1) != 0 || objc_msgSend(v15, "isPublished"))
  {
    _subscribedLocalizedString = [v15 stringForSharedCalendar];
  }

  else
  {
    if (![v15 isIntegration] || (objc_msgSend(v15, "isEnabled") & 1) != 0)
    {
      goto LABEL_11;
    }

    _subscribedLocalizedString = [objc_opt_class() _disabledIntegrationLocalizedString];
  }

  if (_subscribedLocalizedString)
  {
    [v12 setSecondaryText:?];
    goto LABEL_12;
  }

LABEL_11:
  _subscribedLocalizedString = 0;
LABEL_12:
  if (*&self->_flags)
  {
    calendar2 = [v15 calendar];
    image = [calendar2 image];

    if ([image type] == 1 && (objc_msgSend(image, "name"), (mEMORY[0x1E6993478]2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      mEMORY[0x1E6993478] = [MEMORY[0x1E6993478] sharedInstance];
      textProperties = [v12 textProperties];
      font = [textProperties font];
      v27 = [mEMORY[0x1E6993478] symbolImage:mEMORY[0x1E6993478]2 forFont:font];
    }

    else
    {
      calendar3 = [v15 calendar];
      type = [calendar3 type];

      if (type != 4)
      {

        goto LABEL_21;
      }

      mEMORY[0x1E6993478]2 = [MEMORY[0x1E6993478] sharedInstance];
      mEMORY[0x1E6993478] = [v12 textProperties];
      textProperties = [mEMORY[0x1E6993478] font];
      v27 = [mEMORY[0x1E6993478]2 birthdayImageForFont:textProperties];
    }

    v30 = CalendarAppTintColor();
    v31 = [v27 flattenedImageWithColor:v30];

    if (v31)
    {
      v32 = objc_alloc_init(MEMORY[0x1E696AD40]);
      v33 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v31];
      v34 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v33];
      [v32 appendAttributedString:v34];

      v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v32 appendAttributedString:v35];

      v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:title];
      [v32 appendAttributedString:v36];

      [v12 setAttributedText:v32];
      goto LABEL_22;
    }
  }

LABEL_21:
  [v12 setText:title];
  v31 = 0;
LABEL_22:
  if (([v15 isEnabled] & 1) == 0)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v38 = [labelColor colorWithAlphaComponent:0.5];
    textProperties2 = [v12 textProperties];
    [textProperties2 setColor:v38];

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v41 = [labelColor2 colorWithAlphaComponent:0.5];
    secondaryTextProperties = [v12 secondaryTextProperties];
    [secondaryTextProperties setColor:v41];
  }

  if (!self->_style)
  {
    v44 = @"circlebadge.fill";
    goto LABEL_31;
  }

  selected = [v15 selected];
  if (![v15 isIntegration])
  {
    if (!selected)
    {
      goto LABEL_27;
    }

LABEL_30:
    v44 = @"checkmark.circle.fill";
    goto LABEL_31;
  }

  if ([v15 isEnabled] & selected)
  {
    goto LABEL_30;
  }

LABEL_27:
  v44 = @"circle";
LABEL_31:
  v45 = [MEMORY[0x1E69DCAB8] systemImageNamed:v44];
  [v12 setImage:v45];

  if (*&self->_flags)
  {
    color = [v15 color];
    imageProperties = [v12 imageProperties];
    [imageProperties setTintColor:color];

    if (([v15 isEnabled] & 1) == 0)
    {
      color2 = [v15 color];
      v49 = [color2 colorWithAlphaComponent:0.5];
      imageProperties2 = [v12 imageProperties];
      [imageProperties2 setTintColor:v49];
    }
  }

  [cellCopy setContentConfiguration:v12];
  style = self->_style;
  if (style)
  {
    if (style == 1)
    {
      if ([(EKCalendarChooserDefaultImpl *)self _calendarAvailableForEditing:v15]&& [(EKCalendarChooserDefaultImpl *)self showDetailAccessories])
      {
        v52 = objc_alloc_init(MEMORY[0x1E69DC7A0]);
        objc_initWeak(&location, self);
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __70__EKCalendarChooserDefaultImpl__configureCalendarCell_indexPath_item___block_invoke;
        v61[3] = &unk_1E84404D0;
        objc_copyWeak(&v63, &location);
        v62 = v58;
        [v52 setActionHandler:v61];
        v66[0] = v52;
        v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
        [cellCopy setAccessories:v53];

        objc_destroyWeak(&v63);
        objc_destroyWeak(&location);
      }

      else
      {
        [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
      }
    }
  }

  else
  {
    v54 = objc_alloc_init(MEMORY[0x1E69DC788]);
    [v54 setHidden:{objc_msgSend(v58, "isEqual:", self->_checkedRow) ^ 1}];
    v65 = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    [cellCopy setAccessories:v55];
  }

  [(EKCalendarChooserDefaultImpl *)self _updateAppEntityAnnotationIfNeededForCalendarCell:cellCopy calendarInfo:v15];
}

void __70__EKCalendarChooserDefaultImpl__configureCalendarCell_indexPath_item___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _accessoryButtonTappedAtIndexPath:*(a1 + 32)];
}

- (void)_configureDelegateNameCell:(id)cell indexPath:(id)path item:(id)item
{
  v17[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  v9 = [pathCopy row];
  if (v9 == [(EKCalendarChooserDefaultImpl *)self _rowIndexForMeDelegate])
  {
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"My Calendar" value:&stru_1F4EF6790 table:0];

    v12 = self->_limitedToSource == 0;
  }

  else
  {
    v13 = -[NSArray objectAtIndex:](self->_delegateSources, "objectAtIndex:", -[EKCalendarChooserDefaultImpl _rowIndexToDelegateSourceIndex:](self, "_rowIndexToDelegateSourceIndex:", [pathCopy row]));
    v11 = CUIKDisplayedTitleForSource();
    v12 = [v13 isEqual:self->_limitedToSource];
  }

  defaultContentConfiguration = [cellCopy defaultContentConfiguration];
  [defaultContentConfiguration setText:v11];
  [cellCopy setContentConfiguration:defaultContentConfiguration];
  if (v12)
  {
    v15 = objc_alloc_init(MEMORY[0x1E69DC788]);
    v17[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [cellCopy setAccessories:v16];
  }

  else
  {
    [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
  }
}

- (void)_configureFocusCell:(id)cell indexPath:(id)path item:(id)item
{
  cellCopy = cell;
  [cellCopy setDelegate:self];
  delegate = [(EKCalendarChooserDefaultImpl *)self delegate];
  [cellCopy setOn:{objc_msgSend(delegate, "focusFilterMode") == 1}];
}

- (void)_configureAccountErrorCell:(id)cell indexPath:(id)path item:(id)item
{
  v21[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  [(EKCalendarChooserDefaultImpl *)self _preventDefaultCellSelectionBehavior:cellCopy];
  defaultContentConfiguration = [cellCopy defaultContentConfiguration];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"Verify Account Information" value:&stru_1F4EF6790 table:0];
  [defaultContentConfiguration setText:v11];

  tintColor = [(UICollectionView *)self->_collectionView tintColor];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:tintColor];

  textProperties2 = [defaultContentConfiguration textProperties];
  [textProperties2 setAlignment:1];

  [cellCopy setContentConfiguration:defaultContentConfiguration];
  if (self->_displayStyle == 1000)
  {
    defaultBackgroundConfiguration = [cellCopy defaultBackgroundConfiguration];
    v16 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_202];
    [defaultBackgroundConfiguration setBackgroundColor:v16];

    [cellCopy setBackgroundConfiguration:defaultBackgroundConfiguration];
  }

  v17 = -[EKCalendarChooserDefaultImpl _groupForSection:](self, "_groupForSection:", [pathCopy section]);
  if ([v17 showAccountErrorActionButtonSpinner])
  {
    v18 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v18 startAnimating];
    v19 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v18 placement:1];
    v21[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [cellCopy setAccessories:v20];
  }

  else
  {
    [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
  }
}

- (void)_configureFooterCell:(id)cell indexPath:(id)path
{
  v6 = MEMORY[0x1E69DCC28];
  pathCopy = path;
  cellCopy = cell;
  footerConfiguration = [v6 footerConfiguration];
  section = [pathCopy section];

  v10 = [(EKCalendarChooserDefaultImpl *)self _groupForSection:section];
  footer = [v10 footer];
  [footerConfiguration setText:footer];

  [cellCopy setContentConfiguration:footerConfiguration];
}

- (void)_configureCollectionViewHeaderCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  defaultContentConfiguration = [cellCopy defaultContentConfiguration];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setFont:v6];

  LODWORD(self) = [(EKCalendarChooserDefaultImpl *)self explanatoryTextMode];
  v8 = EventKitUIBundle();
  v9 = v8;
  if (self == 1)
  {
    v10 = @"New events created outside of a specific calendar will default to this calendar.";
  }

  else
  {
    v10 = @"New events created outside of a specific calendar for this delegate will default to this calendar.";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F4EF6790 table:0];
  [defaultContentConfiguration setText:v11];

  [cellCopy setContentConfiguration:defaultContentConfiguration];
}

void __69__EKCalendarChooserDefaultImpl__preventDefaultCellSelectionBehavior___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 setAutomaticallyUpdatesContentConfiguration:0];
  [v5 setAutomaticallyUpdatesBackgroundConfiguration:0];
  [v4 setSelected:0];
  v6 = [v5 backgroundConfiguration];
  v7 = [v6 updatedConfigurationForState:v4];
  [v5 setBackgroundConfiguration:v7];

  v9 = [v5 contentConfiguration];
  v8 = [v9 updatedConfigurationForState:v4];

  [v5 setContentConfiguration:v8];
}

- (void)_updateAppEntityAnnotationIfNeededForCalendarCell:(id)cell calendarInfo:(id)info
{
  cellCopy = cell;
  infoCopy = info;
  if (CalendarLinkLibraryCore())
  {
    calendar = [infoCopy calendar];
    [cellCopy Cal_annotateWithCalendar:calendar];

    [cellCopy Cal_updateEntityAnnotationStateIsSelected:objc_msgSend(infoCopy isHighlighted:"selected") isFocused:0 isDisabled:0 isEditing:0 isPrimary:{0, 0}];
  }
}

- (void)setCollapsedSectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (identifiersCopy)
  {
    v5 = identifiersCopy;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  collapsedSectionIdentifiers = self->_collapsedSectionIdentifiers;
  self->_collapsedSectionIdentifiers = v5;

  [(EKCalendarChooserDefaultImpl *)self _cleanupCollapsedSectionIdentifiers];
}

- (void)_cleanupCollapsedSectionIdentifiers
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowIdentityChooser])
  {
    [v3 addObject:@"CollectionViewRowIdentifierIdentitySwitcherHeader"];
  }

  v4 = [(EKCalendarChooserDefaultImpl *)self _calendarHeaderRowIdentifierFromSectionIdentifier:@"CollectionViewSectionIdentifierOtherCalendarsGroup"];
  [v3 addObject:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  sources = [(EKEventStore *)self->_eventStore sources];
  v6 = [sources countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(sources);
        }

        sourceIdentifier = [*(*(&v19 + 1) + 8 * v9) sourceIdentifier];
        v11 = [(EKCalendarChooserDefaultImpl *)self _calendarHeaderRowIdentifierFromSectionIdentifier:sourceIdentifier];

        [v3 addObject:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [sources countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v12 = [(NSSet *)self->_collapsedSectionIdentifiers mutableCopy];
  [v12 intersectSet:v3];
  if (([v12 isEqualToSet:self->_collapsedSectionIdentifiers] & 1) == 0)
  {
    v13 = [v12 copy];
    collapsedSectionIdentifiers = self->_collapsedSectionIdentifiers;
    self->_collapsedSectionIdentifiers = v13;

    delegate = [(EKCalendarChooserDefaultImpl *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(EKCalendarChooserDefaultImpl *)self delegate];
      _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
      [delegate2 calendarChooserCollapsedSectionIdentifiersDidChange:_ekCalendarChooser];
    }
  }
}

- (void)loadView
{
  _collectionViewLayout = [(EKCalendarChooserDefaultImpl *)self _collectionViewLayout];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [v4 initWithFrame:_collectionViewLayout collectionViewLayout:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  collectionView = self->_collectionView;
  self->_collectionView = v5;

  objc_initWeak(location, self);
  v7 = MEMORY[0x1E69DC800];
  v8 = objc_opt_class();
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke;
  v103[3] = &unk_1E8440518;
  objc_copyWeak(&v104, location);
  v9 = [v7 registrationWithCellClass:v8 configurationHandler:v103];
  v10 = MEMORY[0x1E69DC800];
  v11 = objc_opt_class();
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_2;
  v101[3] = &unk_1E8440540;
  objc_copyWeak(&v102, location);
  v62 = [v10 registrationWithCellClass:v11 configurationHandler:v101];
  v12 = MEMORY[0x1E69DC800];
  v13 = objc_opt_class();
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_3;
  v99[3] = &unk_1E8440540;
  objc_copyWeak(&v100, location);
  v60 = [v12 registrationWithCellClass:v13 configurationHandler:v99];
  v14 = MEMORY[0x1E69DC800];
  v15 = objc_opt_class();
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_4;
  v97[3] = &unk_1E8440518;
  objc_copyWeak(&v98, location);
  v58 = [v14 registrationWithCellClass:v15 configurationHandler:v97];
  v16 = MEMORY[0x1E69DC800];
  v17 = objc_opt_class();
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_5;
  v95[3] = &unk_1E8440518;
  objc_copyWeak(&v96, location);
  v18 = [v16 registrationWithCellClass:v17 configurationHandler:v95];
  v19 = MEMORY[0x1E69DC800];
  v20 = objc_opt_class();
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_6;
  v93[3] = &unk_1E8440518;
  objc_copyWeak(&v94, location);
  v56 = [v19 registrationWithCellClass:v20 configurationHandler:v93];
  v21 = MEMORY[0x1E69DC800];
  v22 = objc_opt_class();
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_7;
  v91[3] = &unk_1E8440518;
  objc_copyWeak(&v92, location);
  v54 = [v21 registrationWithCellClass:v22 configurationHandler:v91];
  v52 = v9;
  v23 = MEMORY[0x1E69DC800];
  v24 = objc_opt_class();
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_8;
  v89[3] = &unk_1E8440568;
  objc_copyWeak(&v90, location);
  v25 = [v23 registrationWithCellClass:v24 configurationHandler:v89];
  v26 = MEMORY[0x1E69DC800];
  v27 = objc_opt_class();
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_9;
  v87[3] = &unk_1E8440518;
  objc_copyWeak(&v88, location);
  v28 = [v26 registrationWithCellClass:v27 configurationHandler:v87];
  v51 = _collectionViewLayout;
  v29 = MEMORY[0x1E69DC870];
  v30 = objc_opt_class();
  v31 = *MEMORY[0x1E69DDC00];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_10;
  v85[3] = &unk_1E8440590;
  objc_copyWeak(&v86, location);
  v32 = [v29 registrationWithSupplementaryClass:v30 elementKind:v31 configurationHandler:v85];
  v33 = MEMORY[0x1E69DC870];
  v34 = objc_opt_class();
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_11;
  v83[3] = &unk_1E8440590;
  objc_copyWeak(&v84, location);
  v35 = [v33 registrationWithSupplementaryClass:v34 elementKind:@"COLLECTION_VIEW_HEADER_ELEMENT_KIND" configurationHandler:v83];
  v36 = objc_alloc(MEMORY[0x1E69DC820]);
  v37 = self->_collectionView;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_12;
  v71[3] = &unk_1E84405B8;
  objc_copyWeak(&v82, location);
  v38 = v52;
  v72 = v38;
  v63 = v62;
  v73 = v63;
  v50 = v25;
  v74 = v50;
  selfCopy = self;
  v59 = v58;
  v76 = v59;
  v53 = v18;
  v77 = v53;
  v57 = v56;
  v78 = v57;
  v55 = v54;
  v79 = v55;
  v39 = v28;
  v80 = v39;
  v61 = v60;
  v81 = v61;
  v40 = [v36 initWithCollectionView:v37 cellProvider:v71];
  v49 = v38;
  dataSource = self->_dataSource;
  self->_dataSource = v40;

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_13;
  v68[3] = &unk_1E84405E0;
  v42 = v32;
  v69 = v42;
  v43 = v35;
  v70 = v43;
  [(UICollectionViewDiffableDataSource *)self->_dataSource setSupplementaryViewProvider:v68];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_14;
  v66[3] = &unk_1E8440608;
  objc_copyWeak(&v67, location);
  sectionSnapshotHandlers = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionSnapshotHandlers];
  [sectionSnapshotHandlers setWillCollapseItemHandler:v66];

  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_15;
  v64[3] = &unk_1E8440608;
  objc_copyWeak(&v65, location);
  sectionSnapshotHandlers2 = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionSnapshotHandlers];
  [sectionSnapshotHandlers2 setWillExpandItemHandler:v64];

  [(EKCalendarChooserDefaultImpl *)self _updateDelegateSources];
  [(EKCalendarChooserDefaultImpl *)self _updateShowDelegateCalendarsCell];
  [(EKCalendarChooserDefaultImpl *)self _reloadCalendars];
  [(EKCalendarChooserDefaultImpl *)self _collectionViewBuildAndApplyNewSnapshotAnimated:1];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
  [(UICollectionView *)self->_collectionView setAllowsFocus:self->_displayStyle != 1000];
  if (self->_shouldOverrideAuthorizationStatus)
  {
    lastAuthorizationStatus = self->_lastAuthorizationStatus;
  }

  else
  {
    lastAuthorizationStatus = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:{self->_entityType, v38, v50}];
    self->_lastAuthorizationStatus = lastAuthorizationStatus;
  }

  if (lastAuthorizationStatus > 2)
  {
    [(EKCalendarChooserDefaultImpl *)self setView:self->_collectionView];
  }

  else
  {
    accessDeniedView = [(EKCalendarChooserDefaultImpl *)self accessDeniedView];
    [(EKCalendarChooserDefaultImpl *)self setView:accessDeniedView];

    if (self->_lastAuthorizationStatus == 1)
    {
      accessDeniedView2 = [(EKCalendarChooserDefaultImpl *)self accessDeniedView];
      [accessDeniedView2 setMessage:@" "];
    }
  }

  objc_destroyWeak(&v65);
  objc_destroyWeak(&v67);

  objc_destroyWeak(&v82);
  objc_destroyWeak(&v84);

  objc_destroyWeak(&v86);
  objc_destroyWeak(&v88);

  objc_destroyWeak(&v90);
  objc_destroyWeak(&v92);

  objc_destroyWeak(&v94);
  objc_destroyWeak(&v96);

  objc_destroyWeak(&v98);
  objc_destroyWeak(&v100);

  objc_destroyWeak(&v102);
  objc_destroyWeak(&v104);
  objc_destroyWeak(location);
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureHeaderCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureDelegateNameCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCalendarCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureDeclinedEventsCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCompletedRemindersCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureDelegateButtonCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureAddCalendarButtonCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureFocusCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureAccountErrorCell:v9 indexPath:v8 item:v7];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_10(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureFooterCell:v7 indexPath:v6];
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_11(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCollectionViewHeaderCell:v7 indexPath:v6];
}

id __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  if (![v8 row] && objc_msgSend(WeakRetained, "_sectionHasHeader:", objc_msgSend(v8, "section")))
  {
    v11 = *(a1 + 32);
LABEL_18:
    v12 = [v7 dequeueConfiguredReusableCellWithRegistration:v11 forIndexPath:v8 item:v9];
    goto LABEL_19;
  }

  if ([WeakRetained _isIdentityChooserSection:{objc_msgSend(v8, "section")}])
  {
    v11 = *(a1 + 40);
    goto LABEL_18;
  }

  if ([WeakRetained _isFocusBannerSection:{objc_msgSend(v8, "section")}])
  {
    v11 = *(a1 + 48);
    goto LABEL_18;
  }

  if ([WeakRetained _isDeclinedEventsSwitchSection:{objc_msgSend(v8, "section")}] && !objc_msgSend(v8, "row") && objc_msgSend(*(a1 + 56), "showsDeclinedEventsSetting"))
  {
    v11 = *(a1 + 64);
    goto LABEL_18;
  }

  if ([WeakRetained _isDeclinedEventsSwitchSection:{objc_msgSend(v8, "section")}])
  {
    v11 = *(a1 + 72);
    goto LABEL_18;
  }

  if ([WeakRetained _isDelegateCalendarsButtonSection:{objc_msgSend(v8, "section")}])
  {
    v11 = *(a1 + 80);
    goto LABEL_18;
  }

  if ([WeakRetained _isAddCalendarButtonSection:{objc_msgSend(v8, "section")}])
  {
    v11 = *(a1 + 88);
    goto LABEL_18;
  }

  v14 = [WeakRetained _groupForSection:{objc_msgSend(v8, "section")}];
  v15 = [WeakRetained _accountErrorActionRowIndexForGroup:v14];
  v16 = [v8 row];
  v17 = 104;
  if (v15 == v16)
  {
    v17 = 96;
  }

  v12 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v17) forIndexPath:v8 item:v9];

LABEL_19:

  return v12;
}

id __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_13(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *MEMORY[0x1E69DDC00];
  v8 = a4;
  v9 = a2;
  v10 = [a3 isEqualToString:v7];
  v11 = 40;
  if (v10)
  {
    v11 = 32;
  }

  v12 = [v9 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v11) forIndexPath:v8];

  return v12;
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained collapsedSectionIdentifiers];
  v5 = [v4 setByAddingObject:v3];

  [WeakRetained setCollapsedSectionIdentifiers:v5];
  v6 = [WeakRetained delegate];
  LOBYTE(v3) = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [WeakRetained delegate];
    v8 = [WeakRetained _ekCalendarChooser];
    [v7 calendarChooserCollapsedSectionIdentifiersDidChange:v8];
  }
}

void __40__EKCalendarChooserDefaultImpl_loadView__block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained collapsedSectionIdentifiers];
  v5 = [v4 mutableCopy];

  [v5 removeObject:v3];
  v6 = [v5 copy];
  [WeakRetained setCollapsedSectionIdentifiers:v6];

  v7 = [WeakRetained delegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v8 = [WeakRetained delegate];
    v9 = [WeakRetained _ekCalendarChooser];
    [v8 calendarChooserCollapsedSectionIdentifiersDidChange:v9];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v5.receiver = self;
  v5.super_class = EKCalendarChooserDefaultImpl;
  [(EKCalendarChooserDefaultImpl *)&v5 viewIsAppearing:appearing];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__EKCalendarChooserDefaultImpl_viewIsAppearing___block_invoke;
  v4[3] = &unk_1E8440630;
  v4[4] = self;
  [MEMORY[0x1E6966A28] requestFamilyShareesWithCompletion:v4];
}

uint64_t __48__EKCalendarChooserDefaultImpl_viewIsAppearing___block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 1064) = [a2 count] != 0;
  result = MEMORY[0x1D38B98D0]();
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return [v4 _updateOrCreateAddCalendarBarButtonItem];
  }

  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = EKCalendarChooserDefaultImpl;
  [(EKCalendarChooserDefaultImpl *)&v8 viewWillAppear:appear];
  if (self->_eventStore)
  {
    [(EKCalendarChooserDefaultImpl *)self _updateCurrentKnownCalendarIds];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__eventStoreChanged_ name:*MEMORY[0x1E6966928] object:self->_eventStore];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__ignoredErrorsChanged name:*MEMORY[0x1E69932C8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__showDeclinedEventsChanged_ name:@"com.apple.mobilecal.showdeclinedchanged" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__showCompletedRemindersChanged_ name:@"com.apple.mobilecal.showCompletedRemindersChanged" object:0];

    [MEMORY[0x1E6992F98] addObserver:self selector:sel__eventStoreChangedExternally name:@"com.apple.suggestions.settingsChanged"];
  }

  [(EKCalendarChooserDefaultImpl *)self _layoutNavToolbarControls];
  [(EKCalendarChooserDefaultImpl *)self _collectionViewBuildAndApplyNewSnapshotAnimated:1];
  [(EKCalendarChooserDefaultImpl *)self _updateViewControllerTitle];
}

- (void)viewDidAppear:(BOOL)appear
{
  v38 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = EKCalendarChooserDefaultImpl;
  [(EKCalendarChooserDefaultImpl *)&v31 viewDidAppear:appear];
  v4 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543362;
    v33 = v7;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  _allCalendars = [(EKCalendarChooserDefaultImpl *)self _allCalendars];
  v10 = [_allCalendars countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(_allCalendars);
        }

        calendarIdentifier = [*(*(&v27 + 1) + 8 * v13) calendarIdentifier];
        [array addObject:calendarIdentifier];

        ++v13;
      }

      while (v11 != v13);
      v11 = [_allCalendars countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v11);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selectedCalendars = [(EKCalendarChooserDefaultImpl *)self selectedCalendars];
  v17 = [selectedCalendars countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(selectedCalendars);
        }

        calendarIdentifier2 = [*(*(&v23 + 1) + 8 * v20) calendarIdentifier];
        [array2 addObject:calendarIdentifier2];

        ++v20;
      }

      while (v18 != v20);
      v18 = [selectedCalendars countByEnumeratingWithState:&v23 objects:v36 count:16];
    }

    while (v18);
  }

  v22 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v33 = array;
    v34 = 2114;
    v35 = array2;
    _os_log_impl(&dword_1D3400000, v22, OS_LOG_TYPE_INFO, "[UserStateLog] State -> allVisibleCalendars = %{public}@, selectedCalendars = %{public}@", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6966928] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69932C8] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"com.apple.mobilecal.showdeclinedchanged" object:0];

  [MEMORY[0x1E6992F98] removeObserver:self name:@"com.apple.suggestions.settingsChanged"];
  v8.receiver = self;
  v8.super_class = EKCalendarChooserDefaultImpl;
  [(EKCalendarChooserDefaultImpl *)&v8 viewWillDisappear:disappearCopy];
}

- (void)resetBackgroundColor
{
  isPresentedInsidePopover = [(UIViewController *)self isPresentedInsidePopover];
  collectionView = self->_collectionView;
  if (isPresentedInsidePopover)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v5 = ;
  [(UICollectionView *)collectionView setBackgroundColor:v5];
}

- (BOOL)hasAccountThatCanCreateCalendars
{
  v15 = *MEMORY[0x1E69E9840];
  limitedToSource = self->_limitedToSource;
  if (limitedToSource && ![(EKSource *)limitedToSource isWritable])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    sources = [(EKEventStore *)self->_eventStore sources];
    v5 = [sources countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(sources);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 supportsCalendarCreation] && objc_msgSend(v8, "sourceType") != 4)
          {
            LOBYTE(v5) = 1;
            goto LABEL_14;
          }
        }

        v5 = [sources countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v5;
}

+ (id)showAllString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Show All" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)hideAllString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Hide All" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)delegatesString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"View Calendar:" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)showAllButtonPressed
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"show";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:(*&self->_flags & 2) == 0];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  CalAnalyticsSendEvent();

  [(EKCalendarChooserDefaultImpl *)self _selectAllCalendarsAndNotify:1];
}

- (void)_selectAllCalendarsAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  [(EKCalendarChooserDefaultImpl *)self _selectAllCalendarsAndStores:(*&self->_flags & 2) == 0];
  if (notifyCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
      [v7 calendarChooserSelectionDidChange:_ekCalendarChooser];
    }
  }

  [(EKCalendarChooserDefaultImpl *)self _collectionViewBuildAndApplyNewSnapshotAnimated:1 completion:0];
}

- (void)setAllSelected:(BOOL)selected
{
  selectedCopy = selected;
  if (selected)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v5;
  v6 = objc_opt_class();
  if (selectedCopy)
  {
    [v6 hideAllString];
  }

  else
  {
    [v6 showAllString];
  }
  v7 = ;
  showAllButton = [(EKCalendarChooserDefaultImpl *)self showAllButton];
  [showAllButton setTitle:v7];

  if ((*&self->_flags & 2) != 0)
  {
    v9 = @"hide-all-button";
  }

  else
  {
    v9 = @"show-all-button";
  }

  showAllButton2 = [(EKCalendarChooserDefaultImpl *)self showAllButton];
  [showAllButton2 setAccessibilityIdentifier:v9];
}

- (void)openAddRegularCalendarWithTitle:(id)title
{
  if (!self->_presentedEditor)
  {
    titleCopy = title;
    v5 = [[EKCalendarEditor alloc] initWithCalendar:0 eventStore:self->_eventStore entityType:self->_entityType limitedToSource:self->_limitedToSource];
    [(EKCalendarEditor *)v5 setPrefillCalendarTitle:titleCopy];

    [(EKAbstractCalendarEditor *)v5 setDelegate:self];
    objc_storeStrong(&self->_presentedEditor, v5);
    if (self->_displayStyle == 1000 && self->_addCalendarBarButton == 0)
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[EKCalendarChooserDefaultImpl _addCalendarButtonSection](self, "_addCalendarButtonSection")}];
      v8 = MEMORY[0x1E69DD250];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__EKCalendarChooserDefaultImpl_openAddRegularCalendarWithTitle___block_invoke;
      v12[3] = &unk_1E843EFB8;
      v12[4] = self;
      v13 = v7;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64__EKCalendarChooserDefaultImpl_openAddRegularCalendarWithTitle___block_invoke_2;
      v10[3] = &unk_1E8440658;
      v10[4] = self;
      v11 = v13;
      v9 = v13;
      [v8 animateWithDuration:v12 animations:v10 completion:0.0];
    }

    else
    {
      [(EKCalendarChooserDefaultImpl *)self _commonAddCalendarButtonPressed:?];
    }
  }
}

void __64__EKCalendarChooserDefaultImpl_openAddRegularCalendarWithTitle___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1192) cellForItemAtIndexPath:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v2 = *(*(a1 + 32) + 1192);
  }

  [*(a1 + 32) _commonAddCalendarButtonPressed:v2];
}

- (void)showCalendar:(id)calendar enableDoneInitially:(BOOL)initially
{
  initiallyCopy = initially;
  calendarCopy = calendar;
  presentedEditor = self->_presentedEditor;
  if (presentedEditor)
  {
    calendar = [(EKAbstractCalendarEditor *)presentedEditor calendar];
    hasChanges = [calendar hasChanges];

    if ((hasChanges & 1) == 0)
    {
      v10 = self->_presentedEditor;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__EKCalendarChooserDefaultImpl_showCalendar_enableDoneInitially___block_invoke;
      v17[3] = &unk_1E843FBC8;
      v17[4] = self;
      v18 = calendarCopy;
      v19 = initiallyCopy;
      [(EKAbstractCalendarEditor *)v10 dismissViewControllerAnimated:1 completion:v17];
    }
  }

  else
  {
    if ([calendarCopy isSubscribed])
    {
      v11 = [EKSubscribedCalendarEditor alloc];
      eventStore = self->_eventStore;
      limitedToSource = self->_limitedToSource;
      v14 = calendarCopy;
      entityType = 0;
    }

    else
    {
      v11 = [EKCalendarEditor alloc];
      eventStore = self->_eventStore;
      entityType = self->_entityType;
      limitedToSource = self->_limitedToSource;
      v14 = calendarCopy;
    }

    v16 = [(EKAbstractCalendarEditor *)v11 initWithCalendar:v14 eventStore:eventStore entityType:entityType limitedToSource:limitedToSource enableDoneInitially:initiallyCopy];
    [(EKCalendarChooserDefaultImpl *)self _presentEditor:v16 animated:1 completion:0];
  }
}

uint64_t __65__EKCalendarChooserDefaultImpl_showCalendar_enableDoneInitially___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1256);
  *(v2 + 1256) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v4 showCalendar:v5 enableDoneInitially:v6];
}

- (void)addCalendarButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v4 = [[EKCalendarEditor alloc] initWithCalendar:0 eventStore:self->_eventStore entityType:self->_entityType limitedToSource:self->_limitedToSource];
  [(EKAbstractCalendarEditor *)v4 setDelegate:self];
  presentedEditor = self->_presentedEditor;
  self->_presentedEditor = &v4->super;

  [(EKCalendarChooserDefaultImpl *)self _commonAddCalendarButtonPressed:pressedCopy];
}

- (void)addFamilyCalendarButtonPressed:(id)pressed
{
  eventStore = self->_eventStore;
  pressedCopy = pressed;
  v5 = [EKCalendarEditor newFamilyCalendarEditorWithEventStore:eventStore];
  [(EKAbstractCalendarEditor *)v5 setDelegate:self];
  presentedEditor = self->_presentedEditor;
  self->_presentedEditor = v5;

  [(EKCalendarChooserDefaultImpl *)self _commonAddCalendarButtonPressed:pressedCopy];
}

- (void)showAddSubscribedCalendarWithURL:(id)l
{
  lCopy = l;
  presentedEditor = self->_presentedEditor;
  if (presentedEditor)
  {
    calendar = [(EKAbstractCalendarEditor *)presentedEditor calendar];
    hasChanges = [calendar hasChanges];

    if ((hasChanges & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([(EKAbstractCalendarEditor *)self->_presentedEditor updateURL:lCopy]& 1) == 0)
      {
        v8 = self->_presentedEditor;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __65__EKCalendarChooserDefaultImpl_showAddSubscribedCalendarWithURL___block_invoke;
        v18[3] = &unk_1E843EFB8;
        v18[4] = self;
        v19 = lCopy;
        [(EKAbstractCalendarEditor *)v8 dismissViewControllerAnimated:1 completion:v18];
      }
    }
  }

  else if (self->_displayStyle == 1000 && self->_addCalendarBarButton == 0)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[EKCalendarChooserDefaultImpl _addCalendarButtonSection](self, "_addCalendarButtonSection")}];
    v11 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__EKCalendarChooserDefaultImpl_showAddSubscribedCalendarWithURL___block_invoke_2;
    v16[3] = &unk_1E843EFB8;
    v16[4] = self;
    v17 = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__EKCalendarChooserDefaultImpl_showAddSubscribedCalendarWithURL___block_invoke_3;
    v13[3] = &unk_1E8440680;
    v13[4] = self;
    v14 = v17;
    v15 = lCopy;
    v12 = v17;
    [v11 animateWithDuration:v16 animations:v13 completion:0.0];
  }

  else
  {
    [EKCalendarChooserDefaultImpl addSubscribedCalendarButtonPressed:"addSubscribedCalendarButtonPressed:prefillURL:" prefillURL:?];
  }
}

uint64_t __65__EKCalendarChooserDefaultImpl_showAddSubscribedCalendarWithURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1256);
  *(v2 + 1256) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 showAddSubscribedCalendarWithURL:v5];
}

void __65__EKCalendarChooserDefaultImpl_showAddSubscribedCalendarWithURL___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1192) cellForItemAtIndexPath:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v2 = *(*(a1 + 32) + 1192);
  }

  [*(a1 + 32) addSubscribedCalendarButtonPressed:v2 prefillURL:*(a1 + 48)];
}

- (void)addSubscribedCalendarButtonPressed:(id)pressed prefillURL:(id)l
{
  lCopy = l;
  pressedCopy = pressed;
  v7 = [[EKSubscribedCalendarEditor alloc] initWithCalendar:0 eventStore:self->_eventStore entityType:0 limitedToSource:self->_limitedToSource];
  [(EKSubscribedCalendarEditor *)v7 setPrefillURL:lCopy];

  [(EKAbstractCalendarEditor *)v7 setDelegate:self];
  presentedEditor = self->_presentedEditor;
  self->_presentedEditor = &v7->super;

  [(EKCalendarChooserDefaultImpl *)self _commonAddCalendarButtonPressed:pressedCopy];
}

- (void)addHolidayCalendarButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  CalAnalyticsSendEvent();
  v4 = [[EKAddHolidayCalendarEditor alloc] initWithCalendar:0 eventStore:self->_eventStore entityType:0 limitedToSource:self->_limitedToSource];
  [(EKAbstractCalendarEditor *)v4 setDelegate:self];
  presentedEditor = self->_presentedEditor;
  self->_presentedEditor = &v4->super;

  [(EKCalendarChooserDefaultImpl *)self _commonAddCalendarButtonPressed:pressedCopy];
}

- (void)_commonAddCalendarButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_presentedEditor];
  v5 = v4;
  if (self->_displayStyle == 1000)
  {
    [v4 setModalPresentationStyle:7];
    [v5 _setClipUnderlapWhileTransitioning:1];
    popoverPresentationController = [v5 popoverPresentationController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [popoverPresentationController setBarButtonItem:pressedCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [popoverPresentationController setSourceView:pressedCopy];
      }
    }
  }

  else
  {
    popoverPresentationController = [(EKCalendarChooserDefaultImpl *)self view];
    if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(popoverPresentationController))
    {
      view = [(EKCalendarChooserDefaultImpl *)self view];
      IsRegular = EKUICurrentHeightSizeClassIsRegular(view);

      if (!IsRegular)
      {
        goto LABEL_10;
      }

      [v5 setModalPresentationStyle:6];
      popoverPresentationController = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
      view2 = [v5 view];
      [view2 setBackgroundColor:popoverPresentationController];
    }
  }

LABEL_10:
  presentationController = [v5 presentationController];
  [presentationController setDelegate:self];

  presentationNavigationDelegate = [(EKCalendarChooserDefaultImpl *)self presentationNavigationDelegate];
  [presentationNavigationDelegate presentViewController:v5 animated:1 completion:0];
}

- (id)presentationNavigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    navigationController = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    navigationController = [(EKCalendarChooserDefaultImpl *)self navigationController];
  }

  return navigationController;
}

- (void)_updateViewControllerTitle
{
  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowIdentityChooser])
  {
    if (self->_limitedToSource)
    {
      view = [(EKCalendarChooserDefaultImpl *)self _contactForSource:?];
      v4 = EventKitUIBundle();
      v5 = [v4 localizedStringForKey:@"%@’s Calendar" value:&stru_1F4EF6790 table:0];

      v6 = [MEMORY[0x1E695CD80] stringFromContact:view style:1000];
      if (v6)
      {
        [MEMORY[0x1E696AEC0] localizedStringWithFormat:v5, v6];
      }

      else
      {
        CUIKDisplayedTitleForSource();
      }
      v12 = ;
    }

    else
    {
      view = EventKitUIBundle();
      v12 = [view localizedStringForKey:@"My Calendar" value:&stru_1F4EF6790 table:0];
    }
  }

  else
  {
    view = [(EKCalendarChooserDefaultImpl *)self view];
    IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view);
    v8 = EventKitUIBundle();
    v9 = v8;
    if (IsCompactInViewHierarchy)
    {
      v10 = @"Calendars";
    }

    else
    {
      v10 = @"Show Calendars";
    }

    v12 = [v8 localizedStringForKey:v10 value:&stru_1F4EF6790 table:0];
  }

  [(EKCalendarChooserDefaultImpl *)self setTitle:v12];
  _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
  [_ekCalendarChooser setTitle:v12];
}

- (id)_contactForSource:(id)source
{
  sourceCopy = source;
  ownerAddresses = [sourceCopy ownerAddresses];
  v6 = [(EKCalendarChooserDefaultImpl *)self _preferredAddressFromOwnerAddresses:ownerAddresses];

  v7 = CUIKDisplayedTitleForSource();

  v8 = +[ContactsUtils defaultContactKeysToFetch];
  v9 = [ContactsUtils contactForAddress:v6 fullName:v7 firstName:0 lastName:0 keysToFetch:v8];

  return v9;
}

- (id)_preferredAddressFromOwnerAddresses:(id)addresses
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  addressesCopy = addresses;
  v4 = [addressesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = *v13;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(addressesCopy);
      }

      v8 = *(*(&v12 + 1) + 8 * i);
      if ([v8 hasMailto])
      {
        stringRemovingMailto = [v8 stringRemovingMailto];
LABEL_14:
        v9 = stringRemovingMailto;
        goto LABEL_15;
      }

      if ([v8 hasTel])
      {
        stringRemovingMailto = [v8 stringRemovingTel];
        goto LABEL_14;
      }
    }

    v5 = [addressesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    v9 = 0;
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v9;
}

- (BOOL)_shouldShowAddHolidayCalendarMenuItem
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sources = [(EKEventStore *)self->_eventStore sources];
  v5 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(sources);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isDelegate] & 1) == 0 && objc_msgSend(v9, "sourceType"))
        {
          [array addObject:v9];
        }
      }

      v6 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  mEMORY[0x1E6993370] = [MEMORY[0x1E6993370] sharedInstance];
  v11 = [mEMORY[0x1E6993370] haveiCloudCalendarAccountInSources:array];

  return v11;
}

- (void)_layoutNavToolbarControls
{
  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  flags = self->_flags;
  if ((flags & 0x20) != 0 && !self->_refreshControl)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCE58]);
    [(UIRefreshControl *)v4 addTarget:self action:sel__pulledToRefresh_ forControlEvents:4096];
    [(UICollectionView *)self->_collectionView setRefreshControl:v4];
    refreshControl = self->_refreshControl;
    self->_refreshControl = v4;

    flags = self->_flags;
  }

  if ((flags & 8) != 0)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [v6 setAccessibilityIdentifier:@"cancel-button"];
    [v38 addObject:v6];

    flags = self->_flags;
  }

  if ((flags & 4) != 0)
  {
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    if ((flags & 8) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = 24;
    }

    v9 = [v7 initWithBarButtonSystemItem:v8 target:self action:sel_done_];
    if (MEMORY[0x1D38B98D0]([v9 setAccessibilityIdentifier:@"done-button"]))
    {
      [v9 setStyle:0];
    }

    [v38 addObject:v9];
  }

  if ([v38 count])
  {
    firstObject = [v38 firstObject];
    navigationItem = [(EKCalendarChooserDefaultImpl *)self navigationItem];
    [navigationItem setLeftBarButtonItem:firstObject];

    [v38 removeObjectAtIndex:0];
  }

  if ([v38 count])
  {
    lastObject = [v38 lastObject];
    navigationItem2 = [(EKCalendarChooserDefaultImpl *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:lastObject];

    [v38 removeLastObject];
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v38 count])
  {
    lastObject2 = [v38 lastObject];
    [v14 addObject:lastObject2];

    [v38 removeLastObject];
    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    [v14 addObject:v16];
  }

  if (![(EKCalendarChooserDefaultImpl *)self disableCalendarEditing]&& [(EKCalendarChooserDefaultImpl *)self hasAccountThatCanCreateCalendars]&& (MEMORY[0x1D38B98D0]() & 1) == 0)
  {
    [(EKCalendarChooserDefaultImpl *)self _updateOrCreateAddCalendarBarButtonItem];
    [v14 addObject:self->_addCalendarBarButton];
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    [v14 addObject:v17];
  }

  _applySelection = [(EKCalendarChooserDefaultImpl *)self _applySelection];
  if (self->_style == 1 && (MEMORY[0x1D38B98D0](_applySelection) & 1) == 0)
  {
    if (![v14 count])
    {
      v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      [v14 addObject:v19];
    }

    v20 = self->_flags;
    v21 = objc_opt_class();
    if ((v20 & 2) != 0)
    {
      [v21 hideAllString];
    }

    else
    {
      [v21 showAllString];
    }
    v22 = ;
    v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v22 style:0 target:self action:sel_showAllButtonPressed];
    [(EKCalendarChooserDefaultImpl *)self setShowAllButton:v23];

    showAllButton = [(EKCalendarChooserDefaultImpl *)self showAllButton];
    [v14 addObject:showAllButton];

    if ((*&self->_flags & 2) != 0)
    {
      v25 = @"hide-all-button";
    }

    else
    {
      v25 = @"show-all-button";
    }

    showAllButton2 = [(EKCalendarChooserDefaultImpl *)self showAllButton];
    [showAllButton2 setAccessibilityIdentifier:v25];

    v27 = MEMORY[0x1E695DFD8];
    showAllString = [objc_opt_class() showAllString];
    hideAllString = [objc_opt_class() hideAllString];
    v30 = [v27 setWithObjects:{showAllString, hideAllString, 0}];
    showAllButton3 = [(EKCalendarChooserDefaultImpl *)self showAllButton];
    [showAllButton3 setPossibleTitles:v30];

    if (MEMORY[0x1D38B98D0]())
    {
      v32 = CalendarAppBarButtonItemTintColor();
      showAllButton4 = [(EKCalendarChooserDefaultImpl *)self showAllButton];
      [showAllButton4 setTintColor:v32];
    }
  }

  if ([v14 count])
  {
    navigationController = [(EKCalendarChooserDefaultImpl *)self navigationController];
    [navigationController setToolbarHidden:0];

    [(EKCalendarChooserDefaultImpl *)self setToolbarItems:v14 animated:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v36 = [WeakRetained conformsToProtocol:&unk_1F4FD2BC0];

    if (v36)
    {
      v37 = objc_loadWeakRetained(&self->_delegate);
      [v37 calendarChooserUpdatedToolbarItems];
    }
  }

  [(UICollectionView *)self->_collectionView sizeThatFits:EKUIContainedControllerIdealWidth(), 600.0];
  [(EKCalendarChooserDefaultImpl *)self setPreferredContentSize:?];
}

- (id)_menuForAddCalendarButton:(id)button
{
  v51[1] = *MEMORY[0x1E69E9840];
  val = button;
  objc_initWeak(&location, self);
  objc_initWeak(&from, val);
  array = [MEMORY[0x1E695DF70] array];
  if ([(EKCalendarChooserDefaultImpl *)self _shouldShowAddHolidayCalendarMenuItem])
  {
    v5 = MEMORY[0x1E69DC628];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Add Holiday Calendar - menu action" value:@"Add Holiday Calendar" table:0];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar.badge.plus"];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __58__EKCalendarChooserDefaultImpl__menuForAddCalendarButton___block_invoke;
    v45[3] = &unk_1E843F3B8;
    objc_copyWeak(&v46, &location);
    objc_copyWeak(&v47, &from);
    v9 = [v5 actionWithTitle:v7 image:v8 identifier:0 handler:v45];

    [v9 setAccessibilityIdentifier:@"add-holiday-calendar-menubutton"];
    [array addObject:v9];

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v46);
  }

  v10 = MEMORY[0x1E69DC628];
  v11 = EventKitUIBundle();
  v12 = [v11 localizedStringForKey:@"Add Subscription Calendar" value:&stru_1F4EF6790 table:0];
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"badge.plus.radiowaves.forward"];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __58__EKCalendarChooserDefaultImpl__menuForAddCalendarButton___block_invoke_2;
  v42[3] = &unk_1E843F3B8;
  objc_copyWeak(&v43, &location);
  objc_copyWeak(&v44, &from);
  v14 = [v10 actionWithTitle:v12 image:v13 identifier:0 handler:v42];

  [v14 setAccessibilityIdentifier:@"add-subscription-calendar-menubutton"];
  [array addObject:v14];
  primaryAppleAccountSource = [(EKEventStore *)self->_eventStore primaryAppleAccountSource];
  v16 = primaryAppleAccountSource == 0;

  if (!v16 && self->_hasIcloudFamilyMembers)
  {
    v17 = MEMORY[0x1E69DC628];
    v18 = EventKitUIBundle();
    v19 = [v18 localizedStringForKey:@"Add Family Calendar Menu Button" value:@"Add Family Calendar" table:0];
    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.icloud"];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__EKCalendarChooserDefaultImpl__menuForAddCalendarButton___block_invoke_3;
    v39[3] = &unk_1E843F3B8;
    objc_copyWeak(&v40, &location);
    objc_copyWeak(&v41, &from);
    v21 = [v17 actionWithTitle:v19 image:v20 identifier:0 handler:v39];

    [array addObject:v21];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v40);
  }

  v22 = MEMORY[0x1E69DC628];
  v23 = EventKitUIBundle();
  v24 = [v23 localizedStringForKey:@"Add Calendar Menu Button" value:@"Add Calendar" table:0];
  v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar.badge.plus"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __58__EKCalendarChooserDefaultImpl__menuForAddCalendarButton___block_invoke_4;
  v36[3] = &unk_1E843F3B8;
  objc_copyWeak(&v37, &location);
  objc_copyWeak(&v38, &from);
  v26 = [v22 actionWithTitle:v24 image:v25 identifier:0 handler:v36];

  [v26 setAccessibilityIdentifier:@"add-calendar-menubutton"];
  v27 = MEMORY[0x1E69DCC60];
  v51[0] = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v29 = [v27 menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v28];

  v30 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:array];
  v31 = MEMORY[0x1E69DCC60];
  v50[0] = v30;
  v50[1] = v29;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v33 = [v31 menuWithChildren:v32];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v33;
}

void __58__EKCalendarChooserDefaultImpl__menuForAddCalendarButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained addHolidayCalendarButtonPressed:v2];
  }
}

void __58__EKCalendarChooserDefaultImpl__menuForAddCalendarButton___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained addSubscribedCalendarButtonPressed:v2 prefillURL:0];
  }
}

void __58__EKCalendarChooserDefaultImpl__menuForAddCalendarButton___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained addFamilyCalendarButtonPressed:v2];
  }
}

void __58__EKCalendarChooserDefaultImpl__menuForAddCalendarButton___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained addCalendarButtonPressed:v2];
  }
}

- (void)_updateOrCreateAddCalendarBarButtonItem
{
  currentProcessIsFirstPartyCalendarApp = [MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp];
  addCalendarBarButton = self->_addCalendarBarButton;
  if (currentProcessIsFirstPartyCalendarApp)
  {
    v5 = [(EKCalendarChooserDefaultImpl *)self _menuForAddCalendarButton:addCalendarBarButton];
    v6 = self->_addCalendarBarButton;
    v18 = v5;
    if (v6)
    {
      [(UIBarButtonItem *)v6 setMenu:v5];
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E69DC708]);
      v13 = EventKitUIBundle();
      v14 = [v13 localizedStringForKey:@"Add Calendar" value:&stru_1F4EF6790 table:0];
      v15 = [v12 initWithTitle:v14 menu:v18];
      v16 = self->_addCalendarBarButton;
      self->_addCalendarBarButton = v15;

      if (MEMORY[0x1D38B98D0]([(UIBarButtonItem *)self->_addCalendarBarButton setAccessibilityIdentifier:@"add-calendar-button"]))
      {
        v17 = CalendarAppBarButtonItemTintColor();
        [(UIBarButtonItem *)self->_addCalendarBarButton setTintColor:v17];
      }
    }
  }

  else
  {
    if (addCalendarBarButton)
    {
      return;
    }

    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"Add Calendar" value:&stru_1F4EF6790 table:0];
    v10 = [v7 initWithTitle:v9 style:0 target:self action:sel_addCalendarButtonPressed_];
    v11 = self->_addCalendarBarButton;
    self->_addCalendarBarButton = v10;

    if (!MEMORY[0x1D38B98D0]([(UIBarButtonItem *)self->_addCalendarBarButton setAccessibilityIdentifier:@"add-calendar-button"]))
    {
      return;
    }

    v18 = CalendarAppBarButtonItemTintColor();
    [(UIBarButtonItem *)self->_addCalendarBarButton setTintColor:v18];
  }
}

- (id)_viewModeTitle
{
  view = [(EKCalendarChooserDefaultImpl *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view);
  v4 = EventKitUIBundle();
  v5 = v4;
  if (IsCompactInViewHierarchy)
  {
    v6 = @"Calendars";
  }

  else
  {
    v6 = @"Show Calendars";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];

  return v7;
}

- (CGSize)preferredContentSize
{
  collectionView = self->_collectionView;
  v3 = EKUIContainedControllerIdealWidth();

  [(UICollectionView *)collectionView sizeThatFits:v3, 1100.0];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setChooserMode:(int64_t)mode
{
  if (mode == 1 && self->_style)
  {
    [EKCalendarChooserDefaultImpl setChooserMode:];
  }

  self->_chooserMode = mode;
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(EKCalendarChooserDefaultImpl *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

  if (IsRegularInViewHierarchy)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setShowsDoneButton:(BOOL)button
{
  if (button)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
}

- (void)setShowsCancelButton:(BOOL)button
{
  if (button)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v3;
}

- (void)setDisableCalendarsUnselectedByFocus:(BOOL)focus
{
  focusCopy = focus;
  if (!focus)
  {
LABEL_5:
    flags = self->_flags;
    if (((((flags & 0x40) == 0) ^ focusCopy) & 1) == 0)
    {
      if (focusCopy)
      {
        v10 = 64;
      }

      else
      {
        v10 = 0;
      }

      *&self->_flags = flags & 0xBF | v10;
    }

    return;
  }

  delegate = [(EKCalendarChooserDefaultImpl *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_11;
  }

  delegate2 = [(EKCalendarChooserDefaultImpl *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  delegate3 = [(EKCalendarChooserDefaultImpl *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_12:
  v11 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Attempted to disable calendars unselected by focus, but the delegate does not implement the required methods", v12, 2u);
  }
}

- (void)_showDeclinedEventsChanged:(id)changed
{
  pendingShowDeclinedEvents = self->_pendingShowDeclinedEvents;
  self->_pendingShowDeclinedEvents = 0;

  [(EKCalendarChooserDefaultImpl *)self _reconfigureIdentifierInCollectionView:@"CollectionViewRowIdentifierDeclinedEvents"];
}

- (void)_showCompletedRemindersChanged:(id)changed
{
  pendingShowCompletedReminders = self->_pendingShowCompletedReminders;
  self->_pendingShowCompletedReminders = 0;

  [(EKCalendarChooserDefaultImpl *)self _reconfigureIdentifierInCollectionView:@"CollectionViewRowIdentifierCompletedReminders"];
}

- (void)setAllowsPullToRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  if (!self->_eventStore)
  {
    [EKCalendarChooserDefaultImpl setAllowsPullToRefresh:];
  }

  if (refreshCopy)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xDF | v5;
}

- (void)cancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
      [v9 calendarChooserDidCancel:_ekCalendarChooser];
    }
  }
}

- (void)done:(id)done
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
      [v9 calendarChooserDidFinish:_ekCalendarChooser];
    }
  }
}

- (void)refresh:(id)refresh
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      refreshCalendarsButtonPressed = [v8 refreshCalendarsButtonPressed];
      currentAccountRefresher = self->_currentAccountRefresher;
      self->_currentAccountRefresher = refreshCalendarsButtonPressed;

      [(EKAccountRefresher *)self->_currentAccountRefresher setDelegate:self];
      if (([(EKAccountRefresher *)self->_currentAccountRefresher refreshing]& 1) == 0)
      {

        [(EKCalendarChooserDefaultImpl *)self _finishRefreshing];
      }
    }
  }
}

- (void)_finishRefreshing
{
  refreshControl = self->_refreshControl;
  if (refreshControl)
  {
    [(UIRefreshControl *)refreshControl endRefreshing];
  }

  currentAccountRefresher = self->_currentAccountRefresher;
  self->_currentAccountRefresher = 0;
}

- (void)accountRefreshFinished:(id)finished
{
  finishedCopy = finished;
  [(EKCalendarChooserDefaultImpl *)self _finishRefreshing];
  allAccountsOffline = [finishedCopy allAccountsOffline];

  if (allAccountsOffline)
  {

    [EKUIAccountErrorDisplayer presentAlertForOfflineErrorUsingViewController:self];
  }
}

- (BOOL)_calendarAvailableForEditing:(id)editing
{
  editingCopy = editing;
  if ([(EKCalendarChooserDefaultImpl *)self disableCalendarEditing])
  {
    isEditable = 0;
  }

  else
  {
    isEditable = [editingCopy isEditable];
  }

  return isEditable;
}

- (id)_calendarInfoForCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = calendarCopy;
  if (calendarCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__7;
    v16 = __Block_byref_object_dispose__7;
    v17 = 0;
    allGroups = self->_allGroups;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__EKCalendarChooserDefaultImpl__calendarInfoForCalendar___block_invoke;
    v9[3] = &unk_1E84406D0;
    v10 = calendarCopy;
    v11 = &v12;
    [(NSArray *)allGroups enumerateObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __57__EKCalendarChooserDefaultImpl__calendarInfoForCalendar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 calendarInfos];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__EKCalendarChooserDefaultImpl__calendarInfoForCalendar___block_invoke_2;
  v9[3] = &unk_1E84406A8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [v6 enumerateObjectsUsingBlock:v9];

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __57__EKCalendarChooserDefaultImpl__calendarInfoForCalendar___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 calendar];
  if ([v7 isEqual:*(a1 + 32)])
  {
  }

  else
  {
    v8 = [v10 otherCalendars];
    v9 = [v8 containsObject:*(a1 + 32)];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *a4 = 1;
LABEL_5:
}

- (id)_saveSelection
{
  if (self->_style)
  {
    [(EKCalendarChooserDefaultImpl *)self selectedCalendars];
  }

  else
  {
    [(EKCalendarChooserDefaultImpl *)self selectedCalendar];
  }
  v2 = ;

  return v2;
}

- (void)_restoreSelection:(id)selection calendarsForSelectedSource:(id)source allCalendars:(id)calendars
{
  v29 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  calendarsCopy = calendars;
  if (self->_style)
  {
    v23 = selectionCopy;
    v10 = [(EKCalendarChooserDefaultImpl *)self _calendarSetToCalendarIdSet:selectionCopy];
    v11 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = calendarsCopy;
    v12 = calendarsCopy;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          calendarIdentifier = [v17 calendarIdentifier];
          v19 = [v10 containsObject:calendarIdentifier];

          if (v19)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    [(EKCalendarChooserDefaultImpl *)self setSelectedCalendarsAndNotify:v11];
    calendarsCopy = v22;
    selectionCopy = v23;
  }

  else if ([source containsObject:selectionCopy])
  {
    [(EKCalendarChooserDefaultImpl *)self setSelectedCalendar:selectionCopy];
  }

  else if (selectionCopy)
  {
    eventStore = self->_eventStore;
    if (self->_entityType)
    {
      [(EKEventStore *)eventStore defaultCalendarForNewReminders];
    }

    else
    {
      [(EKEventStore *)eventStore defaultCalendarForNewEvents];
    }
    v21 = ;
    [(EKCalendarChooserDefaultImpl *)self setSelectedCalendar:v21];
  }
}

- (_UIAccessDeniedView)accessDeniedView
{
  if (!self->_accessDeniedView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD328]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    accessDeniedView = self->_accessDeniedView;
    self->_accessDeniedView = v4;

    [(_UIAccessDeniedView *)self->_accessDeniedView setAutoresizingMask:18];
    entityType = self->_entityType;
    v7 = EventKitUIBundle();
    v8 = v7;
    if (entityType == 1)
    {
      v9 = @"This app does not have access to your reminders.";
    }

    else
    {
      v9 = @"This app does not have access to your calendars.";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_1F4EF6790 table:0];
    [(_UIAccessDeniedView *)self->_accessDeniedView setTitle:v10];
  }

  v11 = self->_accessDeniedView;

  return v11;
}

- (void)setShouldOverrideAuthorizationStatus:(BOOL)status withRemoteUIStatus:(int64_t)iStatus displayStyle:(int64_t)style
{
  self->_shouldOverrideAuthorizationStatus = status;
  self->_displayStyle = style;
  [(EKCalendarChooserDefaultImpl *)self _updateAccessDeniedViewWithNewStatus:iStatus];
}

- (void)_updateDelegateSources
{
  v3 = [(NSArray *)self->_delegateSources count];
  v4 = MEMORY[0x1E69933B8];
  eventStore = [(EKCalendarChooserDefaultImpl *)self eventStore];
  v6 = [v4 sortedEnabledDelegateSourcesFromStore:eventStore];
  delegateSources = self->_delegateSources;
  self->_delegateSources = v6;

  if (v3 != [(NSArray *)self->_delegateSources count])
  {
    [(EKCalendarChooserDefaultImpl *)self _collectionViewBuildAndApplyNewSnapshotAnimated:1];
  }

  limitedToSource = self->_limitedToSource;
  if (limitedToSource && [(EKSource *)limitedToSource isDelegate]&& ![(NSArray *)self->_delegateSources containsObject:self->_limitedToSource])
  {
    v9 = self->_limitedToSource;
    self->_limitedToSource = 0;

    [(EKCalendarChooserDefaultImpl *)self _delegateSelectionDidChange:1];
  }
}

- (void)_updateShowDelegateCalendarsCell
{
  eventStore = [(EKCalendarChooserDefaultImpl *)self eventStore];
  sources = [eventStore sources];
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_443];
  v5 = [sources filteredArrayUsingPredicate:v4];
  self->_showDelegateCalendarsCell = [v5 count] != 0;
}

uint64_t __64__EKCalendarChooserDefaultImpl__updateShowDelegateCalendarsCell__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 constraints];
  if ([v3 supportsDelegation])
  {
    v4 = [v2 isDelegate] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_eventStoreChanged:(id)changed
{
  v43 = *MEMORY[0x1E69E9840];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E6966930]];

  if (![v5 count])
  {
LABEL_18:
    v31 = v5;
    _currentKnownCalendarIds = [(EKCalendarChooserDefaultImpl *)self _currentKnownCalendarIds];
    _allCalendars = [(EKCalendarChooserDefaultImpl *)self _allCalendars];
    _loadCalendars = [(EKCalendarChooserDefaultImpl *)self _loadCalendars];
    v17 = [(EKCalendarChooserDefaultImpl *)self _calendarSetToCalendarIdSet:_allCalendars];
    v30 = _currentKnownCalendarIds;
    [v17 minusSet:_currentKnownCalendarIds];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = _allCalendars;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          calendarIdentifier = [v23 calendarIdentifier];
          v25 = [v17 containsObject:calendarIdentifier];

          if (v25)
          {
            [(NSMutableSet *)self->_selectedCalendars addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v20);
    }

    _saveSelection = [(EKCalendarChooserDefaultImpl *)self _saveSelection];
    showDelegateCalendarsCell = self->_showDelegateCalendarsCell;
    [(EKCalendarChooserDefaultImpl *)self _updateDelegateSources];
    [(EKCalendarChooserDefaultImpl *)self _updateShowDelegateCalendarsCell];
    if (showDelegateCalendarsCell != self->_showDelegateCalendarsCell)
    {
      [(EKCalendarChooserDefaultImpl *)self _collectionViewBuildAndApplyNewSnapshotAnimated:1];
    }

    v5 = v31;
    [(EKCalendarChooserDefaultImpl *)self _setCalendars:_loadCalendars changedObjectsHint:v31 forceCollectionViewReload:0];
    [(EKCalendarChooserDefaultImpl *)self _restoreSelection:_saveSelection calendarsForSelectedSource:_loadCalendars allCalendars:v18];
    [(EKCalendarChooserDefaultImpl *)self _updateCurrentKnownCalendarIds];
    if ([(EKCalendarChooserDefaultImpl *)self isViewLoaded])
    {
      if (!self->_shouldOverrideAuthorizationStatus)
      {
        v28 = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:self->_entityType];
        if (v28 != self->_lastAuthorizationStatus)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __51__EKCalendarChooserDefaultImpl__eventStoreChanged___block_invoke;
          block[3] = &unk_1E843F690;
          block[4] = self;
          block[5] = v28;
          dispatch_sync(MEMORY[0x1E69E96A0], block);
        }
      }
    }

    [(EKCalendarChooserDefaultImpl *)self _reconfigureHeaders];

    v6 = v30;
    goto LABEL_34;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v7)
  {
LABEL_34:

    goto LABEL_35;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v38;
  while (2)
  {
    for (j = 0; j != v8; ++j)
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v37 + 1) + 8 * j);
      if ([v13 entityType] == 6)
      {
        v9 = 1;
        v10 = 1;
      }

      else
      {
        v14 = [v13 entityType] == 1;
        v9 |= v14;
        v10 |= v14;
        if ((v10 & 1) == 0)
        {
          continue;
        }
      }

      if (v9)
      {

LABEL_17:
        [MEMORY[0x1E6993370] invalidate];
        [(EKCalendarChooserDefaultImpl *)self _layoutNavToolbarControls];
        goto LABEL_18;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  if (v10)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
}

- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)status
{
  if (self->_lastAuthorizationStatus != status)
  {
    accessDeniedView = self->_accessDeniedView;
    if (status < 3)
    {
      if (!accessDeniedView)
      {
        firstResponder = [(EKCalendarChooserDefaultImpl *)self firstResponder];
        [firstResponder resignFirstResponder];

        accessDeniedView = [(EKCalendarChooserDefaultImpl *)self accessDeniedView];
        [(EKCalendarChooserDefaultImpl *)self setView:accessDeniedView];

        if (status == 1)
        {
          accessDeniedView2 = [(EKCalendarChooserDefaultImpl *)self accessDeniedView];
          [accessDeniedView2 setMessage:@" "];
        }

        [(UICollectionView *)self->_collectionView removeFromSuperview];
      }
    }

    else if (accessDeniedView)
    {
      [(EKCalendarChooserDefaultImpl *)self setView:self->_collectionView];
      [(_UIAccessDeniedView *)self->_accessDeniedView removeFromSuperview];
      v6 = self->_accessDeniedView;
      self->_accessDeniedView = 0;
    }

    self->_lastAuthorizationStatus = status;
  }
}

- (id)_calendarSetToCalendarIdSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v4 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = setCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        calendarIdentifier = [v10 calendarIdentifier];

        if (calendarIdentifier)
        {
          calendarIdentifier2 = [v10 calendarIdentifier];
          [v4 addObject:calendarIdentifier2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_currentKnownCalendarIds
{
  v2 = [(NSSet *)self->_currentKnownCalendarIds mutableCopy];

  return v2;
}

- (void)_updateCurrentKnownCalendarIds
{
  _allCalendars = [(EKCalendarChooserDefaultImpl *)self _allCalendars];
  v3 = [(EKCalendarChooserDefaultImpl *)self _calendarSetToCalendarIdSet:_allCalendars];
  currentKnownCalendarIds = self->_currentKnownCalendarIds;
  self->_currentKnownCalendarIds = v3;
}

- (id)_filterCalendars:(id)calendars
{
  v22 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = calendarsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        entityType = self->_entityType;
        allowedEntityTypes = [v11 allowedEntityTypes];
        if (entityType)
        {
          if ((allowedEntityTypes & 2) == 0)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v5 addObject:v11];
          goto LABEL_9;
        }

        if (allowedEntityTypes)
        {
          goto LABEL_8;
        }

LABEL_9:
        ++v10;
      }

      while (v8 != v10);
      v14 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = v14;
    }

    while (v14);
  }

  _calendarsForSelectedSource = [(EKCalendarChooserDefaultImpl *)self _calendarsForSelectedSource];
  [v5 intersectSet:_calendarsForSelectedSource];

  return v5;
}

- (void)_ensureWritableCalendarExists
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(EKEventStore *)self->_eventStore readWriteCalendarsForEntityType:self->_entityType, 0];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      entityType = self->_entityType;
      if (!entityType)
      {
        if ([*(*(&v11 + 1) + 8 * v7) allowEvents])
        {
          break;
        }

        entityType = self->_entityType;
      }

      if (entityType == 1 && ([v8 allowReminders] & 1) != 0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:

    eventStore = self->_eventStore;
    if (self->_entityType)
    {
      [(EKEventStore *)eventStore defaultCalendarForNewReminders];
    }

    else
    {
      [(EKEventStore *)eventStore defaultCalendarForNewEvents];
    }
    v3 = ;
  }
}

- (id)_calendarsForSelectedSource
{
  v22 = *MEMORY[0x1E69E9840];
  limitedToSource = self->_limitedToSource;
  v4 = MEMORY[0x1E69933B0];
  v5 = (*&self->_flags >> 4) & 1;
  onlyShowUnmanagedAccounts = [(EKCalendarChooserDefaultImpl *)self onlyShowUnmanagedAccounts];
  event = [(EKCalendarChooserDefaultImpl *)self event];
  v8 = [v4 calendarsLimitedToSource:limitedToSource writability:v5 onlyUnmanagedAccounts:onlyShowUnmanagedAccounts forEvent:event entityType:self->_entityType inEventStore:self->_eventStore];

  v9 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (![v15 isSuggestedEventCalendar] || !-[EKCalendarChooserDefaultImpl hidesSuggestedEventCalendar](self, "hidesSuggestedEventCalendar"))
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)_allCalendars
{
  flags = self->_flags;
  eventStore = self->_eventStore;
  entityType = self->_entityType;
  if ((flags & 0x10) != 0)
  {
    [(EKEventStore *)eventStore readWriteCalendarsForEntityType:entityType];
  }

  else
  {
    [(EKEventStore *)eventStore calendarsForEntityType:entityType];
  }
  v6 = ;
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];

  return v7;
}

- (id)_loadCalendars
{
  [(EKCalendarChooserDefaultImpl *)self _ensureWritableCalendarExists];

  return [(EKCalendarChooserDefaultImpl *)self _calendarsForSelectedSource];
}

- (BOOL)_applySelection
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_allGroups;
  v25 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  v3 = 0;
  if (v25)
  {
    v24 = *v33;
    do
    {
      v4 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * v4);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v26 = v5;
        v27 = v4;
        calendarInfos = [v5 calendarInfos];
        v7 = [calendarInfos countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v29;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v29 != v9)
              {
                objc_enumerationMutation(calendarInfos);
              }

              v11 = *(*(&v28 + 1) + 8 * i);
              calendar = [v11 calendar];

              if (calendar)
              {
                selectedCalendars = self->_selectedCalendars;
                calendar2 = [v11 calendar];
                v15 = [(NSMutableSet *)selectedCalendars containsObject:calendar2];

                if (v3)
                {
                  v3 = 1;
                }

                else
                {
                  v3 = v15 ^ [v11 selected];
                }

                [v11 setSelected:v15];
              }
            }

            v8 = [calendarInfos countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v8);
        }

        numSelectedCalendars = [v26 numSelectedCalendars];
        numSelectableCalendars = [v26 numSelectableCalendars];
        v18 = numSelectableCalendars;
        if (v3)
        {
          v3 = 1;
        }

        else
        {
          v3 = (numSelectedCalendars == numSelectableCalendars) ^ [v26 selected];
        }

        [v26 setSelected:numSelectedCalendars == v18];
        v4 = v27 + 1;
      }

      while (v27 + 1 != v25);
      v25 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v25);
  }

  _numSelectedGroups = [(EKCalendarChooserDefaultImpl *)self _numSelectedGroups];
  v20 = [(NSArray *)self->_groups count];
  if (v3)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    v21 = (v20 == _numSelectedGroups) ^ ((*&self->_flags & 2) >> 1);
  }

  [(EKCalendarChooserDefaultImpl *)self setAllSelected:v20 == _numSelectedGroups];
  return v21;
}

- (id)_statusTextForGroup:(id)group
{
  v3 = [group accountError] - 1;
  if (v3 <= 8 && ((0x1BFu >> v3) & 1) != 0)
  {
    v4 = off_1E84407D0[v3];
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_reloadCalendarsForcingCollectionViewReload:(BOOL)reload
{
  reloadCopy = reload;
  _loadCalendars = [(EKCalendarChooserDefaultImpl *)self _loadCalendars];
  [(EKCalendarChooserDefaultImpl *)self _setCalendars:_loadCalendars changedObjectsHint:0 forceCollectionViewReload:reloadCopy];
}

- (void)_updatePossiblyChangedIndexPaths:(id)paths possiblyChangedSectionIndices:(id)indices forGroups:(id)groups withFirstSection:(int64_t)section changedObjectIDSet:(id)set footersChanged:(BOOL)changed reloadEverything:(BOOL)everything
{
  changedCopy = changed;
  v47 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  indicesCopy = indices;
  groupsCopy = groups;
  setCopy = set;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = groupsCopy;
  v33 = [groupsCopy countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v33)
  {
    v32 = *v42;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v14;
        v15 = *(*(&v41 + 1) + 8 * v14);
        source = [v15 source];
        objectID = [source objectID];
        v18 = [setCopy containsObject:objectID];

        if (everything || (changedCopy & v18) != 0)
        {
          [indicesCopy addIndex:section];
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        calendarInfos = [v15 calendarInfos];
        v20 = [calendarInfos countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v38;
          v23 = 1;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v38 != v22)
              {
                objc_enumerationMutation(calendarInfos);
              }

              calendar = [*(*(&v37 + 1) + 8 * i) calendar];
              objectID2 = [calendar objectID];
              v27 = [setCopy containsObject:objectID2];

              if (everything || v27)
              {
                v28 = [MEMORY[0x1E696AC88] indexPathForRow:v23 inSection:section];
                [pathsCopy addObject:v28];
              }

              ++v23;
            }

            v21 = [calendarInfos countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v21);
        }

        ++section;
        v14 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v33);
  }
}

- (void)_setCalendars:(id)calendars changedObjectsHint:(id)hint forceCollectionViewReload:(BOOL)reload
{
  reloadCopy = reload;
  v108 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  hintCopy = hint;
  v81 = self->_groups;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  v76 = reloadCopy;
  if (v11)
  {
    delegate = [(EKCalendarChooserDefaultImpl *)self delegate];
    unselectedCalendarsForFocusMode = [delegate unselectedCalendarsForFocusMode];
  }

  else
  {
    unselectedCalendarsForFocusMode = 0;
  }

  v79 = hintCopy;
  v104 = 0;
  v13 = 0;
  if ([(EKCalendarChooserDefaultImpl *)self disableCalendarsUnselectedByFocus])
  {
    delegate2 = [(EKCalendarChooserDefaultImpl *)self delegate];
    v13 = [delegate2 focusFilterMode] == 1;
  }

  v82 = calendarsCopy;
  v15 = self->_showAccountStatus && self->_limitedToSource == 0 && !v13;
  v103 = 0;
  v102 = 0;
  v16 = MEMORY[0x1E69933B0];
  eventStore = self->_eventStore;
  selfCopy = self;
  entityType = self->_entityType;
  chooserMode = selfCopy->_chooserMode;
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v21 = &v102;
  if (!v13 || unselectedCalendarsForFocusMode == 0)
  {
    v21 = 0;
  }

  LOBYTE(v74) = v13;
  v22 = eventStore;
  v23 = selfCopy;
  v24 = [v16 generateGroupsForCalendars:v82 eventStore:v22 entityType:entityType forMode:chooserMode usingBackgroundColor:systemBackgroundColor includingAccountsWithoutCalendars:v15 filterByFocus:v74 usingUnselectedCalendars:unselectedCalendarsForFocusMode foundRefreshableCalendar:&v103 anyGroupsHiddenByFocus:&v104 numberOfCalendarsHiddenByFocus:v21];
  groups = selfCopy->_groups;
  selfCopy->_groups = v24;

  v26 = [(NSArray *)selfCopy->_groups count];
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:v26];
  v28 = v27;
  if (selfCopy->_groups)
  {
    [v27 addObjectsFromArray:?];
  }

  v29 = [v28 copy];
  allGroups = selfCopy->_allGroups;
  selfCopy->_allGroups = v29;

  if (v13 && unselectedCalendarsForFocusMode != 0)
  {
    selfCopy->_numCalendarsHiddenByFocus = v102;
  }

  flags = selfCopy->_flags;
  if ((flags & 0x20) != 0 && (v103 & 1) == 0)
  {
    flags &= ~0x20u;
    *&selfCopy->_flags = flags;
  }

  if (!selfCopy->_showAccountStatus)
  {
    v42 = 0;
    v56 = v79;
    v57 = v82;
    goto LABEL_49;
  }

  v77 = v28;
  v85 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](v81, "count")}];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v32 = v81;
  v33 = [(NSArray *)v32 countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v99;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v99 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v98 + 1) + 8 * i);
        source = [v37 source];
        sourceIdentifier = [source sourceIdentifier];

        if (sourceIdentifier)
        {
          [v85 setObject:v37 forKeyedSubscript:sourceIdentifier];
        }
      }

      v34 = [(NSArray *)v32 countByEnumeratingWithState:&v98 objects:v107 count:16];
    }

    while (v34);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v23 = selfCopy;
  obj = selfCopy->_groups;
  v40 = [(NSArray *)obj countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (!v40)
  {
    v42 = 0;
    goto LABEL_48;
  }

  v41 = v40;
  v42 = 0;
  v84 = *v95;
  do
  {
    for (j = 0; j != v41; ++j)
    {
      if (*v95 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(*(&v94 + 1) + 8 * j);
      source2 = [v44 source];
      [v44 setAccountError:{objc_msgSend(MEMORY[0x1E69933B8], "errorForSource:", source2)}];
      v46 = [(EKCalendarChooserDefaultImpl *)v23 _statusTextForGroup:v44];
      source3 = [v44 source];
      sourceIdentifier2 = [source3 sourceIdentifier];
      v49 = [v85 objectForKeyedSubscript:sourceIdentifier2];
      footer = [v49 footer];

      v51 = CalEqualStrings();
      [v44 setFooter:v46];
      if (source2)
      {
        accountError = [v44 accountError];
        v53 = [EKUIAccountErrorDisplayer errorIsActionable:accountError];
        [v44 setShowAccountErrorActionButton:v53];
        if (v53)
        {
          v54 = 1;
        }

        else
        {
          if (!accountError)
          {
            goto LABEL_43;
          }

          v55 = 8;
          if (accountError == 3)
          {
            v55 = 4;
          }

          if (accountError == 1)
          {
            v54 = 2;
          }

          else
          {
            v54 = v55;
          }
        }

        [(EKCalendarChooserDefaultImpl *)selfCopy _sendAnalyticsEvent:v54 forGroup:v44];
      }

LABEL_43:
      v42 |= v51 ^ 1;

      v23 = selfCopy;
    }

    v41 = [(NSArray *)obj countByEnumeratingWithState:&v94 objects:v106 count:16];
  }

  while (v41);
LABEL_48:

  flags = v23->_flags;
  v57 = v82;
  v56 = v79;
  v28 = v77;
LABEL_49:
  v58 = flags & 0xFE;
  if (!v23->_entityType)
  {
    ++v58;
  }

  *&v23->_flags = v58;
  [(EKCalendarChooserDefaultImpl *)v23 _applySelection];
  if ([(EKCalendarChooserDefaultImpl *)v23 isViewLoaded])
  {
    if (([objc_opt_class() groups:v23->_groups differStructurallyFromGroups:v81] & 1) != 0 || v76)
    {
      [(EKCalendarChooserDefaultImpl *)v23 _collectionViewBuildAndApplyNewSnapshotAnimated:1];
    }

    else
    {
      v78 = v28;
      if (v56)
      {
        v59 = [MEMORY[0x1E695DFD8] setWithArray:v56];
      }

      else
      {
        v59 = 0;
      }

      v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v61 = objc_alloc_init(MEMORY[0x1E696AD50]);
      LOBYTE(v75) = v56 == 0;
      [(EKCalendarChooserDefaultImpl *)v23 _updatePossiblyChangedIndexPaths:v60 possiblyChangedSectionIndices:v61 forGroups:v23->_groups withFirstSection:[(EKCalendarChooserDefaultImpl *)v23 _groupsOffset] changedObjectIDSet:v59 footersChanged:v42 & 1 reloadEverything:v75];
      snapshot = [(UICollectionViewDiffableDataSource *)v23->_dataSource snapshot];
      if ([v60 count])
      {
        v86 = v59;
        array = [MEMORY[0x1E695DF70] array];
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v64 = v60;
        v65 = [v64 countByEnumeratingWithState:&v90 objects:v105 count:16];
        if (v65)
        {
          v66 = v65;
          v67 = *v91;
          do
          {
            for (k = 0; k != v66; ++k)
            {
              if (*v91 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v69 = [(UICollectionViewDiffableDataSource *)selfCopy->_dataSource itemIdentifierForIndexPath:*(*(&v90 + 1) + 8 * k)];
              if (v69)
              {
                [array addObject:v69];
              }
            }

            v66 = [v64 countByEnumeratingWithState:&v90 objects:v105 count:16];
          }

          while (v66);
        }

        v70 = [array copy];
        [snapshot reconfigureItemsWithIdentifiers:v70];

        v59 = v86;
      }

      if ([v61 count])
      {
        array2 = [MEMORY[0x1E695DF70] array];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __91__EKCalendarChooserDefaultImpl__setCalendars_changedObjectsHint_forceCollectionViewReload___block_invoke;
        v88[3] = &unk_1E8440718;
        v88[4] = selfCopy;
        v89 = array2;
        v72 = array2;
        [v61 enumerateIndexesUsingBlock:v88];
        v73 = [v72 copy];
        [snapshot reloadSectionsWithIdentifiers:v73];
      }

      [(UICollectionViewDiffableDataSource *)selfCopy->_dataSource applySnapshot:snapshot animatingDifferences:0];

      v57 = v82;
      v56 = v79;
      v28 = v78;
    }
  }
}

void __91__EKCalendarChooserDefaultImpl__setCalendars_changedObjectsHint_forceCollectionViewReload___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 1200) sectionIdentifierForIndex:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

+ (BOOL)groups:(id)groups differStructurallyFromGroups:(id)fromGroups
{
  groupsCopy = groups;
  fromGroupsCopy = fromGroups;
  v7 = [groupsCopy count];
  if (v7 == [fromGroupsCopy count])
  {
    v26 = [groupsCopy count];
    if (!v26)
    {
      v24 = 0;
      goto LABEL_19;
    }

    v8 = 0;
    v27 = fromGroupsCopy;
    v28 = groupsCopy;
    while (1)
    {
      v9 = [groupsCopy objectAtIndexedSubscript:v8];
      v10 = [fromGroupsCopy objectAtIndexedSubscript:v8];
      source = [v9 source];
      source2 = [v10 source];
      if (source != source2 && ![source isEqual:source2])
      {
        break;
      }

      showAccountErrorActionButton = [v9 showAccountErrorActionButton];
      if (showAccountErrorActionButton != [v10 showAccountErrorActionButton])
      {
        break;
      }

      calendarInfos = [v9 calendarInfos];
      calendarInfos2 = [v10 calendarInfos];
      v16 = [calendarInfos count];
      if (v16 != [calendarInfos2 count])
      {
        goto LABEL_16;
      }

      v29 = source2;
      v30 = source;
      v17 = [calendarInfos count];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        while (1)
        {
          v20 = [calendarInfos objectAtIndexedSubscript:v19];
          calendar = [v20 calendar];

          v22 = [calendarInfos2 objectAtIndexedSubscript:v19];
          calendar2 = [v22 calendar];

          if (calendar != calendar2 && ![calendar isEqual:calendar2])
          {
            break;
          }

          if (v18 == ++v19)
          {
            goto LABEL_13;
          }
        }

        fromGroupsCopy = v27;
        groupsCopy = v28;
        source2 = v29;
        source = v30;
LABEL_16:

        break;
      }

LABEL_13:

      v24 = 0;
      ++v8;
      fromGroupsCopy = v27;
      groupsCopy = v28;
      if (v8 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  v24 = 1;
LABEL_19:

  return v24;
}

- (void)setCheckedRow:(id)row
{
  rowCopy = row;
  if (!self->_style)
  {
    checkedRow = self->_checkedRow;
    if (checkedRow != rowCopy)
    {
      v8 = rowCopy;
      if (checkedRow)
      {
        self->_checkedRow = 0;
        v7 = checkedRow;

        [(EKCalendarChooserDefaultImpl *)self _reconfigureCollectionViewAtIndexPath:v7];
      }

      objc_storeStrong(&self->_checkedRow, row);
      [(EKCalendarChooserDefaultImpl *)self _reconfigureCollectionViewAtIndexPath:self->_checkedRow];
      rowCopy = v8;
    }
  }
}

- (void)setSelectedCalendar:(id)calendar
{
  if (!self->_style)
  {
    v5 = [(EKCalendarChooserDefaultImpl *)self _indexPathForCalendar:calendar];
    [(EKCalendarChooserDefaultImpl *)self setCheckedRow:v5];
  }
}

- (EKCalendar)selectedCalendar
{
  if (self->_style || (checkedRow = self->_checkedRow) == 0)
  {
    calendar = 0;
  }

  else
  {
    v5 = [(EKCalendarChooserDefaultImpl *)self _groupForSection:[(NSIndexPath *)checkedRow section]];
    v6 = [(EKCalendarChooserDefaultImpl *)self _rowIndex:[(NSIndexPath *)self->_checkedRow row] toCalendarIndexInGroup:v5];
    if (v5 && (v7 = v6, [v5 calendarInfos], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 < v9))
    {
      calendarInfos = [v5 calendarInfos];
      v11 = [calendarInfos objectAtIndex:v7];

      calendar = [v11 calendar];
    }

    else
    {
      calendar = 0;
    }
  }

  return calendar;
}

- (void)setSelectedCalendars:(id)calendars
{
  v4 = MEMORY[0x1E6992F30];
  calendarsCopy = calendars;
  -[EKCalendarChooserDefaultImpl _setSelectedCalendars:notify:](self, "_setSelectedCalendars:notify:", calendarsCopy, [v4 isProgramSDKAtLeast:0x7E60901FFFFFFFFLL] ^ 1);
}

- (void)_setSelectedCalendars:(id)calendars notify:(BOOL)notify
{
  notifyCopy = notify;
  calendarsCopy = calendars;
  v12 = calendarsCopy;
  if (self->_style == 1)
  {
    anyObject = [(EKCalendarChooserDefaultImpl *)self _filterCalendars:calendarsCopy];
    if (([(NSMutableSet *)self->_selectedCalendars isEqualToSet:anyObject]& 1) == 0)
    {
      objc_storeStrong(&self->_selectedCalendars, anyObject);
      if ([(EKCalendarChooserDefaultImpl *)self isViewLoaded]&& [(EKCalendarChooserDefaultImpl *)self _applySelection])
      {
        [(EKCalendarChooserDefaultImpl *)self _collectionViewBuildAndApplyNewSnapshotAnimated:1];
      }

      if (notifyCopy)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = objc_loadWeakRetained(&self->_delegate);
          _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
          [v10 calendarChooserSelectionDidChange:_ekCalendarChooser];
        }
      }
    }

    goto LABEL_11;
  }

  if ([calendarsCopy count])
  {
    anyObject = [v12 anyObject];
    [(EKCalendarChooserDefaultImpl *)self setSelectedCalendar:anyObject];
LABEL_11:

    goto LABEL_12;
  }

  [(EKCalendarChooserDefaultImpl *)self setSelectedCalendar:0];
LABEL_12:
}

- (NSSet)selectedCalendars
{
  v3 = objc_opt_new();
  style = self->_style;
  if (!style)
  {
    selectedCalendar = [(EKCalendarChooserDefaultImpl *)self selectedCalendar];

    if (!selectedCalendar)
    {
      goto LABEL_8;
    }

    selectedCalendar2 = [(EKCalendarChooserDefaultImpl *)self selectedCalendar];
    [v3 addObject:selectedCalendar2];
    goto LABEL_7;
  }

  if (style == 1)
  {
    selectedCalendars = self->_selectedCalendars;
    if (selectedCalendars)
    {
      selectedCalendar2 = [(NSMutableSet *)selectedCalendars allObjects];
      [v3 addObjectsFromArray:selectedCalendar2];
LABEL_7:
    }
  }

LABEL_8:

  return v3;
}

- (id)_indexPathForCalendar:(id)calendar
{
  calendarCopy = calendar;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  view = [(EKCalendarChooserDefaultImpl *)self view];

  if (calendarCopy && view)
  {
    groups = self->_groups;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__EKCalendarChooserDefaultImpl__indexPathForCalendar___block_invoke;
    v9[3] = &unk_1E8440768;
    selfCopy = self;
    v12 = &v13;
    v10 = calendarCopy;
    [(NSArray *)groups enumerateObjectsUsingBlock:v9];
  }

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __54__EKCalendarChooserDefaultImpl__indexPathForCalendar___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 calendarInfos];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__EKCalendarChooserDefaultImpl__indexPathForCalendar___block_invoke_2;
  v13[3] = &unk_1E8440740;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v11;
  v16 = v7;
  v17 = v10;
  v18 = a3;
  v19 = a4;
  v12 = v7;
  [v8 enumerateObjectsUsingBlock:v13];
}

void __54__EKCalendarChooserDefaultImpl__indexPathForCalendar___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 calendar];
  if (([v7 isEqual:*(a1 + 32)] & 1) != 0 || (objc_msgSend(v13, "otherCalendars"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", *(a1 + 32)), v8, v9))
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(a1 + 40) inSection:{"_calendarIndex:toRowIndexInGroup:", a3, *(a1 + 48)), *(a1 + 64) + objc_msgSend(*(a1 + 40), "_groupsOffset")}];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
    **(a1 + 72) = 1;
  }
}

- (id)centeredCalendar
{
  indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v4 = [indexPathsForVisibleItems sortedArrayUsingComparator:&__block_literal_global_465];

  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = (v5 / 2);
    v8 = [v4 objectAtIndex:v7];
    v9 = -[EKCalendarChooserDefaultImpl _groupForSection:](self, "_groupForSection:", [v8 section]);
    v10 = v6 - 1;
    v11 = v9 == 0;
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 <= v7;
    }

    if (v12)
    {
      v13 = v9;
    }

    else
    {
      v15 = v7 + 1;
      do
      {
        v16 = v8;
        v8 = [v4 objectAtIndex:v15];

        v13 = -[EKCalendarChooserDefaultImpl _groupForSection:](self, "_groupForSection:", [v8 section]);
        v11 = v13 == 0;
        if (v13)
        {
          break;
        }

        v12 = v15++ < v10;
      }

      while (v12);
    }

    if (v11 || ((v17 = [v8 row], -[EKCalendarChooserDefaultImpl _accountErrorActionRowIndexForGroup:](self, "_accountErrorActionRowIndexForGroup:", v13) != v17) ? (v18 = v17) : (v18 = v17 + 1), v19 = -[EKCalendarChooserDefaultImpl _rowIndex:toCalendarIndexInGroup:](self, "_rowIndex:toCalendarIndexInGroup:", v18, v13), objc_msgSend(v13, "calendarInfos"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v19 >= v21))
    {
      calendar = 0;
    }

    else
    {
      calendarInfos = [v13 calendarInfos];
      v23 = [calendarInfos objectAtIndex:v19];

      calendar = [v23 calendar];
    }
  }

  else
  {
    calendar = 0;
  }

  return calendar;
}

- (void)centerOnCalendar:(id)calendar
{
  if (calendar)
  {
    v4 = [(EKCalendarChooserDefaultImpl *)self _indexPathForCalendar:?];
    [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v4 atScrollPosition:2 animated:0];
  }
}

- (void)_presentEditor:(id)editor animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  editorCopy = editor;
  completionCopy = completion;
  calendar = [editorCopy calendar];
  v11 = [(EKCalendarChooserDefaultImpl *)self _indexPathForCalendar:calendar];

  if (v11)
  {
    goto LABEL_2;
  }

  if (self->_addCalendarBarButton)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[EKCalendarChooserDefaultImpl _addCalendarButtonSection](self, "_addCalendarButtonSection")}];
    if (v11)
    {
LABEL_2:
      [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v11 atScrollPosition:0 animated:0];
      v12 = 12;
      goto LABEL_6;
    }
  }

  v12 = 15;
LABEL_6:
  if (editorCopy)
  {
    objc_storeStrong(&self->_presentedEditor, editor);
    [(EKCalendarChooserDefaultImpl *)self _presentEditor:editorCopy withIndexPath:v11 barButtonItem:self->_addCalendarBarButton permittedArrowDirections:v12 animated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_presentEditor:(id)editor withIndexPath:(id)path barButtonItem:(id)item permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  editorCopy = editor;
  pathCopy = path;
  itemCopy = item;
  completionCopy = completion;
  [editorCopy setDelegate:self];
  navigationController = [editorCopy navigationController];
  v19 = navigationController;
  if (navigationController)
  {
    v20 = navigationController;
  }

  else
  {
    v20 = [[EKUIManagedNavigationController alloc] initWithRootViewController:editorCopy];
  }

  v21 = v20;

  [(EKUIManagedNavigationController *)v21 _setClipUnderlapWhileTransitioning:1];
  if (self->_displayStyle != 1000)
  {
    view = [(EKCalendarChooserDefaultImpl *)self view];
    if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view))
    {
      view2 = [(EKCalendarChooserDefaultImpl *)self view];
      IsRegular = EKUICurrentHeightSizeClassIsRegular(view2);

      if (IsRegular)
      {
        [(EKUIManagedNavigationController *)v21 setModalPresentationStyle:6];
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  navigationController2 = [(EKCalendarChooserDefaultImpl *)self navigationController];
  presentedViewController = [navigationController2 presentedViewController];

  if (presentedViewController)
  {
    goto LABEL_17;
  }

  [(EKUIManagedNavigationController *)v21 setModalPresentationStyle:7];
  popoverPresentationController = [(EKUIManagedNavigationController *)v21 popoverPresentationController];
  v25 = popoverPresentationController;
  if (!pathCopy)
  {
    if (itemCopy)
    {
      [popoverPresentationController setBarButtonItem:itemCopy];
    }

    [v25 setPermittedArrowDirections:directions];

    goto LABEL_16;
  }

  v26 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:pathCopy];
  [v25 setSourceView:v26];

  [v25 setPermittedArrowDirections:directions];
  if (v26)
  {
LABEL_16:
    objc_storeStrong(&self->_presentedEditor, editor);
    presentationController = [(EKUIManagedNavigationController *)v21 presentationController];
    [presentationController setDelegate:self];

    navigationController3 = [(EKCalendarChooserDefaultImpl *)self navigationController];
    [navigationController3 presentViewController:v21 animated:animatedCopy completion:completionCopy];
  }

LABEL_17:
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedEditor = self->_presentedEditor;
  self->_presentedEditor = 0;
}

- (int64_t)_accountErrorActionRowIndexForGroup:(id)group
{
  if ([(EKCalendarChooserDefaultImpl *)self _shouldDisplayAccountErrorActionCellForGroup:group])
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)_rowIndex:(int64_t)index toCalendarIndexInGroup:(id)group
{
  v5 = [(EKCalendarChooserDefaultImpl *)self _shouldDisplayAccountErrorActionCellForGroup:group];
  v6 = -2;
  if (!v5)
  {
    v6 = -1;
  }

  return v6 + index;
}

- (int64_t)_calendarIndex:(int64_t)index toRowIndexInGroup:(id)group
{
  v5 = [(EKCalendarChooserDefaultImpl *)self _shouldDisplayAccountErrorActionCellForGroup:group];
  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  return v6 + index;
}

- (BOOL)_shouldDisplayAccountErrorActionCellForGroup:(id)group
{
  if (self->_showAccountStatus)
  {
    return [group showAccountErrorActionButton];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldShowDeclinedEventsSection
{
  if ([(EKCalendarChooserDefaultImpl *)self showsDeclinedEventsSetting])
  {
    LOBYTE(showsCompletedRemindersSetting) = 1;
  }

  else
  {
    showsCompletedRemindersSetting = [(EKCalendarChooserDefaultImpl *)self showsCompletedRemindersSetting];
    if (showsCompletedRemindersSetting)
    {
      LOBYTE(showsCompletedRemindersSetting) = self->_limitedToSource == 0;
    }
  }

  return showsCompletedRemindersSetting;
}

- (BOOL)_isDeclinedEventsSwitchSection:(int64_t)section
{
  _shouldShowDeclinedEventsSection = [(EKCalendarChooserDefaultImpl *)self _shouldShowDeclinedEventsSection];
  if (_shouldShowDeclinedEventsSection)
  {
    _groupsOffset = [(EKCalendarChooserDefaultImpl *)self _groupsOffset];
    LOBYTE(_shouldShowDeclinedEventsSection) = [(NSArray *)self->_groups count]+ _groupsOffset == section;
  }

  return _shouldShowDeclinedEventsSection;
}

- (BOOL)_isDelegateCalendarsButtonSection:(int64_t)section
{
  _shouldShowDelegateCalendarsButtonSection = [(EKCalendarChooserDefaultImpl *)self _shouldShowDelegateCalendarsButtonSection];
  if (_shouldShowDelegateCalendarsButtonSection)
  {
    _groupsOffset = [(EKCalendarChooserDefaultImpl *)self _groupsOffset];
    v7 = [(NSArray *)self->_groups count]+ _groupsOffset;
    LOBYTE(_shouldShowDelegateCalendarsButtonSection) = v7 + [(EKCalendarChooserDefaultImpl *)self _shouldShowDeclinedEventsSection]== section;
  }

  return _shouldShowDelegateCalendarsButtonSection;
}

- (int64_t)_addCalendarButtonSection
{
  _shouldShowDeclinedEventsSection = [(EKCalendarChooserDefaultImpl *)self _shouldShowDeclinedEventsSection];
  _shouldShowDelegateCalendarsButtonSection = [(EKCalendarChooserDefaultImpl *)self _shouldShowDelegateCalendarsButtonSection];
  _groupsOffset = [(EKCalendarChooserDefaultImpl *)self _groupsOffset];
  return _groupsOffset + _shouldShowDeclinedEventsSection + _shouldShowDelegateCalendarsButtonSection + [(NSArray *)self->_groups count];
}

- (BOOL)_isAddCalendarButtonSection:(int64_t)section
{
  _shouldShowAddCalendarButtonSection = [(EKCalendarChooserDefaultImpl *)self _shouldShowAddCalendarButtonSection];
  if (_shouldShowAddCalendarButtonSection)
  {
    LOBYTE(_shouldShowAddCalendarButtonSection) = [(EKCalendarChooserDefaultImpl *)self _addCalendarButtonSection]== section;
  }

  return _shouldShowAddCalendarButtonSection;
}

- (BOOL)_shouldShowAddCalendarButtonSection
{
  if (![(EKCalendarChooserDefaultImpl *)self disableCalendarEditing]&& [(EKCalendarChooserDefaultImpl *)self hasAccountThatCanCreateCalendars])
  {

    JUMPOUT(0x1D38B98D0);
  }

  return 0;
}

- (BOOL)_shouldShowFocusBanner
{
  if (![(EKCalendarChooserDefaultImpl *)self disableCalendarsUnselectedByFocus])
  {
    return 0;
  }

  delegate = [(EKCalendarChooserDefaultImpl *)self delegate];
  if ([delegate focusFilterMode])
  {
    if (MEMORY[0x1D38B98D0]())
    {
      v4 = self->_displayStyle != 1000;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isFocusBannerSection:(int64_t)section
{
  _shouldShowFocusBanner = [(EKCalendarChooserDefaultImpl *)self _shouldShowFocusBanner];
  if (_shouldShowFocusBanner)
  {
    LOBYTE(_shouldShowFocusBanner) = [(EKCalendarChooserDefaultImpl *)self _focusBannerSection]== section;
  }

  return _shouldShowFocusBanner;
}

- (BOOL)_isIdentityChooserSection:(int64_t)section
{
  _shouldShowIdentityChooser = [(EKCalendarChooserDefaultImpl *)self _shouldShowIdentityChooser];
  if (_shouldShowIdentityChooser)
  {
    LOBYTE(_shouldShowIdentityChooser) = [(EKCalendarChooserDefaultImpl *)self _identityChooserSection]== section;
  }

  return _shouldShowIdentityChooser;
}

- (int64_t)_groupsOffset
{
  _shouldShowIdentityChooser = [(EKCalendarChooserDefaultImpl *)self _shouldShowIdentityChooser];
  _shouldShowFocusBanner = [(EKCalendarChooserDefaultImpl *)self _shouldShowFocusBanner];
  v5 = 1;
  if (_shouldShowIdentityChooser)
  {
    v5 = 2;
  }

  if (_shouldShowFocusBanner)
  {
    return v5;
  }

  else
  {
    return _shouldShowIdentityChooser;
  }
}

- (id)_groupForSection:(int64_t)section
{
  v4 = section - [(EKCalendarChooserDefaultImpl *)self _groupsOffset];
  if (v4 < 0 || v4 >= [(NSArray *)self->_groups count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_groups objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)declinedEventsChanged
{
  pendingShowDeclinedEvents = self->_pendingShowDeclinedEvents;
  if (pendingShowDeclinedEvents)
  {
    bOOLValue = [(NSNumber *)pendingShowDeclinedEvents BOOLValue];
  }

  else
  {
    eventStore = [(EKCalendarChooserDefaultImpl *)self eventStore];
    bOOLValue = [eventStore showDeclinedEvents];
  }

  v6 = bOOLValue ^ 1u;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v8 = self->_pendingShowDeclinedEvents;
  self->_pendingShowDeclinedEvents = v7;

  v9 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__EKCalendarChooserDefaultImpl_declinedEventsChanged__block_invoke;
  v10[3] = &unk_1E84407B0;
  v10[4] = self;
  v11 = v6;
  dispatch_async(v9, v10);
}

void __53__EKCalendarChooserDefaultImpl_declinedEventsChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStore];
  [v2 setShowDeclinedEvents:*(a1 + 40)];
}

- (void)completedRemindersChanged
{
  pendingShowCompletedReminders = self->_pendingShowCompletedReminders;
  if (pendingShowCompletedReminders)
  {
    bOOLValue = [(NSNumber *)pendingShowCompletedReminders BOOLValue];
  }

  else
  {
    eventStore = [(EKCalendarChooserDefaultImpl *)self eventStore];
    bOOLValue = [eventStore showCompletedReminders];
  }

  v6 = bOOLValue ^ 1u;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v8 = self->_pendingShowCompletedReminders;
  self->_pendingShowCompletedReminders = v7;

  v9 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__EKCalendarChooserDefaultImpl_completedRemindersChanged__block_invoke;
  v10[3] = &unk_1E84407B0;
  v10[4] = self;
  v11 = v6;
  dispatch_async(v9, v10);
}

void __57__EKCalendarChooserDefaultImpl_completedRemindersChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStore];
  [v2 setShowCompletedReminders:*(a1 + 40)];
}

+ (id)_subscribedLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Name of subscribed group" value:@"Subscribed" table:0];

  return v3;
}

+ (id)_disabledIntegrationLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Subtitle of locked Scheduled Reminder" value:@"Some calendars may not be available when Face ID is required" table:0];

  return v3;
}

- (void)identityChanged:(id)changed
{
  objc_storeStrong(&self->_limitedToSource, changed);

  [(EKCalendarChooserDefaultImpl *)self _delegateSelectionDidChange:0];
}

- (void)groupShowAllTapped:(id)tapped
{
  tappedCopy = tapped;
  -[EKCalendarChooserDefaultImpl _selectGroup:selected:](self, "_selectGroup:selected:", tappedCopy, [tappedCopy selected] ^ 1);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
    [v6 calendarChooserSelectionDidChange:_ekCalendarChooser];
  }

  v8 = [(EKCalendarChooserDefaultImpl *)self _sectionIdentifierForGroup:tappedCopy];
  [(EKCalendarChooserDefaultImpl *)self _reloadCollectionViewSectionWithIdentifier:v8];
}

- (void)_delegateSelectionDidChange:(BOOL)change
{
  changeCopy = change;
  [(EKCalendarChooserDefaultImpl *)self _reloadCalendars];
  [(EKCalendarChooserDefaultImpl *)self _updateViewControllerTitle];
  if (changeCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
      [v7 calendarChooserSelectedIdentityDidChange:_ekCalendarChooser];
    }
  }

  [(EKCalendarChooserDefaultImpl *)self refresh:0];
}

- (int)_numSelectedGroups
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_groups;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) selected];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_selectGroup:(id)group selected:(BOOL)selected
{
  selectedCopy = selected;
  v54 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (self->_style != 1)
  {
    [EKCalendarChooserDefaultImpl _selectGroup:selected:];
  }

  v38 = groupCopy;
  if (!selectedCopy)
  {
    [groupCopy selectNone];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    calendarInfos = [groupCopy calendarInfos];
    v25 = [calendarInfos countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v44;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(calendarInfos);
          }

          v29 = *(*(&v43 + 1) + 8 * i);
          calendar = [v29 calendar];

          if (calendar)
          {
            selectedCalendars = self->_selectedCalendars;
            calendar2 = [v29 calendar];
            [(NSMutableSet *)selectedCalendars removeObject:calendar2];

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            otherCalendars = [v29 otherCalendars];
            v34 = [otherCalendars countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v40;
              do
              {
                for (j = 0; j != v35; ++j)
                {
                  if (*v40 != v36)
                  {
                    objc_enumerationMutation(otherCalendars);
                  }

                  [(NSMutableSet *)self->_selectedCalendars removeObject:*(*(&v39 + 1) + 8 * j)];
                }

                v35 = [otherCalendars countByEnumeratingWithState:&v39 objects:v51 count:16];
              }

              while (v35);
            }
          }
        }

        v26 = [calendarInfos countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v26);
    }

    selfCopy2 = self;
    v23 = 0;
    goto LABEL_34;
  }

  [groupCopy selectAll];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  calendarInfos2 = [groupCopy calendarInfos];
  v8 = [calendarInfos2 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
    do
    {
      for (k = 0; k != v9; ++k)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(calendarInfos2);
        }

        v12 = *(*(&v47 + 1) + 8 * k);
        calendar3 = [v12 calendar];
        if (calendar3)
        {
          v14 = calendar3;
          isEnabled = [v12 isEnabled];

          if (isEnabled)
          {
            v16 = self->_selectedCalendars;
            calendar4 = [v12 calendar];
            [(NSMutableSet *)v16 addObject:calendar4];

            otherCalendars2 = [v12 otherCalendars];

            if (otherCalendars2)
            {
              v19 = self->_selectedCalendars;
              otherCalendars3 = [v12 otherCalendars];
              [(NSMutableSet *)v19 addObjectsFromArray:otherCalendars3];
            }
          }
        }
      }

      v9 = [calendarInfos2 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v9);
  }

  v21 = [(NSArray *)self->_groups count];
  if (v21 == [(EKCalendarChooserDefaultImpl *)self _numSelectedGroups])
  {
    selfCopy2 = self;
    v23 = 1;
LABEL_34:
    [(EKCalendarChooserDefaultImpl *)selfCopy2 setAllSelected:v23];
  }
}

- (void)_selectCalendar:(id)calendar selected:(BOOL)selected
{
  selectedCopy = selected;
  v46 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  if (self->_style != 1)
  {
    [EKCalendarChooserDefaultImpl _selectCalendar:selected:];
  }

  v7 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (selectedCopy)
    {
      v11 = @"selected";
    }

    else
    {
      v11 = @"deselected";
    }

    calendar = [calendarCopy calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    *buf = 138412802;
    v41 = v10;
    v42 = 2112;
    v43 = v11;
    v44 = 2112;
    v45 = calendarIdentifier;
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_INFO, "[UserStateLog] Action -> %@ calendar %@. calendarIdentifier = %@", buf, 0x20u);
  }

  if (!selectedCopy)
  {
    [calendarCopy setSelected:0];
    group = [calendarCopy group];
    [group setSelected:0];

    calendar2 = [calendarCopy calendar];

    if (!calendar2)
    {
      goto LABEL_26;
    }

    selectedCalendars = self->_selectedCalendars;
    calendar3 = [calendarCopy calendar];
    [(NSMutableSet *)selectedCalendars removeObject:calendar3];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    otherCalendars = [calendarCopy otherCalendars];
    v31 = [otherCalendars countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v36;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v36 != v33)
          {
            objc_enumerationMutation(otherCalendars);
          }

          [(NSMutableSet *)self->_selectedCalendars removeObject:*(*(&v35 + 1) + 8 * i)];
        }

        v32 = [otherCalendars countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v32);
    }

LABEL_25:
    [(EKCalendarChooserDefaultImpl *)self setAllSelected:selectedCopy];
    goto LABEL_26;
  }

  [calendarCopy setSelected:1];
  calendar4 = [calendarCopy calendar];

  if (calendar4)
  {
    v15 = self->_selectedCalendars;
    calendar5 = [calendarCopy calendar];
    [(NSMutableSet *)v15 addObject:calendar5];
  }

  otherCalendars2 = [calendarCopy otherCalendars];

  if (otherCalendars2)
  {
    v18 = self->_selectedCalendars;
    otherCalendars3 = [calendarCopy otherCalendars];
    [(NSMutableSet *)v18 addObjectsFromArray:otherCalendars3];
  }

  group2 = [calendarCopy group];
  numSelectableCalendars = [group2 numSelectableCalendars];
  group3 = [calendarCopy group];
  numSelectedCalendars = [group3 numSelectedCalendars];

  if (numSelectableCalendars == numSelectedCalendars)
  {
    group4 = [calendarCopy group];
    [group4 setSelected:1];

    v25 = [(NSArray *)self->_groups count];
    if (v25 == [(EKCalendarChooserDefaultImpl *)self _numSelectedGroups])
    {
      goto LABEL_25;
    }
  }

LABEL_26:
}

- (void)_selectAllCalendarsAndStores:(BOOL)stores
{
  storesCopy = stores;
  v15 = *MEMORY[0x1E69E9840];
  if (self->_style != 1)
  {
    [EKCalendarChooserDefaultImpl _selectAllCalendarsAndStores:];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_groups;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [(EKCalendarChooserDefaultImpl *)self _selectGroup:*(*(&v10 + 1) + 8 * v9++) selected:storesCopy, v10];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_userDidSelectCalendar:(id)calendar selected:(BOOL)selected withIndexPath:(id)path
{
  selectedCopy = selected;
  pathCopy = path;
  [(EKCalendarChooserDefaultImpl *)self _selectCalendar:calendar selected:selectedCopy];
  [(EKCalendarChooserDefaultImpl *)self _reconfigureCollectionViewAtIndexPath:pathCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(calendar) = objc_opt_respondsToSelector();

  if (calendar)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
    [v11 calendarChooserSelectionDidChange:_ekCalendarChooser];
  }
}

- (void)_accessoryButtonTappedAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = -[EKCalendarChooserDefaultImpl _groupForSection:](self, "_groupForSection:", [pathCopy section]);
  v5 = -[EKCalendarChooserDefaultImpl _rowIndex:toCalendarIndexInGroup:](self, "_rowIndex:toCalendarIndexInGroup:", [pathCopy row], v4);
  calendarInfos = [v4 calendarInfos];
  v7 = [calendarInfos count];

  if (v5 < v7)
  {
    calendarInfos2 = [v4 calendarInfos];
    v9 = [calendarInfos2 objectAtIndex:v5];

    calendar = [v9 calendar];
    isSubscribed = [calendar isSubscribed];

    if (isSubscribed)
    {
      v12 = [EKSubscribedCalendarEditor alloc];
      calendar2 = [v9 calendar];
      eventStore = self->_eventStore;
      limitedToSource = self->_limitedToSource;
      v16 = v12;
      v17 = calendar2;
      entityType = 0;
    }

    else
    {
      v19 = [EKCalendarEditor alloc];
      calendar2 = [v9 calendar];
      eventStore = self->_eventStore;
      entityType = self->_entityType;
      limitedToSource = self->_limitedToSource;
      v16 = v19;
      v17 = calendar2;
    }

    v20 = [v16 initWithCalendar:v17 eventStore:eventStore entityType:entityType limitedToSource:limitedToSource];

    [(EKCalendarChooserDefaultImpl *)self _presentEditor:v20 withIndexPath:pathCopy barButtonItem:0 permittedArrowDirections:12 animated:1 completion:0];
  }
}

- (void)presentAccountErrorAlertForGroup:(id)group
{
  groupCopy = group;
  [groupCopy setShowAccountErrorActionButtonSpinner:1];
  v5 = [(EKCalendarChooserDefaultImpl *)self _sectionIdentifierForGroup:groupCopy];
  [(EKCalendarChooserDefaultImpl *)self _reloadCollectionViewSectionWithIdentifier:v5];

  [(EKCalendarChooserDefaultImpl *)self _sendAnalyticsEvent:16 forGroup:groupCopy];
  source = [groupCopy source];
  accountError = [groupCopy accountError];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__EKCalendarChooserDefaultImpl_presentAccountErrorAlertForGroup___block_invoke;
  v9[3] = &unk_1E843EFB8;
  v10 = groupCopy;
  selfCopy = self;
  v8 = groupCopy;
  [EKUIAccountErrorDisplayer presentAlertForAccount:source error:accountError usingViewController:self completion:v9];
}

void __65__EKCalendarChooserDefaultImpl_presentAccountErrorAlertForGroup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowAccountErrorActionButtonSpinner:0];
  v2 = *(a1 + 40);
  v3 = [v2 _sectionIdentifierForGroup:*(a1 + 32)];
  [v2 _reloadCollectionViewSectionWithIdentifier:v3];
}

- (void)_sendAnalyticsEvent:(unint64_t)event forGroup:(id)group
{
  v19 = *MEMORY[0x1E69E9840];
  source = [group source];
  v7 = source;
  if (source)
  {
    sourceIdentifier = [source sourceIdentifier];
    if (!sourceIdentifier)
    {
      v14 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_ERROR, "Source has no identifier: %@", &v17, 0xCu);
      }

      goto LABEL_22;
    }

    accountErrorAnalyticsState = self->_accountErrorAnalyticsState;
    if (!accountErrorAnalyticsState)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_accountErrorAnalyticsState;
      self->_accountErrorAnalyticsState = v10;

      accountErrorAnalyticsState = self->_accountErrorAnalyticsState;
    }

    v12 = [(NSMutableDictionary *)accountErrorAnalyticsState objectForKeyedSubscript:sourceIdentifier];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    if ((unsignedIntegerValue & event) != 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    if (event <= 3)
    {
      if (event == 1)
      {
        +[EKUIAccountErrorsAnalyticsTracker trackCalendarListDisplayedActionableError];
        goto LABEL_21;
      }

      if (event == 2)
      {
        +[EKUIAccountErrorsAnalyticsTracker trackCalendarListDisplayedUnknownError];
        goto LABEL_21;
      }
    }

    else
    {
      switch(event)
      {
        case 4uLL:
          +[EKUIAccountErrorsAnalyticsTracker trackCalendarListDisplayedOfflineError];
          goto LABEL_21;
        case 8uLL:
          +[EKUIAccountErrorsAnalyticsTracker trackCalendarListDisplayedOtherError];
          goto LABEL_21;
        case 0x10uLL:
          +[EKUIAccountErrorsAnalyticsTracker trackCalendarListInteractedWithError];
LABEL_21:
          event = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue | event];
          [(NSMutableDictionary *)self->_accountErrorAnalyticsState setObject:event forKeyedSubscript:sourceIdentifier];

          goto LABEL_22;
      }
    }

    v15 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v17 = 134217984;
      v18 = unsignedIntegerValue;
      _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "Invalid value passed to _sendAnalyticsEvent:forGroup: %lu", &v17, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_23:
}

- (void)calendarEditor:(id)editor didCompleteWithAction:(int)action
{
  if (self->_presentedEditor == editor)
  {
    v4 = *&action;
    calendar = [editor calendar];
    [(EKCalendarChooserDefaultImpl *)self _calendarEditorDidCompleteWithAction:v4 createdCalendar:calendar];

    presentedEditor = self->_presentedEditor;
    self->_presentedEditor = 0;

    navigationController = [(EKCalendarChooserDefaultImpl *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_calendarEditorDidCompleteWithAction:(int)action createdCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (action != 1)
  {
    if (action != 3)
    {
      goto LABEL_7;
    }

    if ([(EKCalendarChooserDefaultImpl *)self selectionStyle]== 1)
    {
      v6 = MEMORY[0x1E695DFA8];
      selectedCalendars = [(EKCalendarChooserDefaultImpl *)self selectedCalendars];
      v8 = [v6 setWithSet:selectedCalendars];

      [v8 addObject:calendarCopy];
      [(EKCalendarChooserDefaultImpl *)self setSelectedCalendarsAndNotify:v8];
    }
  }

  [(EKCalendarChooserDefaultImpl *)self _eventStoreChanged:0];
  if (self->_chooserMode == 1)
  {
    [(EKCalendarChooserDefaultImpl *)self setSelectedCalendar:calendarCopy];
  }

LABEL_7:
}

- (void)focusBannerCollectionViewCellToggled:(id)toggled
{
  if ([toggled on])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  delegate = [(EKCalendarChooserDefaultImpl *)self delegate];
  [delegate setFocusFilterMode:v4];
}

- (void)setToolbarItems:(id)items
{
  itemsCopy = items;
  _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
  [_ekCalendarChooser setToolbarItems:itemsCopy];
}

- (id)toolbarItems
{
  _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
  toolbarItems = [_ekCalendarChooser toolbarItems];

  return toolbarItems;
}

- (void)setToolbarItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
  [_ekCalendarChooser setToolbarItems:itemsCopy animated:animatedCopy];
}

- (id)navigationItem
{
  _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
  navigationItem = [_ekCalendarChooser navigationItem];

  return navigationItem;
}

- (id)navigationController
{
  _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
  navigationController = [_ekCalendarChooser navigationController];

  return navigationController;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    navigationController = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    navigationController = [(EKCalendarChooserDefaultImpl *)self navigationController];
  }

  return navigationController;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[EKCalendarChooserDefaultImpl _isFocusBannerSection:](self, "_isFocusBannerSection:", [pathCopy section]) || -[EKCalendarChooserDefaultImpl _isDeclinedEventsSwitchSection:](self, "_isDeclinedEventsSwitchSection:", objc_msgSend(pathCopy, "section")))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = !-[EKCalendarChooserDefaultImpl _isDelegateCalendarsButtonSection:](self, "_isDelegateCalendarsButtonSection:", [pathCopy section]);
  }

  return v6;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  v6 = -[EKCalendarChooserDefaultImpl _sectionHasHeader:](self, "_sectionHasHeader:", [pathCopy section]);
  v7 = pathCopy;
  if (!v6 || (v8 = [pathCopy row], v7 = pathCopy, v8))
  {
    if (-[EKCalendarChooserDefaultImpl _isIdentityChooserSection:](self, "_isIdentityChooserSection:", [v7 section]))
    {
      v9 = [pathCopy row];
      if (v9 == [(EKCalendarChooserDefaultImpl *)self _rowIndexForMeDelegate])
      {
        v10 = 0;
      }

      else
      {
        v10 = -[NSArray objectAtIndex:](self->_delegateSources, "objectAtIndex:", -[EKCalendarChooserDefaultImpl _rowIndexToDelegateSourceIndex:](self, "_rowIndexToDelegateSourceIndex:", [pathCopy row]));
      }

      limitedToSource = self->_limitedToSource;
      self->_limitedToSource = v10;

      [(EKCalendarChooserDefaultImpl *)self _delegateSelectionDidChange:1];
      -[EKCalendarChooserDefaultImpl _reloadCollectionViewSection:](self, "_reloadCollectionViewSection:", [pathCopy section]);
    }

    else
    {
      if ([(EKCalendarChooserDefaultImpl *)self _shouldShowAddCalendarButtonSection])
      {
        _addCalendarButtonSection = [(EKCalendarChooserDefaultImpl *)self _addCalendarButtonSection];
        if (_addCalendarButtonSection == [pathCopy section])
        {
          if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
          {
            [(UIButton *)self->_inContentAddCalendarButton performPrimaryAction];
          }

          else
          {
            [(EKCalendarChooserDefaultImpl *)self presentAddCalendarView];
          }
        }
      }

      v13 = -[EKCalendarChooserDefaultImpl _groupForSection:](self, "_groupForSection:", [pathCopy section]);
      if (v13)
      {
        v14 = [(EKCalendarChooserDefaultImpl *)self _accountErrorActionRowIndexForGroup:v13];
        if (v14 == [pathCopy row])
        {
          [(EKCalendarChooserDefaultImpl *)self presentAccountErrorAlertForGroup:v13];
        }

        else
        {
          v15 = -[EKCalendarChooserDefaultImpl _rowIndex:toCalendarIndexInGroup:](self, "_rowIndex:toCalendarIndexInGroup:", [pathCopy row], v13);
          calendarInfos = [v13 calendarInfos];
          v17 = [calendarInfos objectAtIndex:v15];

          style = self->_style;
          if (style)
          {
            if (style == 1 && v17 && [(EKCalendarChooserDefaultImpl *)self _isCalendarEnabled:v17])
            {
              -[EKCalendarChooserDefaultImpl _userDidSelectCalendar:selected:withIndexPath:](self, "_userDidSelectCalendar:selected:withIndexPath:", v17, [v17 selected] ^ 1, pathCopy);
            }
          }

          else if (!v17 || [(EKCalendarChooserDefaultImpl *)self _isCalendarEnabled:v17])
          {
            [(EKCalendarChooserDefaultImpl *)self setCheckedRow:pathCopy];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v20 = objc_opt_respondsToSelector();

            if (v20)
            {
              v21 = objc_loadWeakRetained(&self->_delegate);
              _ekCalendarChooser = [(EKCalendarChooserDefaultImpl *)self _ekCalendarChooser];
              [v21 calendarChooserSelectionDidChange:_ekCalendarChooser];
            }
          }
        }
      }
    }

    v7 = pathCopy;
  }
}

- (EKCalendarChooserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setChooserMode:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setAllowsPullToRefresh:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_selectGroup:selected:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_selectCalendar:selected:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_selectAllCalendarsAndStores:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end