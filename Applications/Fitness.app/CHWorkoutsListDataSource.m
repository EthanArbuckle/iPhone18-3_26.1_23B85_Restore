@interface CHWorkoutsListDataSource
- (BOOL)workout:(id)a3 wasOnSameDayAsWorkout:(id)a4;
- (CHWorkoutsListDataSource)initWithTableView:(id)a3 dataProvider:(id)a4 fitnessAppContext:(id)a5 formattingManager:(id)a6 badgeImageFactory:(id)a7 awardsDataProvider:(id)a8;
- (CHWorkoutsListDataSourceDelegate)delegate;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_indexPathsToInsertForSection:(unint64_t)a3 deletedIndexPaths:(id)a4;
- (id)_indexPathsToInsertWithSectionSet:(id)a3 deletedIndexPaths:(id)a4;
- (id)_indexPathsToRemoveForSection:(unint64_t)a3;
- (id)_indexPathsToRemoveWithSectionSet:(id)a3;
- (id)_workoutForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)workoutForIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_calculateSectionContentOffsets;
- (void)_checkCurrentMonth;
- (void)_deleteWorkoutAtIndexPath:(id)a3;
- (void)_reloadDataForVisibleCells:(id)a3;
- (void)_reloadDataFromProvider;
- (void)_reloadHeaderForSection:(unint64_t)a3;
- (void)_try_reloadDataForFilter;
- (void)dealloc;
- (void)setCurrentSection:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
@end

@implementation CHWorkoutsListDataSource

- (CHWorkoutsListDataSource)initWithTableView:(id)a3 dataProvider:(id)a4 fitnessAppContext:(id)a5 formattingManager:(id)a6 badgeImageFactory:(id)a7 awardsDataProvider:(id)a8
{
  v14 = a3;
  v32 = a4;
  v31 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v38.receiver = self;
  v38.super_class = CHWorkoutsListDataSource;
  v18 = [(CHWorkoutsListDataSource *)&v38 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_tableView, v14);
    objc_storeStrong(&v19->_dataProvider, a4);
    objc_storeStrong(&v19->_fitnessAppContext, a5);
    objc_storeStrong(&v19->_formattingManager, a6);
    objc_storeStrong(&v19->_badgeImageFactory, a7);
    objc_storeStrong(&v19->_awardsDataProvider, a8);
    v20 = +[NSCalendar currentCalendar];
    currentCalendar = v19->_currentCalendar;
    v19->_currentCalendar = v20;

    objc_initWeak(&location, v19);
    dataProvider = v19->_dataProvider;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000E100C;
    v35[3] = &unk_10083A710;
    objc_copyWeak(&v36, &location);
    [(CHWorkoutDataProvider *)dataProvider addUpdateHandler:v35];
    v23 = v19->_dataProvider;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000E104C;
    v33[3] = &unk_10083A710;
    objc_copyWeak(&v34, &location);
    [(CHWorkoutDataProvider *)v23 addFilterActionFinishedHandler:v33];
    WeakRetained = objc_loadWeakRetained(&v19->_tableView);
    [WeakRetained registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"WorkoutsListTableHeaderViewReuseIdentifier"];

    v25 = objc_loadWeakRetained(&v19->_tableView);
    [v25 registerClass:objc_opt_class() forCellReuseIdentifier:@"WorkoutsListSummaryTableViewCellReuseIdentifier"];

    v26 = objc_loadWeakRetained(&v19->_tableView);
    [v26 registerClass:objc_opt_class() forCellReuseIdentifier:@"WorkoutsListTableViewCellReuseIdentifier"];

    v27 = objc_loadWeakRetained(&v19->_tableView);
    [v27 setDataSource:v19];

    v28 = objc_loadWeakRetained(&v19->_tableView);
    [v28 setDelegate:v19];

    if ([(CHWorkoutDataProvider *)v19->_dataProvider dataAvailable])
    {
      [(CHWorkoutsListDataSource *)v19 _reloadDataFromProvider];
    }

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v19 selector:"_reloadDataForVisibleCells:" name:UIApplicationSignificantTimeChangeNotification object:0];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v19;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CHWorkoutsListDataSource;
  [(CHWorkoutsListDataSource *)&v4 dealloc];
}

- (id)workoutForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 >= -[NSArray count](self->_sectionArray, "count") || (v6 = [v4 row], WeakRetained = objc_loadWeakRetained(&self->_tableView), v8 = -[CHWorkoutsListDataSource tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", WeakRetained, objc_msgSend(v4, "section")), WeakRetained, v6 >= v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [(CHWorkoutsListDataSource *)self _workoutForIndexPath:v4];
  }

  return v9;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  if ([(NSArray *)self->_sectionArray count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [(NSArray *)self->_sectionArray objectAtIndexedSubscript:self->_currentSection];
    [WeakRetained workoutsListDataSource:self didScrollToSectionWithDateComponents:v4];
  }
}

- (void)_reloadDataFromProvider
{
  self->_offsetsStale = 1;
  v3 = [(CHWorkoutDataProvider *)self->_dataProvider workoutsByMonthAndYear];
  rowDictionary = self->_rowDictionary;
  self->_rowDictionary = v3;

  v5 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
  sectionArray = self->_sectionArray;
  self->_sectionArray = v5;

  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained reloadData];

  if ([(NSArray *)self->_sectionArray count])
  {
    v9 = [(CHWorkoutsListDataSource *)self delegate];
    v8 = [(NSArray *)self->_sectionArray objectAtIndexedSubscript:self->_currentSection];
    [v9 workoutsListDataSource:self didScrollToSectionWithDateComponents:v8];
  }
}

- (void)_try_reloadDataForFilter
{
  self->_offsetsStale = 1;
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained beginUpdates];

  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v7 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
  v8 = [v7 countByEnumeratingWithState:&v120 objects:v128 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v121;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v121 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v120 + 1) + 8 * i);
        if (![(NSArray *)self->_sectionArray containsObject:v12])
        {
          v13 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
          v14 = [v13 indexOfObject:v12];

          v15 = [NSNumber numberWithInteger:v14];
          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v120 objects:v128 count:16];
    }

    while (v9);
  }

  if ([(NSArray *)self->_sectionArray count])
  {
    v16 = 0;
    do
    {
      rowDictionary = self->_rowDictionary;
      v18 = [(NSArray *)self->_sectionArray objectAtIndexedSubscript:v16];
      v19 = [(NSDictionary *)rowDictionary objectForKeyedSubscript:v18];
      v20 = [v19 count];

      if (!v20)
      {
        v21 = [NSNumber numberWithInteger:v16];
        [v4 addObject:v21];
      }

      ++v16;
    }

    while (v16 < [(NSArray *)self->_sectionArray count]);
  }

  if ([(NSArray *)self->_sectionArray count])
  {
    v22 = 0;
    do
    {
      v23 = [(CHWorkoutDataProvider *)self->_dataProvider workoutsByMonthAndYear];
      v24 = [(NSArray *)self->_sectionArray objectAtIndexedSubscript:v22];
      v25 = [v23 objectForKeyedSubscript:v24];
      v26 = [v25 count];

      if (!v26)
      {
        v27 = [NSNumber numberWithInteger:v22];
        [v5 addObject:v27];
      }

      ++v22;
    }

    while (v22 < [(NSArray *)self->_sectionArray count]);
  }

  v28 = objc_alloc_init(NSMutableSet);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v29 = v5;
  v30 = [v29 countByEnumeratingWithState:&v116 objects:v127 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v117;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v117 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v116 + 1) + 8 * j);
        if (([v4 containsObject:v34] & 1) == 0)
        {
          [v28 addObject:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v116 objects:v127 count:16];
    }

    while (v31);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v35 = v4;
  v36 = [v35 countByEnumeratingWithState:&v112 objects:v126 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v113;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v113 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v112 + 1) + 8 * k);
        if (([v29 containsObject:v40] & 1) == 0)
        {
          [v28 addObject:v40];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v112 objects:v126 count:16];
    }

    while (v37);
  }

  v86 = v29;
  v87 = v6;
  v85 = v35;

  v41 = objc_alloc_init(NSMutableSet);
  v42 = objc_alloc_init(NSMutableSet);
  v43 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
  v44 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v43 count]);

  v45 = [(NSArray *)self->_sectionArray copy];
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_1000E1DD8;
  v109[3] = &unk_10083BA78;
  v109[4] = self;
  v46 = v28;
  v110 = v46;
  v82 = v41;
  v84 = v45;
  v111 = v82;
  [v45 enumerateObjectsUsingBlock:v109];
  v88 = v44;
  [(CHWorkoutsListDataSource *)self _indexPathsToRemoveWithSectionSet:v44];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v89 = v108 = 0u;
  v47 = [v89 copy];
  v48 = [v47 countByEnumeratingWithState:&v105 objects:v125 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v106;
    do
    {
      for (m = 0; m != v49; m = m + 1)
      {
        if (*v106 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v105 + 1) + 8 * m);
        v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v52 section]);
        [v42 addObject:v53];

        v54 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v52 section]);
        v55 = [v46 containsObject:v54];

        if (v55)
        {
          [v89 removeObject:v52];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v105 objects:v125 count:16];
    }

    while (v49);
  }

  v56 = objc_loadWeakRetained(&self->_tableView);
  [v56 deleteRowsAtIndexPaths:v89 withRowAnimation:5];

  v57 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
  v58 = [v57 copy];

  v102[0] = _NSConcreteStackBlock;
  v102[1] = 3221225472;
  v102[2] = sub_1000E1F08;
  v102[3] = &unk_10083BA78;
  v102[4] = self;
  v59 = v46;
  v103 = v59;
  v60 = v82;
  v104 = v60;
  v83 = v58;
  [v58 enumerateObjectsUsingBlock:v102];
  v61 = [(CHWorkoutsListDataSource *)self _indexPathsToInsertWithSectionSet:v88 deletedIndexPaths:v89];
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_1000E2014;
  v100[3] = &unk_10083BAA0;
  v62 = v42;
  v101 = v62;
  [v61 enumerateObjectsUsingBlock:v100];
  v63 = objc_loadWeakRetained(&self->_tableView);
  v81 = v61;
  [v63 insertRowsAtIndexPaths:v61 withRowAnimation:5];

  [v62 minusSet:v60];
  v64 = [v62 hk_map:&stru_10083BAE0];
  v65 = objc_loadWeakRetained(&self->_tableView);
  v80 = v64;
  v66 = [v64 allObjects];
  [v65 reloadRowsAtIndexPaths:v66 withRowAnimation:5];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v67 = v59;
  v68 = [v67 countByEnumeratingWithState:&v96 objects:v124 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v97;
    do
    {
      for (n = 0; n != v69; n = n + 1)
      {
        if (*v97 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v72 = *(*(&v96 + 1) + 8 * n);
        v73 = objc_loadWeakRetained(&self->_tableView);
        v74 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v72 integerValue]);
        [v73 reloadSections:v74 withRowAnimation:5];
      }

      v69 = [v67 countByEnumeratingWithState:&v96 objects:v124 count:16];
    }

    while (v69);
  }

  v75 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
  sectionArray = self->_sectionArray;
  self->_sectionArray = v75;

  v77 = [(CHWorkoutDataProvider *)self->_dataProvider workoutsByMonthAndYear];
  v78 = self->_rowDictionary;
  self->_rowDictionary = v77;

  if (![v60 count])
  {
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_1000E20C8;
    v93[3] = &unk_10083BB08;
    v94 = v67;
    v95 = self;
    [v88 enumerateIndexesUsingBlock:v93];
  }

  v79 = objc_loadWeakRetained(&self->_tableView);
  [v79 endUpdates];

  if ([v60 count])
  {
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1000E2150;
    v90[3] = &unk_10083BB08;
    v91 = v67;
    v92 = self;
    [v88 enumerateIndexesUsingBlock:v90];
  }

  [(CHWorkoutsListDataSource *)self _checkCurrentMonth];
}

- (void)_reloadHeaderForSection:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v11 = [WeakRetained headerViewForSection:a3];

  v6 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [(CHWorkoutDataProvider *)self->_dataProvider workoutStatisticsForMonthAndYear];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 startOfMonth];
  [v11 setDate:v10];
}

- (id)_indexPathsToRemoveWithSectionSet:(id)a3
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E2370;
  v8[3] = &unk_10083BB08;
  v5 = objc_alloc_init(NSMutableArray);
  v9 = v5;
  v10 = self;
  [v4 enumerateIndexesUsingBlock:v8];

  v6 = v5;
  return v5;
}

- (id)_indexPathsToRemoveForSection:(unint64_t)a3
{
  if ([(NSArray *)self->_sectionArray count]<= a3)
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    v5 = [(NSArray *)self->_sectionArray objectAtIndexedSubscript:a3];
    v6 = [(NSDictionary *)self->_rowDictionary objectForKeyedSubscript:v5];
    v7 = [(CHWorkoutDataProvider *)self->_dataProvider workoutsByMonthAndYear];
    v8 = [v7 objectForKeyedSubscript:v5];

    if ([v8 count])
    {
      v9 = objc_alloc_init(NSMutableArray);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = v6;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            if (([v8 containsObject:v15] & 1) == 0)
            {
              v16 = -[CHWorkoutsListDataSource _indexPathAdjustedForSummaryCellForRow:inSection:](self, "_indexPathAdjustedForSummaryCellForRow:inSection:", [v10 indexOfObject:v15], a3);
              [v9 addObject:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      v6 = v18;
    }

    else
    {
      v9 = &__NSArray0__struct;
    }
  }

  return v9;
}

- (id)_indexPathsToInsertWithSectionSet:(id)a3 deletedIndexPaths:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E26A4;
  v12[3] = &unk_10083BB30;
  v13 = v6;
  v8 = objc_alloc_init(NSMutableArray);
  v14 = v8;
  v15 = self;
  v9 = v6;
  [v7 enumerateIndexesUsingBlock:v12];

  v10 = v8;
  return v8;
}

- (id)_indexPathsToInsertForSection:(unint64_t)a3 deletedIndexPaths:(id)a4
{
  v30 = a4;
  if ([(NSArray *)self->_sectionArray count]<= a3)
  {
    v18 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NSArray *)self->_sectionArray objectAtIndexedSubscript:a3];
    v7 = [(NSDictionary *)self->_rowDictionary objectForKeyedSubscript:v6];
    v8 = [v7 mutableCopy];

    if ([v8 count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [(NSDictionary *)self->_rowDictionary objectForKeyedSubscript:v6];
      v9 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v36;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            v14 = v6;
            v15 = [(NSDictionary *)self->_rowDictionary objectForKeyedSubscript:v6];
            v16 = [v15 indexOfObject:v13];

            v17 = [(CHWorkoutsListDataSource *)self _indexPathAdjustedForSummaryCellForRow:v16 inSection:a3];
            if ([v30 containsObject:v17])
            {
              [v8 removeObject:v13];
            }

            v6 = v14;
          }

          v10 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v10);
      }

      v18 = objc_alloc_init(NSMutableArray);
      v19 = [(CHWorkoutDataProvider *)self->_dataProvider workoutsByMonthAndYear];
      v20 = [v19 objectForKeyedSubscript:v6];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v31 + 1) + 8 * j);
            if (([v8 containsObject:v26] & 1) == 0)
            {
              v27 = -[CHWorkoutsListDataSource _indexPathAdjustedForSummaryCellForRow:inSection:](self, "_indexPathAdjustedForSummaryCellForRow:inSection:", [v21 indexOfObject:v26], a3);
              [v18 addObject:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v18 = &__NSArray0__struct;
    }
  }

  return v18;
}

- (void)_calculateSectionContentOffsets
{
  v30 = objc_alloc_init(NSMutableArray);
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained contentInset];
  v5 = v4;
  v6 = objc_loadWeakRetained(&self->_tableView);
  [v6 _systemContentInset];
  v8 = -(v5 + v7);

  v9 = [NSNumber numberWithDouble:v8];
  [v30 addObject:v9];

  v10 = objc_loadWeakRetained(&self->_tableView);
  v11 = [(CHWorkoutsListDataSource *)self numberOfSectionsInTableView:v10];

  if (v11 >= 2)
  {
    v12 = 0;
    do
    {
      v13 = objc_loadWeakRetained(&self->_tableView);
      [(CHWorkoutsListDataSource *)self tableView:v13 heightForHeaderInSection:v12];
      v15 = v14;

      v8 = v8 + v15;
      v16 = objc_loadWeakRetained(&self->_tableView);
      v17 = [(CHWorkoutsListDataSource *)self tableView:v16 numberOfRowsInSection:v12];

      if (v17 >= 1)
      {
        v18 = 0;
        do
        {
          v19 = [NSIndexPath indexPathForRow:v18 inSection:v12];
          v20 = objc_loadWeakRetained(&self->_tableView);
          [(CHWorkoutsListDataSource *)self tableView:v20 heightForRowAtIndexPath:v19];
          v22 = v21;

          v8 = v8 + v22;
          ++v18;
          v23 = objc_loadWeakRetained(&self->_tableView);
          v24 = [(CHWorkoutsListDataSource *)self tableView:v23 numberOfRowsInSection:v12];
        }

        while (v18 < v24);
      }

      v25 = [NSNumber numberWithDouble:v8];
      [v30 addObject:v25];

      ++v12;
      v26 = objc_loadWeakRetained(&self->_tableView);
      v27 = [(CHWorkoutsListDataSource *)self numberOfSectionsInTableView:v26]- 1;
    }

    while (v12 < v27);
  }

  v28 = [v30 copy];
  contentOffsetsForTopOfSection = self->_contentOffsetsForTopOfSection;
  self->_contentOffsetsForTopOfSection = v28;
}

- (void)setCurrentSection:(int64_t)a3
{
  if (self->_currentSection != a3)
  {
    self->_currentSection = a3;
    v5 = [(NSArray *)self->_sectionArray count];
    currentSection = self->_currentSection;
    v8 = [(CHWorkoutsListDataSource *)self delegate];
    if (v5 <= currentSection)
    {
      [v8 workoutsListDataSource:self didScrollToSectionWithDateComponents:0];
    }

    else
    {
      v7 = [(NSArray *)self->_sectionArray objectAtIndexedSubscript:self->_currentSection];
      [v8 workoutsListDataSource:self didScrollToSectionWithDateComponents:v7];
    }
  }
}

- (void)_reloadDataForVisibleCells:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  v5 = [WeakRetained indexPathsForVisibleRows];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 row])
        {
          v12 = objc_loadWeakRetained(&self->_tableView);
          v13 = [v12 cellForRowAtIndexPath:v11];

          v14 = [(CHWorkoutsListDataSource *)self _workoutForIndexPath:v11];
          v15 = &__NSArray0__struct;
          if (AAUIShouldUseNewTrophyCase())
          {
            awardsDataProvider = self->_awardsDataProvider;
            v17 = [v14 UUID];
            v18 = [v17 UUIDString];
            v15 = [(CHAwardsDataProvider *)awardsDataProvider achievementsForWorkoutIdentifier:v18];
          }

          [v13 setWorkout:v14 fitnessAppContext:self->_fitnessAppContext formattingManager:self->_formattingManager achievementCount:{objc_msgSend(v15, "count")}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (![(NSArray *)self->_sectionArray count])
  {
    return 0;
  }

  v6 = [(NSArray *)self->_sectionArray objectAtIndexedSubscript:a4];
  v7 = [(NSDictionary *)self->_rowDictionary objectForKeyedSubscript:v6];
  v8 = [v7 count];

  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row])
  {
    v8 = [(CHWorkoutsListDataSource *)self _workoutForIndexPath:v7];
    if (AAUIShouldUseNewTrophyCase())
    {
      awardsDataProvider = self->_awardsDataProvider;
      v10 = [v8 UUID];
      v11 = [v10 UUIDString];
      v12 = [(CHAwardsDataProvider *)awardsDataProvider achievementsForWorkoutIdentifier:v11];
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    v13 = [v6 dequeueReusableCellWithIdentifier:@"WorkoutsListTableViewCellReuseIdentifier"];
    [v13 setWorkout:v8 fitnessAppContext:self->_fitnessAppContext formattingManager:self->_formattingManager achievementCount:{objc_msgSend(v12, "count")}];
  }

  else
  {
    v13 = [v6 dequeueReusableCellWithIdentifier:@"WorkoutsListSummaryTableViewCellReuseIdentifier" forIndexPath:v7];
    v14 = [v13 contentView];
    [v14 setClipsToBounds:1];

    v15 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
    v8 = [v15 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    v16 = [(CHWorkoutDataProvider *)self->_dataProvider workoutStatisticsForMonthAndYear];
    v12 = [v16 objectForKeyedSubscript:v8];

    v17 = [(CHWorkoutDataProvider *)self->_dataProvider currentFilteredTypeIdentifier];
    v18 = [(CHWorkoutFormattingManager *)self->_formattingManager fitnessUIFormattingManager];
    [v13 setWorkoutStatistics:v12 activityTypeKey:v17 formattingManager:v18];
  }

  [v13 setSelectionStyle:0];

  return v13;
}

- (BOOL)workout:(id)a3 wasOnSameDayAsWorkout:(id)a4
{
  currentCalendar = self->_currentCalendar;
  v6 = a4;
  v7 = [a3 startDate];
  v8 = [v6 startDate];

  LOBYTE(currentCalendar) = [(NSCalendar *)currentCalendar isDate:v7 inSameDayAsDate:v8];
  return currentCalendar;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if ([(CHWorkoutsListDataSource *)self tableView:a3 numberOfRowsInSection:a4]< 1)
  {
    return 0.0;
  }

  +[CHListTableHeaderView preferredHeight];
  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(CHWorkoutsListDataSource *)self tableView:v6 numberOfRowsInSection:a4])
  {
    v7 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
    v8 = [v7 objectAtIndexedSubscript:a4];

    v9 = [(CHWorkoutDataProvider *)self->_dataProvider workoutStatisticsForMonthAndYear];
    v10 = [v9 objectForKeyedSubscript:v8];

    v11 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"WorkoutsListTableHeaderViewReuseIdentifier"];
    v12 = [v10 startOfMonth];
    [v11 setDate:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 row])
  {
    v6 = [(CHWorkoutsListDataSource *)self _workoutForIndexPath:v5];
    [CHWorkoutsListTableViewCell preferredHeightForWorkout:v6 formattingManager:self->_formattingManager];
    v8 = v7;
  }

  else
  {
    v9 = [(CHWorkoutDataProvider *)self->_dataProvider sortedDateComponentKeys];
    v6 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

    v10 = [(CHWorkoutDataProvider *)self->_dataProvider workoutStatisticsForMonthAndYear];
    v11 = [v10 objectForKeyedSubscript:v6];

    v12 = [(CHWorkoutDataProvider *)self->_dataProvider currentFilteredTypeIdentifier];
    [CHListSummaryTableViewCell heightForWorkoutActivityTypeKey:v12 statistics:v11];
    v8 = v13;
  }

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  if ([(NSArray *)self->_sectionArray count]- 1 != a4)
  {
    if ([(CHWorkoutsListDataSource *)self tableView:v6 numberOfRowsInSection:a4])
    {
      v7 = 11.0;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  [a3 deselectRowAtIndexPath:v8 animated:1];
  if ([v8 row])
  {
    v6 = [(CHWorkoutsListDataSource *)self _workoutForIndexPath:v8];
    v7 = [(CHWorkoutsListDataSource *)self delegate];
    [v7 workoutsListDataSource:self didSelectWorkout:v6 atIndexPath:v8];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row])
  {
    objc_initWeak(&location, self);
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"DELETE_WORKOUT" value:&stru_1008680E8 table:@"Localizable"];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E381C;
    v15[3] = &unk_10083BB58;
    objc_copyWeak(&v17, &location);
    v16 = v7;
    v10 = [UIContextualAction contextualActionWithStyle:0 title:v9 handler:v15];

    v11 = +[UIColor redColor];
    [v10 setBackgroundColor:v11];

    v19 = v10;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    v13 = [UISwipeActionsConfiguration configurationWithActions:v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [UISwipeActionsConfiguration configurationWithActions:&__NSArray0__struct];
  }

  return v13;
}

- (void)_deleteWorkoutAtIndexPath:(id)a3
{
  v4 = [(CHWorkoutsListDataSource *)self _workoutForIndexPath:a3];
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained setEditing:0 animated:1];

  v6 = [(CHWorkoutsListDataSource *)self delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E3968;
  v8[3] = &unk_10083BB80;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 workoutsListDataSource:self requestsDeleteConfirmationForWorkout:v7 completion:v8];
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  if ([v6 row])
  {
    v7 = [(CHWorkoutsListDataSource *)self workoutForIndexPath:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained detailViewControllerForWorkout:v7];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E3C10;
    v15[3] = &unk_10083BBA8;
    v16 = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E3C18;
    v13[3] = &unk_10083BBF8;
    v14 = v16;
    v10 = v16;
    v11 = [UIContextMenuConfiguration configurationWithIdentifier:v6 previewProvider:v15 actionProvider:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = [a4 identifier];
  [(CHWorkoutsListDataSource *)self workoutForIndexPath:v8];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E3EA4;
  v11[3] = &unk_10083BC20;
  v12 = v11[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  [v7 addCompletion:v11];
}

- (void)_checkCurrentMonth
{
  if (self->_offsetsStale)
  {
    [(CHWorkoutsListDataSource *)self _calculateSectionContentOffsets];
    self->_offsetsStale = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained contentOffset];
  v5 = v4;

  v16 = [(NSArray *)self->_contentOffsetsForTopOfSection firstObject];
  if ([(NSArray *)self->_contentOffsetsForTopOfSection count])
  {
    v6 = 0;
    v7 = 0;
    v8 = -1;
    v9 = v16;
    while (1)
    {
      v10 = v8 + 1;
      v17 = [(NSArray *)self->_contentOffsetsForTopOfSection objectAtIndexedSubscript:v8 + 1];
      [v17 doubleValue];
      if (v11 > v5 && ([v17 isEqual:v9] & 1) == 0)
      {
        break;
      }

      v12 = [(NSArray *)self->_contentOffsetsForTopOfSection count];
      v13 = v8 + 2;
      ++v8;
      v6 = v7++;
      v9 = v17;
      v14 = v13 >= v12;
      v15 = v17;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    v15 = v9;
    v10 = v6;
  }

  else
  {
    v10 = 0;
    v15 = v16;
  }

LABEL_12:
  v18 = v15;
  [(CHWorkoutsListDataSource *)self setCurrentSection:v10];
}

- (id)_workoutForIndexPath:(id)a3
{
  sectionArray = self->_sectionArray;
  v5 = a3;
  v6 = -[NSArray objectAtIndexedSubscript:](sectionArray, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [(NSDictionary *)self->_rowDictionary objectForKeyedSubscript:v6];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8 - 1];

  return v9;
}

- (CHWorkoutsListDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end