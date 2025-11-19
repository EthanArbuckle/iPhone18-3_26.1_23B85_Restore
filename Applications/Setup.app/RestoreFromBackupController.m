@interface RestoreFromBackupController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_largerThanStandardAX;
- (BOOL)_shouldShowAllBackupsAction;
- (BOOL)controllerNeedsToRun;
- (RestoreFromBackupController)init;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)filteredRestorableItemsFromBackupList:(id)a3;
- (id)mostSimilarRestorablesInsertRemainingIntoArray:(id)a3 getOtherUniqueDevicesCount:(unint64_t *)a4;
- (id)restorableItemAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_presentAlertForCurrentListState;
- (void)_presentAlertWithTitle:(id)a3 withMessage:(id)a4 withTryAgainOption:(BOOL)a5 withSetupAsNewOption:(BOOL)a6 inViewController:(id)a7;
- (void)_presentNetworkWarningForRestorable:(id)a3 completion:(id)a4;
- (void)_updateTable:(id)a3 toMatchArray:(id)a4 withVisibleArray:(id)a5 maxVisible:(unint64_t)a6 fromOldSection:(int64_t)a7 toNewSection:(int64_t)a8;
- (void)cancelRestoreAndRemovePrimaryAppleAccount;
- (void)dealloc;
- (void)handleDebugGesture;
- (void)refreshBackupListFromTimer:(id)a3;
- (void)scanForUpdateIfNecessaryForBackupList:(id)a3 withCompletion:(id)a4;
- (void)setBackupList:(id)a3 forceReload:(BOOL)a4 withError:(id)a5;
- (void)setListState:(int)a3;
- (void)setRefreshTimerToDuration:(double)a3;
- (void)setupWithAlternateChoice:(id)a3;
- (void)showRestoreWarningsIfNeededForRestorable:(id)a3 completion:(id)a4;
- (void)significantTimeChange;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateBackupListCompletion:(id)a3;
- (void)updateListStateWithReload:(BOOL)a3;
- (void)updateVisibleSnapshots;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  [(NSTimer *)v5->_refreshTimer invalidate];
  v3.receiver = v5;
  v3.super_class = RestoreFromBackupController;
  [(RestoreFromBackupController *)&v3 dealloc];
}

- (void)significantTimeChange
{
  v2 = [(RestoreFromBackupController *)self navigationController];
  v3 = [v2 topViewController];
  v4 = 0;
  if (v3 == self)
  {
    v4 = 1;
    if (self->_listState != 2)
    {
      v4 = self->_listState == 3;
    }
  }

  if (v4)
  {
    v5 = [(RestoreFromBackupController *)self tableView];
    [v5 reloadData];
  }
}

- (id)mostSimilarRestorablesInsertRemainingIntoArray:(id)a3 getOtherUniqueDevicesCount:(unint64_t *)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  v20 = 0;
  v24 = MGCopyAnswer();
  v19 = v24;
  v18 = +[NSMutableSet set];
  v17 = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  v5 = v23->_backupList;
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
        v14 = [v16 backupUDID];
        if ([v18 containsObject:v14])
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
          v9 = [v16 backup];
          v10 = [v9 deviceClass];
          v11 = [v10 isEqualToString:v19];

          if (v11)
          {
            [v17 addObject:v16];
          }

          else
          {
            if (v23->_listState == 3)
            {
              goto LABEL_7;
            }

            ++v20;
            [location[0] insertObject:v16 atIndex:?];
          }
        }

LABEL_14:
        [v18 addObject:v14];
        objc_storeStrong(&v14, 0);
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:__b objects:v25 count:16];
    }

    while (v6);
  }

  if (v21)
  {
    *v21 = v20;
  }

  v12 = v17;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v12;
}

- (void)_updateTable:(id)a3 toMatchArray:(id)a4 withVisibleArray:(id)a5 maxVisible:(unint64_t)a6 fromOldSection:(int64_t)a7 toNewSection:(int64_t)a8
{
  v67 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v65 = 0;
  objc_storeStrong(&v65, a4);
  v64 = 0;
  objc_storeStrong(&v64, a5);
  v63 = a6;
  v62 = a7;
  v61 = a8;
  [location[0] beginUpdates];
  v60 = +[NSMutableArray array];
  v59 = +[NSMutableArray array];
  v58 = [v64 count];
  if (!v58 || [v65 count])
  {
    if (!v58 && [v65 count])
    {
      v15 = location[0];
      v16 = [NSIndexSet indexSetWithIndex:v61];
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
            v28 = [NSIndexPath indexPathForRow:v56 inSection:v61];
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
                v26 = [NSIndexPath indexPathForRow:v56 inSection:v61];
                [v25 addObject:v26];

                [v64 insertObject:v55 atIndex:v56];
              }

              else
              {
                v22 = location[0];
                v23 = [NSIndexPath indexPathForRow:v52 inSection:v62];
                v24 = [NSIndexPath indexPathForRow:v56 inSection:v61];
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

          if (++v56 >= v63)
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
      v34 = [NSIndexPath indexPathForRow:v46 inSection:v62];
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
    v14 = [NSIndexSet indexSetWithIndex:v62];
    [v13 deleteSections:v14 withRowAnimation:0];

    [v64 removeAllObjects];
  }

  v45 = +[NSMutableSet set];
  if (v67->_listState == 2)
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
          v40 = [v44 hashString];
          LOBYTE(v39) = [v39 containsObject:v40];

          if (v39)
          {
            v67->_shouldForceShowTimeStampOnBackups = 1;
            v50 = 7;
            goto LABEL_42;
          }

          v41 = v45;
          v42 = [v44 hashString];
          [v41 addObject:v42];
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
  v45 = self;
  v44[1] = a2;
  v2 = [(RestoreFromBackupController *)self tableView];
  [v2 beginUpdates];

  if (*(v45 + 14) == 3 || *(v45 + 14) == 2)
  {
    v44[0] = 0;
    location = +[NSMutableArray array];
    v3 = [v45 mostSimilarRestorablesInsertRemainingIntoArray:location getOtherUniqueDevicesCount:v44];
    v4 = *(v45 + 5);
    *(v45 + 5) = v3;

    if (*(v45 + 14) == 3)
    {
      v44[0] = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (*(v45 + 14) == 2)
    {
      v44[0] = [*(v45 + 5) count];
    }

    v5 = [*(v45 + 5) arrayByAddingObjectsFromArray:location];
    v6 = *(v45 + 5);
    *(v45 + 5) = v5;

    v7 = [*(v45 + 6) count];
    v8 = 0;
    if (v7)
    {
      v9 = [*(v45 + 5) count];
      v8 = 0;
      if (v9)
      {
        v10 = [*(v45 + 6) count];
        v11 = [*(v45 + 5) count];
        v8 = 0;
        if (v10 != v11)
        {
          v12 = [*(v45 + 6) count];
          v8 = 1;
          if (v12 != 1)
          {
            v8 = [*(v45 + 5) count] == 1;
          }
        }
      }
    }

    v42 = v8;
    v41 = 0;
    v40 = 0;
    memset(__b, 0, sizeof(__b));
    v13 = *(v45 + 3);
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
            v37 = [v45 availableUpdateVersion];
            v36 = 1;
            v19 = [v18 isCompatibleWithUpdateToSystemVersion:?];
            v17 = 0;
            if ((v19 & 1) == 0)
            {
              v35 = [v45 betaEnrollmentStateManager];
              v34 = 1;
              v17 = [v35 isRestorableSeedEnrolled:v39] ^ 1;
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
      if (v20 >= [*(v45 + 3) count])
      {
        v41 = 2;
      }

      else
      {
        v41 = 1;
      }
    }

    *(v45 + 19) = v41;
    v21 = v45;
    v22 = [v45 tableView];
    [v21 _updateTable:v22 toMatchArray:*(v45 + 5) withVisibleArray:*(v45 + 6) maxVisible:v44[0] fromOldSection:0 toNewSection:0];

    if (v42)
    {
      v23 = [v45 tableView];
      v24 = [NSIndexSet indexSetWithIndex:0];
      [v23 _reloadSectionHeaderFooters:v24 withRowAnimation:0];
    }

    if ([*(v45 + 5) count])
    {
      if (*(v45 + 14) != 2 || (v25 = [*(v45 + 6) count], v25 == objc_msgSend(*(v45 + 5), "count")))
      {
        v26 = &_dispatch_main_q;
        block = _NSConcreteStackBlock;
        v29 = -1073741824;
        v30 = 0;
        v31 = sub_1000CCF10;
        v32 = &unk_10032B0D0;
        v33 = v45;
        dispatch_async(v26, &block);

        objc_storeStrong(&v33, 0);
      }
    }

    objc_storeStrong(&location, 0);
  }

  else if (*(v45 + 14) == 1)
  {
    [*(v45 + 6) removeAllObjects];
  }

  v27 = [v45 tableView];
  [v27 endUpdates];
}

- (void)setListState:(int)a3
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  if (a3 == self->_listState)
  {
    return;
  }

  listState = v26->_listState;
  v26->_listState = v24;
  v22 = 0;
  v3 = [(RestoreFromBackupController *)v26 tableView];
  v4 = [v3 numberOfSections];

  v21 = v4;
  v5 = [(RestoreFromBackupController *)v26 tableView];
  [v5 beginUpdates];

  if (!listState && v24 == -1)
  {
    goto LABEL_4;
  }

  if (listState == -1 && !v24)
  {
    v8 = [(RestoreFromBackupController *)v26 tableView];
    v9 = [NSIndexSet indexSetWithIndex:0];
    [v8 insertSections:v9 withRowAnimation:0];

    goto LABEL_30;
  }

  if (listState == -1 && v24 == 2)
  {
    goto LABEL_10;
  }

  if (!listState && v24 == 2)
  {
    v10 = [(RestoreFromBackupController *)v26 tableView];
    v11 = [NSIndexSet indexSetWithIndex:0];
    [v10 deleteSections:v11 withRowAnimation:0];

    [(RestoreFromBackupController *)v26 updateVisibleSnapshots];
    goto LABEL_30;
  }

  if (listState == 2 && v24 == 3)
  {
    v12 = [(RestoreFromBackupController *)v26 tableView];
    v13 = [NSIndexPath indexPathForRow:[(NSMutableArray *)v26->_visibleSimilarRestorables count] inSection:0];
    v32 = v13;
    v14 = [NSArray arrayWithObjects:&v32 count:1];
    [v12 deleteRowsAtIndexPaths:v14 withRowAnimation:0];

    [(RestoreFromBackupController *)v26 updateVisibleSnapshots];
    goto LABEL_30;
  }

  if (!listState && v24 == 1)
  {
LABEL_4:
    v6 = [(RestoreFromBackupController *)v26 tableView];
    v7 = [NSIndexSet indexSetWithIndex:0];
    [v6 deleteSections:v7 withRowAnimation:0];

    v22 = 1;
    goto LABEL_30;
  }

  if (listState == 1 && (v24 == 2 || v24 == 3))
  {
LABEL_10:
    [(RestoreFromBackupController *)v26 updateVisibleSnapshots];
    goto LABEL_30;
  }

  if ((listState == 2 || listState == 3) && v24 == 1)
  {
    [(RestoreFromBackupController *)v26 updateVisibleSnapshots];
    v15 = [(RestoreFromBackupController *)v26 tableView];
    v28 = 0;
    v27 = v21;
    v29 = 0;
    v30 = v21;
    oslog[2] = v21;
    oslog[1] = 0;
    v16 = [NSIndexSet indexSetWithIndexesInRange:0, v21];
    [v15 deleteSections:v16 withRowAnimation:0];

    v22 = 1;
LABEL_30:
    if (v26->_listState != 2 && v24 != 3)
    {
      v17 = [(RestoreFromBackupController *)v26 navigationItem];
      v18 = [v17 rightBarButtonItem];
      [v18 setEnabled:0];
    }

    v19 = [(RestoreFromBackupController *)v26 tableView];
    [v19 endUpdates];

    if (v22)
    {
      [(RestoreFromBackupController *)v26 _presentAlertForCurrentListState];
    }

    return;
  }

  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, listState, v24);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Tried to transition from state %i to state %i", buf, 0xEu);
  }

  objc_storeStrong(oslog, 0);
}

- (void)updateListStateWithReload:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  if (self->_backupList && !v10->_scanningForUpdate)
  {
    if ([(NSArray *)v10->_backupList count])
    {
      if (v10->_listState < 2u || v10->_listState == -1)
      {
        [(RestoreFromBackupController *)v10 setListState:2];
      }

      else if (v8)
      {
        [(RestoreFromBackupController *)v10 updateVisibleSnapshots];
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
      [(RestoreFromBackupController *)v10 setListState:1];
    }
  }
}

- (void)setBackupList:(id)a3 forceReload:(BOOL)a4 withError:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = 0;
  objc_storeStrong(&v9, a5);
  if (v9)
  {
    if (!v12->_listState)
    {
      [(RestoreFromBackupController *)v12 setListState:0xFFFFFFFFLL];
    }
  }

  else if (location[0] != v12->_backupList)
  {
    v8 = ([(NSArray *)v12->_backupList isEqual:location[0]]^ 1) & 1;
    objc_storeStrong(&v12->_backupList, location[0]);
    v7 = 1;
    if ((v8 & 1) == 0)
    {
      v7 = v10;
    }

    [(RestoreFromBackupController *)v12 updateListStateWithReload:v7 & 1];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)filteredRestorableItemsFromBackupList:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
        v8 = [v23 productType];
        v9 = [v8 containsString:@"RealityDevice"] ^ 1;

        if (v9)
        {
          memset(v20, 0, sizeof(v20));
          v10 = [v23 snapshots];
          v11 = [v10 countByEnumeratingWithState:v20 objects:v26 count:16];
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
                  objc_enumerationMutation(v10);
                }

                v21 = *(v20[1] + 8 * j);
                if ([v21 state] == 3)
                {
                  v14 = v24;
                  v15 = [RestorableBackupItem restorableBackupItemWithBackup:v23 snapshot:v21];
                  [v14 addObject:v15];
                }
              }

              v11 = [v10 countByEnumeratingWithState:v20 objects:v26 count:16];
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

- (void)updateBackupListCompletion:(id)a3
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  update_backup_list_queue = v28->_update_backup_list_queue;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000CDD98;
  v14 = &unk_10032C578;
  v15 = v28;
  v16[0] = location[0];
  v16[1] = v25;
  v16[2] = v26;
  dispatch_async(update_backup_list_queue, &v10);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshBackupListFromTimer:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000CE880;
  v8 = &unk_10032C5A0;
  v9 = v11;
  [(RestoreFromBackupController *)v3 updateBackupListCompletion:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelRestoreAndRemovePrimaryAppleAccount
{
  v2 = [(RestoreFromBackupController *)self proximitySetupController];
  v3 = ![(ProximitySetupController *)v2 signedIniCloudAccount];

  if (!self->_appleAccountRemoved && v3)
  {
    self->_appleAccountRemoved = 1;
    v4 = +[BuddyAccountTools sharedBuddyAccountTools];
    [v4 removePrimaryAccountCompletion:0];
  }
}

- (void)scanForUpdateIfNecessaryForBackupList:(id)a3 withCompletion:(id)a4
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  if (!v34->_scannedForUpdate && [location[0] count])
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
      [(RestoreFromBackupController *)v34 setScanningForUpdate:1];
      v11 = [(RestoreFromBackupController *)v34 softwareUpdateCache];
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_1000CED84;
      v21 = &unk_10032C5C8;
      v22 = v34;
      v23 = location[0];
      v24 = v32;
      [(BYSoftwareUpdateCache *)v11 scanUsingCache:1 withCompletion:&v17];

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

- (void)setRefreshTimerToDuration:(double)a3
{
  v3 = [(RestoreFromBackupController *)self navigationController];
  v4 = [v3 topViewController];

  if (v4 == self)
  {
    [(NSTimer *)self->_refreshTimer invalidate];
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"refreshBackupListFromTimer:" selector:0 userInfo:0 repeats:a3];
    refreshTimer = self->_refreshTimer;
    self->_refreshTimer = v5;
  }
}

- (void)viewDidLoad
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = RestoreFromBackupController;
  [(RestoreFromBackupController *)&v10 viewDidLoad];
  v2 = v12;
  v3 = [(RestoreFromBackupController *)v12 backupsTableView];
  [(RestoreFromBackupController *)v2 setTableView:v3];

  v4 = [(RestoreFromBackupController *)v12 tableView];
  [v4 setSeparatorInsetReference:1];

  v5 = [(RestoreFromBackupController *)v12 tableView];
  [v5 setSeparatorStyle:1];

  v6 = [[OBAnimationState alloc] initWithStateName:@"Start" transitionDuration:0.01 transitionSpeed:1.0];
  v13[0] = v6;
  v7 = [[OBAnimationState alloc] initWithStateName:@"Light" darkStateName:@"Dark" transitionDuration:1.0 transitionSpeed:1.0];
  v13[1] = v7;
  v9 = [NSArray arrayWithObjects:v13 count:2];

  v8 = [(RestoreFromBackupController *)v12 buddy_animationController:@"iCloudBackup" animatedStates:v9 startAtFirstState:1];
  [(RestoreFromBackupController *)v12 setAnimationController:v8];

  objc_storeStrong(&v9, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v3 = [(RestoreFromBackupController *)self animationController];
  [(OBAnimationController *)v3 startAnimation];

  if (!v18->_refreshTimer)
  {
    [(RestoreFromBackupController *)v18 setRefreshTimerToDuration:20.0];
  }

  v15 = [(RestoreFromBackupController *)v18 isMovingToParentViewController]& 1;
  if (v15 || !v18->_backupList)
  {
    [(RestoreFromBackupController *)v18 updateBackupListCompletion:0];
    if (v15)
    {
      [(RestoreFromBackupController *)v18 updateListStateWithReload:0];
      v4 = [(RestoreFromBackupController *)v18 navigationController];
      v5 = [v4 viewControllers];
      v14 = [v5 mutableCopy];

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
        v9 = [(RestoreFromBackupController *)v18 delegate];
        [(BFFFlowItemDelegate *)v9 removeViewControllersOnNextPush:location];
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v14, 0);
    }
  }

  v10.receiver = v18;
  v10.super_class = RestoreFromBackupController;
  [(RestoreFromBackupController *)&v10 viewDidAppear:v16];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4 = self->_refreshTimer != 0;
  [(NSTimer *)self->_refreshTimer invalidate];
  objc_storeStrong(&v7->_refreshTimer, 0);
  if (v4 && ([(RestoreFromBackupController *)v7 isMovingFromParentViewController]& 1) != 0)
  {
    [(RestoreFromBackupController *)v7 cancelRestoreAndRemovePrimaryAppleAccount];
  }

  v3.receiver = v7;
  v3.super_class = RestoreFromBackupController;
  [(RestoreFromBackupController *)&v3 viewDidDisappear:v5];
}

- (void)setupWithAlternateChoice:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v23, "Running iCloud Restore escape hatch: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [(RestoreFromBackupController *)v26 enrollmentCoordinator];
  v4 = [(BuddyEnrollmentCoordinator *)v3 mdmEnrollmentChannel];

  if (v4 != 2)
  {
    [(RestoreFromBackupController *)v26 cancelRestoreAndRemovePrimaryAppleAccount];
  }

  v5 = [(RestoreFromBackupController *)v26 pendingRestoreState];
  [(BuddyPendingRestoreState *)v5 clearBackupItem];

  v6 = [(RestoreFromBackupController *)v26 navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 indexOfObjectPassingTest:&stru_10032C608];

  v22 = v8;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(RestoreFromBackupController *)v26 navigationController];
    v10 = [v9 viewControllers];
    v11 = [v10 count];
    v28 = (v22 + 1);
    v27 = &v11[~v22];
    v29 = (v22 + 1);
    v30 = v27;
    v20[2] = v27;
    v20[1] = (v22 + 1);
    v21 = [NSIndexSet indexSetWithIndexesInRange:v22 + 1, v27];

    v12 = [(RestoreFromBackupController *)v26 delegate];
    v13 = [(RestoreFromBackupController *)v26 navigationController];
    v14 = [v13 viewControllers];
    v15 = [v14 objectsAtIndexes:v21];
    [(BFFFlowItemDelegate *)v12 removeViewControllersOnNextPush:v15];

    v16 = [(RestoreFromBackupController *)v26 navigationController];
    v17 = [v16 viewControllers];
    v20[0] = [v17 objectAtIndexedSubscript:v22];

    v18 = [(RestoreFromBackupController *)v26 delegate];
    [v20[0] setDelegate:v18];

    [v20[0] selectChoiceForIdentifier:location[0]];
    v19 = [(RestoreFromBackupController *)v26 delegate];
    [(BFFFlowItemDelegate *)v19 markFlowItemDone:v26];

    objc_storeStrong(v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)showRestoreWarningsIfNeededForRestorable:(id)a3 completion:(id)a4
{
  v79 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v77 = 0;
  objc_storeStrong(&v77, a4);
  v70 = _NSConcreteStackBlock;
  v71 = -1073741824;
  v72 = 0;
  v73 = sub_1000D04F4;
  v74 = &unk_10032C630;
  v75 = v77;
  v76 = objc_retainBlock(&v70);
  v5 = [location[0] backup];
  v69 = [v5 deviceClass];

  v68 = [v69 isEqualToString:@"iPad"] & 1;
  v80 = MGCopyAnswer();
  v6 = v80;
  v7 = [v6 isEqualToString:@"iPad"];

  v67 = v7 & 1;
  v66 = 0;
  if (v68 & 1) == 0 || (v67)
  {
    if (v68 & 1) == 0 && (v67)
    {
      v53 = [v69 uppercaseString];
      v23 = +[NSBundle mainBundle];
      v24 = [NSString localizedStringWithFormat:@"CROSS_DEVICE_CLASS_TO_IPAD_RESTORE_%@", v53];
      v25 = [(NSBundle *)v23 localizedStringForKey:v24 value:&stru_10032F900 table:@"RestoreFromBackup"];
      v26 = +[NSBundle mainBundle];
      v27 = [NSString localizedStringWithFormat:@"CROSS_DEVICE_CLASS_TO_IPAD_RESTORE_WARNING_%@", v53];
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
      objc_storeStrong(&v53, 0);
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
    v39 = [(RestoreFromBackupController *)v79 navigationController];
    v40 = [v39 topViewController];
    [v40 presentViewController:v66 animated:1 completion:0];
  }

  else
  {
    (*(v76 + 2))(v76, 1);
  }

  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentNetworkWarningForRestorable:(id)a3 completion:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v5 = [(RestoreFromBackupController *)v24 networkProvider];
  v6 = [location[0] snapshot];
  v21 = +[BuddyRestoreNetworkAlertController alertControllerForNetworkConnectionWithProvider:estimatedRestoreSize:](BuddyRestoreNetworkAlertController, "alertControllerForNetworkConnectionWithProvider:estimatedRestoreSize:", v5, [v6 estimatedRestoreSize]);

  if (v21)
  {
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1000D08F4;
    v18 = &unk_10032B120;
    v19 = v22;
    [v21 setRestoreOverCellular:&v14];
    v13 = [(RestoreFromBackupController *)v24 showModalWiFiSettingsBlock];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000D092C;
    v11 = &unk_10032B120;
    v12 = v13;
    [v21 setPresentWiFiSettings:&v7];
    [(RestoreFromBackupController *)v24 presentViewController:v21 animated:1 completion:0];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
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
  v3 = [(BuddyPendingRestoreState *)v2 backupItem];
  v4 = v3 == 0;

  return v4;
}

- (id)restorableItemAtIndexPath:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] row];
  v7 = 0;
  if (v8 < [(NSMutableArray *)v10->_visibleSimilarRestorables count])
  {
    v3 = [(NSMutableArray *)v10->_visibleSimilarRestorables objectAtIndexedSubscript:v8];
    v4 = v7;
    v7 = v3;
  }

  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = v5->_listState != -1 && v5->_listState != 1;
  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v6->_listState == 1 || v6->_listState == -1)
  {
    v7 = 0;
  }

  else if (v6->_listState == 3 || v6->_listState == 2)
  {
    if ([(RestoreFromBackupController *)v6 _shouldShowAllBackupsAction])
    {
      v7 = [(NSMutableArray *)v6->_visibleSimilarRestorables count]+ 1;
    }

    else
    {
      v7 = [(NSMutableArray *)v6->_visibleSimilarRestorables count];
    }
  }

  else
  {
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = a4;
  if (v32->_listState != 2 && v32->_listState != 3 || v30 != [location[0] numberOfSections] - 1)
  {
    goto LABEL_28;
  }

  v29 = 0;
  compatibleRestoresState = v32->_compatibleRestoresState;
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
    v15 = [(UIDevice *)v14 systemVersion];
    v16 = [NSString stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:&obj, v15];
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
          v24 = [v28 domain];
          v23 = 1;
          v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v24, [v28 code]);
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15[1] = a4;
  v15[0] = [(RestoreFromBackupController *)v17 tableView:location[0] viewForHeaderInSection:a4];
  [location[0] bounds];
  v6 = v5;
  [location[0] layoutMargins];
  v8 = v6 - v7;
  [location[0] layoutMargins];
  v10 = v8 - v9;
  v11 = [v15[0] sectionLabel];
  [v11 setPreferredMaxLayoutWidth:v10];

  [v15[0] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v13 = v12;
  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
  return v13;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v73 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v71 = 0;
  objc_storeStrong(&v71, a4);
  v70 = 0;
  listState = v73->_listState;
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
        sub_100082D54(buf, v73->_listState);
        _os_log_impl(&_mh_execute_header, v69, v68, "Cell for row called for unexpected list state: %d", buf, 8u);
      }

      objc_storeStrong(&v69, 0);
      break;
    default:
      if ((listState - 2) < 2)
      {
        v8 = [(RestoreFromBackupController *)v73 restorableItemAtIndexPath:v71];
        v67 = v8;
        if (v8)
        {
          v63 = 0;
          v61 = 0;
          v15 = 1;
          if (([v67 isCompatible] & 1) == 0)
          {
            v64 = [(RestoreFromBackupController *)v73 availableUpdateVersion];
            v63 = 1;
            v15 = 1;
            if (([v67 isCompatibleWithUpdateToSystemVersion:?] & 1) == 0)
            {
              v62 = [(RestoreFromBackupController *)v73 betaEnrollmentStateManager];
              v61 = 1;
              v15 = [v62 isRestorableSeedEnrolled:v67];
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

          v18 = [v70 textLabel];
          if (v65)
          {
            v22 = +[UIColor _labelColor];
            [v18 setTextColor:v22];

            v23 = [v70 detailTextLabel];
            v24 = +[UIColor _labelColor];
            [v23 setTextColor:v24];

            [v70 setSelectionStyle:3];
          }

          else
          {
            v19 = +[UIColor _secondaryLabelColor];
            [v18 setTextColor:v19];

            v20 = [v70 detailTextLabel];
            v21 = +[UIColor _secondaryLabelColor];
            [v20 setTextColor:v21];

            [v70 setSelectionStyle:0];
          }

          [v70 setAccessoryType:1];
          v60 = 0;
          v60 = v73->_listState == 3 || v73->_shouldForceShowTimeStampOnBackups;
          v25 = [v70 textLabel];
          v26 = [v67 dateStringWithStyle:v60];
          [v25 setText:v26];

          v27 = [v70 textLabel];
          v28 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
          [v27 setFont:v28];

          v59 = 0;
          if (v65)
          {
            v29 = [v67 deviceInfoString];
            v30 = v59;
            v59 = v29;
          }

          else
          {
            v31 = +[NSBundle mainBundle];
            v32 = [(NSBundle *)v31 localizedStringForKey:@"REQUIRED_OS_VERSION_%@" value:&stru_10032F900 table:@"RestoreFromBackup"];
            v33 = [v67 snapshot];
            v34 = [v33 systemVersion];
            v35 = [NSString localizedStringWithFormat:v32, v34];
            v36 = v59;
            v59 = v35;
          }

          v37 = [v70 imageView];
          v38 = [v67 backup];
          v39 = [v38 productType];
          v40 = [(RestoreFromBackupController *)v73 traitCollection];
          v41 = [_TtC5Setup25BuddyDeviceImageUtilities imageForDeviceModelWithModel:v39 traitCollection:v40];
          [v37 setImage:v41];

          v42 = [v70 detailTextLabel];
          [v42 setText:v59];

          v43 = [v70 detailTextLabel];
          v44 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
          [v43 setFont:v44];

          [location[0] separatorInset];
          v46 = 39.0 - v45;
          [location[0] separatorInset];
          sub_1000D1DD4(v46, v47);
          v58 = sub_1000D1D7C();
          [v70 setSeparatorInset:{v58, v48, v49, v50}];
          v51 = [v67 accessibilityIdentifier];
          [v70 setAccessibilityIdentifier:v51];

          objc_storeStrong(&v59, 0);
        }

        else
        {
          v9 = objc_alloc_init(UITableViewCell);
          v10 = v70;
          v70 = v9;

          v66 = [v70 defaultContentConfiguration];
          v11 = +[NSBundle mainBundle];
          v12 = [(NSBundle *)v11 localizedStringForKey:@"SHOW_ALL_BACKUPS" value:&stru_10032F900 table:@"RestoreFromBackup"];
          [v66 setText:v12];

          v13 = [v66 textProperties];
          v14 = +[UIColor systemBlueColor];
          [v13 setColor:v14];

          [v70 setContentConfiguration:v66];
          objc_storeStrong(&v66, 0);
        }

        objc_storeStrong(&v67, 0);
      }

      break;
  }

  v52 = [(RestoreFromBackupController *)v73 featureFlags];
  v53 = [(BuddyFeatureFlags *)v52 isSolariumEnabled];

  if (v53)
  {
    if (v73->_listState)
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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
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
    v14 = [(RestoreFromBackupController *)v18 restorableItemAtIndexPath:v16];
    v12 = 0;
    v10 = 0;
    v7 = 0;
    if (v14)
    {
      v7 = 0;
      if (([v14 isCompatible] & 1) == 0)
      {
        v13 = [(RestoreFromBackupController *)v18 availableUpdateVersion];
        v12 = 1;
        v7 = 0;
        if (([v14 isCompatibleWithUpdateToSystemVersion:?] & 1) == 0)
        {
          v11 = [(RestoreFromBackupController *)v18 betaEnrollmentStateManager];
          v10 = 1;
          v7 = ![(BuddyBetaEnrollmentStateManager *)v11 isRestorableSeedEnrolled:v14];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  [location[0] deselectRowAtIndexPath:v15 animated:1];
  v14 = [(RestoreFromBackupController *)v17 restorableItemAtIndexPath:v15];
  if (v14)
  {
    v5 = v17;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000D2138;
    v10 = &unk_10032AEF0;
    v11 = v17;
    v12 = v14;
    [(RestoreFromBackupController *)v5 showRestoreWarningsIfNeededForRestorable:v14 completion:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  else
  {
    [(RestoreFromBackupController *)v17 showAllBackups];
    v13 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)handleDebugGesture
{
  v20 = self;
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

  [(RestoreFromBackupController *)v20 presentViewController:location animated:1 completion:0];
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
  v3 = [(UIApplication *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraLarge, v3) == NSOrderedAscending;

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
  v19 = self;
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
    [(RestoreFromBackupController *)v19 _presentAlertWithTitle:v18[0] withMessage:*&v17[1] withTryAgainOption:v17[0] & 1 withSetupAsNewOption:v16 & 1 inViewController:v19];
    goto LABEL_9;
  }

  if (v19->_listState == 1)
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
    sub_100082D54(buf, v19->_listState);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Failed to determine alert state when transitioning to state %i", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
LABEL_9:
  objc_storeStrong(&v17[1], 0);
  objc_storeStrong(v18, 0);
}

- (void)_presentAlertWithTitle:(id)a3 withMessage:(id)a4 withTryAgainOption:(BOOL)a5 withSetupAsNewOption:(BOOL)a6 inViewController:(id)a7
{
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = 0;
  objc_storeStrong(&v51, a4);
  v50 = a5;
  v49 = a6;
  v48 = 0;
  objc_storeStrong(&v48, a7);
  v47 = [UIAlertController alertControllerWithTitle:location[0] message:v51 preferredStyle:1];
  objc_initWeak(&from, v53);
  if (v50)
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

  if (v49)
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