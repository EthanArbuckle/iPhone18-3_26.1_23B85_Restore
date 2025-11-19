unint64_t sub_1740()
{
  result = qword_10D08;
  if (!qword_10D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10D08);
  }

  return result;
}

uint64_t sub_17B0()
{
  v0 = *(*(sub_6998() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_6978();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B58(0, &qword_10D20, &off_C240);
  sub_6988();
  sub_6968();
  sub_69A8();
  sub_1B58(0, &qword_10D28, NSBundle_ptr);
  if (!sub_69E8())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  v7 = sub_69B8();
  v9 = v8;
  v11 = v10;
  sub_1B00();
  sub_69C8();
  sub_1BA0(v7, v9, v11 & 1);

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1A10()
{
  sub_1AB8(&qword_10D10, &qword_84B0);
  sub_6978();
  sub_1B00();
  swift_getOpaqueTypeConformance2();
  return sub_69D8();
}

uint64_t sub_1AB8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B00()
{
  result = qword_10D18;
  if (!qword_10D18)
  {
    sub_6978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10D18);
  }

  return result;
}

uint64_t sub_1B58(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _swift_release();
  }

  else
  {
  }
}

unint64_t sub_1BC4()
{
  result = qword_10D30;
  if (!qword_10D30)
  {
    sub_1C28(&qword_10D38, qword_84B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10D30);
  }

  return result;
}

uint64_t sub_1C28(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_2028(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10E40;
  qword_10E40 = v1;

  [qword_10E40 setDateStyle:2];
  v3 = qword_10E40;

  [v3 setTimeStyle:0];
}

void sub_24D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_24FC(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setCachedCurrentUser:v4];
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void sub_34E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "CLSClassKitSettingsController failed to load user progress activities. Error: %@", &v8, 0xCu);
    }
  }

  [*(a1 + 32) setUserProgressActivities:v5];
}

void sub_35C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "CLSClassKitSettingsController failed to fetch associated contexts. Error: %@", buf, 0xCu);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = [*(a1 + 32) objectIDToContextMap];
        v15 = [v13 objectID];
        [v14 setObject:v13 forKeyedSubscript:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

void sub_3770(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "CLSClassKitSettingsController failed to fetch associated assigned items. Error: %@", buf, 0xCu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v13 parentObjectID];
        [v14 addObject:v15];

        v16 = [*(a1 + 40) objectIDToAssignedItemMap];
        v17 = [v13 objectID];
        [v16 setObject:v13 forKeyedSubscript:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

void sub_393C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "CLSClassKitSettingsController failed to fetch associated attachments. Error: %@", buf, 0xCu);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = [*(a1 + 32) objectIDToAttachmentMap];
        v15 = [v13 objectID];
        [v14 setObject:v13 forKeyedSubscript:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

void sub_4768(void *a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4808;
    block[3] = &unk_C6A0;
    block[4] = a1[4];
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v3 = a1[6];
    v4 = PSValueKey;
    v5 = a1[5];

    [v5 setProperty:v3 forKey:v4];
  }
}

void sub_4808(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 allowBrowseToggleSpecifier];
  [v1 reloadSpecifier:v2];
}

void sub_49B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_49D0(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = a2;
    *(*(*(a1 + 48) + 8) + 24) = [v4 BOOLValue];
    [*(a1 + 32) setProperty:v4 forKey:PSValueKey];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_563C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_5670(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = result;
    v5 = [a2 firstObject];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return _objc_release_x1();
  }

  return result;
}

void *sub_5AE8(void *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(*(result[4] + 8) + 40) addObjectsFromArray:a2];
  }

  return result;
}

void *sub_5B04(void *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(*(result[4] + 8) + 40) addObjectsFromArray:a2];
  }

  return result;
}

void *sub_5B20(void *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(*(result[4] + 8) + 40) addObjectsFromArray:a2];
  }

  return result;
}

void sub_5C14(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_10E50;
  qword_10E50 = v1;

  v3 = qword_10E50;

  [v3 setNumberStyle:3];
}

void sub_5CB8(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_10E60;
  qword_10E60 = v1;

  [qword_10E60 setUnitsStyle:3];
  v3 = qword_10E60;

  [v3 setAllowedUnits:224];
}