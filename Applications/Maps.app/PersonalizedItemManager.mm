@interface PersonalizedItemManager
- (BOOL)updateInProgress;
- (NSArray)allItems;
- (NSArray)itemGroups;
- (NSArray)previousItemGroups;
- (NSArray)previousItems;
- (PersonalizedItemClientRankingFunction)_clientRankingFunction;
- (PersonalizedItemManager)init;
- (PersonalizedItemPriorityFunction)_priorityFunction;
- (id)_itemsFilteredBySearchableString:(id)a3 predicate:(id)a4;
- (id)itemsContainingSearchableString:(id)a3;
- (id)itemsMatchingSearchableString:(id)a3;
- (void)_gatherItemsWithShouldCancel:(id)a3 completion:(id)a4;
- (void)_recalculateIfNeeded;
- (void)_setNeedsRecalculation;
- (void)addItemSource:(id)a3;
- (void)addObserver:(id)a3;
- (void)fetchAllItems:(id)a3;
- (void)fetchItemsGroups:(id)a3;
- (void)removeItemSource:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setClientRankingFunction:(id)a3;
- (void)setItemSources:(id)a3;
- (void)setPriorityFunction:(id)a3;
- (void)setUpdatesPaused:(BOOL)a3;
@end

@implementation PersonalizedItemManager

- (PersonalizedItemManager)init
{
  v21.receiver = self;
  v21.super_class = PersonalizedItemManager;
  v2 = [(PersonalizedItemManager *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("PersonalizedItemManager.lock", v3);
    lock = v2->_lock;
    v2->_lock = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("PersonalizedItemManager.calculationQueue", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = +[NSMutableArray array];
    itemSources = v2->_itemSources;
    v2->_itemSources = v9;

    v11 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v11;

    clientRankingFunction = v2->_clientRankingFunction;
    v2->_clientRankingFunction = 0;

    v14 = +[PersonalizedItemPriorityFunction defaultPriorityFunctionForCompoundItemResolution];
    priorityFunction = v2->_priorityFunction;
    v2->_priorityFunction = v14;

    v16 = +[NSMutableArray array];
    itemCompletions = v2->_itemCompletions;
    v2->_itemCompletions = v16;

    v18 = +[NSMutableArray array];
    itemGroupCompletions = v2->_itemGroupCompletions;
    v2->_itemGroupCompletions = v18;
  }

  return v2;
}

- (NSArray)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100A1379C;
  v10 = sub_100A137AC;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002A654;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)itemGroups
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100A1379C;
  v10 = sub_100A137AC;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002A7CC;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setNeedsRecalculation
{
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049C3C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(lock, block);
  [(PersonalizedItemManager *)self _recalculateIfNeeded];
}

- (void)_recalculateIfNeeded
{
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100A1379C;
  v24 = sub_100A137AC;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049F50;
  block[3] = &unk_101631E00;
  block[4] = self;
  block[5] = &v16;
  block[6] = v26;
  block[7] = &v20;
  dispatch_sync(lock, block);
  if (*(v17 + 24) == 1)
  {
    v4 = v21[5];
    if (v4)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v28 count:16];
      if (v6)
      {
        v7 = *v12;
        do
        {
          v8 = 0;
          do
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v11 + 1) + 8 * v8) personalizedItemManagerWillChangeItems:self];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v5 countByEnumeratingWithState:&v11 objects:v28 count:16];
        }

        while (v6);
      }
    }

    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100043A08;
    v10[3] = &unk_10165DEF0;
    v10[4] = self;
    v10[5] = v26;
    v10[6] = &v20;
    dispatch_async(queue, v10);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(v26, 8);
}

- (id)_itemsFilteredBySearchableString:(id)a3 predicate:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(PersonalizedItemManager *)self allItems];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 searchableStrings];
        v14 = [v13 filteredArrayUsingPredicate:v5];
        if ([v14 count])
        {
          v15 = [v12 mapItem];

          if (v15)
          {
            [v6 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v6 copy];

  return v16;
}

- (id)itemsContainingSearchableString:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"SELF contains[cdl] %@", v4];
  v6 = [(PersonalizedItemManager *)self _itemsFilteredBySearchableString:v4 predicate:v5];

  return v6;
}

- (id)itemsMatchingSearchableString:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"SELF LIKE[cdl] %@", v4];
  v6 = [(PersonalizedItemManager *)self _itemsFilteredBySearchableString:v4 predicate:v5];

  return v6;
}

- (void)_gatherItemsWithShouldCancel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v117 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v171 = 0;
  v172 = &v171;
  v173 = 0x3032000000;
  v174 = sub_100A1379C;
  v175 = sub_100A137AC;
  v176 = 0;
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A137B4;
  block[3] = &unk_101661600;
  block[5] = &v171;
  block[4] = self;
  dispatch_sync(lock, block);
  v123 = v6;
  LODWORD(v6) = (v6[2])(v6);
  v8 = sub_100039D48();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Cancelling gather items before starting", buf, 2u);
    }

    (*(v117 + 2))(v117, 0, 0);
    goto LABEL_172;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = self;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  if (objc_opt_respondsToSelector())
  {
    v13 = [(PersonalizedItemManager *)v10 performSelector:"accessibilityIdentifier"];
    v14 = v13;
    if (v13 && ([v13 isEqualToString:v12] & 1) == 0)
    {
      v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

      goto LABEL_11;
    }
  }

  v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_11:

  v16 = v15;
  *buf = 138412290;
  v193 = v16;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Starting to gather items...", buf, 0xCu);

LABEL_12:
  [@"com.apple.Maps" UTF8String];
  v17 = GEOFindOrCreateLog();
  v18 = os_signpost_id_generate(v17);
  v19 = v17;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "GatherItems", "", buf, 2u);
  }

  v167[0] = _NSConcreteStackBlock;
  v167[1] = 3221225472;
  v167[2] = sub_100A13800;
  v167[3] = &unk_101661650;
  v113 = v20;
  v168 = v113;
  v169 = v18;
  v115 = objc_retainBlock(v167);
  v21 = [v172[5] sortedArrayUsingComparator:&stru_101631EB8];
  v22 = v172[5];
  v172[5] = v21;

  v23 = sub_100039D48();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    log = v23;
    v24 = v172[5];
    v132 = v24;
    if (v24)
    {
      if ([v24 count])
      {
        v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v132 count]);
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v26 = v132;
        v27 = [v26 countByEnumeratingWithState:&v177 objects:buf count:16];
        if (!v27)
        {
          goto LABEL_35;
        }

        v28 = *v178;
        while (1)
        {
          v29 = 0;
          do
          {
            if (*v178 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v177 + 1) + 8 * v29);
            if (v30)
            {
              v31 = objc_opt_class();
              v32 = NSStringFromClass(v31);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_28;
              }

              v33 = [v30 performSelector:"accessibilityIdentifier"];
              v34 = v33;
              if (v33 && ([v33 isEqualToString:v32] & 1) == 0)
              {
                v35 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];
              }

              else
              {

LABEL_28:
                v35 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
              }

              goto LABEL_31;
            }

            v35 = @"<nil>";
LABEL_31:

            [v25 addObject:v35];
            v29 = v29 + 1;
          }

          while (v27 != v29);
          v36 = [v26 countByEnumeratingWithState:&v177 objects:buf count:16];
          v27 = v36;
          if (!v36)
          {
LABEL_35:

            v37 = [v26 componentsJoinedByString:{@", "}];
            v38 = [NSString stringWithFormat:@"<%p> [%@]", v26, v37];

            goto LABEL_38;
          }
        }
      }

      v38 = [NSString stringWithFormat:@"<%p> (empty)", v132];
    }

    else
    {
      v38 = @"<nil>";
    }

LABEL_38:

    v39 = v38;
    *v190 = 138412290;
    v191 = v39;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "- Sorted sources: %@", v190, 0xCu);

    v23 = log;
  }

  loga = +[NSMutableArray array];
  v40 = +[NSMutableDictionary dictionary];
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  obj = v172[5];
  v112 = [(__CFString *)obj countByEnumeratingWithState:&v163 objects:v189 count:16];
  if (!v112)
  {
    goto LABEL_139;
  }

  v114 = *v164;
  do
  {
    v116 = 0;
    do
    {
      if (*v164 != v114)
      {
        objc_enumerationMutation(obj);
      }

      v120 = *(*(&v163 + 1) + 8 * v116);
      v41 = [v120 allItems];
      v42 = [v41 copy];

      v43 = [v42 count];
      v44 = sub_100039D48();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
      if (!v43)
      {
        if (!v45)
        {
          goto LABEL_65;
        }

        v52 = v120;
        if (v52)
        {
          v53 = objc_opt_class();
          v54 = NSStringFromClass(v53);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_59;
          }

          v55 = [v52 performSelector:"accessibilityIdentifier"];
          v56 = v55;
          if (v55 && ([v55 isEqualToString:v54] & 1) == 0)
          {
            v57 = [NSString stringWithFormat:@"%@<%p, %@>", v54, v52, v56];
          }

          else
          {

LABEL_59:
            v57 = [NSString stringWithFormat:@"%@<%p>", v54, v52];
          }
        }

        else
        {
          v57 = @"<nil>";
        }

        *buf = 138412290;
        v193 = v57;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "- %@: no items", buf, 0xCu);

        goto LABEL_65;
      }

      if (v45)
      {
        v46 = v120;
        if (!v46)
        {
          v51 = @"<nil>";
          goto LABEL_62;
        }

        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        if (objc_opt_respondsToSelector())
        {
          v49 = [v46 performSelector:"accessibilityIdentifier"];
          v50 = v49;
          if (v49 && ([v49 isEqualToString:v48] & 1) == 0)
          {
            v51 = [NSString stringWithFormat:@"%@<%p, %@>", v48, v46, v50];

            goto LABEL_52;
          }
        }

        v51 = [NSString stringWithFormat:@"%@<%p>", v48, v46];
LABEL_52:

LABEL_62:
        *buf = 138412546;
        v193 = v51;
        v194 = 2112;
        v195 = v42;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "- %@: all items = %@", buf, 0x16u);
      }

LABEL_65:

      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v122 = v42;
      v118 = [v122 countByEnumeratingWithState:&v159 objects:v188 count:16];
      if (!v118)
      {
        goto LABEL_134;
      }

      v119 = *v160;
      do
      {
        for (i = 0; i != v118; i = i + 1)
        {
          if (*v160 != v119)
          {
            objc_enumerationMutation(v122);
          }

          v126 = *(*(&v159 + 1) + 8 * i);
          if (v123[2]())
          {
            v111 = sub_100039D48();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_INFO, "- Cancelling gather items partway", buf, 2u);
            }

            (v115[2])();
            (*(v117 + 2))(v117, 0, 0);

            goto LABEL_171;
          }

          v124 = [v126 keys];
          if ([v120 sourceType] == 1)
          {
            v58 = [NSMutableSet setWithObject:v126];
            [loga addObject:v58];
            v157 = 0u;
            v158 = 0u;
            v155 = 0u;
            v156 = 0u;
            v59 = v124;
            v60 = [v59 countByEnumeratingWithState:&v155 objects:v187 count:16];
            if (v60)
            {
              v61 = *v156;
              do
              {
                for (j = 0; j != v60; j = j + 1)
                {
                  if (*v156 != v61)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v63 = *(*(&v155 + 1) + 8 * j);
                  v64 = [v40 objectForKeyedSubscript:v63];
                  v65 = v64 == 0;

                  if (v65)
                  {
                    [v40 setObject:v58 forKeyedSubscript:v63];
                  }
                }

                v60 = [v59 countByEnumeratingWithState:&v155 objects:v187 count:16];
              }

              while (v60);
            }

            goto LABEL_132;
          }

          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v128 = v124;
          v66 = [v128 countByEnumeratingWithState:&v151 objects:v186 count:16];
          if (!v66)
          {

            goto LABEL_121;
          }

          v67 = 0;
          v133 = *v152;
          do
          {
            v68 = 0;
            do
            {
              if (*v152 != v133)
              {
                objc_enumerationMutation(v128);
              }

              v69 = *(*(&v151 + 1) + 8 * v68);
              v70 = sub_100039D48();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                v71 = v126;
                if (v126)
                {
                  v72 = objc_opt_class();
                  v73 = NSStringFromClass(v72);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_93;
                  }

                  v74 = [v71 performSelector:"accessibilityIdentifier"];
                  v75 = v74;
                  if (v74 && ([v74 isEqualToString:v73] & 1) == 0)
                  {
                    v76 = [NSString stringWithFormat:@"%@<%p, %@>", v73, v71, v75];
                  }

                  else
                  {

LABEL_93:
                    v76 = [NSString stringWithFormat:@"%@<%p>", v73, v71];
                  }
                }

                else
                {
                  v76 = @"<nil>";
                }

                v77 = v76;
                *buf = 138412546;
                v193 = v77;
                v194 = 2112;
                v195 = v69;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "PersonalizedItem: %@ is mapped to : %@", buf, 0x16u);
              }

              v78 = [v40 objectForKeyedSubscript:v69];
              v79 = v78;
              if (v78)
              {
                v80 = v78 == v67;
              }

              else
              {
                v80 = 1;
              }

              if (!v80)
              {
                if (v67)
                {
                  [v67 unionSet:v78];
                  v81 = [loga indexOfObject:v79];
                  v82 = [loga indexOfObject:v67];
                  if (v82 >= v81)
                  {
                    [loga removeObjectAtIndex:v82];
                    [loga setObject:v67 atIndexedSubscript:v81];
                  }

                  else
                  {
                    [loga removeObjectAtIndex:v81];
                  }

                  [v40 setObject:v67 forKeyedSubscript:v69];
                  v149 = 0u;
                  v150 = 0u;
                  v147 = 0u;
                  v148 = 0u;
                  v83 = [v40 allKeysForObject:v79];
                  v84 = [v83 countByEnumeratingWithState:&v147 objects:v185 count:16];
                  if (v84)
                  {
                    v85 = *v148;
                    do
                    {
                      for (k = 0; k != v84; k = k + 1)
                      {
                        if (*v148 != v85)
                        {
                          objc_enumerationMutation(v83);
                        }

                        [v40 setObject:v67 forKeyedSubscript:*(*(&v147 + 1) + 8 * k)];
                      }

                      v84 = [v83 countByEnumeratingWithState:&v147 objects:v185 count:16];
                    }

                    while (v84);
                  }
                }

                else
                {
                  v67 = v78;
                }
              }

              v68 = v68 + 1;
            }

            while (v68 != v66);
            v87 = [v128 countByEnumeratingWithState:&v151 objects:v186 count:16];
            v66 = v87;
          }

          while (v87);

          if (v67)
          {
            v58 = v67;
            [v58 addObject:v126];
            v59 = v58;
            goto LABEL_122;
          }

LABEL_121:
          v59 = [NSMutableSet setWithObject:v126];
          [loga addObject:v59];
          v58 = 0;
LABEL_122:
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v88 = v128;
          v89 = [v88 countByEnumeratingWithState:&v143 objects:v184 count:16];
          if (v89)
          {
            v90 = *v144;
            do
            {
              for (m = 0; m != v89; m = m + 1)
              {
                if (*v144 != v90)
                {
                  objc_enumerationMutation(v88);
                }

                v92 = *(*(&v143 + 1) + 8 * m);
                v93 = [v40 objectForKeyedSubscript:v92];
                v94 = v93 == 0;

                if (v94)
                {
                  [v40 setObject:v59 forKeyedSubscript:v92];
                }
              }

              v89 = [v88 countByEnumeratingWithState:&v143 objects:v184 count:16];
            }

            while (v89);
          }

LABEL_132:
        }

        v118 = [v122 countByEnumeratingWithState:&v159 objects:v188 count:16];
      }

      while (v118);
LABEL_134:

      v116 = v116 + 1;
    }

    while (v116 != v112);
    v95 = [(__CFString *)obj countByEnumeratingWithState:&v163 objects:v189 count:16];
    v112 = v95;
  }

  while (v95);
LABEL_139:

  obj = +[NSMutableArray array];
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v122 = loga;
  v129 = [v122 countByEnumeratingWithState:&v139 objects:v183 count:16];
  if (v129)
  {
    v127 = *v140;
    while (2)
    {
      for (n = 0; n != v129; n = n + 1)
      {
        if (*v140 != v127)
        {
          objc_enumerationMutation(v122);
        }

        v96 = *(*(&v139 + 1) + 8 * n);
        if (v123[2]())
        {
          v110 = sub_100039D48();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "- Cancelling gather items partway", buf, 2u);
          }

          (v115[2])();
          (*(v117 + 2))(v117, 0, 0);
          goto LABEL_171;
        }

        v97 = +[NSMutableArray array];
        v98 = +[NSMutableArray array];
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v99 = v96;
        v100 = [v99 countByEnumeratingWithState:&v135 objects:v182 count:16];
        if (v100)
        {
          v101 = *v136;
          do
          {
            for (ii = 0; ii != v100; ii = ii + 1)
            {
              if (*v136 != v101)
              {
                objc_enumerationMutation(v99);
              }

              v103 = *(*(&v135 + 1) + 8 * ii);
              if ((objc_opt_respondsToSelector() & 1) != 0 && ([v103 eventDate], (v104 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                [v98 addObject:v103];
              }

              else
              {
                [v97 addObject:v103];
                v104 = 0;
              }
            }

            v100 = [v99 countByEnumeratingWithState:&v135 objects:v182 count:16];
          }

          while (v100);
        }

        [v98 sortUsingComparator:&stru_101631ED8];
        v105 = [v98 firstObject];
        if (v105)
        {
          [v97 addObject:v105];
        }

        v106 = [[PersonalizedCompoundItem alloc] initWithItems:v97];
        v107 = sub_100039D48();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v193 = v106;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "- - Create compound item: %@", buf, 0xCu);
        }

        [(__CFString *)obj addObject:v106];
      }

      v129 = [v122 countByEnumeratingWithState:&v139 objects:v183 count:16];
      if (v129)
      {
        continue;
      }

      break;
    }
  }

  v108 = sub_100039D48();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v193 = obj;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "- Finalized compound items: %@", buf, 0xCu);
  }

  v109 = [[PersonalizedCompoundItemGroup alloc] initWithItems:obj];
  v181 = v109;
  v122 = [NSArray arrayWithObjects:&v181 count:1];

  (v115[2])();
  (*(v117 + 2))(v117, obj, v122);
LABEL_171:

LABEL_172:
  _Block_object_dispose(&v171, 8);
}

- (BOOL)updateInProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A13A34;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)fetchItemsGroups:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A13AE0;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

- (void)fetchAllItems:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A13CA8;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

- (NSArray)previousItemGroups
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100A1379C;
  v10 = sub_100A137AC;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A13EC8;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)previousItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100A1379C;
  v10 = sub_100A137AC;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A14044;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A14168;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A1420C;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

- (void)setUpdatesPaused:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A142EC;
  block[3] = &unk_1016613E0;
  v6 = a3;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(lock, block);
  if (*(v8 + 24) == 1)
  {
    [(PersonalizedItemManager *)self _recalculateIfNeeded];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)setItemSources:(id)a3
{
  v4 = &__NSArray0__struct;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  lock = self->_lock;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100A14494;
  v11 = &unk_101661A90;
  v12 = v5;
  v13 = self;
  v7 = v5;
  dispatch_sync(lock, &v8);
  [(PersonalizedItemManager *)self _setNeedsRecalculation:v8];
}

- (void)removeItemSource:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A14F30;
  block[3] = &unk_101660778;
  v9 = &v10;
  block[4] = self;
  v6 = v4;
  v8 = v6;
  dispatch_sync(lock, block);
  if (*(v11 + 24) == 1)
  {
    [(PersonalizedItemManager *)self _setNeedsRecalculation];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)addItemSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    lock = self->_lock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A150A4;
    block[3] = &unk_101660778;
    v9 = &v10;
    block[4] = self;
    v8 = v4;
    dispatch_sync(lock, block);
    if ((v11[3] & 1) == 0)
    {
      [(PersonalizedItemManager *)self _setNeedsRecalculation];
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (PersonalizedItemPriorityFunction)_priorityFunction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100A1379C;
  v10 = sub_100A137AC;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A15208;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setPriorityFunction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[PersonalizedItemPriorityFunction defaultPriorityFunctionForCompoundItemResolution];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A15328;
  block[3] = &unk_101660778;
  block[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(lock, block);
  if (*(v11 + 24) == 1)
  {
    [(PersonalizedItemManager *)self _setNeedsRecalculation];
  }

  _Block_object_dispose(&v10, 8);
}

- (PersonalizedItemClientRankingFunction)_clientRankingFunction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100A1379C;
  v10 = sub_100A137AC;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A15460;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setClientRankingFunction:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A1556C;
  block[3] = &unk_101660778;
  block[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(lock, block);
  if (*(v11 + 24) == 1)
  {
    [(PersonalizedItemManager *)self _setNeedsRecalculation];
  }

  _Block_object_dispose(&v10, 8);
}

@end