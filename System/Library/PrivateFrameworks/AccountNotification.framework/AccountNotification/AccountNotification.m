void sub_100000F34(id a1)
{
  qword_100011418 = objc_alloc_init(ANNotificationStore);

  _objc_release_x1();
}

void sub_1000012A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000012BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000012D4(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v16 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v16];
  v5 = v16;
  if (v5)
  {
    v6 = _ANLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100004F9C();
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:{@"accountTypeID", v12}];
          [*(*(a1[6] + 8) + 40) addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000015D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000015F0(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v19 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v19];
  v5 = v19;
  if (v5)
  {
    v6 = _ANLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005018();
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [ANAccountNotification alloc];
        v14 = [v13 initWithManagedObject:{v12, v15}];
        if (v14)
        {
          [*(*(a1[6] + 8) + 40) addObject:v14];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }
}

void sub_1000018B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000018C8(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"AccountNotification"];
  [v2 setFetchLimit:1];
  v3 = [*(a1 + 32) identifier];
  v4 = [NSPredicate predicateWithFormat:@"identifier = %@", v3];
  [v2 setPredicate:v4];

  v5 = [*(*(a1 + 40) + 8) countForFetchRequest:v2 error:0];
  v6 = _ANLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005110((a1 + 32), v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[ANNotificationStore saveNotification:]_block_invoke";
      v14 = 1024;
      v15 = 164;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) Adding new notification to database.", buf, 0x12u);
    }

    v7 = [NSEntityDescription insertNewObjectForEntityForName:@"AccountNotification" inManagedObjectContext:*(*(a1 + 40) + 8)];
    [v7 takeValuesFromAccountNotification:*(a1 + 32)];
    v8 = [*(a1 + 32) activateAction];
    if (v8)
    {
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"NotificationAction" inManagedObjectContext:*(*(a1 + 40) + 8)];
      [v9 takeValuesFromNotificationAction:v8];
      [v9 setNotificationToActivate:v7];
      [v7 setActivateAction:v9];
    }

    v10 = [*(a1 + 32) dismissAction];
    if (v10)
    {
      v11 = [NSEntityDescription insertNewObjectForEntityForName:@"NotificationAction" inManagedObjectContext:*(*(a1 + 40) + 8)];
      [v11 takeValuesFromNotificationAction:v10];
      [v11 setNotificationToDismiss:v7];
      [v7 setDismissAction:v11];
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _unsafe_commitChangesInManagedObjectContext];
  }
}

void sub_100001F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_100001F7C(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v7 = 0;
  v4 = [v3 countForFetchRequest:v2 error:&v7];
  v5 = v7;
  *(*(a1[6] + 8) + 24) = v4;
  if (v5)
  {
    v6 = _ANLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000051BC();
    }
  }
}

void sub_100002010(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v16 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v16];
  v5 = v16;
  if (v5)
  {
    v6 = _ANLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005238();
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(a1 + 32) + 8) deleteObject:{*(*(&v12 + 1) + 8 * i), v12}];
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _unsafe_commitChangesInManagedObjectContext];
  }
}

void sub_100002350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002370(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v16 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v16];
  v5 = v16;
  if (v5)
  {
    v6 = _ANLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000052B4();
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(a1 + 32) + 8) deleteObject:{*(*(&v12 + 1) + 8 * v11), v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _unsafe_commitChangesInManagedObjectContext];
}

void sub_1000026CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000026EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v10 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v10];
  v5 = v10;
  v6 = [v4 firstObject];

  if (v5)
  {
    v7 = _ANLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005330();
    }
  }

  else if (v6)
  {
    [*(*(a1 + 32) + 8) deleteObject:v6];
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _unsafe_commitChangesInManagedObjectContext];
  }

  else
  {
    v8 = _ANLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 136315650;
      v12 = "[ANNotificationStore removeNotificationWithIdentifier:]_block_invoke";
      v13 = 1024;
      v14 = 283;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Notification with ID %@ seems to be gone already.", buf, 0x1Cu);
    }
  }
}

void sub_100002B78(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v1 pathForResource:@"AccountNotificationStore" ofType:@"momd"];

  v2 = [NSURL fileURLWithPath:v5];
  v3 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v2];
  v4 = qword_100011428;
  qword_100011428 = v3;
}

void sub_100002D38(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_100003040(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _ANLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000055D0(v3, v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003550(uint64_t a1, void *a2)
{
  v3 = [a2 ac_mapNullable:&stru_10000C438];
  (*(*(a1 + 32) + 16))();
}

id sub_1000035B8(id a1, UNNotification *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(UNNotification *)a2 request:a3];
  v5 = [v4 content];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"ANAccountNotificationDictionaryRepresentationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[ANAccountNotification alloc] initWithDictionaryRepresentation:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100003B4C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_100003BAC(id a1)
{
  qword_100011438 = objc_alloc_init(ANDaemon);

  _objc_release_x1();
}

void sub_100003FB8(uint64_t a1)
{
  v2 = _ANLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100005978(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100004004(uint64_t a1)
{
  v2 = _ANLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "[ANDaemon listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = 92;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s (%d) Connection from %@ was invalidated.", &v4, 0x1Cu);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = _ANLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "main";
    v8 = 1024;
    v9 = 17;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s (%d) and is starting up...", &v6, 0x12u);
  }

  v2 = +[ANDaemon sharedInstance];
  [v2 start];

  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  v4 = _ANLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "main";
    v8 = 1024;
    v9 = 22;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) and is shutting down...", &v6, 0x12u);
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_1000044C4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [NSPredicate predicateWithFormat:@"eventIdentifier == %@", v3];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = _ANLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    *buf = 136315906;
    v11 = "[ANNotificationController removeNotificationsWithEventID:completion:]_block_invoke";
    v12 = 1024;
    v13 = 61;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) Notifications for %@: %@", buf, 0x26u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004660;
  v9[3] = &unk_10000C4A8;
  v9[4] = a1[5];
  [v6 enumerateObjectsUsingBlock:v9];
  (*(a1[6] + 16))();
}

void sub_100004660(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [a2 identifier];
  [v2 removeNotificationWithIdentifier:v3];
}

void sub_100004814(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackMachService];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) callbackMachService];
    v7 = [v3 _clientSideNotifierWithMachServiceName:v4];

    [v7 notificationWasActivated:*(a1 + 32)];
LABEL_5:

    return;
  }

  v5 = [*(a1 + 32) activateAction];

  if (v5)
  {
    v7 = [*(a1 + 32) activateAction];
    [v7 perform];
    goto LABEL_5;
  }

  v6 = _ANLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[ANNotificationController notificationProvider:didActivateNotification:]_block_invoke";
    v10 = 1024;
    v11 = 84;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) No value for callbackMachService or activateAction. Ignoring bulletin's activation.", buf, 0x12u);
  }
}

void sub_100004AEC(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackMachService];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) callbackMachService];
    v7 = [v3 _clientSideNotifierWithMachServiceName:v4];

    [v7 notificationWasDismissed:*(a1 + 32)];
LABEL_5:

    return;
  }

  v5 = [*(a1 + 32) dismissAction];

  if (v5)
  {
    v7 = [*(a1 + 32) dismissAction];
    [v7 perform];
    goto LABEL_5;
  }

  v6 = _ANLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[ANNotificationController notificationProvider:didDismissNotification:]_block_invoke";
    v10 = 1024;
    v11 = 99;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) No value for callbackMachService or dismissAction. Ignoring bulletin's dismissal.", buf, 0x12u);
  }
}

void sub_100004E7C(uint64_t a1)
{
  v2 = _ANLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100005A0C(a1);
  }
}

void sub_100004EC8(uint64_t a1)
{
  v2 = _ANLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100005AA0(a1);
  }
}

void sub_100004F14(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _ANLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100005B34(v2, v3);
  }
}

void sub_100004F9C()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) Core Data fetch failed with error: %@", v2, v3, v4, v5, 2u);
}

void sub_100005018()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) Core Data fetch failed with error: %@", v2, v3, v4, v5, 2u);
}

void sub_100005094()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) Will not save notification lacking ID or account type: %@", v2, v3, v4, v5, 2u);
}

void sub_100005110(id *a1, NSObject *a2)
{
  v3 = [*a1 identifier];
  v4[0] = 136315650;
  sub_100002D28();
  sub_100002D14();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s (%d) Duplicate notification found in DB for identifier: %@", v4, 0x1Cu);
}

void sub_1000051BC()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) MOC fetch failed! Error: %@", v2, v3, v4, v5, 2u);
}

void sub_100005238()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) MOC fetch failed! Error: %@", v2, v3, v4, v5, 2u);
}

void sub_1000052B4()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) MOC fetch failed! Error: %@", v2, v3, v4, v5, 2u);
}

void sub_100005330()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) MOC fetch failed! Error: %@", v2, v3, v4, v5, 2u);
}

void sub_1000053AC()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) Core Data save failed! Error: %@", v2, v3, v4, v5, 2u);
}

void sub_100005428()
{
  v1[0] = 136315394;
  sub_100002D28();
  *(&v1[3] + 2) = 302;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s (%d) Core Data save succeeded!", v1, 0x12u);
}

void sub_1000054B4()
{
  sub_100002D28();
  sub_100002D14();
  sub_100002D38(&_mh_execute_header, v0, v1, "%s (%d) BIG PROBLEM: Failed to add SQL store to coordinator! Error: %@", v2, v3, v4, v5, 2u);
}

void sub_100005530()
{
  v1[0] = 136315394;
  sub_100002D28();
  *(&v1[3] + 2) = 316;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s (%d) BIG PROBLEM: Failed to create NSPersistentStoreCoordinator! Good luck everyone.", v1, 0x12u);
}

void sub_1000055D0(uint64_t a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "[ANNotificationProvider postNotification:completion:]_block_invoke";
  v4 = 1024;
  v5 = 75;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s (%d) Error posting notification %@", &v2, 0x1Cu);
}

void sub_100005A0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 136315650;
  v4 = "[ANNotificationController _clientSideNotifierWithMachServiceName:]_block_invoke";
  v5 = 1024;
  sub_100004F74();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s (%d) XPC connection to %@ was interrupted!", &v3, 0x1Cu);
}

void sub_100005AA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 136315650;
  v4 = "[ANNotificationController _clientSideNotifierWithMachServiceName:]_block_invoke";
  v5 = 1024;
  sub_100004F74();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s (%d) XPC connection to %@ was invalidated.", &v3, 0x1Cu);
}

void sub_100005B34(uint64_t a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "[ANNotificationController _clientSideNotifierWithMachServiceName:]_block_invoke";
  v4 = 1024;
  v5 = 125;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s (%d) XPC error encounterd while calling back to ANAccountNotifier: %@", &v2, 0x1Cu);
}