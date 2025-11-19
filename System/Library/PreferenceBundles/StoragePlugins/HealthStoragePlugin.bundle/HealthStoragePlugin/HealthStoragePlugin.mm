void sub_1404(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _getSectionBy:@"DATA_TYPES_GROUP"];
  [v2 _buildDataTypesSection:v3];

  v4 = *(a1 + 32);
  v5 = [v4 _getSectionBy:@"DATA_SOURCES_GROUP"];
  [v4 _buildDataSourceSection:v5];
}

BOOL sub_149C(id a1)
{
  v1 = +[_HKBehavior sharedBehavior];
  v2 = [v1 healthAppHiddenOrNotInstalled];

  return v2 ^ 1;
}

BOOL sub_14DC(id a1)
{
  v1 = +[_HKBehavior sharedBehavior];
  v2 = [v1 healthAppHiddenOrNotInstalled];

  return v2;
}

void sub_151C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"include-group"];
  v4 = v3;
  if (!v3 || (*(v3 + 16))(v3))
  {
    v5 = *(a1 + 32);
    v6 = [NSMutableDictionary dictionaryWithDictionary:v7];
    [v5 addObject:v6];
  }
}

void sub_169C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"groupSpecifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = *(a1 + 32);
    v7 = [v3 objectForKeyedSubscript:@"groupSpecifier"];
    [v6 addObject:v7];
  }

  v8 = [v3 objectForKeyedSubscript:@"builder"];
  if (v8)
  {
    v9 = [v3 objectForKeyedSubscript:@"next"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = +[NSDate now];
      v11 = [v10 compare:v9];

      if (v11 == &dword_0 + 1)
      {
        v12 = [v3 objectForKeyedSubscript:@"interval"];
        v13 = v12;
        v14 = &off_88C0;
        if (v12)
        {
          v14 = v12;
        }

        v15 = v14;

        [v15 doubleValue];
        v16 = [NSDate dateWithTimeIntervalSinceNow:?];
        [v3 setObject:v16 forKeyedSubscript:@"next"];

        v17 = *(*(a1 + 40) + 32);
        v20 = _NSConcreteStackBlock;
        v21 = 3221225472;
        v22 = sub_1928;
        v23 = &unk_8378;
        v25 = v8;
        v24 = v3;
        v18 = [NSBlockOperation blockOperationWithBlock:&v20];
        [v17 addOperation:{v18, v20, v21, v22, v23}];
      }
    }
  }

  v19 = [v3 objectForKeyedSubscript:@"itemSpecifiers"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 count])
  {
    [*(a1 + 32) addObjectsFromArray:v19];
  }
}

void sub_1DE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1F60;
  v16[3] = &unk_83F0;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v16];

  v6 = [v5 keysSortedByValueUsingComparator:&stru_8430];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  *(v7 + 56) = v6;
  v9 = v6;

  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  *(v10 + 64) = v5;
  v12 = v5;

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  *(v14 + 72) = v13;

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  [*(a1 + 32) _callBuilderCompletionBlock:*(a1 + 40)];
}

void sub_1F60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 sizeInBytesOfSampleInDB] * objc_msgSend(a3, "longLongValue"));
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_21C8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v6];
  v8 = [*(a1 + 40) count];
  if (v8 == [*(a1 + 48) intValue] || !objc_msgSend(v7, "intValue"))
  {
    *a4 = 1;
  }

  else
  {
    v9 = [v6 identifier];
    v10 = [HKQuantityType quantityTypeForIdentifier:v9];

    v11 = [HKDisplayTypeController sharedInstanceForHealthStore:*(*(a1 + 32) + 16)];
    v12 = [v11 displayTypeForObjectType:v10];
    v13 = [v12 localization];
    v14 = [v13 displayName];

    if (v14)
    {
      v15 = [PSSpecifier _hkPreferenceNamed:v14 value:v7];
      v16 = [v6 identifier];
      [v15 setUserInfo:v16];

      [*(a1 + 40) addObject:v15];
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
      {
        sub_358C(v17, v6);
      }
    }
  }
}

void sub_2504(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:?];
  if ([v7 intValue] && objc_msgSend(*(a1 + 40), "intValue") != a3)
  {
    v8 = *(a1 + 32);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v13 name];
    v11 = [v9 localizedStringForKey:v10 value:&stru_8778 table:@"Localizable"];
    v12 = [PSSpecifier _hkPreferenceNamed:v11 value:v7];

    [v12 setUserInfo:v13];
    [*(a1 + 48) addObject:v12];
  }

  else
  {
    *a4 = 1;
  }
}

void sub_2808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2828(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_28F8;
  v9[3] = &unk_8590;
  v10 = v3;
  v11 = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  [v5 addOperationWithBlock:v9];
}

void sub_28F8(uint64_t a1)
{
  v2 = [HKSourceQuery alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_29F4;
  v6[3] = &unk_8568;
  v9 = *(a1 + 56);
  v5 = *(a1 + 32);
  v3 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  v4 = [v2 initWithSampleType:v3 samplePredicate:0 completionHandler:v6];
  [*(*(a1 + 40) + 16) executeQuery:v4];
}

void sub_29F4(uint64_t a1, uint64_t a2, void *a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2AB4;
  v9[3] = &unk_8540;
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v6 = *(&v8 + 1);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [a3 enumerateObjectsUsingBlock:v9];
}

void sub_2AB4(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 40));
  ++*(*(*(a1 + 56) + 8) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v4 = *(*(a1 + 32) + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2BD0;
  v8[3] = &unk_8518;
  v9 = *(a1 + 40);
  v10 = v3;
  v11 = *(a1 + 32);
  v7 = *(a1 + 48);
  v5 = v7;
  v12 = v7;
  v6 = v3;
  [v4 addOperationWithBlock:v8];
}

void sub_2BD0(uint64_t a1)
{
  v2 = [HKSampleCountQuery alloc];
  v3 = *(a1 + 32);
  v4 = [HKQuery predicateForObjectsFromSource:*(a1 + 40)];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2CFC;
  v10[3] = &unk_84F0;
  v11 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v8.i64[0];
  v12 = vextq_s8(v8, v8, 8uLL);
  v9 = *(a1 + 56);
  v6 = v9;
  v13 = v9;
  v7 = [v2 initWithSampleType:v3 predicate:v4 resultsHandler:v10];

  [*(*(a1 + 48) + 16) executeQuery:v7];
}

void sub_2CFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &off_88E8;
  }

  v16 = v6;

  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) sizeInBytesOfSampleInDB] * objc_msgSend(v16, "longLongValue"));
  os_unfair_lock_lock((*(a1 + 40) + 40));
  v8 = [*(*(a1 + 40) + 72) objectForKeyedSubscript:*(a1 + 48)];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &off_88E8;
  }

  v11 = v10;

  v12 = [v11 longLongValue];
  v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", &v12[[v7 longLongValue]]);
  [*(*(a1 + 40) + 72) setObject:v13 forKeyedSubscript:*(a1 + 48)];

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 24) - 1;
  *(v14 + 24) = v15;
  os_unfair_lock_unlock((*(a1 + 40) + 40));
  if (!v15)
  {
    [*(a1 + 40) _assembleBySourceSection:*(a1 + 56)];
  }
}

void sub_358C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_0, v3, OS_LOG_TYPE_FAULT, "HealthStoragePlugin: missing displayName for %@", &v5, 0xCu);
}