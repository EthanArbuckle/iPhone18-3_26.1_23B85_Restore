@interface RestoreFromBackupController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_largerThanStandardAX;
- (BOOL)_shouldShowAllBackupsAction;
- (BOOL)controllerNeedsToRun;
- (RestoreFromBackupController)init;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)filteredRestorableItemsFromBackupList:(id)list;
- (id)mostSimilarRestorablesInsertRemainingIntoArray:(id)array getOtherUniqueDevicesCount:(unint64_t *)count;
- (id)restorableItemAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_presentAlertForCurrentListState;
- (void)_presentAlertWithTitle:(id)title withMessage:(id)message withTryAgainOption:(BOOL)option withSetupAsNewOption:(BOOL)newOption inViewController:(id)controller;
- (void)_presentNetworkWarningForRestorable:(id)restorable completion:(id)completion;
- (void)_updateTable:(id)table toMatchArray:(id)array withVisibleArray:(id)visibleArray maxVisible:(unint64_t)visible fromOldSection:(int64_t)section toNewSection:(int64_t)newSection;
- (void)cancelRestoreAndRemovePrimaryAppleAccount;
- (void)dealloc;
- (void)handleDebugGesture;
- (void)refreshBackupListFromTimer:(id)timer;
- (void)scanForUpdateIfNecessaryForBackupList:(id)list withCompletion:(id)completion;
- (void)setBackupList:(id)list forceReload:(BOOL)reload withError:(id)error;
- (void)setListState:(int)state;
- (void)setRefreshTimerToDuration:(double)duration;
- (void)setupWithAlternateChoice:(id)choice;
- (void)showRestoreWarningsIfNeededForRestorable:(id)restorable completion:(id)completion;
- (void)significantTimeChange;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateBackupListCompletion:(id)completion;
- (void)updateListStateWithReload:(BOOL)reload;
- (void)updateVisibleSnapshots;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation RestoreFromBackupController

- (RestoreFromBackupController)init
{
  v23 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CHOOSE_BACKUP" value:&stru_10032F900 table:@"RestoreFromBackup"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"CHOOSE_BACKUP_DETAILED" value:&stru_10032F900 table:@"RestoreFromBackup"];
  location = 0;
  v22.receiver = self;
  v22.super_class = RestoreFromBackupController;
  location = [(RestoreFromBackupController *)&v22 initWithTitle:v4 detailText:v6 icon:0 adoptTableViewScrollView:1];
  objc_storeStrong(&location, location);

  if (location)
  {
    v7 = dispatch_queue_create("com.apple.setup.backup_list", 0);
    v8 = *(location + 8);
    *(location + 8) = v7;

    v9 = objc_alloc_init(MBManager);
    v10 = *(location + 1);
    *(location + 1) = v9;

    v11 = objc_alloc_init(NSMutableArray);
    v12 = *(location + 6);
    *(location + 6) = v11;

    v13 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v14 = *(location + 22);
    *(location + 22) = v13;

    v15 = sub_1000CBB20();
    [*(location + 22) setDirectionalLayoutMargins:{v15, v16, v17, v18, *&v15, *&v16, *&v17, *&v18, *&v15, *&v16, *&v17, *&v18}];
    [*(location + 22) setDelegate:location];
    [*(location + 22) setDataSource:location];
    [*(location + 22) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(location + 22) _setDrawsSeparatorAtTopOfSections:1];
    [*(location + 22) setEstimatedRowHeight:60.0];
    [location setListState:0];
    v19 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v19 addObserver:location selector:"significantTimeChange" name:UIApplicationSignificantTimeChangeNotification object:0];

    [*(location + 22) registerClass:objc_opt_class() forCellReuseIdentifier:@"PBSnapshotCell"];
    *(location + 81) = 0;
  }

  v20 = location;
  objc_storeStrong(&location, 0);
  return v20;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  [(NSTimer *)selfCopy->_refreshTimer invalidate];
  v3.receiver = selfCopy;
  v3.super_class = RestoreFromBackupController;
  [(RestoreFromBackupController *)&v3 dealloc];
}

- (void)significantTimeChange
{
  navigationController = [(RestoreFromBackupController *)self navigationController];
  topViewController = [navigationController topViewController];
  v4 = 0;
  if (topViewController == self)
  {
    v4 = 1;
    if (self->_listState != 2)
    {
      v4 = self->_listState == 3;
    }
  }

  if (v4)
  {
    tableView = [(RestoreFromBackupController *)self tableView];
    [tableView reloadData];
  }
}

- (id)mostSimilarRestorablesInsertRemainingIntoArray:(id)array getOtherUniqueDevicesCount:(unint64_t *)count
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  countCopy = count;
  v20 = 0;
  v24 = MGCopyAnswer();
  v19 = v24;
  v18 = +[NSMutableSet set];
  v17 = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  v5 = selfCopy->_backupList;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:__b objects:v25 count:16];
  if (v6)
  {
    v7 = *__b[2];
    do
    {
      for (i = 0; i < v6; ++i)
      {
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(__b[1] + 8 * i);
        backupUDID = [v16 backupUDID];
        if ([v18 containsObject:backupUDID])
        {
LABEL_7:
          [location[0] addObject:v16];
          goto LABEL_14;
        }

        if ([v16 isThisDevice])
        {
          [v17 insertObject:v16 atIndex:0];
        }

        else
        {
          backup = [v16 backup];
          deviceClass = [backup deviceClass];
          v11 = [deviceClass isEqualToString:v19];

          if (v11)
          {
            [v17 addObject:v16];
          }

          else
          {
            if (selfCopy->_listState == 3)
            {
              goto LABEL_7;
            }

            ++v20;
            [location[0] insertObject:v16 atIndex:?];
          }
        }

LABEL_14:
        [v18 addObject:backupUDID];
        objc_storeStrong(&backupUDID, 0);
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:__b objects:v25 count:16];
    }

    while (v6);
  }

  if (countCopy)
  {
    *countCopy = v20;
  }

  v12 = v17;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v12;
}

- (void)_updateTable:(id)table toMatchArray:(id)array withVisibleArray:(id)visibleArray maxVisible:(unint64_t)visible fromOldSection:(int64_t)section toNewSection:(int64_t)newSection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  v65 = 0;
  objc_storeStrong(&v65, array);
  v64 = 0;
  objc_storeStrong(&v64, visibleArray);
  visibleCopy = visible;
  sectionCopy = section;
  newSectionCopy = newSection;
  [location[0] beginUpdates];
  v60 = +[NSMutableArray array];
  v59 = +[NSMutableArray array];
  v58 = [v64 count];
  if (!v58 || [v65 count])
  {
    if (!v58 && [v65 count])
    {
      v15 = location[0];
      v16 = [NSIndexSet indexSetWithIndex:newSectionCopy];
      [v15 insertSections:v16 withRowAnimation:0];
    }

    v57 = [v64 copy];
    v56 = 0;
    memset(__b, 0, sizeof(__b));
    v17 = v65;
    v18 = [v17 countByEnumeratingWithState:__b objects:v77 count:16];
    if (v18)
    {
      v19 = *__b[2];
      do
      {
        for (i = 0; i < v18; ++i)
        {
          if (*__b[2] != v19)
          {
            objc_enumerationMutation(v17);
          }

          v55 = *(__b[1] + 8 * i);
          v21 = v56;
          if (v21 >= [v64 count])
          {
            v27 = v60;
            v28 = [NSIndexPath indexPathForRow:v56 inSection:newSectionCopy];
            [v27 addObject:v28];

            [v64 addObject:v55];
          }

          else
          {
            v53 = [v64 objectAtIndexedSubscript:v56];
            if (([v55 isEqual:v53] & 1) == 0)
            {
              v52 = [v57 indexOfObject:v55];
              if (v52 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v25 = v60;
                v26 = [NSIndexPath indexPathForRow:v56 inSection:newSectionCopy];
                [v25 addObject:v26];

                [v64 insertObject:v55 atIndex:v56];
              }

              else
              {
                v22 = location[0];
                v23 = [NSIndexPath indexPathForRow:v52 inSection:sectionCopy];
                v24 = [NSIndexPath indexPathForRow:v56 inSection:newSectionCopy];
                [v22 moveRowAtIndexPath:v23 toIndexPath:v24];

                v51 = [v64 indexOfObject:v55];
                if (v51 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v64 removeObjectAtIndex:v51];
                  [v64 insertObject:v55 atIndex:v56];
                }
              }
            }

            objc_storeStrong(&v53, 0);
          }

          if (++v56 >= visibleCopy)
          {
            v50 = 2;
            goto LABEL_26;
          }
        }

        v18 = [v17 countByEnumeratingWithState:__b objects:v77 count:16];
      }

      while (v18);
    }

    v50 = 0;
LABEL_26:

    v73 = 0;
    v72 = 0;
    v74 = 0;
    v75 = 0;
    v49 = 0;
    v48 = 0;
    v29 = [v64 count];
    if (v29 > v56)
    {
      v30 = v56;
      v31 = [v64 count];
      v69 = v30;
      v68 = (v31 - v56);
      v70 = v30;
      v71 = (v31 - v56);
      v47[2] = (v31 - v56);
      v47[1] = v30;
      v48 = v30;
      v49 = (v31 - v56);
    }

    while (1)
    {
      v32 = v56;
      if (v32 >= [v64 count])
      {
        break;
      }

      v47[0] = [v64 objectAtIndexedSubscript:v56];
      v46 = [v57 indexOfObject:v47[0]];
      v33 = v59;
      v34 = [NSIndexPath indexPathForRow:v46 inSection:sectionCopy];
      [v33 addObject:v34];

      objc_storeStrong(v47, 0);
      ++v56;
    }

    [v64 removeObjectsInRange:{v48, v49}];
    objc_storeStrong(&v57, 0);
  }

  else
  {
    v13 = location[0];
    v14 = [NSIndexSet indexSetWithIndex:sectionCopy];
    [v13 deleteSections:v14 withRowAnimation:0];

    [v64 removeAllObjects];
  }

  v45 = +[NSMutableSet set];
  if (selfCopy->_listState == 2)
  {
    memset(v43, 0, sizeof(v43));
    v35 = v64;
    v36 = [v35 countByEnumeratingWithState:v43 objects:v76 count:16];
    if (v36)
    {
      v37 = *v43[2];
      do
      {
        for (j = 0; j < v36; ++j)
        {
          if (*v43[2] != v37)
          {
            objc_enumerationMutation(v35);
          }

          v44 = *(v43[1] + 8 * j);
          v39 = v45;
          hashString = [v44 hashString];
          LOBYTE(v39) = [v39 containsObject:hashString];

          if (v39)
          {
            selfCopy->_shouldForceShowTimeStampOnBackups = 1;
            v50 = 7;
            goto LABEL_42;
          }

          v41 = v45;
          hashString2 = [v44 hashString];
          [v41 addObject:hashString2];
        }

        v36 = [v35 countByEnumeratingWithState:v43 objects:v76 count:16];
      }

      while (v36);
    }

    v50 = 0;
LABEL_42:
  }

  [location[0] insertRowsAtIndexPaths:v60 withRowAnimation:0];
  [location[0] deleteRowsAtIndexPaths:v59 withRowAnimation:0];
  [location[0] endUpdates];
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
}

- (void)updateVisibleSnapshots
{
  selfCopy = self;
  v44[1] = a2;
  tableView = [(RestoreFromBackupController *)self tableView];
  [tableView beginUpdates];

  if (*(selfCopy + 14) == 3 || *(selfCopy + 14) == 2)
  {
    v44[0] = 0;
    location = +[NSMutableArray array];
    v3 = [selfCopy mostSimilarRestorablesInsertRemainingIntoArray:location getOtherUniqueDevicesCount:v44];
    v4 = *(selfCopy + 5);
    *(selfCopy + 5) = v3;

    if (*(selfCopy + 14) == 3)
    {
      v44[0] = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (*(selfCopy + 14) == 2)
    {
      v44[0] = [*(selfCopy + 5) count];
    }

    v5 = [*(selfCopy + 5) arrayByAddingObjectsFromArray:location];
    v6 = *(selfCopy + 5);
    *(selfCopy + 5) = v5;

    v7 = [*(selfCopy + 6) count];
    v8 = 0;
    if (v7)
    {
      v9 = [*(selfCopy + 5) count];
      v8 = 0;
      if (v9)
      {
        v10 = [*(selfCopy + 6) count];
        v11 = [*(selfCopy + 5) count];
        v8 = 0;
        if (v10 != v11)
        {
          v12 = [*(selfCopy + 6) count];
          v8 = 1;
          if (v12 != 1)
          {
            v8 = [*(selfCopy + 5) count] == 1;
          }
        }
      }
    }

    v42 = v8;
    v41 = 0;
    v40 = 0;
    memset(__b, 0, sizeof(__b));
    v13 = *(selfCopy + 3);
    v14 = [v13 countByEnumeratingWithState:__b objects:v46 count:16];
    if (v14)
    {
      v15 = *__b[2];
      do
      {
        for (i = 0; i < v14; ++i)
        {
          if (*__b[2] != v15)
          {
            objc_enumerationMutation(v13);
          }

          v39 = *(__b[1] + 8 * i);
          v36 = 0;
          v34 = 0;
          v17 = 0;
          if (([v39 isCompatible] & 1) == 0)
          {
            v18 = v39;
            availableUpdateVersion = [selfCopy availableUpdateVersion];
            v36 = 1;
            v19 = [v18 isCompatibleWithUpdateToSystemVersion:?];
            v17 = 0;
            if ((v19 & 1) == 0)
            {
              betaEnrollmentStateManager = [selfCopy betaEnrollmentStateManager];
              v34 = 1;
              v17 = [betaEnrollmentStateManager isRestorableSeedEnrolled:v39] ^ 1;
            }
          }

          if (v34)
          {
          }

          if (v36)
          {
          }

          if (v17)
          {
            ++v40;
          }
        }

        v14 = [v13 countByEnumeratingWithState:__b objects:v46 count:16];
      }

      while (v14);
    }

    if (v40 <= 0)
    {
      v41 = 0;
    }

    else
    {
      v20 = v40;
      if (v20 >= [*(selfCopy + 3) count])
      {
        v41 = 2;
      }

      else
      {
        v41 = 1;
      }
    }

    *(selfCopy + 19) = v41;
    v21 = selfCopy;
    tableView2 = [selfCopy tableView];
    [v21 _updateTable:tableView2 toMatchArray:*(selfCopy + 5) withVisibleArray:*(selfCopy + 6) maxVisible:v44[0] fromOldSection:0 toNewSection:0];

    if (v42)
    {
      tableView3 = [selfCopy tableView];
      v24 = [NSIndexSet indexSetWithIndex:0];
      [tableView3 _reloadSectionHeaderFooters:v24 withRowAnimation:0];
    }

    if ([*(selfCopy + 5) count])
    {
      if (*(selfCopy + 14) != 2 || (v25 = [*(selfCopy + 6) count], v25 == objc_msgSend(*(selfCopy + 5), "count")))
      {
        v26 = &_dispatch_main_q;
        block = _NSConcreteStackBlock;
        v29 = -1073741824;
        v30 = 0;
        v31 = sub_1000CCF10;
        v32 = &unk_10032B0D0;
        v33 = selfCopy;
        dispatch_async(v26, &block);

        objc_storeStrong(&v33, 0);
      }
    }

    objc_storeStrong(&location, 0);
  }

  else if (*(selfCopy + 14) == 1)
  {
    [*(selfCopy + 6) removeAllObjects];
  }

  tableView4 = [selfCopy tableView];
  [tableView4 endUpdates];
}

- (void)setListState:(int)state
{
  selfCopy = self;
  v25 = a2;
  stateCopy = state;
  if (state == self->_listState)
  {
    return;
  }

  listState = selfCopy->_listState;
  selfCopy->_listState = stateCopy;
  v22 = 0;
  tableView = [(RestoreFromBackupController *)selfCopy tableView];
  numberOfSections = [tableView numberOfSections];

  v21 = numberOfSections;
  tableView2 = [(RestoreFromBackupController *)selfCopy tableView];
  [tableView2 beginUpdates];

  if (!listState && stateCopy == -1)
  {
    goto LABEL_4;
  }

  if (listState == -1 && !stateCopy)
  {
    tableView3 = [(RestoreFromBackupController *)selfCopy tableView];
    v9 = [NSIndexSet indexSetWithIndex:0];
    [tableView3 insertSections:v9 withRowAnimation:0];

    goto LABEL_30;
  }

  if (listState == -1 && stateCopy == 2)
  {
    goto LABEL_10;
  }

  if (!listState && stateCopy == 2)
  {
    tableView4 = [(RestoreFromBackupController *)selfCopy tableView];
    v11 = [NSIndexSet indexSetWithIndex:0];
    [tableView4 deleteSections:v11 withRowAnimation:0];

    [(RestoreFromBackupController *)selfCopy updateVisibleSnapshots];
    goto LABEL_30;
  }

  if (listState == 2 && stateCopy == 3)
  {
    tableView5 = [(RestoreFromBackupController *)selfCopy tableView];
    v13 = [NSIndexPath indexPathForRow:[(NSMutableArray *)selfCopy->_visibleSimilarRestorables count] inSection:0];
    v32 = v13;
    v14 = [NSArray arrayWithObjects:&v32 count:1];
    [tableView5 deleteRowsAtIndexPaths:v14 withRowAnimation:0];

    [(RestoreFromBackupController *)selfCopy updateVisibleSnapshots];
    goto LABEL_30;
  }

  if (!listState && stateCopy == 1)
  {
LABEL_4:
    tableView6 = [(RestoreFromBackupController *)selfCopy tableView];
    v7 = [NSIndexSet indexSetWithIndex:0];
    [tableView6 deleteSections:v7 withRowAnimation:0];

    v22 = 1;
    goto LABEL_30;
  }

  if (listState == 1 && (stateCopy == 2 || stateCopy == 3))
  {
LABEL_10:
    [(RestoreFromBackupController *)selfCopy updateVisibleSnapshots];
    goto LABEL_30;
  }

  if ((listState == 2 || listState == 3) && stateCopy == 1)
  {
    [(RestoreFromBackupController *)selfCopy updateVisibleSnapshots];
    tableView7 = [(RestoreFromBackupController *)selfCopy tableView];
    v28 = 0;
    v27 = v21;
    v29 = 0;
    v30 = v21;
    oslog[2] = v21;
    oslog[1] = 0;
    v16 = [NSIndexSet indexSetWithIndexesInRange:0, v21];
    [tableView7 deleteSections:v16 withRowAnimation:0];

    v22 = 1;
LABEL_30:
    if (selfCopy->_listState != 2 && stateCopy != 3)
    {
      navigationItem = [(RestoreFromBackupController *)selfCopy navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [rightBarButtonItem setEnabled:0];
    }

    tableView8 = [(RestoreFromBackupController *)selfCopy tableView];
    [tableView8 endUpdates];

    if (v22)
    {
      [(RestoreFromBackupController *)selfCopy _presentAlertForCurrentListState];
    }

    return;
  }

  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, listState, stateCopy);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Tried to transition from state %i to state %i", buf, 0xEu);
  }

  objc_storeStrong(oslog, 0);
}

- (void)updateListStateWithReload:(BOOL)reload
{
  selfCopy = self;
  v9 = a2;
  reloadCopy = reload;
  if (self->_backupList && !selfCopy->_scanningForUpdate)
  {
    if ([(NSArray *)selfCopy->_backupList count])
    {
      if (selfCopy->_listState < 2u || selfCopy->_listState == -1)
      {
        [(RestoreFromBackupController *)selfCopy setListState:2];
      }

      else if (reloadCopy)
      {
        [(RestoreFromBackupController *)selfCopy updateVisibleSnapshots];
      }
    }

    else
    {
      oslog = _BYLoggingFacility();
      v6 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v3 = oslog;
        v4 = v6;
        sub_10006AA68(v5);
        _os_log_impl(&_mh_execute_header, v3, v4, "No backups found", v5, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [(RestoreFromBackupController *)selfCopy setListState:1];
    }
  }
}

- (void)setBackupList:(id)list forceReload:(BOOL)reload withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, list);
  reloadCopy = reload;
  v9 = 0;
  objc_storeStrong(&v9, error);
  if (v9)
  {
    if (!selfCopy->_listState)
    {
      [(RestoreFromBackupController *)selfCopy setListState:0xFFFFFFFFLL];
    }
  }

  else if (location[0] != selfCopy->_backupList)
  {
    v8 = ([(NSArray *)selfCopy->_backupList isEqual:location[0]]^ 1) & 1;
    objc_storeStrong(&selfCopy->_backupList, location[0]);
    v7 = 1;
    if ((v8 & 1) == 0)
    {
      v7 = reloadCopy;
    }

    [(RestoreFromBackupController *)selfCopy updateListStateWithReload:v7 & 1];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)filteredRestorableItemsFromBackupList:(id)list
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, list);
  v24 = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  v3 = location[0];
  v4 = [v3 countByEnumeratingWithState:__b objects:v27 count:16];
  if (v4)
  {
    v5 = &__b[2];
    v6 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (**v5 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v23 = *(__b[1] + 8 * i);
        productType = [v23 productType];
        v9 = [productType containsString:@"RealityDevice"] ^ 1;

        if (v9)
        {
          memset(v20, 0, sizeof(v20));
          snapshots = [v23 snapshots];
          v11 = [snapshots countByEnumeratingWithState:v20 objects:v26 count:16];
          if (v11)
          {
            v18 = v6;
            v19 = v5;
            v12 = *v20[2];
            do
            {
              for (j = 0; j < v11; ++j)
              {
                if (*v20[2] != v12)
                {
                  objc_enumerationMutation(snapshots);
                }

                v21 = *(v20[1] + 8 * j);
                if ([v21 state] == 3)
                {
                  v14 = v24;
                  v15 = [RestorableBackupItem restorableBackupItemWithBackup:v23 snapshot:v21];
                  [v14 addObject:v15];
                }
              }

              v11 = [snapshots countByEnumeratingWithState:v20 objects:v26 count:16];
            }

            while (v11);
            v5 = v19;
            v6 = v18;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v27 count:16];
    }

    while (v4);
  }

  v16 = v24;
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v16;
}

- (void)updateBackupListCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v26 = 0;
  v25 = 0;
  v3 = _BYSignpostSubsystem();
  v4 = _BYSignpostCreate();
  v24 = v5;
  v23 = v4;

  log = _BYSignpostSubsystem();
  v21 = 1;
  v20 = v23;
  if (v23 && v20 != -1 && os_signpost_enabled(log))
  {
    v6 = log;
    v7 = v21;
    v8 = v20;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v7, v8, "BackupListLoadBackups", " enableTelemetry=YES ", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v29, v23);
    _os_log_impl(&_mh_execute_header, oslog, v17, "BEGIN [%lld]: BackupListLoadBackups  enableTelemetry=YES ", v29, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v25 = v23;
  v26 = v24;
  update_backup_list_queue = selfCopy->_update_backup_list_queue;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000CDD98;
  v14 = &unk_10032C578;
  v15 = selfCopy;
  v16[0] = location[0];
  v16[1] = v25;
  v16[2] = v26;
  dispatch_async(update_backup_list_queue, &v10);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshBackupListFromTimer:(id)timer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, timer);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000CE880;
  v8 = &unk_10032C5A0;
  v9 = selfCopy;
  [(RestoreFromBackupController *)v3 updateBackupListCompletion:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelRestoreAndRemovePrimaryAppleAccount
{
  proximitySetupController = [(RestoreFromBackupController *)self proximitySetupController];
  v3 = ![(ProximitySetupController *)proximitySetupController signedIniCloudAccount];

  if (!self->_appleAccountRemoved && v3)
  {
    self->_appleAccountRemoved = 1;
    v4 = +[BuddyAccountTools sharedBuddyAccountTools];
    [v4 removePrimaryAccountCompletion:0];
  }
}

- (void)scanForUpdateIfNecessaryForBackupList:(id)list withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, list);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  if (!selfCopy->_scannedForUpdate && [location[0] count])
  {
    v30 = 0;
    memset(__b, 0, sizeof(__b));
    v5 = location[0];
    v6 = [v5 countByEnumeratingWithState:__b objects:v35 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v5);
          }

          v29 = *(__b[1] + 8 * i);
          if (([v29 isCompatible] & 1) == 0)
          {
            v30 = 1;
          }

          if (v30)
          {
            v31 = 2;
            goto LABEL_18;
          }
        }

        v6 = [v5 countByEnumeratingWithState:__b objects:v35 count:16];
      }

      while (v6);
    }

    v31 = 0;
LABEL_18:

    if (v30)
    {
      oslog = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = oslog;
        v10 = v26;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v9, v10, "Found an incompatible snapshot. Scanning for OS update...", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [(RestoreFromBackupController *)selfCopy setScanningForUpdate:1];
      softwareUpdateCache = [(RestoreFromBackupController *)selfCopy softwareUpdateCache];
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_1000CED84;
      v21 = &unk_10032C5C8;
      v22 = selfCopy;
      v23 = location[0];
      v24 = v32;
      [(BYSoftwareUpdateCache *)softwareUpdateCache scanUsingCache:1 withCompletion:&v17];

      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
    }

    else if (v32)
    {
      v16 = _BYLoggingFacility();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v16;
        v13 = v15;
        sub_10006AA68(v14);
        _os_log_impl(&_mh_execute_header, v12, v13, "All snapshots are compatible for restore", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      (*(v32 + 2))(v32, 0);
    }

    v31 = 0;
  }

  else
  {
    if (v32)
    {
      (*(v32 + 2))(v32, 0);
    }

    v31 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (void)setRefreshTimerToDuration:(double)duration
{
  navigationController = [(RestoreFromBackupController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    [(NSTimer *)self->_refreshTimer invalidate];
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"refreshBackupListFromTimer:" selector:0 userInfo:0 repeats:duration];
    refreshTimer = self->_refreshTimer;
    self->_refreshTimer = v5;
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = RestoreFromBackupController;
  [(RestoreFromBackupController *)&v10 viewDidLoad];
  v2 = selfCopy;
  backupsTableView = [(RestoreFromBackupController *)selfCopy backupsTableView];
  [(RestoreFromBackupController *)v2 setTableView:backupsTableView];

  tableView = [(RestoreFromBackupController *)selfCopy tableView];
  [tableView setSeparatorInsetReference:1];

  tableView2 = [(RestoreFromBackupController *)selfCopy tableView];
  [tableView2 setSeparatorStyle:1];

  v6 = [[OBAnimationState alloc] initWithStateName:@"Start" transitionDuration:0.01 transitionSpeed:1.0];
  v13[0] = v6;
  v7 = [[OBAnimationState alloc] initWithStateName:@"Light" darkStateName:@"Dark" transitionDuration:1.0 transitionSpeed:1.0];
  v13[1] = v7;
  v9 = [NSArray arrayWithObjects:v13 count:2];

  v8 = [(RestoreFromBackupController *)selfCopy buddy_animationController:@"iCloudBackup" animatedStates:v9 startAtFirstState:1];
  [(RestoreFromBackupController *)selfCopy setAnimationController:v8];

  objc_storeStrong(&v9, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v17 = a2;
  appearCopy = appear;
  animationController = [(RestoreFromBackupController *)self animationController];
  [(OBAnimationController *)animationController startAnimation];

  if (!selfCopy->_refreshTimer)
  {
    [(RestoreFromBackupController *)selfCopy setRefreshTimerToDuration:20.0];
  }

  v15 = [(RestoreFromBackupController *)selfCopy isMovingToParentViewController]& 1;
  if (v15 || !selfCopy->_backupList)
  {
    [(RestoreFromBackupController *)selfCopy updateBackupListCompletion:0];
    if (v15)
    {
      [(RestoreFromBackupController *)selfCopy updateListStateWithReload:0];
      navigationController = [(RestoreFromBackupController *)selfCopy navigationController];
      viewControllers = [navigationController viewControllers];
      v14 = [viewControllers mutableCopy];

      location = objc_opt_new();
      v12 = 0;
      for (i = [v14 count] - 2; (i & 0x8000000000000000) == 0; --i)
      {
        v6 = [v14 objectAtIndexedSubscript:i];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = 1;
          break;
        }

        v8 = [v14 objectAtIndexedSubscript:i];
        [location addObject:v8];
      }

      if (v12)
      {
        delegate = [(RestoreFromBackupController *)selfCopy delegate];
        [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:location];
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v14, 0);
    }
  }

  v10.receiver = selfCopy;
  v10.super_class = RestoreFromBackupController;
  [(RestoreFromBackupController *)&v10 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4 = self->_refreshTimer != 0;
  [(NSTimer *)self->_refreshTimer invalidate];
  objc_storeStrong(&selfCopy->_refreshTimer, 0);
  if (v4 && ([(RestoreFromBackupController *)selfCopy isMovingFromParentViewController]& 1) != 0)
  {
    [(RestoreFromBackupController *)selfCopy cancelRestoreAndRemovePrimaryAppleAccount];
  }

  v3.receiver = selfCopy;
  v3.super_class = RestoreFromBackupController;
  [(RestoreFromBackupController *)&v3 viewDidDisappear:disappearCopy];
}

- (void)setupWithAlternateChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  oslog = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v23, "Running iCloud Restore escape hatch: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  enrollmentCoordinator = [(RestoreFromBackupController *)selfCopy enrollmentCoordinator];
  mdmEnrollmentChannel = [(BuddyEnrollmentCoordinator *)enrollmentCoordinator mdmEnrollmentChannel];

  if (mdmEnrollmentChannel != 2)
  {
    [(RestoreFromBackupController *)selfCopy cancelRestoreAndRemovePrimaryAppleAccount];
  }

  pendingRestoreState = [(RestoreFromBackupController *)selfCopy pendingRestoreState];
  [(BuddyPendingRestoreState *)pendingRestoreState clearBackupItem];

  navigationController = [(RestoreFromBackupController *)selfCopy navigationController];
  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers indexOfObjectPassingTest:&stru_10032C608];

  v22 = v8;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    navigationController2 = [(RestoreFromBackupController *)selfCopy navigationController];
    viewControllers2 = [navigationController2 viewControllers];
    v11 = [viewControllers2 count];
    v28 = (v22 + 1);
    v27 = &v11[~v22];
    v29 = (v22 + 1);
    v30 = v27;
    v20[2] = v27;
    v20[1] = (v22 + 1);
    v21 = [NSIndexSet indexSetWithIndexesInRange:v22 + 1, v27];

    delegate = [(RestoreFromBackupController *)selfCopy delegate];
    navigationController3 = [(RestoreFromBackupController *)selfCopy navigationController];
    viewControllers3 = [navigationController3 viewControllers];
    v15 = [viewControllers3 objectsAtIndexes:v21];
    [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:v15];

    navigationController4 = [(RestoreFromBackupController *)selfCopy navigationController];
    viewControllers4 = [navigationController4 viewControllers];
    v20[0] = [viewControllers4 objectAtIndexedSubscript:v22];

    delegate2 = [(RestoreFromBackupController *)selfCopy delegate];
    [v20[0] setDelegate:delegate2];

    [v20[0] selectChoiceForIdentifier:location[0]];
    delegate3 = [(RestoreFromBackupController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate3 markFlowItemDone:selfCopy];

    objc_storeStrong(v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)showRestoreWarningsIfNeededForRestorable:(id)restorable completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restorable);
  v77 = 0;
  objc_storeStrong(&v77, completion);
  v70 = _NSConcreteStackBlock;
  v71 = -1073741824;
  v72 = 0;
  v73 = sub_1000D04F4;
  v74 = &unk_10032C630;
  v75 = v77;
  v76 = objc_retainBlock(&v70);
  backup = [location[0] backup];
  deviceClass = [backup deviceClass];

  v68 = [deviceClass isEqualToString:@"iPad"] & 1;
  v80 = MGCopyAnswer();
  v6 = v80;
  v7 = [v6 isEqualToString:@"iPad"];

  v67 = v7 & 1;
  v66 = 0;
  if (v68 & 1) == 0 || (v67)
  {
    if (v68 & 1) == 0 && (v67)
    {
      uppercaseString = [deviceClass uppercaseString];
      v23 = +[NSBundle mainBundle];
      v24 = [NSString localizedStringWithFormat:@"CROSS_DEVICE_CLASS_TO_IPAD_RESTORE_%@", uppercaseString];
      v25 = [(NSBundle *)v23 localizedStringForKey:v24 value:&stru_10032F900 table:@"RestoreFromBackup"];
      v26 = +[NSBundle mainBundle];
      v27 = [NSString localizedStringWithFormat:@"CROSS_DEVICE_CLASS_TO_IPAD_RESTORE_WARNING_%@", uppercaseString];
      v28 = [(NSBundle *)v26 localizedStringForKey:v27 value:&stru_10032F900 table:@"RestoreFromBackup"];
      v29 = [UIAlertController alertControllerWithTitle:v25 message:v28 preferredStyle:1];
      v30 = v66;
      v66 = v29;

      v31 = v66;
      v32 = +[NSBundle mainBundle];
      v33 = [(NSBundle *)v32 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"RestoreFromBackup"];
      v47 = _NSConcreteStackBlock;
      v48 = -1073741824;
      v49 = 0;
      v50 = sub_1000D05F4;
      v51 = &unk_10032C658;
      v52 = v76;
      v34 = [UIAlertAction actionWithTitle:v33 style:1 handler:&v47];
      [v31 addAction:v34];

      v35 = v66;
      v36 = +[NSBundle mainBundle];
      v37 = [(NSBundle *)v36 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"RestoreFromBackup"];
      v41 = _NSConcreteStackBlock;
      v42 = -1073741824;
      v43 = 0;
      v44 = sub_1000D0650;
      v45 = &unk_10032C658;
      v46 = v76;
      v38 = [UIAlertAction actionWithTitle:v37 style:0 handler:&v41];
      [v35 addAction:v38];

      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v52, 0);
      objc_storeStrong(&uppercaseString, 0);
    }
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = [(NSBundle *)v8 localizedStringForKey:@"CROSS_DEVICE_CLASS_FROM_IPAD_RESTORE" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v10 = +[NSBundle mainBundle];
    v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CROSS_DEVICE_CLASS_FROM_IPAD_RESTORE_WARNING"];
    v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"RestoreFromBackup"];
    v13 = [UIAlertController alertControllerWithTitle:v9 message:v12 preferredStyle:1];
    v14 = v66;
    v66 = v13;

    v15 = v66;
    v16 = +[NSBundle mainBundle];
    v17 = [(NSBundle *)v16 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v60 = _NSConcreteStackBlock;
    v61 = -1073741824;
    v62 = 0;
    v63 = sub_1000D053C;
    v64 = &unk_10032C658;
    v65 = v76;
    v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:&v60];
    [v15 addAction:v18];

    v19 = v66;
    v20 = +[NSBundle mainBundle];
    v21 = [(NSBundle *)v20 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v54 = _NSConcreteStackBlock;
    v55 = -1073741824;
    v56 = 0;
    v57 = sub_1000D0598;
    v58 = &unk_10032C658;
    v59 = v76;
    v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:&v54];
    [v19 addAction:v22];

    objc_storeStrong(&v59, 0);
    objc_storeStrong(&v65, 0);
  }

  if (v66)
  {
    navigationController = [(RestoreFromBackupController *)selfCopy navigationController];
    topViewController = [navigationController topViewController];
    [topViewController presentViewController:v66 animated:1 completion:0];
  }

  else
  {
    (*(v76 + 2))(v76, 1);
  }

  objc_storeStrong(&v66, 0);
  objc_storeStrong(&deviceClass, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentNetworkWarningForRestorable:(id)restorable completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restorable);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  networkProvider = [(RestoreFromBackupController *)selfCopy networkProvider];
  snapshot = [location[0] snapshot];
  v21 = +[BuddyRestoreNetworkAlertController alertControllerForNetworkConnectionWithProvider:estimatedRestoreSize:](BuddyRestoreNetworkAlertController, "alertControllerForNetworkConnectionWithProvider:estimatedRestoreSize:", networkProvider, [snapshot estimatedRestoreSize]);

  if (v21)
  {
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1000D08F4;
    v18 = &unk_10032B120;
    v19 = v22;
    [v21 setRestoreOverCellular:&v14];
    showModalWiFiSettingsBlock = [(RestoreFromBackupController *)selfCopy showModalWiFiSettingsBlock];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000D092C;
    v11 = &unk_10032B120;
    v12 = showModalWiFiSettingsBlock;
    [v21 setPresentWiFiSettings:&v7];
    [(RestoreFromBackupController *)selfCopy presentViewController:v21 animated:1 completion:0];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&showModalWiFiSettingsBlock, 0);
    objc_storeStrong(&v19, 0);
    v20 = 0;
  }

  else
  {
    (*(v22 + 2))(v22, 0);
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(RestoreFromBackupController *)self pendingRestoreState:a2];
  backupItem = [(BuddyPendingRestoreState *)v2 backupItem];
  v4 = backupItem == 0;

  return v4;
}

- (id)restorableItemAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v8 = [location[0] row];
  v7 = 0;
  if (v8 < [(NSMutableArray *)selfCopy->_visibleSimilarRestorables count])
  {
    v3 = [(NSMutableArray *)selfCopy->_visibleSimilarRestorables objectAtIndexedSubscript:v8];
    v4 = v7;
    v7 = v3;
  }

  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = selfCopy->_listState != -1 && selfCopy->_listState != 1;
  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (selfCopy->_listState == 1 || selfCopy->_listState == -1)
  {
    v7 = 0;
  }

  else if (selfCopy->_listState == 3 || selfCopy->_listState == 2)
  {
    if ([(RestoreFromBackupController *)selfCopy _shouldShowAllBackupsAction])
    {
      v7 = [(NSMutableArray *)selfCopy->_visibleSimilarRestorables count]+ 1;
    }

    else
    {
      v7 = [(NSMutableArray *)selfCopy->_visibleSimilarRestorables count];
    }
  }

  else
  {
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  if (selfCopy->_listState != 2 && selfCopy->_listState != 3 || sectionCopy != [location[0] numberOfSections] - 1)
  {
    goto LABEL_28;
  }

  v29 = 0;
  compatibleRestoresState = selfCopy->_compatibleRestoresState;
  if (compatibleRestoresState)
  {
    if (compatibleRestoresState == 1)
    {
      v6 = +[NSBundle mainBundle];
      v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOME_INCOMPATIBLE_SNAPSHOTS"];
      v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"RestoreFromBackup"];
      v9 = v29;
      v29 = v8;
    }

    else if (compatibleRestoresState == 2)
    {
      v10 = +[NSBundle mainBundle];
      v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ALL_INCOMPATIBLE_SNAPSHOTS"];
      v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"RestoreFromBackup"];
      v13 = v29;
      v29 = v12;
    }
  }

  if (v29)
  {
    v28 = 0;
    obj = 0;
    v14 = +[UIDevice currentDevice];
    systemVersion = [(UIDevice *)v14 systemVersion];
    v16 = [NSString stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:&obj, systemVersion];
    objc_storeStrong(&v28, obj);
    v27 = v16;

    if (v27)
    {
      v33 = v27;
      v20 = 1;
    }

    else
    {
      oslog = _BYLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v23 = 0;
        v21 = 0;
        if (_BYIsInternalInstall())
        {
          v17 = v28;
        }

        else if (v28)
        {
          domain = [v28 domain];
          v23 = 1;
          v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v28 code]);
          v22 = v17;
          v21 = 1;
        }

        else
        {
          v17 = 0;
        }

        sub_100071CBC(buf, v17);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to format compatibility title: %{public}@", buf, 0xCu);
        if (v21)
        {
        }

        if (v23)
        {
        }
      }

      objc_storeStrong(&oslog, 0);
      v33 = 0;
      v20 = 1;
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  else
  {
    v20 = 0;
  }

  objc_storeStrong(&v29, 0);
  if (!v20)
  {
LABEL_28:
    v33 = 0;
  }

  objc_storeStrong(location, 0);
  v18 = v33;

  return v18;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v15[1] = section;
  v15[0] = [(RestoreFromBackupController *)selfCopy tableView:location[0] viewForHeaderInSection:section];
  [location[0] bounds];
  v6 = v5;
  [location[0] layoutMargins];
  v8 = v6 - v7;
  [location[0] layoutMargins];
  v10 = v8 - v9;
  sectionLabel = [v15[0] sectionLabel];
  [sectionLabel setPreferredMaxLayoutWidth:v10];

  [v15[0] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v13 = v12;
  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
  return v13;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v71 = 0;
  objc_storeStrong(&v71, path);
  v70 = 0;
  listState = selfCopy->_listState;
  switch(listState)
  {
    case -1:
      goto LABEL_8;
    case 0:
      v6 = [[SpinnerTableCell alloc] initWithStyle:0 reuseIdentifier:0];
      v7 = v70;
      v70 = v6;

      [v70 setSelectionStyle:0];
      break;
    case 1:
LABEL_8:
      v69 = _BYLoggingFacility();
      v68 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(buf, selfCopy->_listState);
        _os_log_impl(&_mh_execute_header, v69, v68, "Cell for row called for unexpected list state: %d", buf, 8u);
      }

      objc_storeStrong(&v69, 0);
      break;
    default:
      if ((listState - 2) < 2)
      {
        v8 = [(RestoreFromBackupController *)selfCopy restorableItemAtIndexPath:v71];
        v67 = v8;
        if (v8)
        {
          v63 = 0;
          v61 = 0;
          v15 = 1;
          if (([v67 isCompatible] & 1) == 0)
          {
            availableUpdateVersion = [(RestoreFromBackupController *)selfCopy availableUpdateVersion];
            v63 = 1;
            v15 = 1;
            if (([v67 isCompatibleWithUpdateToSystemVersion:?] & 1) == 0)
            {
              betaEnrollmentStateManager = [(RestoreFromBackupController *)selfCopy betaEnrollmentStateManager];
              v61 = 1;
              v15 = [betaEnrollmentStateManager isRestorableSeedEnrolled:v67];
            }
          }

          if (v61)
          {
          }

          if (v63)
          {
          }

          v65 = v15 & 1;
          v16 = [location[0] dequeueReusableCellWithIdentifier:@"PBSnapshotCell"];
          v17 = v70;
          v70 = v16;

          if (!v70)
          {
            v70 = [[DeviceRestoreBackupCell alloc] initWithStyle:3 reuseIdentifier:@"PBSnapshotCell"];
          }

          textLabel = [v70 textLabel];
          if (v65)
          {
            v22 = +[UIColor _labelColor];
            [textLabel setTextColor:v22];

            detailTextLabel = [v70 detailTextLabel];
            v24 = +[UIColor _labelColor];
            [detailTextLabel setTextColor:v24];

            [v70 setSelectionStyle:3];
          }

          else
          {
            v19 = +[UIColor _secondaryLabelColor];
            [textLabel setTextColor:v19];

            detailTextLabel2 = [v70 detailTextLabel];
            v21 = +[UIColor _secondaryLabelColor];
            [detailTextLabel2 setTextColor:v21];

            [v70 setSelectionStyle:0];
          }

          [v70 setAccessoryType:1];
          v60 = 0;
          v60 = selfCopy->_listState == 3 || selfCopy->_shouldForceShowTimeStampOnBackups;
          textLabel2 = [v70 textLabel];
          v26 = [v67 dateStringWithStyle:v60];
          [textLabel2 setText:v26];

          textLabel3 = [v70 textLabel];
          v28 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
          [textLabel3 setFont:v28];

          v59 = 0;
          if (v65)
          {
            deviceInfoString = [v67 deviceInfoString];
            v30 = v59;
            v59 = deviceInfoString;
          }

          else
          {
            v31 = +[NSBundle mainBundle];
            v32 = [(NSBundle *)v31 localizedStringForKey:@"REQUIRED_OS_VERSION_%@" value:&stru_10032F900 table:@"RestoreFromBackup"];
            snapshot = [v67 snapshot];
            systemVersion = [snapshot systemVersion];
            v35 = [NSString localizedStringWithFormat:v32, systemVersion];
            v36 = v59;
            v59 = v35;
          }

          imageView = [v70 imageView];
          backup = [v67 backup];
          productType = [backup productType];
          traitCollection = [(RestoreFromBackupController *)selfCopy traitCollection];
          v41 = [_TtC5Setup25BuddyDeviceImageUtilities imageForDeviceModelWithModel:productType traitCollection:traitCollection];
          [imageView setImage:v41];

          detailTextLabel3 = [v70 detailTextLabel];
          [detailTextLabel3 setText:v59];

          detailTextLabel4 = [v70 detailTextLabel];
          v44 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
          [detailTextLabel4 setFont:v44];

          [location[0] separatorInset];
          v46 = 39.0 - v45;
          [location[0] separatorInset];
          sub_1000D1DD4(v46, v47);
          v58 = sub_1000D1D7C();
          [v70 setSeparatorInset:{v58, v48, v49, v50}];
          accessibilityIdentifier = [v67 accessibilityIdentifier];
          [v70 setAccessibilityIdentifier:accessibilityIdentifier];

          objc_storeStrong(&v59, 0);
        }

        else
        {
          v9 = objc_alloc_init(UITableViewCell);
          v10 = v70;
          v70 = v9;

          defaultContentConfiguration = [v70 defaultContentConfiguration];
          v11 = +[NSBundle mainBundle];
          v12 = [(NSBundle *)v11 localizedStringForKey:@"SHOW_ALL_BACKUPS" value:&stru_10032F900 table:@"RestoreFromBackup"];
          [defaultContentConfiguration setText:v12];

          textProperties = [defaultContentConfiguration textProperties];
          v14 = +[UIColor systemBlueColor];
          [textProperties setColor:v14];

          [v70 setContentConfiguration:defaultContentConfiguration];
          objc_storeStrong(&defaultContentConfiguration, 0);
        }

        objc_storeStrong(&v67, 0);
      }

      break;
  }

  featureFlags = [(RestoreFromBackupController *)selfCopy featureFlags];
  isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (isSolariumEnabled)
  {
    if (selfCopy->_listState)
    {
      v54 = +[UIColor secondarySystemBackgroundColor];
    }

    else
    {
      v54 = +[UIColor clearColor];
    }

    [v70 setBackgroundColor:v54];
  }

  else
  {
    v55 = +[UIColor secondarySystemBackgroundColor];
    [v70 setBackgroundColor:v55];
  }

  v56 = v70;
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);
  return v56;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v16 = 0;
  objc_storeStrong(&v16, path);
  v5 = [location[0] cellForRowAtIndexPath:v16];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v19 = 0;
    v15 = 1;
  }

  else
  {
    v14 = [(RestoreFromBackupController *)selfCopy restorableItemAtIndexPath:v16];
    v12 = 0;
    v10 = 0;
    v7 = 0;
    if (v14)
    {
      v7 = 0;
      if (([v14 isCompatible] & 1) == 0)
      {
        availableUpdateVersion = [(RestoreFromBackupController *)selfCopy availableUpdateVersion];
        v12 = 1;
        v7 = 0;
        if (([v14 isCompatibleWithUpdateToSystemVersion:?] & 1) == 0)
        {
          betaEnrollmentStateManager = [(RestoreFromBackupController *)selfCopy betaEnrollmentStateManager];
          v10 = 1;
          v7 = ![(BuddyBetaEnrollmentStateManager *)betaEnrollmentStateManager isRestorableSeedEnrolled:v14];
        }
      }
    }

    if (v10)
    {
    }

    if (v12)
    {
    }

    if (v7)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    v15 = 1;
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v8 = v19;

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v15 = 0;
  objc_storeStrong(&v15, path);
  [location[0] deselectRowAtIndexPath:v15 animated:1];
  v14 = [(RestoreFromBackupController *)selfCopy restorableItemAtIndexPath:v15];
  if (v14)
  {
    v5 = selfCopy;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000D2138;
    v10 = &unk_10032AEF0;
    v11 = selfCopy;
    v12 = v14;
    [(RestoreFromBackupController *)v5 showRestoreWarningsIfNeededForRestorable:v14 completion:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  else
  {
    [(RestoreFromBackupController *)selfCopy showAllBackups];
    v13 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)handleDebugGesture
{
  selfCopy = self;
  v19[1] = a2;
  v19[0] = [objc_alloc(sub_1000D2654()) initWithName:@"com.apple.mobilebackup"];
  v18 = [v19[0] enabledLevel] == 4;
  v17 = @"iCloud Restore Debug Logging";
  if (v18)
  {
    v2 = @"Debug Logging is Enabled";
  }

  else
  {
    v2 = @"Debug Logging is Disabled";
  }

  v16 = v2;
  if (v18)
  {
    v3 = @"Disable Debug Logging";
  }

  else
  {
    v3 = @"Enable Debug Logging";
  }

  v15 = v3;
  location = [UIAlertController alertControllerWithTitle:v17 message:v16 preferredStyle:1];
  v4 = location;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000D2768;
  v11 = &unk_10032C6A8;
  v13 = v18;
  v12 = v19[0];
  v5 = [UIAlertAction actionWithTitle:v15 style:0 handler:&v8];
  [v4 addAction:{v5, v8, v9, v10, v11}];

  v6 = location;
  v7 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v6 addAction:v7];

  [(RestoreFromBackupController *)selfCopy presentViewController:location animated:1 completion:0];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v19, 0);
}

- (BOOL)_largerThanStandardAX
{
  v2 = [UIApplication sharedApplication:a2];
  preferredContentSizeCategory = [(UIApplication *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraLarge, preferredContentSizeCategory) == NSOrderedAscending;

  return v4;
}

- (BOOL)_shouldShowAllBackupsAction
{
  v2 = 0;
  if (self->_listState == 2)
  {
    v3 = [(NSMutableArray *)self->_visibleSimilarRestorables count];
    return v3 < [(NSArray *)self->_similarRestorables count];
  }

  return v2;
}

- (void)_presentAlertForCurrentListState
{
  selfCopy = self;
  v18[1] = a2;
  v18[0] = 0;
  *&v17[1] = 0;
  *v17 = self->_listState == -1;
  v16 = 1;
  if (self->_listState == -1)
  {
    v2 = +[NSBundle mainBundle];
    v3 = [(NSBundle *)v2 localizedStringForKey:@"CANNOT_LOAD_BACKUPS_ALERT_TITLE" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v4 = v18[0];
    v18[0] = v3;

    v5 = +[NSBundle mainBundle];
    v6 = [(NSBundle *)v5 localizedStringForKey:@"PROBLEM_LOADING_BACKUPS_ALERT_MESSAGE" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v7 = *&v17[1];
    *&v17[1] = v6;

LABEL_8:
    [(RestoreFromBackupController *)selfCopy _presentAlertWithTitle:v18[0] withMessage:*&v17[1] withTryAgainOption:v17[0] & 1 withSetupAsNewOption:v16 & 1 inViewController:selfCopy];
    goto LABEL_9;
  }

  if (selfCopy->_listState == 1)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [(NSBundle *)v8 localizedStringForKey:@"NO_BACKUPS_AVAILABLE_ALERT_TITLE" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v10 = v18[0];
    v18[0] = v9;

    v11 = +[NSBundle mainBundle];
    v12 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"NO_BACKUPS_AVAILABLE_ALERT_MESSAGE"];
    v13 = [(NSBundle *)v11 localizedStringForKey:v12 value:&stru_10032F900 table:@"RestoreFromBackup"];
    v14 = *&v17[1];
    *&v17[1] = v13;

    goto LABEL_8;
  }

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, selfCopy->_listState);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Failed to determine alert state when transitioning to state %i", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
LABEL_9:
  objc_storeStrong(&v17[1], 0);
  objc_storeStrong(v18, 0);
}

- (void)_presentAlertWithTitle:(id)title withMessage:(id)message withTryAgainOption:(BOOL)option withSetupAsNewOption:(BOOL)newOption inViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v51 = 0;
  objc_storeStrong(&v51, message);
  optionCopy = option;
  newOptionCopy = newOption;
  v48 = 0;
  objc_storeStrong(&v48, controller);
  v47 = [UIAlertController alertControllerWithTitle:location[0] message:v51 preferredStyle:1];
  objc_initWeak(&from, selfCopy);
  if (optionCopy)
  {
    v11 = +[NSBundle mainBundle];
    v45 = [(NSBundle *)v11 localizedStringForKey:@"TRY_AGAIN_CELL" value:&stru_10032F900 table:@"RestoreFromBackup"];

    v12 = v45;
    v38 = _NSConcreteStackBlock;
    v39 = -1073741824;
    v40 = 0;
    v41 = sub_1000D3264;
    v42 = &unk_10032B928;
    objc_copyWeak(&v43, &from);
    v44 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v38];
    [v47 addAction:v44];
    [v47 setPreferredAction:v44];
    objc_storeStrong(&v44, 0);
    objc_destroyWeak(&v43);
    objc_storeStrong(&v45, 0);
  }

  if (newOptionCopy)
  {
    v13 = +[NSBundle mainBundle];
    v14 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"RESTORE_ALTERNATIVE_NEW"];
    v37 = [(NSBundle *)v13 localizedStringForKey:v14 value:&stru_10032F900 table:@"RestoreFromBackup"];

    v15 = v47;
    v16 = v37;
    v31 = _NSConcreteStackBlock;
    v32 = -1073741824;
    v33 = 0;
    v34 = sub_1000D3300;
    v35 = &unk_10032B928;
    objc_copyWeak(&v36, &from);
    v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v31];
    [v15 addAction:v17];
    v30 = 0;

    objc_destroyWeak(&v36);
    objc_storeStrong(&v37, 0);
  }

  v18 = +[NSBundle mainBundle];
  v29 = [(NSBundle *)v18 localizedStringForKey:@"RESTORE_CANCEL_RESTORE" value:&stru_10032F900 table:@"RestoreFromBackup"];

  v19 = v47;
  v20 = v29;
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_1000D3398;
  v26 = &unk_10032C6D0;
  objc_copyWeak(&v28, &from);
  v27 = v48;
  v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:&v22];
  [v19 addAction:v21];

  [v48 presentViewController:v47 animated:1 completion:0];
  objc_storeStrong(&v27, 0);
  objc_destroyWeak(&v28);
  objc_storeStrong(&v29, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end