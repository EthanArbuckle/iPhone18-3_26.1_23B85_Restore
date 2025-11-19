id *sub_1410(id *result)
{
  if ((*(result[4] + 240) & 1) != 1)
  {
    return [result[4] reloadSpecifiers];
  }

  *(result[4] + 240) = 0;
  return result;
}

uint64_t sub_1920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void sub_2030(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = &_dispatch_main_q;
  v6 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v6);

  v3 = [location[0] copy];
  v4 = (a1[4] + 144);
  v5 = *v4;
  *v4 = v3;

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_2798(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = [location[0] hasPrefix:*(a1[4] + 232)];
  }

  *a3 = v6 & 1;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

uint64_t sub_2870(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = [location[0] hasPrefix:*(a1[4] + 232)];
  }

  *a3 = v6 & 1;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

NSComparisonResult sub_2948(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [location[0] accountType];
    v13[0] = [v4 identifier];

    v5 = [v14 accountType];
    v12 = [v5 identifier];

    v11 = [a1[4] indexOfObject:v13[0]];
    v10 = [a1[4] indexOfObject:v12];
    v7 = [NSNumber numberWithInteger:v11];
    v6 = [NSNumber numberWithInteger:v10];
    v16 = [(NSNumber *)v7 compare:?];

    objc_storeStrong(&v12, 0);
    objc_storeStrong(v13, 0);
  }

  else
  {
    v16 = NSOrderedSame;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v16;
}

uint64_t sub_2B78(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 32);
    return (*(*(result + 40) + 16))();
  }

  return result;
}

uint64_t sub_2D4C(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_2DA0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[1] = a1;
  if ([a1[4] _isAccountList:location[0] identicalToAccountList:*(a1[4] + 18)])
  {
    v14[0] = _ACUILogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_2D4C(v16, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 358);
      _os_log_impl(&dword_0, v14[0], v13, "%s (%d) ACUISettingsController will ignore monitored account delegate call because the account list has not changed.", v16, 0x12u);
    }

    objc_storeStrong(v14, 0);
    v12 = 1;
  }

  else
  {
    objc_storeStrong(a1[4] + 18, location[0]);
    v11 = [*(a1[4] + 19) copy];
    v2 = a1[4];
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_3004;
    v8 = &unk_C3F0;
    v9 = v11;
    v10 = a1[4];
    [v2 _specifiersForAccountsGroupWithCompletion:&v4];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  objc_storeStrong(location, 0);
}

void sub_3004(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23[1] = a1;
  if ([*(a1 + 32) count])
  {
    if ([location[0] count])
    {
      oslog = _ACUILogSystem();
      v18 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_2D4C(v29, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 374);
        _os_log_debug_impl(&dword_0, oslog, v18, "%s (%d) ACUISettingsController _accountStoreDidChange: BEGIN UPDATES!", v29, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
      [*(a1 + 40) beginUpdates];
      v17 = _ACUILogSystem();
      v16 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1920(v28, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 377, *(a1 + 32));
        _os_log_debug_impl(&dword_0, v17, v16, "%s (%d) ACUISettingsController _accountStoreDidChange: removing specifiers %@", v28, 0x1Cu);
      }

      objc_storeStrong(&v17, 0);
      memset(__b, 0, sizeof(__b));
      obj = [*(a1 + 32) reverseObjectEnumerator];
      v9 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
      if (v9)
      {
        v5 = *__b[2];
        v6 = 0;
        v7 = v9;
        while (1)
        {
          v4 = v6;
          if (*__b[2] != v5)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(__b[1] + 8 * v6);
          v2 = *(a1 + 40);
          v3 = [v15 identifier];
          [v2 removeSpecifierID:?];

          ++v6;
          if (v4 + 1 >= v7)
          {
            v6 = 0;
            v7 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
            if (!v7)
            {
              break;
            }
          }
        }
      }

      v13 = _ACUILogSystem();
      v12 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_3630(v26, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 382, location[0], *(*(a1 + 40) + 160));
        _os_log_debug_impl(&dword_0, v13, v12, "%s (%d) ACUISettingsController _accountStoreDidChange: inserting specifiers %@ after specifier %@", v26, 0x26u);
      }

      objc_storeStrong(&v13, 0);
      [*(a1 + 40) insertContiguousSpecifiers:location[0] afterSpecifier:*(*(a1 + 40) + 160)];
      v11 = _ACUILogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_2D4C(v25, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 385);
        _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%s (%d) ACUISettingsController _accountStoreDidChange: END UPDATES!", v25, 0x12u);
      }

      objc_storeStrong(&v11, 0);
      [*(a1 + 40) endUpdates];
    }

    else
    {
      v21 = _ACUILogSystem();
      v20 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1920(v30, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 370, *(a1 + 32));
        _os_log_debug_impl(&dword_0, v21, v20, "%s (%d) ACUISettingsController _accountStoreDidChange: removing specifiers %@", v30, 0x1Cu);
      }

      objc_storeStrong(&v21, 0);
      [*(a1 + 40) removeContiguousSpecifiers:*(a1 + 32) animated:0];
    }
  }

  else
  {
    v23[0] = _ACUILogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23[0], OS_LOG_TYPE_DEBUG))
    {
      sub_3630(v31, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 367, location[0], *(*(a1 + 40) + 160));
      _os_log_debug_impl(&dword_0, v23[0], type, "%s (%d) ACUISettingsController _accountStoreDidChange: inserting specifiers %@ after specifier %@", v31, 0x26u);
    }

    objc_storeStrong(v23, 0);
    [*(a1 + 40) insertContiguousSpecifiers:location[0] afterSpecifier:*(*(a1 + 40) + 160)];
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_3630(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

void sub_48A4(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = &_dispatch_main_q;
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  if (*(a1 + 56))
  {
    [*(a1 + 32) insertContiguousSpecifiers:location[0] afterSpecifier:*(a1 + 40)];
    [*(a1 + 32) removeSpecifier:*(a1 + 40)];
    if (*(*(a1 + 32) + 248))
    {
      dispatch_group_leave(*(*(a1 + 32) + 248));
      objc_storeStrong((*(a1 + 32) + 248), 0);
    }
  }

  else
  {
    [*(a1 + 48) addObjectsFromArray:location[0]];
  }

  objc_storeStrong(location, 0);
}

void sub_4C30(id a1)
{
  if (_os_feature_enabled_impl())
  {
    byte_10B68 = 1;
  }
}

void sub_4C84(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v51[1] = a1;
  v51[0] = objc_alloc_init(NSMutableArray);
  v50 = objc_alloc_init(NSMutableDictionary);
  [*(a1 + 32) _filterAccounts:location[0] toTopLevel:v51[0] grouped:v50 ignoringGroups:0];
  v49 = objc_alloc_init(NSMutableArray);
  memset(__b, 0, sizeof(__b));
  obj = v51[0];
  v31 = [obj countByEnumeratingWithState:__b objects:v55 count:16];
  if (v31)
  {
    v26 = *__b[2];
    v27 = 0;
    v28 = v31;
    while (1)
    {
      v25 = v27;
      if (*__b[2] != v26)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(__b[1] + 8 * v27);
      v46 = [*(a1 + 32) _specifierForAccount:v48];
      if (v46)
      {
        if ((byte_10B68 & 1) == 0)
        {
          v22 = [v48 accountType];
          v23 = [v22 identifier];
          LOBYTE(v24) = 0;
          if ([v23 isEqualToString:ACAccountTypeIdentifierGmail])
          {
            v24 = [v48 isAuthenticated] ^ 1;
          }

          v45 = v24 & 1;
          v19 = [v48 accountType];
          v20 = [v19 identifier];
          v2 = [v20 isEqualToString:ACAccountTypeIdentifierExchange];
          v42 = 0;
          v40 = 0;
          v21 = 1;
          if ((v2 & 1) == 0)
          {
            v43 = [v48 accountType];
            v42 = 1;
            v41 = [v43 identifier];
            v40 = 1;
            v21 = [v41 isEqualToString:ACAccountTypeIdentifierHotmail];
          }

          if (v40)
          {
          }

          if (v42)
          {
          }

          v44 = v21 & 1;
          v17 = v46;
          v18 = 1;
          if ((*(a1 + 48) & 1) == 0)
          {
            v18 = 1;
            if ((v45 & 1) == 0)
            {
              v18 = v44;
            }
          }

          v16 = [NSNumber numberWithInt:v18 & 1];
          [v17 setProperty:? forKey:?];
        }

        v13 = [v48 accountType];
        v14 = [v13 identifier];
        v3 = [v14 isEqualToString:ACAccountTypeIdentifierAppleAccount];
        v38 = 0;
        v15 = 0;
        if (v3)
        {
          v39 = [v48 objectForKeyedSubscript:@"primaryAccount"];
          v38 = 1;
          v15 = [v39 BOOLValue];
        }

        if (v38)
        {
        }

        if (v15)
        {
          oslog = _ACUILogSystem();
          type = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            log = oslog;
            sub_1920(v54, "[ACUISettingsController _specifiersForAccountsGroupWithCompletion:]_block_invoke_2", 557, v48);
            _os_log_impl(&dword_0, log, type, "%s (%d) Hit our primary account, lets ensure this is at the top - %@", v54, 0x1Cu);
          }

          objc_storeStrong(&oslog, 0);
          [v49 insertObject:v46 atIndex:0];
        }

        else
        {
          [v49 addObject:v46];
        }
      }

      objc_storeStrong(&v46, 0);
      ++v27;
      if (v25 + 1 >= v28)
      {
        v27 = 0;
        v28 = [obj countByEnumeratingWithState:__b objects:v55 count:16];
        if (!v28)
        {
          break;
        }
      }
    }
  }

  memset(v34, 0, sizeof(v34));
  v10 = [v50 allKeys];
  v11 = [v10 countByEnumeratingWithState:v34 objects:v53 count:16];
  if (v11)
  {
    v7 = *v34[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*v34[2] != v7)
      {
        objc_enumerationMutation(v10);
      }

      v35 = *(v34[1] + 8 * v8);
      v33 = [v50 objectForKey:v35];
      v32 = [*(a1 + 32) _specifierForCollectionCellLinkingToAccounts:v33 withGroupIdentifier:v35 underParentGroup:0];
      if (v32)
      {
        if ((byte_10B68 & 1) == 0)
        {
          v4 = v32;
          v5 = [NSNumber numberWithBool:*(a1 + 48) & 1];
          [v4 setProperty:? forKey:?];
        }

        [v49 addObject:v32];
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v10 countByEnumeratingWithState:v34 objects:v53 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong((*(a1 + 32) + 152), v49);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(v51, 0);
  objc_storeStrong(location, 0);
}

void sub_660C(id a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = @"/System/Library/PreferenceBundles/ScheduleSettings.bundle";
  v1 = [NSBundle bundleWithPath:v3[0]];
  v2 = qword_10B70;
  qword_10B70 = v1;

  objc_storeStrong(v3, 0);
}

void sub_69F4(id *a1)
{
  v16[2] = a1;
  v16[1] = a1;
  v5 = a1[4];
  v7 = [v5 _settingsPluginManager];
  v6 = [v7 contactsSettingsPlugin];
  v16[0] = [v5 _specifiersForSettingsProvidedByPlugin:?];

  v8 = a1[4];
  v10 = [v8 _settingsPluginManager];
  v9 = [v10 calendarSettingsPlugin];
  v15 = [v8 _specifiersForSettingsProvidedByPlugin:?];

  v1 = [v16[0] arrayByAddingObjectsFromArray:v15];
  v2 = (a1[4] + 184);
  v3 = *v2;
  *v2 = v1;

  v4 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_6C40;
  v13[3] = &unk_C2C0;
  v14 = a1[4];
  dispatch_async(queue, v13);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
}

void sub_6C40(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _ACUILogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1920(v30, "[ACUISettingsController _fetchLazyLoadedSpecifiers]_block_invoke_2", 759, *(a1[4].isa + 22));
    _os_log_debug_impl(&dword_0, oslog[0], type, "%s (%d) ACUISettingsController is removing loading-in-progress specifiers: %@", v30, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa removeContiguousSpecifiers:*(a1[4].isa + 22)];
  v24 = +[NSMutableArray array];
  location = [*(a1[4].isa + OBJC_IVAR___PSListController__specifiers) lastObject];
  memset(__b, 0, sizeof(__b));
  obj = *(a1[4].isa + 23);
  v14 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v11);
      v1 = *&v22[OBJC_IVAR___PSSpecifier_cellType];
      v19 = 0;
      v8 = 0;
      if (!v1)
      {
        v7 = v22;
        v20 = [*(a1[4].isa + 23) objectAtIndexedSubscript:0];
        v19 = 1;
        v8 = v7 != v20;
      }

      if (v19)
      {
      }

      if (v8)
      {
        v18 = _ACUILogSystem();
        v17 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v6 = v18;
          sub_3630(v28, "[ACUISettingsController _fetchLazyLoadedSpecifiers]_block_invoke", 767, v24, location);
          _os_log_debug_impl(&dword_0, v6, v17, "%s (%d) ACUISettingsController is inserting specifiers: %@ after specifier: %@", v28, 0x26u);
        }

        objc_storeStrong(&v18, 0);
        [(objc_class *)a1[4].isa insertContiguousSpecifiers:v24 afterSpecifier:location animated:0];
        v2 = [v24 lastObject];
        v3 = location;
        location = v2;

        [v24 removeAllObjects];
      }

      [v24 addObject:v22];
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  if ([v24 count])
  {
    v16 = _ACUILogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_3630(v27, "[ACUISettingsController _fetchLazyLoadedSpecifiers]_block_invoke", 777, v24, location);
      _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%s (%d) ACUISettingsController is inserting specifiers: %@ after specifier: %@", v27, 0x26u);
    }

    objc_storeStrong(&v16, 0);
    [(objc_class *)a1[4].isa insertContiguousSpecifiers:v24 afterSpecifier:location animated:0];
  }

  [*(a1[4].isa + OBJC_IVAR___PSListController__table) contentOffset];
  [*(a1[4].isa + OBJC_IVAR___PSListController__table) setContentOffset:0 animated:{v4, v5}];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v24, 0);
}