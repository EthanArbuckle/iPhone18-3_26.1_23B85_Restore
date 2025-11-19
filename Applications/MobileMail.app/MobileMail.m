uint64_t start(int a1, char **a2)
{
  if ((EFDeviceUnlockedSinceBoot() & 1) == 0)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10048C8E4(v8);
    }

    exit(0);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"UnboundedMFData"];

  if (v6)
  {
    [MFData setDefaultMappingThresholdInBytes:-1];
  }

  objc_autoreleasePoolPop(v4);
  [EMDaemonInterface setCachedMailAppIsInstalled:1];
  UIApplicationMain(a1, a2, @"MailAppController", @"MailAppController");
  return 0;
}

void sub_100005198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100005334(id a1)
{
  v1 = objc_alloc_init(MFDiskFreeSpaceMonitor);
  v2 = qword_1006DD4E0;
  qword_1006DD4E0 = v1;
}

void sub_100005680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000056A8(void *a1)
{
  if (a1)
  {
    v2[0] = MFMailAccountDescription;
    v2[1] = EMUserDefaultLoadRemoteContentKey;
    v2[2] = IncludeAttachmentRepliesKey;
    v2[3] = EMUserDefaultLinesOfPreviewKey;
    v2[4] = EMUserDefaultHideMessageListAvatar;
    v2[5] = DisableQuoteIncrease;
    v2[6] = ShowToCCIndicatorsKey;
    v2[7] = ShowToCCIndicatorsKey;
    v2[8] = DisableThreadingKey;
    v2[9] = RightSwipeActionKey;
    v2[10] = LeftSwipeActionKey;
    v2[11] = ConversationViewShowsNewestAtTop;
    v2[12] = ConversationViewExcludesRelatedMessagesKey;
    v2[13] = CollapseReadConversationMessagesKey;
    v2[14] = EMUserDefaultAlwaysBCCSelf;
    v2[15] = EMUserDefaultBlockedSenderEnabled;
    v2[16] = EMUserDefaultBlockedSenderAction;
    v2[17] = EMUserDefaultMutedThreadActionKey;
    v2[18] = NetworkSimulationBitfieldKey;
    a1 = [NSArray arrayWithObjects:v2 count:19];
  }

  return a1;
}

void sub_1000058BC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DCFA8;
  qword_1006DCFA8 = v1;
}

void sub_100005DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v23 = v16;
  objc_destroyWeak((v22 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100005EEC()
{
  type metadata accessor for AppManager();
  type metadata accessor for MailAppIntentConfigurator();
  ConversationNavigationBarItemsManager.__allocating_init()();
  sub_10000606C();
  return static AppManager.sceneConfigurator.setter();
}

id sub_100005FEC()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for MailAppIntentConfigurator();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

unint64_t sub_10000606C()
{
  v2 = qword_1006D9B08;
  if (!qword_1006D9B08)
  {
    type metadata accessor for MailAppIntentConfigurator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B08);
    return WitnessTable;
  }

  return v2;
}

void sub_100006B10(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD3B0;
  qword_1006DD3B0 = v1;
}

id sub_100006CB8(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 uniqueID];

  return v2;
}

void sub_100006E64(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  [*(a1 + 120) lock];
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  v3 = *(a1 + 104);
  *(a1 + 10) = [v3 isDisplayingMultipleAccounts] ^ 1;

  v4 = objc_alloc_init(NSMutableArray);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;

  v47 = [[NSDictionary alloc] initWithContentsOfFile:*(a1 + 32)];
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v49 = [[NSMutableString alloc] initWithString:@"_reload"];
  if (!v47)
  {
    v8 = sub_100007718();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = __error();
      v17 = strerror(*v16);
      sub_100487C90(v17, buf, v15, v8);
    }

    v7 = 0;
    goto LABEL_12;
  }

  v6 = [v47 objectForKeyedSubscript:@"version"];

  if (!v6)
  {
    v18 = 0;
    goto LABEL_15;
  }

  v7 = [v47 objectForKeyedSubscript:@"collections"];
  if (!*(a1 + 24))
  {
    v8 = [v47 objectForKeyedSubscript:@"lastSelectedItem"];
    if (v8)
    {
      v9 = [FavoriteItem itemFromDictionary:v8];
      v10 = *(a1 + 24);
      *(a1 + 24) = v9;

      v11 = sub_100007718();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = objc_opt_class();
        *buf = 134218242;
        v71 = v12;
        v72 = 2112;
        v73 = v13;
        v14 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Loaded _lastSelectedItem : <%p> %@", buf, 0x16u);
      }
    }

LABEL_12:
  }

  v18 = v7;
LABEL_15:
  v48 = v18;
  if ([v18 count])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v48;
    v19 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v19)
    {
      v20 = *v61;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v61 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v60 + 1) + 8 * i);
          v23 = [[FavoritesCollection alloc] initWithDictionary:v22];
          v24 = [v22 objectForKeyedSubscript:@"expandedItems"];
          [(FavoritesCollection *)v23 addExpandedItemsFromDictionaryRepresentations:v24];
          [*(a1 + 16) addObject:v23];
        }

        v19 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v19);
    }

    v25 = +[NSMutableArray array];
    v26 = +[NSMutableArray array];
    v27 = +[MailAccount mailAccounts];
    v28 = [v27 ef_filter:&stru_10064F000];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v30)
    {
      v31 = *v57;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v57 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v56 + 1) + 8 * j);
          v34 = [FavoriteItem itemForAccount:v33];
          [v25 addObject:v34];

          v35 = [FavoriteItem itemForInboxWithAccount:v33 selected:1];
          [v26 addObject:v35];
        }

        v30 = [v29 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v30);
    }

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100007BF0;
    v53[3] = &unk_10064F050;
    v55 = &v64;
    v36 = v49;
    v54 = v36;
    v37 = objc_retainBlock(v53);
    v38 = [a1 mailboxesCollection];
    v39 = objc_opt_class();
    (v37[2])(v37, v38, v26, v39);

    v40 = sub_1000080E8(a1);
    v41 = objc_opt_class();
    (v37[2])(v37, v40, v25, v41);

    v42 = sub_100008F30(a1);
    *(v65 + 24) |= v42;
    if (v42)
    {
      [v36 appendString:@" << adding shared mailbox items >>"];
    }
  }

  else
  {
    v43 = sub_100007718();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Creating default mailbox collection", v52, 2u);
    }

    sub_1000B560C(a1);
    sub_1000B593C(a1);
    [v49 appendString:@" << Creating default mailbox collections >>"];
    *(v65 + 24) = 1;
  }

  [*(a1 + 120) unlock];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5B50;
  block[3] = &unk_10064C7E8;
  block[4] = a1;
  dispatch_async(&_dispatch_main_q, block);
  v44 = sub_100008304(a1);
  if (v44)
  {
    *(v65 + 24) = 1;
    [v49 appendString:v44];
  }

  if (*(v65 + 24) == 1)
  {
    v45 = MFUserAgent();
    v46 = [v45 isMaild];

    if ((v46 & 1) == 0)
    {
      [*(a1 + 120) lock];
      sub_1000B5BC8(a1, v49);
      [*(a1 + 120) unlock];
    }
  }

  _Block_object_dispose(&v64, 8);
}

void sub_10000757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);

  _Unwind_Resume(a1);
}

id sub_100007718()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000077BC;
  block[3] = &unk_10064C4F8;
  block[4] = objc_opt_self();
  if (qword_1006DCF10 != -1)
  {
    dispatch_once(&qword_1006DCF10, block);
  }

  v0 = qword_1006DCF08;

  return v0;
}

void sub_1000077BC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DCF08;
  qword_1006DCF08 = v1;
}

uint64_t sub_100007888(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_1000078A0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_1000078D0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_1000078E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100007904(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100007920(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000795C(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t sub_100007978(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2048;
  *(a3 + 14) = a2;
  return result;
}

void sub_1000079A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000079C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = result;
  return result;
}

void sub_100007B64(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DCED8;
  qword_1006DCED8 = v1;
}

void sub_100007BF0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v19 = a3;
  v8 = [v7 items];
  v9 = [v8 mutableCopy];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100008D60;
  v24[3] = &unk_10064F028;
  v26 = a4;
  v10 = v19;
  v25 = v10;
  v11 = [v9 ef_filter:v24];
  v12 = [v11 count];
  *(*(*(a1 + 40) + 8) + 24) |= v12 != 0;
  if (v12)
  {
    [*(a1 + 32) appendFormat:@" << removingItems %@ from collection %@ >>", v11, v7];
  }

  [v9 removeObjectsInArray:v11];
  [v7 setItems:v9];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [v7 addItem:v17 ordered:1];
        *(*(*(a1 + 40) + 8) + 24) |= v18;
        if (v18)
        {
          [*(a1 + 32) appendFormat:@" << addingItem %@ to collection %@ >>", v17, v7];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v14);
  }
}

uint64_t sub_100007EC8(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_100007EE0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_100007EFC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_100007FD4(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

BOOL sub_100007FEC(id a1, MailAccount *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_100008048(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 items];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id sub_1000080E8(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 120) lock];
    if ([*(a1 + 16) count])
    {
      v2 = [*(a1 + 16) objectAtIndex:2];
    }

    else
    {
      v2 = 0;
    }

    [*(a1 + 120) unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100008304(id *a1)
{
  if (a1)
  {
    v2 = [a1[13] displayedAccounts];
    if ([v2 count])
    {
      v3 = sub_1000B4E98(a1, 0);
      v4 = [a1 mailboxPersistence];
      [v4 fetchMailboxListsWithKind:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000083AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000083E8(id a1)
{
  v1 = objc_alloc_init(MailChangeManager);
  v2 = qword_1006DD068;
  qword_1006DD068 = v1;
}

uint64_t sub_10000842C(void *a1, void *a2)
{
  v4 = [a1 mailbox];
  v5 = [a2 mailbox];
  v6 = [v4 type];
  v7 = [v5 type];
  if (v6 | v7)
  {
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7 != 0;
    }
  }

  else
  {
    v9 = [a1 displayName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v4 displayName];
    }

    v12 = v11;

    v13 = [a2 displayName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v5 displayName];
    }

    v16 = v15;

    v8 = [v12 localizedCaseInsensitiveCompare:v16];
  }

  return v8;
}

id sub_1000085EC(uint64_t a1)
{
  if (!a1)
  {
    v10 = 0;
    goto LABEL_17;
  }

  [*(a1 + 120) lock];
  v2 = *(a1 + 56);
  if (v2)
  {
    goto LABEL_16;
  }

  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 16), "count")}];
  v4 = *(a1 + 56);
  *(a1 + 56) = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 16);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *v13;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v12 + 1) + 8 * i);
      if (![v9 isOutboxCollection])
      {
        if (![v9 isVisible])
        {
          continue;
        }

LABEL_12:
        [*(a1 + 56) addObject:v9];
        continue;
      }

      if (*(a1 + 8))
      {
        goto LABEL_12;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);
LABEL_15:

  v2 = *(a1 + 56);
LABEL_16:
  v10 = [v2 copy];
  [*(a1 + 120) unlock];
LABEL_17:

  return v10;
}

void sub_100008800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
}

void sub_100008908(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 visibleItems];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100008D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_100008D44(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_100008D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  _Block_object_dispose(va, 8);
}

uint64_t sub_100008D60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100008F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
}

uint64_t sub_100008F30(_BYTE *a1)
{
  if (a1)
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 integerForKey:@"FlaggedMailboxControllerBadgeCount"];

    v3 = [a1 mailboxesCollection];
    v4 = [a1 conversationSubscriptionProvider];
    v32 = [v4 hasSubscribedConversations];

    v41 = [FavoriteItem itemForSharedMailboxWithType:1 selected:1];
    v55[0] = v41;
    v40 = [FavoriteItem itemForSharedMailboxWithType:2 selected:v2 > 0];
    v55[1] = v40;
    v39 = [FavoriteItem itemForSharedMailboxWithType:16 selected:0];
    v55[2] = v39;
    v38 = [FavoriteItem itemForSharedMailboxWithType:17 selected:0];
    v55[3] = v38;
    v37 = [FavoriteItem itemForSharedMailboxWithType:18 selected:0];
    v55[4] = v37;
    v36 = [FavoriteItem itemForSharedMailboxWithType:19 selected:0];
    v55[5] = v36;
    v35 = [FavoriteItem itemForSharedMailboxWithType:20 selected:0];
    v55[6] = v35;
    v34 = [FavoriteItem itemForSharedMailboxWithType:21 selected:0];
    v55[7] = v34;
    v33 = [FavoriteItem itemForSharedMailboxWithType:22 selected:0];
    v55[8] = v33;
    v5 = [FavoriteItem itemForSharedMailboxWithType:3 selected:0];
    v55[9] = v5;
    v6 = [FavoriteItem itemForSharedMailboxWithType:4 selected:0];
    v55[10] = v6;
    v7 = [FavoriteItem itemForSharedMailboxWithType:5 selected:0];
    v55[11] = v7;
    v8 = [FavoriteItem itemForUnifiedMailboxWithType:5 selected:0];
    v55[12] = v8;
    v9 = [FavoriteItem itemForUnifiedMailboxWithType:2 selected:0];
    v55[13] = v9;
    v10 = [FavoriteItem itemForUnifiedMailboxWithType:4 selected:0];
    v55[14] = v10;
    v11 = [FavoriteItem itemForUnifiedMailboxWithType:3 selected:0];
    v55[15] = v11;
    v12 = [FavoriteItem itemForUnifiedMailboxWithType:1 selected:0];
    v55[16] = v12;
    v42 = [NSArray arrayWithObjects:v55 count:17];

    v13 = [FavoriteItem itemForSharedMailboxWithType:6 selected:v32];
    v54[0] = v13;
    v14 = [FavoriteItem itemForSharedMailboxWithType:15 selected:0];
    v54[1] = v14;
    v15 = [FavoriteItem itemForSharedMailboxWithType:23 selected:0];
    v54[2] = v15;
    v16 = [FavoriteItem itemForSharedMailboxWithType:25 selected:0];
    v54[3] = v16;
    v17 = [FavoriteItem itemForSharedMailboxWithType:8 selected:0];
    v54[4] = v17;
    v18 = [FavoriteItem itemForSharedMailboxWithType:7 selected:0];
    v54[5] = v18;
    v19 = [NSArray arrayWithObjects:v54 count:6];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = v42;
    v21 = 0;
    v22 = [v20 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v22)
    {
      v23 = *v49;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v21 |= [v3 addItem:*(*(&v48 + 1) + 8 * i)];
        }

        v22 = [v20 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v22);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = v19;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v26)
    {
      v27 = *v45;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v21 |= [v3 addItem:*(*(&v44 + 1) + 8 * j) ordered:1];
        }

        v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v26);
    }

    if (a1[12] == 1)
    {
      v29 = [FavoriteItem itemForSharedMailboxWithType:23 selected:0];
      v30 = [v3 removeItem:v29];
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

void sub_1000096CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = FavoriteItem_SharedMailbox;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100009A44(id *a1)
{
  if (!a1)
  {
    return;
  }

  v18 = MFUserAgent();
  if ([v18 isMaild])
  {
    goto LABEL_5;
  }

  v3 = objc_getProperty(a1, v2, 80, 1);
  if (v3)
  {

LABEL_5:

    return;
  }

  Property = objc_getProperty(a1, v4, 88, 1);

  if (!Property)
  {
    v6 = a1[8];
    v7 = [v6 mailboxRepository];

    v8 = +[EFPromise promise];
    v9 = +[EFScheduler globalAsyncScheduler];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000A0B8;
    v23[3] = &unk_10064C660;
    v10 = v7;
    v24 = v10;
    v11 = v8;
    v25 = v11;
    [v9 performBlock:v23];

    v12 = [v11 future];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000A990;
    v21[3] = &unk_10064F148;
    v13 = v10;
    v22 = v13;
    v14 = [v12 then:v21];
    objc_setProperty_atomic(a1, v15, v14, 88);

    v17 = objc_getProperty(a1, v16, 88, 1);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000A9C4;
    v20[3] = &unk_10064F170;
    v20[4] = a1;
    [v17 addSuccessBlock:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B9128;
    v19[3] = &unk_10064D028;
    v19[4] = a1;
    [v17 addFailureBlock:v19];
  }
}

void sub_100009EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_100008D44(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_10000A0B8(uint64_t a1)
{
  v2 = [*(a1 + 32) mailboxObjectIDsForMailboxType:6];
  v5 = [v2 anyObject];

  v3 = *(a1 + 40);
  if (v5)
  {
    [v3 finishWithResult:?];
  }

  else
  {
    v4 = [NSError em_internalErrorWithReason:@"outbox does not exist"];
    [v3 finishWithError:v4];
  }
}

void sub_10000A57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_10000A63C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 dictionaryRepresentations];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10000A990(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxForObjectID:a2];

  return v2;
}

void sub_10000A9C4(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = sub_1000B8EA0(*(a1 + 32), v8);
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_setProperty_atomic(v5, v3, v4, 80);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v6, 0, 88);
  }
}

unint64_t sub_10000B074()
{
  v2 = qword_1006D7C70;
  if (!qword_1006D7C70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7C70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10000B0D8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1000160F4(a1);
  }

  return a1;
}

void sub_10000B1B4(uint64_t a1)
{
  v2 = +[DockContainerPersistence log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Beginning load of docked states from disk...", &v10, 2u);
  }

  v3 = +[MailPersistentStorage sharedStorage];
  v4 = [v3 sceneRestorationDictionary];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [DockPersistenceSerialization dockedStatesFromDictionary:v4];
      if ([v5 count])
      {
        v6 = [v5 mutableCopy];
        [*(a1 + 32) setDockedStates:v6];
      }
    }
  }

  v7 = +[DockContainerPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) dockedStates];
    v9 = [v8 count];
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Docked count after load from disk: %lu", &v10, 0xCu);
  }
}

void sub_10000B3B8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DCE68;
  qword_1006DCE68 = v1;
}

void sub_10000B484()
{
  v0 = [MailPersistentStorage alloc];
  v3 = +[MailPersistentStorage defaultFilePath];
  v1 = [(MailPersistentStorage *)v0 initWithFilePath:?];
  v2 = qword_1006DD110;
  qword_1006DD110 = v1;
}

void sub_10000B514(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD148;
  qword_1006DD148 = v1;
}

uint64_t type metadata accessor for ComposeUndoHandler()
{
  v1 = qword_1006D7568;
  if (!qword_1006D7568)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_10000B6B0()
{
  updated = type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

id sub_10000B794(void *a1)
{
  v7 = 0;
  v6 = a1;
  v2 = type metadata accessor for ComposeUndoHandler();
  static Logger.mailUILogger<A>(for:)();
  _objc_retain(a1);
  *OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_outgoingMessageRepository = a1;
  v5.receiver = v7;
  v5.super_class = v2;
  v4 = objc_msgSendSuper2(&v5, "init");
  _objc_retain(v4);
  v7 = v4;
  _objc_release(a1);
  _objc_release(v7);
  return v4;
}

void sub_10000BAB4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10000BD6C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = qword_1006DD810;
  qword_1006DD810 = v2;

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000C0D8;
  v26[3] = &unk_100656800;
  v27 = *(a1 + 32);
  v4 = objc_retainBlock(v26);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000C260;
  v24[3] = &unk_100656820;
  v25 = *(a1 + 32);
  v5 = objc_retainBlock(v24);
  v6 = objc_opt_class();
  (v4[2])(v4, v6, 2);
  v7 = objc_opt_class();
  (v5[2])(v5, v7, 16, 1);
  v8 = objc_opt_class();
  (v5[2])(v5, v8, 17, 0);
  v9 = objc_opt_class();
  (v5[2])(v5, v9, 18, 5);
  v10 = objc_opt_class();
  (v5[2])(v5, v10, 19, 4);
  v11 = objc_opt_class();
  (v5[2])(v5, v11, 20, 2);
  v12 = objc_opt_class();
  (v5[2])(v5, v12, 21, 3);
  v13 = objc_opt_class();
  (v5[2])(v5, v13, 22, 6);
  v14 = objc_opt_class();
  (v4[2])(v4, v14, 1);
  v15 = objc_opt_class();
  (v4[2])(v4, v15, 3);
  v16 = objc_opt_class();
  (v4[2])(v4, v16, 4);
  v17 = objc_opt_class();
  (v4[2])(v4, v17, 5);
  v18 = objc_opt_class();
  (v4[2])(v4, v18, 6);
  v19 = objc_opt_class();
  (v4[2])(v4, v19, 8);
  v20 = objc_opt_class();
  (v4[2])(v4, v20, 7);
  v21 = objc_opt_class();
  (v4[2])(v4, v21, 15);
  v22 = objc_opt_class();
  (v4[2])(v4, v22, 23);
  v23 = objc_opt_class();
  (v4[2])(v4, v23, 25);
}

void sub_10000C0D8(uint64_t a1, objc_class *a2, uint64_t a3)
{
  if (!qword_1006DD810)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SharedMailboxController.m" lineNumber:71 description:@"sharedInstancesDictionary should be initialiazed before trying to access"];
  }

  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [[a2 alloc] initWithType:a3];
  [qword_1006DD810 setObject:v5 forKeyedSubscript:v7];
}

void sub_10000C260(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  if ([EMInternalPreferences preferenceEnabled:6])
  {
    if (!qword_1006DD810)
    {
      v10 = +[NSAssertionHandler currentHandler];
      [v10 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SharedMailboxController.m" lineNumber:80 description:@"sharedInstancesDictionary should be initialiazed before trying to access"];
    }

    v9 = [NSNumber numberWithUnsignedInteger:a3];
    v8 = [[a2 alloc] initWithType:a3 flagColor:a4];
    [qword_1006DD810 setObject:v8 forKeyedSubscript:v9];
  }
}

id sub_10000C96C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = [v5 valueForKey:v3];

  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

BOOL sub_10000CA34(int a1)
{
  v1 = dword_1006D5B28;
  if (dword_1006D5B28 < 0 || a1)
  {
    v1 = sub_10000D7EC(ConversationViewExcludesRelatedMessagesKey) ^ 1;
    dword_1006D5B28 = v1;
  }

  return v1 != 0;
}

void sub_10000CE30(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 orderedAccountIds];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_10000CEFC()
{
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  memset(v2, 0, sizeof(v2));
  _objc_retain(v1);
  *(swift_allocObject() + 16) = v1;
  sub_10000B074();
  AppDependencyManager.add<A>(key:dependency:)();

  sub_10000B0D8(v2);
}

unint64_t sub_10000D38C()
{
  v2 = qword_1006D80F0;
  if (!qword_1006D80F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D80F0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_10000D7EC(void *a1)
{
  v1 = sub_10000C96C(a1, 0);
  v2 = [v1 BOOLValue];

  return v2;
}

void sub_10000DED0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD348;
  qword_1006DD348 = v1;
}

void sub_10000E0B0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD1A8;
  qword_1006DD1A8 = v1;
}

void sub_10000E6A4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DCE08;
  qword_1006DCE08 = v1;
}

void sub_10000E7DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000E7F8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD0B8;
  qword_1006DD0B8 = v1;
}

id ConversationNavigationBarItemsManager.init(scene:delegate:actionHandler:arrowDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v17 = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useArchiveButton] = 0;
  v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showNavigationArrows] = 0;
  v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showSupplementaryButtonItem] = 0;
  v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useDesktopClassNavigationBar] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___revealActionsButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyAllButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___forwardButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___archiveButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___deleteButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___moveButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___flagButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___readButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___unreadButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___junkButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___muteButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___laterButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___composeButtonItem] = 1;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___contactLeftDoneButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___leftSpaceItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItems] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___groupedSenderActionsButtonItem] = 1;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___cleanBackButtonItem] = 1;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___categorizeButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsView] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___upArrowBarButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___downArrowBarButtonItem] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___buttonMapping] = 0;
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v12.receiver = v17;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, "init");
  _objc_retain(v11);
  v17 = v11;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _objc_release(v17);
  return v11;
}

BOOL sub_10000ED28(int a1)
{
  v2 = dword_1006D5B24;
  if (dword_1006D5B24 < 0 || a1)
  {
    v2 = sub_10000D7EC(ConversationViewShowsNewestAtTop);
    dword_1006D5B24 = v2;
  }

  return v2 != 0;
}

void sub_10000F5A0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1006DD1B8;
  qword_1006DD1B8 = v1;
}

void sub_10000F63C(uint64_t a1)
{
  v2 = [*(a1 + 32) statusObserver];
  [v2 stopObserving];

  v3 = [*(a1 + 32) outgoingMessageRepository];
  [v3 removeOutgoingMessageRepositoryObserver:*(a1 + 32)];
}

void sub_10000F7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_10000FCF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10000FD50(WeakRetained);
}

void sub_10000FD50(void *a1)
{
  if (a1)
  {
    v2 = [a1 badgeCountObserverCancelable];
    [v2 cancel];

    [a1 setBadgeCountObserverCancelable:0];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:a1];
  }
}

void sub_100011D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);

  objc_destroyWeak((v7 - 32));
  _Unwind_Resume(a1);
}

void sub_100011F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  objc_destroyWeak(va);
  objc_destroyWeak((v19 - 104));
  _Unwind_Resume(a1);
}

void sub_100012628(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD008;
  qword_1006DD008 = v1;
}

void sub_100012CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  v51 = v44;

  objc_destroyWeak((v48 + 32));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v49 + 32));

  objc_destroyWeak((v43 + 40));
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a42);

  objc_destroyWeak((v50 - 160));
  objc_destroyWeak((v50 - 120));
  objc_destroyWeak((v50 - 112));
  _Unwind_Resume(a1);
}

void sub_100012E98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current notification settings: %{public}@", buf, 0xCu);
  }

  v5 = [v3 authorizationStatus];
  v6 = [v3 badgeSetting];
  v7 = [v3 alertSetting];
  v8 = [v3 soundSetting];
  if (v5 && v6 && v7 && v8)
  {
    v9 = MSUserNotificationsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Authorization status was previously set to: %ld", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    v12 = v10 || v8 == 0;
    if (v5 && v12)
    {
      v13 = MSUserNotificationsLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100488D3C();
      }
    }

    v14 = MSUserNotificationsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Requesting Authorization...", buf, 2u);
    }

    v15 = +[UNUserNotificationCenter currentNotificationCenter];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10011BD2C;
    v16[3] = &unk_100650B18;
    objc_copyWeak(&v17, (a1 + 32));
    [v15 requestAuthorizationWithOptions:7 completionHandler:v16];

    objc_destroyWeak(&v17);
  }
}

void sub_100013678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013E14(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_5_MIN);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  v3 = v2;
  v4 = _os_feature_enabled_impl();
  v5 = v3;
  v6 = &XPC_ACTIVITY_REQUIRES_CLASS_C;
  if (!v4)
  {
    v6 = &XPC_ACTIVITY_REQUIRES_CLASS_A;
  }

  v7 = v5;
  xpc_dictionary_set_BOOL(v5, *v6, 1);
}

void sub_100013FB8(void *a1)
{
  if (a1)
  {
    v1 = MSAccessibilityIdentifierMailMessageListSearchBarSearchTextField;
    v2 = [a1 searchTextField];
    [v2 setAccessibilityIdentifier:v1];
  }
}

unint64_t sub_100014038()
{
  v2 = qword_1006DAD60;
  if (!qword_1006DAD60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DAD60);
    return ObjCClassMetadata;
  }

  return v2;
}

NSArray *__cdecl sub_10001467C(id a1, NSArray *a2, MUIMailboxFilterProvider *a3)
{
  v4 = a3;
  v5 = [MFMessageCriterion criteriaFromDefaultsArray:a2 removingRecognizedKeys:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10017EEC4;
  v9[3] = &unk_100652880;
  v6 = v4;
  v10 = v6;
  v7 = [v5 ef_compactMap:v9];

  return v7;
}

__n128 sub_100014898(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

char *MFMailboxFilterCriteriaBarButtonItem.init(target:action:)(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v84 = a2;
  v79 = "Fatal error";
  v80 = "Unexpectedly found nil while unwrapping an Optional value";
  v81 = "MobileMail/MFMailboxFilterCriteriaBarButtonItem.swift";
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v118 = 0;
  v95 = 0;
  v82 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v96 = &v17 - v82;
  v85 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v94 = &v17 - v85;
  v130 = v3;
  v129 = v4;
  v131 = v2;
  v88 = v2;
  v110 = &unk_1006DB000;
  v87 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_titleLabel;
  v86 = sub_100264928();
  *&v88[v87] = sub_10025C704();
  v90 = v131;
  v89 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_subtitleLabel;
  *&v90[v89] = sub_10025C704();
  v92 = v131;
  v91 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_chevronImageView;
  sub_1002649B4();
  *&v92[v91] = sub_10025C704();
  v128.receiver = v131;
  v128.super_class = MFMailboxFilterCriteriaBarButtonItem;
  v93 = objc_msgSendSuper2(&v128, "init");
  _objc_retain(v93);
  v131 = v93;
  v99 = *&v93[v110[4]];
  _objc_retain(v99);
  v106 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Filtered by", 0xBuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100015CC0();
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = v106 & 1;
  String.init(localized:table:bundle:locale:comment:)();
  v97 = v5;
  v98 = String._bridgeToObjectiveC()();

  [v99 setText:v98];
  _objc_release(v98);
  _objc_release(v99);
  v103 = *&v131[v110[4]];
  _objc_retain(v103);
  v112 = &UTTypeX509Certificate_ptr;
  v100 = objc_opt_self();
  v101 = UIFontTextStyleCaption1;
  _objc_retain(UIFontTextStyleCaption1);
  v113 = &UIFontWeightSemibold;
  v114 = &selRef__createMailTrackingProtectionOnboardingController;
  v102 = [v100 _preferredFontForTextStyle:v101 weight:UIFontWeightSemibold];
  _objc_release(v101);
  [v103 setFont:v102];
  _objc_release(v102);
  _objc_release(v103);
  v105 = *&v131[v110[4]];
  _objc_retain(v105);
  v104 = [objc_opt_self() labelColor];
  [v105 setTextColor:?];
  _objc_release(v104);
  _objc_release(v105);
  v107 = *&v131[v110[4]];
  _objc_retain(v107);
  [v107 setAdjustsFontForContentSizeCategory:v106 & 1];
  _objc_release(v107);
  v109 = *&v131[v110[4]];
  _objc_retain(v109);
  v108 = UIContentSizeCategoryExtraExtraExtraLarge;
  _objc_retain(UIContentSizeCategoryExtraExtraExtraLarge);
  [v109 setMaximumContentSizeCategory:v108];
  _objc_release(v108);
  _objc_release(v109);
  v111 = *&v131[v110[4]];
  _objc_retain(v111);
  [v111 setNumberOfLines:1];
  _objc_release(v111);
  v115 = objc_opt_self();
  v116 = UIFontTextStyleCaption2;
  _objc_retain(UIFontTextStyleCaption2);
  v117 = [v115 v114[500]];
  _objc_release(v116);
  if (v117)
  {
    v78 = v117;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v77 = v78;
  v123 = v78;
  v30 = &unk_1006DB000;
  v18 = *&v131[OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_subtitleLabel];
  _objc_retain(v18);
  _objc_retain(v77);
  [v18 setFont:v77];
  _objc_release(v77);
  _objc_release(v18);
  v20 = *&v131[v30[5]];
  _objc_retain(v20);
  v19 = [objc_opt_self() systemBlueColor];
  [v20 setTextColor:?];
  _objc_release(v19);
  _objc_release(v20);
  v21 = *&v131[v30[5]];
  _objc_retain(v21);
  [v21 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v21);
  v23 = *&v131[v30[5]];
  _objc_retain(v23);
  v22 = UIContentSizeCategoryExtraExtraExtraLarge;
  _objc_retain(UIContentSizeCategoryExtraExtraExtraLarge);
  [v23 setMaximumContentSizeCategory:v22];
  _objc_release(v22);
  _objc_release(v23);
  v24 = *&v131[v30[5]];
  _objc_retain(v24);
  v42 = 1;
  [v24 setNumberOfLines:?];
  _objc_release(v24);
  v32 = &unk_1006DB000;
  v27 = *&v131[OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_chevronImageView];
  _objc_retain(v27);
  v71 = 0;
  sub_1002A75C8();
  v25 = MFImageGlyphFilterCriteriaButton;
  _objc_retain(MFImageGlyphFilterCriteriaButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = sub_1002A7840();
  _objc_release(v25);
  [v27 setImage:v26];
  _objc_release(v26);
  _objc_release(v27);
  v29 = *&v131[v32[6]];
  _objc_retain(v29);
  sub_1002AED18();
  _objc_retain(v77);
  v37 = 2;
  v28 = sub_1002AE950(v77, 2);
  [v29 setPreferredSymbolConfiguration:?];
  _objc_release(v28);
  _objc_release(v29);
  v36 = sub_100264A18();
  v41 = sub_1002AA63C();
  v35 = _allocateUninitializedArray<A>(_:)();
  v33 = v6;
  v31 = *&v131[v30[5]];
  _objc_retain(v31);
  v7 = v32;
  *v33 = v31;
  v34 = *&v131[v7[6]];
  _objc_retain(v34);
  v33[1] = v34;
  sub_1002612B0();
  v76 = sub_1003C7248();
  v122 = v76;
  v43 = &selRef_setOriginalLocations_;
  [v76 setSpacing:1.0];
  v40 = _allocateUninitializedArray<A>(_:)();
  v39 = v8;
  v38 = *&v131[OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_titleLabel];
  _objc_retain(v38);
  v9 = v76;
  *v39 = v38;
  _objc_retain(v9);
  v39[1] = v76;
  sub_1002612B0();
  v75 = sub_1003C7248();
  v121 = v75;
  _objc_retain(v75);
  [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v75);
  [v75 setAxis:v42];
  [v75 setAlignment:v42];
  [v75 v43[368]];
  v74 = sub_10025C704();
  v120 = v74;
  [v74 addSubview:v75];
  v69 = objc_opt_self();
  v67 = sub_100293824();
  v66 = _allocateUninitializedArray<A>(_:)();
  v65 = v10;
  _objc_retain(v75);
  v44 = &selRef_interactionWithContentRequest_scene_delegate_;
  v46 = [v75 leadingAnchor];
  _objc_release(v75);
  v45 = [v74 v44[411]];
  v53 = &selRef_bccList;
  v47 = [v46 constraintEqualToAnchor:?];
  _objc_release(v45);
  _objc_release(v46);
  v11 = v75;
  *v65 = v47;
  _objc_retain(v11);
  v48 = &selRef_suggestionTokens;
  v50 = [v75 trailingAnchor];
  _objc_release(v75);
  v49 = [v74 v48[255]];
  v51 = [v50 constraintEqualToAnchor:-12.0 constant:?];
  _objc_release(v49);
  _objc_release(v50);
  v12 = v75;
  v65[1] = v51;
  _objc_retain(v12);
  v52 = &selRef_bccList;
  v55 = [v75 centerYAnchor];
  _objc_release(v75);
  v54 = [v74 v52[200]];
  v56 = [v55 v53[344]];
  _objc_release(v54);
  _objc_release(v55);
  v13 = v75;
  v65[2] = v56;
  _objc_retain(v13);
  v57 = &selRef_suggestionTokens;
  v59 = [v75 topAnchor];
  _objc_release(v75);
  v58 = [v74 v57[226]];
  v60 = [v59 constraintGreaterThanOrEqualToAnchor:?];
  _objc_release(v58);
  _objc_release(v59);
  v14 = v75;
  v65[3] = v60;
  _objc_retain(v14);
  v61 = &selRef_bccList;
  v63 = [v75 bottomAnchor];
  _objc_release(v75);
  v62 = [v74 v61[52]];
  v64 = [v63 constraintLessThanOrEqualToAnchor:?];
  _objc_release(v62);
  _objc_release(v63);
  v15 = v66;
  v65[4] = v64;
  sub_1002612B0();
  v68 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:isa];
  _objc_release(isa);
  sub_1003C7288();
  v72 = v119;
  sub_100015DA0(v83, v119);
  v73 = sub_1003C72EC(v72, v84);
  v118 = v73;
  [v74 addGestureRecognizer:?];
  _objc_retain(v93);
  _objc_retain(v74);
  [v93 setCustomView:v74];
  _objc_release(v74);
  _objc_release(v93);
  _objc_release(v73);
  _objc_release(v74);
  _objc_release(v75);
  _objc_release(v76);
  _objc_release(v77);
  sub_10000B0D8(v83);
  _objc_release(v131);
  return v93;
}

unint64_t sub_100015CD8()
{
  v2 = qword_1006D7880;
  if (!qword_1006D7880)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7880);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100015D3C()
{
  v2 = qword_1006D77E8;
  if (!qword_1006D77E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D77E8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100015DA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_100015E5C()
{
  sub_100015E8C(0);

  return 0;
}

unint64_t sub_100015E8C(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for Attributes();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_100016004()
{
  v2 = qword_1006D78F0;
  if (!qword_1006D78F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D78F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001607C()
{
  v2 = qword_1006D78E8;
  if (!qword_1006D78E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D78E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000160F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

Swift::Void __swiftcall MFMailboxFilterCriteriaBarButtonItem.setFilterDescription(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  v5 = [v1 subtitleLabel];

  if (object)
  {
    v3 = String._bridgeToObjectiveC()();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v5 setText:v4];
  _objc_release(v2);
  _objc_release(v5);
}

void *sub_10001637C(const void *a1, void *a2)
{
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D7890);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1000164A4(uint64_t a1)
{
  v3 = type metadata accessor for UIButton.Configuration();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void sub_100016978(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_10001790C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) mailboxStatusInfos];
  v2 = [v1 allValues];

  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        [v6 setError:0];
        [v6 setAccountErrorString:0];
        [v6 setAccountErrorTitle:0];
        [v6 setHasAccountError:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_100018230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, void *a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, void *a56, void *a57, void *a58)
{
  v66 = v60;

  _Unwind_Resume(a1);
}

id sub_100018A78(uint64_t a1)
{
  v3 = [*(a1 + 32) scene];
  if (MUISolariumFeatureEnabled())
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = v4;
  v6 = [v3 isInExpandedEnvironment];
  if (v6)
  {
    if ((+[UIDevice mf_isPadIdiom]& 1) != 0)
    {
      goto LABEL_13;
    }

    v1 = [*(a1 + 32) splitViewController];
    if ([v1 displayMode] == 2)
    {

      goto LABEL_13;
    }
  }

  v7 = [*(a1 + 32) composeButtonItem];

  if (v6)
  {
  }

  if (v7)
  {
    v8 = [*(a1 + 32) composeButtonItem];
LABEL_12:
    v9 = v8;

    v5 = v9;
    goto LABEL_16;
  }

LABEL_13:
  if ([v3 isInExpandedEnvironment] && +[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && (MUISolariumFeatureEnabled() & 1) == 0)
  {
    v8 = [*(a1 + 32) shelfButtonItem];
    goto LABEL_12;
  }

LABEL_16:

  return v5;
}

id sub_100018BD4(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 32);
  if ([*(a1 + 40) shouldDisplayGroupedSenders])
  {
    if (MUISolariumFeatureEnabled())
    {
      v4 = 0;
    }

    else
    {
      v4 = +[UIBarButtonItem mf_newFixedSpaceItem];
    }

    v3 = v4;
  }

  if (*(a1 + 72) == 1)
  {
    if (v2)
    {
      v9[0] = *(a1 + 48);
      v9[1] = v2;
      v5 = [NSArray arrayWithObjects:v9 count:2];
    }

    else
    {
      v5 = &__NSArray0__struct;
    }
  }

  else
  {
    v6 = objc_opt_new();
    v5 = v6;
    if (v3)
    {
      [v6 addObject:v3];
      [v5 addObject:*(a1 + 48)];
    }

    v7 = (*(*(a1 + 64) + 16))();
    [v5 addObject:v7];

    if (v2)
    {
      [v5 addObject:*(a1 + 48)];
      [v5 addObject:v2];
    }
  }

  return v5;
}

id sub_100018ED8(uint64_t a1, char a2)
{
  if (MUISolariumFeatureEnabled())
  {
    v4 = [*(a1 + 32) searchBarPlacementBarButtonItem];
LABEL_5:
    v6 = v4;
    goto LABEL_7;
  }

  v5 = *(a1 + 40);
  if (a2)
  {
    v4 = [v5 filterPickerButtonItem];
    goto LABEL_5;
  }

  v7 = [v5 mailStatusViewController];
  v6 = [v7 mailStatusBarButtonItem];

LABEL_7:

  return v6;
}

id sub_100019458(id a1, UIScene *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(UIScene *)v2 activationState]== UISceneActivationStateForegroundActive || [(UIScene *)v2 activationState]== 1))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000197B4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD158;
  qword_1006DD158 = v1;
}

void sub_1000198BC(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v8 BOOLValue])
  {
    v4 = [WeakRetained accountsProvider];
    v5 = [v4 displayedAccounts];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [WeakRetained dockPersistence];
      [v7 recoverAbandonedDrafts];
    }
  }
}

void sub_100019B78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isCanceled])
  {
    v5 = +[DockContainerPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Checking for abandoned drafts to recover...", buf, 2u);
    }

    v4 = +[EFPromise promise];
    v6 = +[MSAutosave autosave];
    v7 = [v4 completionHandlerAdapter];
    [v6 getIdleAutosaves:v7];

    [v4 future];
    v32 = v41 = 0;
    v34 = [v32 resultWithTimeout:&v41 error:5.0];
    v33 = v41;
    if (v33)
    {
      v8 = +[DockContainerPersistence log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100485858(v33, v8);
      }

      goto LABEL_38;
    }

    if ([v34 count])
    {
      v9 = +[DockContainerPersistence log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v34 count];
        *buf = 134217984;
        v44 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Found %lu idle autosaves. Filtering with known identifiers...", buf, 0xCu);
      }

      if (![v3 isCanceled])
      {
        v12 = [*(a1 + 32) dockedStates];
        v13 = [v12 ef_mapSelector:"dockIdentifier"];
        v29 = [v13 mutableCopy];

        v14 = [*(a1 + 32) recoveryDelegate];
        v31 = [v14 identifiersToExcludeFromDockedItemRecovery];

        if (v31)
        {
          [v29 addObjectsFromArray:?];
        }

        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_10009A3A0;
        v39[3] = &unk_10064E718;
        v8 = v29;
        v40 = v8;
        v30 = [v34 ef_filter:v39];
        if ([v3 isCanceled])
        {
          v15 = +[DockContainerPersistence log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Recovery cancelled.", buf, 2u);
          }
        }

        else if (+[UIDevice mf_isPadIdiom])
        {
          v16 = +[DockContainerPersistence log];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v30 count];
            *buf = 134217984;
            v44 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deleting %lu abandoned autosaves since windows are closed", buf, 0xCu);
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v15 = v30;
          v18 = [v15 countByEnumeratingWithState:&v35 objects:v42 count:16];
          if (v18)
          {
            v19 = *v36;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v36 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v35 + 1) + 8 * i);
                v22 = +[MSAutosave autosave];
                v23 = [v21 autosaveIdentifier];
                [v22 removeAutosavedMessageWithIdentifier:v23];
              }

              v18 = [v15 countByEnumeratingWithState:&v35 objects:v42 count:16];
            }

            while (v18);
          }
        }

        else
        {
          v24 = +[DockContainerPersistence log];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v30 count];
            *buf = 134217984;
            v44 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Recovering %lu drafts to the dock.", buf, 0xCu);
          }

          v15 = [v30 ef_map:&stru_10064E758];
          v26 = [*(a1 + 32) dockedStates];
          [v26 addObjectsFromArray:v15];

          v27 = [*(a1 + 32) dockedStates];
          v28 = [v27 copy];

          [*(a1 + 32) _notifyObserversOfChange:v28 sender:0];
        }

        goto LABEL_38;
      }

      v8 = +[DockContainerPersistence log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "Recovery cancelled.";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v11, buf, 2u);
      }
    }

    else
    {
      v8 = +[DockContainerPersistence log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "No drafts to recover. No idle autosaves were found.";
        goto LABEL_17;
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  v4 = +[DockContainerPersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Recovery cancelled.", buf, 2u);
  }

LABEL_39:
}

void sub_10001A304(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:MSUserNotificationCenterTopicAllMessages];
  v4 = v3;
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000202F0;
    v6[3] = &unk_10064FE10;
    v7 = [v3 badgeSetting] == 2;
    v5 = +[EFScheduler mainThreadScheduler];
    [v5 performBlock:v6];
  }
}

void sub_10001A3D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10001A468(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v3 = [*(a1 + 32) daemonInterface];
    v2 = [v3 fetchController];
    [v2 performFetchOfType:EMFetchTypeResume];
  }
}

void sub_10001A75C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DCE78;
  qword_1006DCE78 = v1;
}

void sub_10001AE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10001B23C()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Initial message selection is disabled in internal preferences. This is intended for testing purposes only.", v4, v5);
}

uint64_t sub_10001B440()
{
  type metadata accessor for UIAppIntentInteraction();
  swift_allocObject();
  _objc_retain(v1);
  swift_unknownObjectUnownedInit();
  _objc_release(v1);

  sub_10001B524();
  return UIAppIntentInteraction.__allocating_init<A>(intent:perform:)();
}

unint64_t sub_10001B524()
{
  v2 = qword_1006DAD70;
  if (!qword_1006DAD70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001B59C()
{
  v2 = qword_1006DAE78;
  if (!qword_1006DAE78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001B630()
{
  v2 = qword_1006DAE80;
  if (!qword_1006DAE80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001B768()
{
  type metadata accessor for UIAppIntentInteraction();
  swift_allocObject();
  _objc_retain(v1);
  swift_unknownObjectUnownedInit();
  _objc_release(v1);

  sub_10001B88C();
  return UIAppIntentInteraction.__allocating_init<A>(intent:perform:)();
}

unint64_t sub_10001B88C()
{
  v2 = qword_1006DAFB0;
  if (!qword_1006DAFB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001B904()
{
  v2 = qword_1006DAE60;
  if (!qword_1006DAE60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001B998()
{
  v2 = qword_1006DAE68;
  if (!qword_1006DAE68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE68);
    return WitnessTable;
  }

  return v2;
}

id sub_10001BC30(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:v6 forKeyedSubscript:MailNavigationControllerNewViewControllerKey];
  v8 = [NSNumber numberWithBool:a3];
  [v7 setObject:v8 forKeyedSubscript:MailNavigationControllerAnimatedKey];

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:MailNavigationControllerPreviousViewControllerKey];
  }

  return v7;
}

void sub_10001BD00(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10001C3F8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD128;
  qword_1006DD128 = v1;
}

void sub_10001C47C(void *a1)
{
  if (a1)
  {
    v2 = [a1 lowDiskAlertController];
    v3 = v2;
    if (v2)
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1001297D4;
      v4[3] = &unk_10064C7E8;
      v4[4] = a1;
      [v2 dismissViewControllerAnimated:0 completion:v4];
    }
  }
}

id sub_10001C994(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 dataSource];
  v2 = [v1 numberOfItemsInMessagesSections];

  return v2;
}

void sub_10001CA98(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD198;
  qword_1006DD198 = v1;
}

id sub_10001CC30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _layoutSectionAtSection:a2 layoutEnvironment:v5 layout:{objc_msgSend(WeakRetained, "preferredMessageListLayoutForSection:", a2)}];

  return v7;
}

id sub_10001D144(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  v8 = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v6.receiver = v8;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, "init");
  _objc_retain(v5);
  v8 = v5;
  swift_unknownObjectRelease();
  _objc_release(v8);
  return v5;
}

uint64_t sub_10001D4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v8 = a1;
  v10 = a2;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v6 = 0;
  v7 = (*(*(type metadata accessor for UIListSeparatorConfiguration.Visibility() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = &v6 - v7;
  v16 = type metadata accessor for UIListSeparatorConfiguration();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v15 = &v6 - v9;
  v20 = &v6 - v9;
  v19 = v4;
  v18 = v10;
  v17 = v3;
  (*(v12 + 16))();
  sub_10001D66C(v10, v11);
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  sub_10001DAF8(v10, v11);
  UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  return (*(v12 + 32))(v14, v15, v16);
}

uint64_t sub_10001D66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v38 = a2;
  v39 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v41 = type metadata accessor for IndexPath();
  v42 = *(v41 - 8);
  v43 = v42;
  v3 = __chkstk_darwin(v40);
  v44 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = v3;
  v52 = v2;
  v45 = v2 + OBJC_IVAR____TtC10MobileMail30MessageListSeparatorController_delegate;
  v46 = &v51;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v47 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v36 = v47;
    v35 = v47;
    v50 = v47;
    swift_getObjectType();
    if ([v35 messageListSeparatorController:v37 hasMessageContentInSection:IndexPath.section.getter()])
    {
      swift_getObjectType();
      if ([v35 messageListSeparatorController:v37 hasMessageSectionAboveSection:IndexPath.section.getter()])
      {
        v34 = 1;
      }

      else
      {
        swift_getObjectType();
        if ([v35 messageListSeparatorController:v37 hasNonMessageSectionAboveSection:IndexPath.section.getter()])
        {
          v33 = 2;
        }

        else
        {
          v33 = 0;
        }

        v34 = v33;
      }

      v5 = v44;
      v30 = v34;
      v49 = v34;
      swift_getObjectType();
      v24 = *(v43 + 16);
      v23 = v43 + 16;
      v24(v5, v40, v41);
      v6.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v7 = v44;
      isa = v6.super.isa;
      v26 = *(v43 + 8);
      v25 = v43 + 8;
      v26(v44, v41);
      v31 = [v35 messageListSeparatorController:v37 isItemAtIndexPathSelected:isa];

      swift_getObjectType();
      v24(v7, v40, v41);
      v27 = IndexPath._bridgeToObjectiveC()().super.isa;
      v26(v44, v41);
      v28 = [v35 messageListSeparatorController:v37 isItemAtIndexPathFocused:v27];

      v8 = IndexPath.item.getter();
      v9 = v37;
      v29 = v8 == 0;
      swift_unknownObjectRetain();
      v10 = v9;
      v32 = v20;
      v11 = __chkstk_darwin(v31);
      v12 = v40;
      *&v20[-32] = v35;
      *&v20[-24] = v9;
      v19 = v12;
      sub_100023078(v11, v13, v14, sub_1000233B0, v15, v16);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    else
    {
      v21 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
      v18 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
      (*(*(v18 - 8) + 104))(v38, v21);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1003C05A4();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v78 = a2;
  v79 = 0;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v81 = type metadata accessor for IndexPath();
  v82 = *(v81 - 8);
  v83 = v82;
  v3 = __chkstk_darwin(v80);
  v84 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = v3;
  v91 = v2;
  v85 = v2 + OBJC_IVAR____TtC10MobileMail30MessageListSeparatorController_delegate;
  v86 = &v90;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v87 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v76 = v87;
    v75 = v87;
    v89 = v87;
    swift_getObjectType();
    if ([v75 messageListSeparatorController:v77 hasMessageContentInSection:IndexPath.section.getter()])
    {
      v5 = v84;
      swift_getObjectType();
      v50 = *(v83 + 16);
      v49 = v83 + 16;
      v50(v5, v80, v81);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v53 = *(v83 + 8);
      v52 = v83 + 8;
      v53(v84, v81);
      v47 = &selRef__accountsOrderDidChange_;
      v64 = [v75 messageListSeparatorController:v77 isItemAtIndexPathSelected:isa];

      swift_getObjectType();
      IndexPath.mui_next.getter();
      v6.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v7 = v84;
      v48 = v6.super.isa;
      v53(v84, v81);
      v59 = [v75 v47[213]];

      swift_getObjectType();
      v50(v7, v80, v81);
      v51 = IndexPath._bridgeToObjectiveC()().super.isa;
      v53(v84, v81);
      v54 = &selRef__accountsOrderDidChange_;
      v60 = [v75 messageListSeparatorController:v77 isItemAtIndexPathFocused:v51];

      swift_getObjectType();
      IndexPath.mui_next.getter();
      v8.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v9 = v77;
      v55 = v8.super.isa;
      v53(v84, v81);
      v61 = [v75 v54[214]];

      swift_unknownObjectRetain();
      v10 = v9;
      v74 = v44;
      v56 = 40;
      v11 = __chkstk_darwin(v75);
      v62 = &v39;
      v40 = v11;
      v41 = v9;
      v42 = v12;
      swift_unknownObjectRetain();
      v13 = v9;
      v73 = v44;
      v14 = __chkstk_darwin(v75);
      v63 = &v39;
      v40 = v14;
      v41 = v9;
      v42 = v15;
      swift_unknownObjectRetain();
      v16 = v9;
      v72 = v44;
      v17 = __chkstk_darwin(v75);
      v66 = &v39;
      v40 = v17;
      v41 = v9;
      v42 = v18;
      swift_unknownObjectRetain();
      v19 = v9;
      v71 = v44;
      v20 = __chkstk_darwin(v75);
      v65 = &v39;
      v40 = v20;
      v41 = v9;
      v42 = v21;
      swift_unknownObjectRetain();
      v22 = v9;
      v70 = v44;
      v23 = __chkstk_darwin(v75);
      v58 = &v39;
      v40 = v23;
      v41 = v9;
      v42 = v24;
      swift_unknownObjectRetain();
      v25 = v9;
      v69 = v44;
      v26 = __chkstk_darwin(v75);
      v57 = &v39;
      v40 = v26;
      v41 = v9;
      v42 = v27;
      swift_unknownObjectRetain();
      v28 = v9;
      v68 = v44;
      v29 = __chkstk_darwin(v64);
      v67 = &v38;
      v43 = &v40;
      sub_1003BFE10(v29, v30, v31, v32, sub_100023588, v33, sub_1003C05EC, v66, sub_1003C05FC, v65, sub_1003C060C, v34, sub_1003C061C, v35, sub_1003C062C);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    else
    {
      v45 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
      v37 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
      (*(*(v37 - 8) + 104))(v78, v45);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1003C05A4();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10001E86C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1006DD770;
  qword_1006DD770 = v1;
}

void sub_10001ED20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_10001F2A0(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [a1 view];
  [v2 bounds];
  v4 = v3;

  if ([a1 shouldShowStaticDigestHeaderView])
  {
    [a1 _topSpacingToAvoidStatusBar];
    [a1 _navigationBarHeight];
  }

  return v4;
}

void sub_10001F704(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_10001FCB4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _mailboxStringFromMailbox:a2];

  return v2;
}

void sub_1000202F0(uint64_t a1)
{
  if (byte_1006D1C38 != *(a1 + 32))
  {
    byte_1006D1C38 = *(a1 + 32);
    v1 = +[NSNotificationCenter defaultCenter];
    [v1 postNotificationName:@"UnreadCountIncludesAllMessagesChangedNotification" object:0 userInfo:0];
  }
}

id sub_1000203A0()
{
  if (qword_1006DD838 != -1)
  {
    sub_100020638();
  }

  v1 = qword_1006DD830;

  return v1;
}

void sub_1000203E4(id a1)
{
  v1 = os_log_create("com.apple.email", "SharedMailboxController");
  v2 = qword_1006DD830;
  qword_1006DD830 = v1;
}

uint64_t sub_1000206C4()
{
  if (qword_1006D5E68 != -1)
  {
    swift_once();
  }

  v0 = sub_10025C9B0(&qword_1006D8110);
  return sub_1000208F4(v0, qword_1006EFF20);
}

uint64_t sub_10002073C()
{
  sub_1000206C4();
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D8110);
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10002080C()
{
  v1 = sub_10025C9B0(&qword_1006D8110);
  sub_10002094C(v1, qword_1006EFF20);
  sub_1000208F4(v1, qword_1006EFF20);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("+shouldDisplayFilterByUnreadTip", 0x1FuLL, 1);
  type metadata accessor for Tips.ParameterOption();
  _allocateUninitializedArray<A>(_:)();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1000208F4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_10002094C(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

BOOL sub_1000209F0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_100020B1C(id a1)
{
  v1 = objc_alloc_init(MessageListCellHelperMobileMailProxy);
  v2 = qword_1006DD2A8;
  qword_1006DD2A8 = v1;
}

void sub_100020D10(id a1)
{
  v1 = [MUIAddressListFormatter alloc];
  v5 = +[MFUserProfileProvider_iOS defaultProvider];
  v2 = +[MFAddressBookManager sharedManager];
  v3 = [v1 initWithUserProfileProvider:v5 addressBookManager:v2];
  v4 = qword_1006DD298;
  qword_1006DD298 = v3;
}

BOOL sub_100020DC4(int a1)
{
  v2 = dword_1006D5B20;
  if (dword_1006D5B20 < 0 || a1)
  {
    v2 = sub_10000D7EC(ShowToCCIndicatorsKey);
    dword_1006D5B20 = v2;
  }

  return v2 != 0;
}

void sub_100022440(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD2B8;
  qword_1006DD2B8 = v1;
}

id sub_100022890(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MUIContactStoreProvider alloc];
    v3 = [WeakRetained contactStore];
    v4 = [v2 initWithContactStore:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100022FDC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD2E8;
  qword_1006DD2E8 = v1;
}

uint64_t sub_100023078@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, char a5@<W5>, uint64_t a6@<X8>)
{
  if (a1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a2;
  }

  if (v19)
  {
    v18 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v6 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
    return (*(*(v6 - 8) + 104))(a6, v18);
  }

  else if (a3)
  {
    if (a4())
    {
      v17 = enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
      v8 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
      return (*(*(v8 - 8) + 104))(a6, v17);
    }

    else if (a5 == 1)
    {
      v16 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
      v9 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
      return (*(*(v9 - 8) + 104))(a6, v16);
    }

    else if (a5 == 2)
    {
      v15 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
      v10 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
      return (*(*(v10 - 8) + 104))(a6, v15);
    }

    else
    {
      v14 = enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
      v11 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
      return (*(*(v11 - 8) + 104))(a6, v14);
    }
  }

  else
  {
    v13 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v12 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
    return (*(*(v12 - 8) + 104))(a6, v13);
  }
}

uint64_t sub_100023440(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v12 = a2;
  v6 = a3;
  v9 = type metadata accessor for IndexPath();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v3 = &v5 - v5;
  v10 = &v5 - v5;
  swift_getObjectType();
  (*(v7 + 16))(v3, v6, v9);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v9);
  v14 = [v11 messageListSeparatorController:v12 isLastItemAtIndexPath:isa];
  _objc_release(isa);
  return v14;
}

const __CFString *sub_1000239BC(uint64_t a1)
{
  result = @"single";
  if (a1 <= 2)
  {
    v5 = @"expanded";
    if (a1 != 2)
    {
      v5 = @"single";
    }

    if (a1 == 1)
    {
      return @"thread";
    }

    else
    {
      return v5;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        return @"top_hit";
      case 4:
        return @"grouped_sender";
      case 0x7FFFFFFFFFFFFFFFLL:
        v3 = +[NSAssertionHandler currentHandler];
        v4 = [NSString stringWithUTF8String:"EMInteractionLoggerCellStyle cellStyleForModelStyle(MessageListCellViewModelStyle)"];
        [v3 handleFailureInFunction:v4 file:@"MessageListViewController.m" lineNumber:142 description:@"Unexpected automatic style"];

        return 0;
    }
  }

  return result;
}

void sub_100023AD0(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  [v11 setHighlighted:*(a1 + 32)];
  [v11 setFrame:{a3, a4, a5, a6}];
}

id sub_100023C80()
{
  objc_opt_self();
  if (qword_1006DD2D0 != -1)
  {
    sub_100023CC8();
  }

  v0 = qword_1006DD2C8;

  return v0;
}

id sub_100024084(uint64_t a1)
{
  result = [*(a1 + 32) effectiveUserInterfaceLayoutDirection];
  byte_1006DD8A8 = result == 1;
  return result;
}

void sub_100024290(id a1)
{
  v3 = +[UIColor tertiarySystemFillColor];
  v1 = [MUITextEncapsulation messageListDateTextEncapsulationWithColor:?];
  v2 = qword_1006DD2C8;
  qword_1006DD2C8 = v1;
}

id sub_100024318()
{
  objc_opt_self();
  v0 = qword_1006DD168;
  if (!qword_1006DD168)
  {
    v1 = +[EFDevice currentDevice];
    v2 = [v1 isPad];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100024C10;
    v48[3] = &unk_1006510C0;
    v50 = v2;
    v3 = objc_alloc_init(NSMutableArray);
    v49 = v3;
    v4 = objc_retainBlock(v48);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100026FB4;
    v45[3] = &unk_1006510E8;
    v47 = v2;
    v5 = v3;
    v46 = v5;
    v6 = objc_retainBlock(v45);
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"MARK_EMAIL_UNREAD" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"u", 1179648, "_markAsReadCommandInvoked:", v8, MFImageGlyphMenuBarMarkUnread, 0, 0, 24);

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"OPERATION_NOT_JUNK_DESC" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"j", 1179648, "_markAsJunkCommandInvoked:", v10, MFImageGlyphMenuBarMarkAsJunk, 0, 0, 24);

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"SEND_AGAIN" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"d", 1179648, "_sendCommandInvoked:", v12, MFImageGlyphMenuBarSendAgain, 0, 0, 20);

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"CLEAR_TIME_SENSITIVE" value:&stru_100662A88 table:@"Main"];
    (v6[2])(v6, "_clearTimeSensitiveCommandInvoked:", v14, MFImageGlyphMenuBarClearTimeSensitive, 0, 28);

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"MUTE" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"m", 393216, "_muteCommandInvoked:", v16, MFImageGlyphMenuBarMute, 0, 0, 24);

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"CLEAR_FLAG" value:&stru_100662A88 table:@"Main"];
    (v6[2])(v6, "_clearFlagCommandInvoked:", v18, 0, 0, 25);

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"TOGGLE_FLAG" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"l", 1179648, "_toggleFlagCommandInvoked:", v20, 0, 0, 0, 25);

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"REPLY" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"r", 0x100000, "_replyCommandInvoked:", v22, MFImageGlyphMenuBarReply, 0, 0, 21);

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"REPLY_ALL" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"r", 1179648, "_replyAllCommandInvoked:", v24, MFImageGlyphMenuBarReplyAll, 0, 0, 21);

    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"FORWARD" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"f", 1179648, "_forwardCommandInvoked:", v26, MFImageGlyphMenuBarForward, 0, 0, 21);

    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"PRINT" value:&stru_100662A88 table:@"Main"];
    (v4[2])(v4, @"p", 0x100000, "_printCommandInvoked:", v28, MFImageGlyphMenuBarPrint, 0, 0, 3);

    (v4[2])(v4, @" ", 0, "_pageDownCommandInvoked:", 0, 0, 1, 0, 19);
    (v4[2])(v4, @" ", 0x20000, "_pageUpCommandInvoked:", 0, 0, 1, 0, 19);
    v29 = +[MailSplitViewController conversationViewArrowCommands];
    v30 = [v5 arrayByAddingObjectsFromArray:v29];
    v31 = qword_1006DD168;
    qword_1006DD168 = v30;

    v32 = qword_1006DD168;
    v33 = [MFReadLaterTriageInteraction mailMenuCommandsWithSelector:"_remindMeCommandInvoked:"];
    v34 = [v32 arrayByAddingObjectsFromArray:v33];
    v35 = qword_1006DD168;
    qword_1006DD168 = v34;

    v36 = qword_1006DD168;
    v37 = [MFCategorizationTriageInteraction mailMenuCommandsWithSelector:"_categorizeCommandInvoked:"];
    v38 = [v36 arrayByAddingObjectsFromArray:v37];
    v39 = qword_1006DD168;
    qword_1006DD168 = v38;

    v40 = qword_1006DD168;
    v41 = [MFFlagColorTriageInteraction mailMenuCommandsWithSelector:"_setFlagColorCommandInvoked:"];
    v42 = [v40 arrayByAddingObjectsFromArray:v41];
    v43 = qword_1006DD168;
    qword_1006DD168 = v42;

    v0 = qword_1006DD168;
  }

  return v0;
}

void sub_100024B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  v26 = v24;

  _Unwind_Resume(a1);
}

void sub_100024C10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, void *a8, uint64_t a9)
{
  v25 = a2;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (v17 && *(a1 + 40) == 1)
  {
    v19 = [UIImage systemImageNamed:v17];
  }

  else
  {
    v19 = 0;
  }

  v20 = [UIKeyCommand commandWithTitle:v16 image:v19 action:a4 input:v25 modifierFlags:a3 propertyList:v18];
  v21 = v20;
  if (a7)
  {
    v22 = [v20 repeatBehavior];
  }

  else
  {
    v22 = 2;
  }

  [v21 setRepeatBehavior:v22];
  v23 = *(a1 + 32);
  v24 = [MFMailMenuCommand shortcutWithCommand:v21 menu:a9];
  [v23 addObject:v24];
}

void sub_100025650(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100025728(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD0A8;
  qword_1006DD0A8 = v1;
}

int64_t sub_1000257D8(id a1, MFMailMenuCommand *a2, MFMailMenuCommand *a3)
{
  v4 = a3;
  v5 = [(MFMailMenuCommand *)a2 position];
  v6 = [(MFMailMenuCommand *)v4 position];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_100025848(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_100025CC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, void *a8, uint64_t a9, void *a10)
{
  v17 = a2;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a10;
  if (v19 && *(a1 + 32) == 1)
  {
    v22 = [UIImage systemImageNamed:v19];
  }

  else
  {
    v22 = 0;
  }

  v23 = [UIKeyCommand commandWithTitle:v18 image:v22 action:a4 input:v17 modifierFlags:a3 propertyList:v20];
  v24 = v23;
  if (a7)
  {
    v25 = [v23 repeatBehavior];
  }

  else
  {
    v25 = 2;
  }

  [v24 setRepeatBehavior:v25];
  v26 = [MFMailMenuCommand shortcutWithCommand:v24 menu:a9 position:v21];

  return v26;
}

id sub_100025E4C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a1 + 32) + 16))(*(a1 + 32), a2);

  return v2;
}

id sub_100025E9C()
{
  objc_opt_self();
  v0 = qword_1006DD178;
  if (!qword_1006DD178)
  {
    v1 = +[EFDevice currentDevice];
    v2 = [v1 isPad];

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100025CC4;
    v69[3] = &unk_100651108;
    v70 = v2;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100025E4C;
    v67[3] = &unk_100651130;
    v61 = objc_retainBlock(v69);
    v68 = v61;
    v64 = objc_retainBlock(v67);
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10012F418;
    v65[3] = &unk_100651150;
    v66 = v2;
    v62 = objc_retainBlock(v65);
    v3 = (v64[2])(v64, @"a", 1310720, "_archiveShortcutInvoked:", 0, MFImageGlyphMenuBarArchive, 0, 0, 27);
    v85[0] = v3;
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"GET_ALL_NEW_MAIL" value:&stru_100662A88 table:@"Main"];
    v6 = (v64[2])(v64, @"n", 1179648, "_refresh:", v5, MFImageGlyphMenuBarGetAllNewMail, 0, 0, 15);
    v85[1] = v6;
    v7 = [NSArray arrayWithObjects:v85 count:2];
    v63 = [NSMutableArray arrayWithArray:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"MARK_ALL_READ" value:&stru_100662A88 table:@"Main"];
    v10 = (v62[2])(v62, "_markAllAsReadCommandInvoked:", v9, MFImageGlyphMenuBarMarkRead, 0, 15);
    [v63 addObject:v10];

    v11 = (v64[2])(v64, @"m", 1179648, "_toggleSidebar:", 0, MFImageGlyphMenuBarToggleSidebar, 1, 0, 11);
    [v63 addObject:v11];

    v12 = 1;
    do
    {
      v13 = [NSString stringWithFormat:@"%d", v12];
      v83 = @"MailKBMoveMessageToFavoritePlistKey";
      v14 = (v12 - 1);
      v15 = [NSNumber numberWithInt:v14];
      v84 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v17 = (v64[2])(v64, v13, 1310720, "_moveMessageToFavoriteMailboxShortcutInvoked:", 0, 0, 0, v16, 17);
      [v63 addObject:v17];

      v81 = @"MailKBIsFavoritePlistKey";
      v18 = [NSNumber numberWithInt:v14];
      v82 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v20 = (v64[2])(v64, v13, 0x100000, "_favoriteMailboxShortcutInvoked:", 0, 0, 0, v19, 16);
      [v63 addObject:v20];

      v12 = (v14 + 2);
    }

    while (v12 != 10);
    v21 = _EFLocalizedString();
    v22 = (v64[2])(v64, @"[", 1310720, "_previousMailboxShortcutInvoked:", v21, 0, 0, 0, 14);
    [v63 addObject:v22];

    v23 = _EFLocalizedString();
    v24 = (v64[2])(v64, @"]", 1310720, "_nextMailboxShortcutInvoked:", v23, 0, 0, 0, 14);
    [v63 addObject:v24];

    v25 = _EFLocalizedString();
    v26 = (v61[2])(v61, @"o", 0x100000, "_openMessageCommandInvoked:", v25, 0, 0, 0, 2, &off_100674240);
    [v63 addObject:v26];

    v27 = v64;
    v59 = +[NSBundle mainBundle];
    v57 = [v59 localizedStringForKey:@"SCROLL_TO_CURRENT_MESSAGE" value:&stru_100662A88 table:@"Main"];
    v80[0] = (v27[2])(v27, @"j", 0x100000, "_scrollToCurrentMessage:", v57, 0, 0, 0, 10);
    v58 = v80[0];
    v56 = +[NSBundle mainBundle];
    v55 = [v56 localizedStringForKey:@"SCROLL_TO_FIRST_MESSAGE" value:&stru_100662A88 table:@"Main"];
    v54 = (v27[2])(v27, @"t", 1310720, "_scrollMessageListToTop:");
    v80[1] = v54;
    v78[0] = @"MailKBIsLeftArrowPlistKey";
    v78[1] = @"MailKBIsSimulatorPlistKey";
    v79[0] = &__kCFBooleanFalse;
    v79[1] = &__kCFBooleanFalse;
    v53 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
    v52 = (v64[2])(v64, UIKeyInputRightArrow, 0, "_expandCollapseThreadCommand:", 0, 0, 0);
    v80[2] = v52;
    v76[0] = @"MailKBIsLeftArrowPlistKey";
    v76[1] = @"MailKBIsSimulatorPlistKey";
    v77[0] = &__kCFBooleanTrue;
    v77[1] = &__kCFBooleanFalse;
    v51 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
    v50 = (v64[2])(v64, UIKeyInputLeftArrow, 0, "_expandCollapseThreadCommand:", 0, 0, 0);
    v80[3] = v50;
    v74[0] = @"MailKBIsLeftArrowPlistKey";
    v74[1] = @"MailKBIsSimulatorPlistKey";
    v75[0] = &__kCFBooleanFalse;
    v75[1] = &__kCFBooleanTrue;
    v49 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
    v28 = (v64[2])(v64, UIKeyInputRightArrow, 0x100000, "_expandCollapseThreadCommand:", 0, 0, 0);
    v80[4] = v28;
    v72[0] = @"MailKBIsLeftArrowPlistKey";
    v72[1] = @"MailKBIsSimulatorPlistKey";
    v73[0] = &__kCFBooleanTrue;
    v73[1] = &__kCFBooleanTrue;
    v29 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
    v30 = (v64[2])(v64, UIKeyInputLeftArrow, 0x100000, "_expandCollapseThreadCommand:", 0, 0, 0, v29, 19);
    v80[5] = v30;
    v31 = (v64[2])(v64, @"l", 0x100000, "_filterCommand:", 0, MFImageGlyphMenuBarFilter, 0, 0, 12);
    v80[6] = v31;
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"MAILBOX_SEARCH" value:&stru_100662A88 table:@"Main"];
    v34 = (v64[2])(v64, @"f", 1572864, "_mailboxSearchKeyCommandInvoked:", v33, MFImageGlyphMenuBarMailboxSearch, 0, 0, 9);
    v80[7] = v34;
    v35 = [NSArray arrayWithObjects:v80 count:8];
    [v63 addObjectsFromArray:v35];

    if (EMBlackPearlIsFeatureEnabled())
    {
      v36 = _EFLocalizedStringFromTable();
      v37 = (v64[2])(v64, @"1", 1572864, "_selectPrimary", v36, MFImageGlyphMenuBarCategoryPrimary, 0, 0, 18);
      v71[0] = v37;
      v60 = _EFLocalizedStringFromTable();
      v38 = (v64[2])(v64, @"2", 1572864, "_selectTransactions");
      v71[1] = v38;
      v39 = _EFLocalizedStringFromTable();
      v40 = (v64[2])(v64, @"3", 1572864, "_selectUpdates", v39, MFImageGlyphMenuBarCategoryUpdates, 0, 0, 18);
      v71[2] = v40;
      v41 = _EFLocalizedStringFromTable();
      v42 = (v64[2])(v64, @"4", 1572864, "_selectPromotions", v41, MFImageGlyphMenuBarCategoryPromotions, 0, 0, 18);
      v71[3] = v42;
      v43 = _EFLocalizedStringFromTable();
      v44 = (v64[2])(v64, @"5", 1572864, "_selectAllMail", v43, MFImageGlyphMenuBarCategoryAllMail, 0, 0, 18);
      v71[4] = v44;
      v45 = [NSArray arrayWithObjects:v71 count:5];
      [v63 addObjectsFromArray:v45];
    }

    v46 = [v63 copy];
    v47 = qword_1006DD178;
    qword_1006DD178 = v46;

    v0 = qword_1006DD178;
  }

  return v0;
}

void sub_100026FB4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v17 = a3;
  v11 = a4;
  v12 = a5;
  if (v11 && *(a1 + 40) == 1)
  {
    v13 = [UIImage systemImageNamed:v11];
  }

  else
  {
    v13 = 0;
  }

  v14 = [UICommand commandWithTitle:v17 image:v13 action:a2 propertyList:v12];
  v15 = *(a1 + 32);
  v16 = [MFMailMenuCommand shortcutWithCommand:v14 menu:a6];
  [v15 addObject:v16];
}

id sub_100027104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = [UIKeyCommand commandWithTitle:a5 image:0 action:a4 input:a2 modifierFlags:a3 propertyList:a7];
  v9 = v8;
  if (a6)
  {
    v10 = [v8 repeatBehavior];
  }

  else
  {
    v10 = 2;
  }

  [v9 setRepeatBehavior:v10];
  v11 = [MFMailMenuCommand shortcutWithCommand:v9 menu:19];

  return v11;
}

void sub_10002733C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000275E0(uint64_t a1)
{
  if (a1)
  {
    v2 = +[MFDiskFreeSpaceMonitor defaultMonitor];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100129354;
    v3[3] = &unk_10064F6F8;
    v3[4] = a1;
    [v2 getFreeSpaceStatusWithCompletionHandler:v3];
  }
}

void sub_10002776C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained isRefreshing];
    v4 = [v3 getObject];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      v6 = [v2 refreshControl];
      [v6 beginRefreshing];

      v7 = [v2 collectionView];
      [v7 contentOffset];
      v9 = v8;

      v10 = [v2 collectionView];
      v11 = [v2 refreshControl];
      [v11 frame];
      [v10 setContentOffset:1 animated:{0.0, v9 - v12}];

      v13 = +[MessageListViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v18 = 138412546;
        v19 = v15;
        v20 = 2048;
        v21 = v2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p> Restarting the refresh control animation", &v18, 0x16u);
      }
    }

    else
    {
      v13 = +[MessageListViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = 138412546;
        v19 = v17;
        v20 = 2048;
        v21 = v2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p> Refresh complete, skipping resume animation", &v18, 0x16u);
      }
    }
  }
}

uint64_t sub_10002836C()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000287C0()
{

  return swift_deallocObject();
}

uint64_t sub_100028FA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000290AC()
{
  v2 = *(type metadata accessor for IntentFile() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_100029178()
{
  v2 = *(type metadata accessor for IntentFile() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1000293F4()
{
  v2 = *(type metadata accessor for URL() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_100029598()
{
  v2 = *(type metadata accessor for IntentFile() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_100029784()
{
  if (*(v0 + 40))
  {
    sub_1000160F4(v2 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1000297D8()
{

  return swift_deallocObject();
}

uint64_t sub_100029850()
{

  return swift_deallocObject();
}

uint64_t sub_10002A480(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_10002A570(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_10002A668()
{

  _objc_release(*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_10002ABE0()
{

  return swift_deallocObject();
}

uint64_t sub_10002AC30()
{
  type metadata accessor for Array();
  sub_10025CAA4(&unk_1006DCA70);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10002AE2C()
{
  v4 = type metadata accessor for URL();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_10002AFC4()
{

  return swift_deallocObject();
}

uint64_t sub_10002B07C()
{

  return swift_deallocObject();
}

uint64_t sub_10002B14C()
{

  return swift_deallocObject();
}

uint64_t sub_10002B194()
{

  swift_unknownObjectRelease();
  sub_1000160F4(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10002B354()
{
  if (*(v0 + 40))
  {
    sub_1000160F4(v2 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_10002B3A8()
{

  return swift_deallocObject();
}

uint64_t sub_10002B428()
{

  return swift_deallocObject();
}

uint64_t sub_10002B7D0(uint64_t a1)
{
  v6 = a1 + *(sub_10025C9B0(&qword_1006D8490) + 44);
  sub_1002EF150(*v6, *(v6 + 8), *(v6 + 16) & 1);

  v5 = sub_10025C9B0(&qword_1006D8498);
  v4 = *(v5 + 48);
  v1 = sub_10025C9B0(&qword_1006D84A0);
  (*(*(v1 - 8) + 8))(v6 + v4);
  v7 = *(v5 + 64);
  v8 = *(sub_10025C9B0(&qword_1006D84A8) + 44);
  v9 = sub_10025C9B0(&qword_1006D84B0);
  v10 = *(*(v9 - 8) + 8);
  v10();
  v2 = sub_10025C9B0(&qword_1006D84B8);
  (v10)(v6 + v7 + v8 + *(v2 + 48), v9);
  return a1;
}

uint64_t sub_10002B96C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(sub_10025C9B0(&qword_1006D8490) + 44);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_1002EF238(v7, v8, v9 & 1);
  v12 = a2 + v6;
  *v12 = v7;
  *(v12 + 8) = v8;
  *(v12 + 16) = v9 & 1;
  v10 = *(a1 + v6 + 24);

  *(v12 + 24) = v10;
  v13 = sub_10025C9B0(&qword_1006D8498);
  v11 = *(v13 + 48);
  v2 = sub_10025C9B0(&qword_1006D84A0);
  (*(*(v2 - 8) + 16))(a2 + v6 + v11, a1 + v6 + v11);
  v16 = a1 + v6 + *(v13 + 64);
  v14 = a2 + v6 + *(v13 + 64);
  *v14 = *v16;
  *(v14 + 16) = *(v16 + 16);
  v15 = *(sub_10025C9B0(&qword_1006D84A8) + 44);
  v17 = sub_10025C9B0(&qword_1006D84B0);
  v18 = *(*(v17 - 8) + 16);
  v18();
  v3 = sub_10025C9B0(&qword_1006D84B8);
  (v18)(v14 + v15 + *(v3 + 48), v16 + v15 + *(v3 + 48), v17);
  v4 = sub_10025C9B0(&qword_1006D8470);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_10002BC04(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_10025C9B0(&qword_1006D8420);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = type metadata accessor for Date();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 24), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 36)) < &_mh_execute_header)
      {
        v4 = *(a1 + *(a3 + 36));
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_10002BDC0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_10025C9B0(&qword_1006D8420);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = type metadata accessor for Date();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 24), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002BF54(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = type metadata accessor for UUID();
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = type metadata accessor for Date();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 24) + 8) < &_mh_execute_header)
      {
        v4 = *(a1 + *(a3 + 24) + 8);
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_10002C108(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = type metadata accessor for UUID();
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = type metadata accessor for Date();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C2AC(uint64_t a1, uint64_t a2)
{
  sub_10025C9B0(&unk_1006D8710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10025C9B0(&qword_1006D86E8);
  }

  else
  {
    v2 = sub_10025C9B0(&qword_1006D8708);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_10002C3BC(uint64_t a1, uint64_t a2)
{
  sub_10025C9B0(&unk_1006D8710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10025C9B0(&qword_1006D86E8);
  }

  else
  {
    v2 = sub_10025C9B0(&qword_1006D8708);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_10002C4CC(uint64_t a1)
{
  sub_10025C9B0(&unk_1006D8710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10025C9B0(&qword_1006D86E8);
  }

  else
  {
    v1 = sub_10025C9B0(&qword_1006D8708);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_10002C5EC(uint64_t a1)
{
  v20 = *(sub_10025C9B0(&qword_1006D8908) + 44);
  sub_1002EF150(*(a1 + v20), *(a1 + v20 + 8), *(a1 + v20 + 16) & 1);

  v21 = sub_10025C9B0(&qword_1006D8910);
  v22 = *(v21 + 36);
  v23 = type metadata accessor for AccessibilityAttachmentModifier();
  v24 = *(*(v23 - 8) + 8);
  v24(a1 + v20 + v22);
  v25 = *(sub_10025C9B0(&qword_1006D8918) + 48);
  v26 = *(sub_10025C9B0(&qword_1006D8920) + 44);
  v27 = *(sub_10025C9B0(&qword_1006D8928) + 44);
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a1 + v20 + v25 + v26 + v27;
    sub_1002EF150(*v17, *(v17 + 8), *(v17 + 16) & 1);

    (v24)(v17 + *(v21 + 36), v23);
    sub_10025C9B0(&qword_1006D8938);
  }

  else
  {
    v18 = a1 + v20 + v25 + v26 + v27;
    sub_1002EF150(*v18, *(v18 + 8), *(v18 + 16) & 1);

    (v24)(v18 + *(v21 + 36), v23);
    sub_10025C9B0(&qword_1006D8938);

    sub_10025C9B0(&qword_1006D8940);
  }

  sub_10025C9B0(&qword_1006D8948);
  v14 = a1 + v20 + v25;

  v10 = v14 + v26 + v27 + *(sub_10025C9B0(&qword_1006D8950) + 48);
  sub_1002EF150(*v10, *(v10 + 8), *(v10 + 16) & 1);

  (v24)(v10 + *(v21 + 36), v23);
  sub_10025C9B0(&qword_1006D8958);

  v11 = v14 + v26 + *(sub_10025C9B0(&qword_1006D8960) + 64);
  v12 = v11 + *(sub_10025C9B0(&qword_1006D8968) + 44);
  sub_1002EF150(*v12, *(v12 + 8), *(v12 + 16) & 1);

  (v24)(v12 + *(v21 + 36), v23);

  v13 = v12 + *(sub_10025C9B0(&qword_1006D8970) + 48);
  sub_1002EF150(*v13, *(v13 + 8), *(v13 + 16) & 1);

  (v24)(v13 + *(v21 + 36), v23);
  v15 = v14 + *(sub_10025C9B0(&qword_1006D8978) + 36);
  v16 = v15 + *(sub_10025C9B0(&qword_1006D8980) + 44);
  v1 = sub_10025C9B0(&qword_1006D8988);
  if (!(*(*(v1 - 8) + 48))(v16, 1))
  {
    sub_1002EF150(*v16, *(v16 + 8), *(v16 + 16) & 1);

    (v24)(v16 + *(v21 + 36), v23);
    sub_10025C9B0(&qword_1006D8938);
  }

  v8 = sub_10025C9B0(&qword_1006D8990);
  v9 = v16 + *(v8 + 48);
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = sub_10025C9B0(&qword_1006D89A0);
    (v24)(v9 + *(v3 + 36), v23);
  }

  else
  {

    v2 = sub_10025C9B0(&qword_1006D89A0);
    (v24)(v9 + *(v2 + 36), v23);
    sub_10025C9B0(&qword_1006D89A8);
  }

  sub_10025C9B0(&qword_1006D89B0);

  v7 = v16 + *(v8 + 64);
  v4 = sub_10025C9B0(&qword_1006D89B8);
  if (!(*(*(v4 - 8) + 48))(v7, 1))
  {
    v6 = v7 + *(sub_10025C9B0(&qword_1006D89C0) + 48);
    sub_1002EF150(*v6, *(v6 + 8), *(v6 + 16) & 1);

    (v24)(v6 + *(v21 + 36), v23);
  }

  return a1;
}

__n128 sub_10002CE28(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v137 = *(sub_10025C9B0(&qword_1006D8908) + 44);
  v138 = *(a1 + v137);
  v139 = *(a1 + v137 + 8);
  v140 = *(a1 + v137 + 16);
  sub_1002EF238(v138, v139, v140 & 1);
  v146 = a2 + v137;
  *v146 = v138;
  *(v146 + 8) = v139;
  *(v146 + 16) = v140 & 1;
  v141 = *(a1 + v137 + 24);

  *(v146 + 24) = v141;
  v142 = sub_10025C9B0(&qword_1006D8910);
  v143 = *(v142 + 36);
  v144 = type metadata accessor for AccessibilityAttachmentModifier();
  v145 = *(*(v144 - 8) + 16);
  v145(a2 + v137 + v143, a1 + v137 + v143);
  v147 = *(sub_10025C9B0(&qword_1006D8918) + 48);
  v148 = a1 + v137 + v147;
  v149 = a2 + v137 + v147;
  *v149 = *v148;
  *(v149 + 16) = *(v148 + 16);
  v150 = *(sub_10025C9B0(&qword_1006D8920) + 44);
  v2 = v149 + v150;
  *v2 = *(v148 + v150);
  *(v2 + 16) = *(v148 + v150 + 16);
  v151 = *(sub_10025C9B0(&qword_1006D8928) + 44);
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v118 = a1 + v137 + v147 + v150 + v151;
    v114 = *v118;
    v115 = *(v118 + 8);
    v116 = *(v118 + 16);
    sub_1002EF238(*v118, v115, v116 & 1);
    v119 = a2 + v137 + v147 + v150 + v151;
    *v119 = v114;
    *(v119 + 8) = v115;
    *(v119 + 16) = v116 & 1;
    v117 = *(v118 + 24);

    *(v119 + 24) = v117;
    (v145)(v119 + *(v142 + 36), v118 + *(v142 + 36), v144);
    v7 = sub_10025C9B0(&qword_1006D8938);
    v121 = (v119 + *(v7 + 36));
    v8 = (v118 + *(v7 + 36));
    *v121 = *v8;
    v120 = v8[1];
    v122 = v8[2];

    v121[1] = v120;
    v121[2] = v122;
  }

  else
  {
    v130 = a1 + v137 + v147 + v150 + v151;
    v123 = *v130;
    v124 = *(v130 + 8);
    v125 = *(v130 + 16);
    sub_1002EF238(*v130, v124, v125 & 1);
    v131 = a2 + v137 + v147 + v150 + v151;
    *v131 = v123;
    *(v131 + 8) = v124;
    *(v131 + 16) = v125 & 1;
    v126 = *(v130 + 24);

    *(v131 + 24) = v126;
    (v145)(v131 + *(v142 + 36), v130 + *(v142 + 36), v144);
    v3 = sub_10025C9B0(&qword_1006D8938);
    v128 = (v131 + *(v3 + 36));
    v4 = (v130 + *(v3 + 36));
    *v128 = *v4;
    v127 = v4[1];
    v129 = v4[2];

    v128[1] = v127;
    v128[2] = v129;
    v5 = sub_10025C9B0(&qword_1006D8940);
    v133 = (v131 + *(v5 + 36));
    v6 = (v130 + *(v5 + 36));
    *v133 = *v6;
    v132 = v6[1];
    v134 = v6[2];

    v133[1] = v132;
    v133[2] = v134;
  }

  swift_storeEnumTagMultiPayload();
  v9 = sub_10025C9B0(&qword_1006D8948);
  v107 = a2 + v137 + v147;
  v76 = v107 + v150 + v151;
  v75 = v76 + *(v9 + 36);
  v108 = a1 + v137 + v147;
  v77 = v108 + v150 + v151;
  v74 = (v77 + *(v9 + 36));
  v72 = *v74;
  v73 = v74[1];

  *v75 = v72;
  *(v75 + 8) = v73;
  *(v75 + 16) = *(v74 + 1);
  v10 = sub_10025C9B0(&qword_1006D8950);
  v82 = v76 + *(v10 + 48);
  v83 = v77 + *(v10 + 48);
  v78 = *v83;
  v79 = *(v83 + 8);
  v80 = *(v83 + 16);
  sub_1002EF238(*v83, v79, v80 & 1);
  *v82 = v78;
  *(v82 + 8) = v79;
  *(v82 + 16) = v80 & 1;
  v81 = *(v83 + 24);

  *(v82 + 24) = v81;
  (v145)(v82 + *(v142 + 36), v83 + *(v142 + 36), v144);
  v94 = sub_10025C9B0(&qword_1006D8958);
  v87 = v82 + *(v94 + 36);
  v86 = (v83 + *(v94 + 36));
  v84 = *v86;
  v85 = v86[1];

  *v87 = v84;
  *(v87 + 8) = v85;
  *(v87 + 16) = *(v86 + 1);
  v11 = sub_10025C9B0(&qword_1006D8960);
  v12 = v107 + v150 + *(v11 + 48);
  v13 = v108 + v150 + *(v11 + 48);
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v88 = v107 + v150 + *(v11 + 64);
  v89 = v108 + v150 + *(v11 + 64);
  *v88 = *v89;
  *(v88 + 16) = *(v89 + 16);
  v14 = sub_10025C9B0(&qword_1006D8968);
  v99 = v88 + *(v14 + 44);
  v100 = v89 + *(v14 + 44);
  v90 = *v100;
  v91 = *(v100 + 8);
  v92 = *(v100 + 16);
  sub_1002EF238(*v100, v91, v92 & 1);
  *v99 = v90;
  *(v99 + 8) = v91;
  *(v99 + 16) = v92 & 1;
  v93 = *(v100 + 24);

  *(v99 + 24) = v93;
  (v145)(v99 + *(v142 + 36), v100 + *(v142 + 36), v144);
  v98 = v99 + *(v94 + 36);
  v97 = (v100 + *(v94 + 36));
  v95 = *v97;
  v96 = v97[1];

  *v98 = v95;
  *(v98 + 8) = v96;
  *(v98 + 16) = *(v97 + 1);
  v15 = sub_10025C9B0(&qword_1006D8970);
  v105 = v99 + *(v15 + 48);
  v106 = v100 + *(v15 + 48);
  v101 = *v106;
  v102 = *(v106 + 8);
  v103 = *(v106 + 16);
  sub_1002EF238(*v106, v102, v103 & 1);
  *v105 = v101;
  *(v105 + 8) = v102;
  *(v105 + 16) = v103 & 1;
  v104 = *(v106 + 24);

  *(v105 + 24) = v104;
  (v145)(v105 + *(v142 + 36), v106 + *(v142 + 36), v144);
  v16 = sub_10025C9B0(&qword_1006D8978);
  v109 = v107 + *(v16 + 36);
  v110 = v108 + *(v16 + 36);
  *v109 = *v110;
  *(v109 + 16) = *(v110 + 16);
  v17 = sub_10025C9B0(&qword_1006D8980);
  __dst = (v109 + *(v17 + 44));
  __src = (v110 + *(v17 + 44));
  v113 = *(sub_10025C9B0(&qword_1006D8988) - 8);
  if ((*(v113 + 48))(__src, 1))
  {
    v25 = sub_10025C9B0(&qword_1006D89E0);
    memcpy(__dst, __src, *(*(v25 - 8) + 64));
  }

  else
  {
    v65 = *__src;
    v66 = __src[1];
    v67 = *(__src + 16);
    sub_1002EF238(*__src, v66, v67 & 1);
    *__dst = v65;
    __dst[1] = v66;
    *(__dst + 16) = v67 & 1;
    v68 = __src[3];

    __dst[3] = v68;
    (v145)(__dst + *(v142 + 36), __src + *(v142 + 36), v144);
    v18 = sub_10025C9B0(&qword_1006D8938);
    v70 = (__dst + *(v18 + 36));
    v19 = (__src + *(v18 + 36));
    *v70 = *v19;
    v69 = v19[1];
    v71 = v19[2];

    v70[1] = v69;
    v70[2] = v71;
    v20 = sub_10025C9B0(&qword_1006D89C8);
    memcpy(__dst + *(v20 + 36), __src + *(v20 + 36), 0x30uLL);
    v21 = sub_10025C9B0(&qword_1006D89D0);
    *(__dst + *(v21 + 36)) = *(__src + *(v21 + 36));
    v22 = sub_10025C9B0(&qword_1006D89D8);
    v23 = __dst + *(v22 + 48);
    v24 = __src + *(v22 + 48);
    *v23 = *v24;
    v23[8] = v24[8];
    (*(v113 + 56))();
  }

  v62 = sub_10025C9B0(&qword_1006D8990);
  v63 = (__dst + *(v62 + 48));
  v64 = (__src + *(v62 + 48));
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = *v64;

    *v63 = v51;
    v52 = v64[1];

    v63[1] = v52;
    v53 = v64[2];

    v63[2] = v53;
    v54 = v64[3];

    v63[3] = v54;
    v29 = sub_10025C9B0(&qword_1006D89A0);
    (v145)(v63 + *(v29 + 36), v64 + *(v29 + 36), v144);
  }

  else
  {
    v55 = *v64;

    *v63 = v55;
    v56 = v64[1];

    v63[1] = v56;
    v57 = v64[2];

    v63[2] = v57;
    v58 = v64[3];

    v63[3] = v58;
    v26 = sub_10025C9B0(&qword_1006D89A0);
    (v145)(v63 + *(v26 + 36), v64 + *(v26 + 36), v144);
    v27 = sub_10025C9B0(&qword_1006D89A8);
    v60 = (v63 + *(v27 + 36));
    v28 = (v64 + *(v27 + 36));
    *v60 = *v28;
    v59 = v28[1];
    v61 = v28[2];

    v60[1] = v59;
    v60[2] = v61;
  }

  swift_storeEnumTagMultiPayload();
  v30 = sub_10025C9B0(&qword_1006D89B0);
  v46 = v63 + *(v30 + 36);
  v45 = v64 + *(v30 + 36);
  v43 = *v45;
  v44 = *(v45 + 1);

  *v46 = v43;
  *(v46 + 1) = v44;
  *(v46 + 1) = *(v45 + 1);
  v47 = __dst + *(v62 + 64);
  v48 = __src + *(v62 + 64);
  v49 = sub_10025C9B0(&qword_1006D89B8);
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v48, 1))
  {
    v34 = sub_10025C9B0(&qword_1006D89F8);
    memcpy(v47, v48, *(*(v34 - 8) + 64));
  }

  else
  {
    *v47 = *v48;
    v47[8] = v48[8];
    v31 = sub_10025C9B0(&qword_1006D89C0);
    v41 = &v47[*(v31 + 48)];
    v42 = &v48[*(v31 + 48)];
    v37 = *v42;
    v38 = *(v42 + 1);
    v39 = v42[16];
    sub_1002EF238(*v42, v38, v39 & 1);
    *v41 = v37;
    *(v41 + 1) = v38;
    v41[16] = v39 & 1;
    v40 = *(v42 + 3);

    *(v41 + 3) = v40;
    (v145)(&v41[*(v142 + 36)], &v42[*(v142 + 36)], v144);
    v32 = sub_10025C9B0(&qword_1006D89E8);
    memcpy(&v41[*(v32 + 36)], &v42[*(v32 + 36)], 0x30uLL);
    v33 = sub_10025C9B0(&qword_1006D89F0);
    *&v41[*(v33 + 36)] = *&v42[*(v33 + 36)];
    (*(v50 + 56))(v47, 0, 1, v49);
  }

  v35 = sub_10025C9B0(&qword_1006D8A00);
  result = *(v110 + *(v35 + 36));
  *(v109 + *(v35 + 36)) = result;
  return result;
}

__n128 sub_10002E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  v9 = *(a4 + 36);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);

  v4 = (a2 + v9);
  v4->n128_u64[0] = v10;
  v4->n128_u64[1] = v11;
  result = *(a1 + v9 + 16);
  v4[1] = result;
  return result;
}

uint64_t sub_10002E1C0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_10025C9B0(&qword_1006D88C8);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 36) + 8) < &_mh_execute_header)
    {
      v4 = *(a1 + *(a3 + 36) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_10002E2E8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_10025C9B0(&qword_1006D88C8);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002E4C4()
{
  sub_10025CAA4(&qword_1006D8A18);
  type metadata accessor for ModifiedContent();
  sub_1002FD8D8();
  return swift_getWitnessTable();
}

uint64_t sub_10002E558()
{
  v0 = *(*(type metadata accessor for InstantAnswerFlightContentView() - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10002E740(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(sub_10025C9B0(&qword_1006D89A0) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {

    v5 = a1 + *(sub_10025C9B0(&qword_1006D89A0) + 36);
    v1 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v1 - 8) + 8))(v5);
    sub_10025C9B0(&qword_1006D89A8);
  }

  sub_10025C9B0(&qword_1006D89B0);

  return a1;
}

__n128 sub_10002E900(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *a1;

    *a2 = v14;
    v15 = a1[1];

    a2[1] = v15;
    v16 = a1[2];

    a2[2] = v16;
    v17 = a1[3];

    a2[3] = v17;
    v6 = sub_10025C9B0(&qword_1006D89A0);
    v19 = a2 + *(v6 + 36);
    v18 = a1 + *(v6 + 36);
    v7 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v7 - 8) + 16))(v19, v18);
  }

  else
  {
    v20 = *a1;

    *a2 = v20;
    v21 = a1[1];

    a2[1] = v21;
    v22 = a1[2];

    a2[2] = v22;
    v23 = a1[3];

    a2[3] = v23;
    v2 = sub_10025C9B0(&qword_1006D89A0);
    v25 = a2 + *(v2 + 36);
    v24 = a1 + *(v2 + 36);
    v3 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v3 - 8) + 16))(v25, v24);
    v4 = sub_10025C9B0(&qword_1006D89A8);
    v27 = (a2 + *(v4 + 36));
    v5 = (a1 + *(v4 + 36));
    *v27 = *v5;
    v26 = v5[1];
    v28 = v5[2];

    v27[1] = v26;
    v27[2] = v28;
  }

  swift_storeEnumTagMultiPayload();
  v8 = sub_10025C9B0(&qword_1006D89B0);
  v13 = (a2 + *(v8 + 36));
  v12 = (a1 + *(v8 + 36));
  v10 = v12->n128_u64[0];
  v11 = v12->n128_u64[1];

  v13->n128_u64[0] = v10;
  v13->n128_u64[1] = v11;
  result = v12[1];
  v13[1] = result;
  return result;
}

uint64_t sub_10002EC08()
{
  v0 = *(*(type metadata accessor for InstantAnswerFlightContentView() - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10002EDF0()
{
  v4 = type metadata accessor for GeometryProxy();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_10002EED8()
{
  v4 = type metadata accessor for GeometryProxy();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_10002EFC0(uint64_t a1)
{
  v16 = *(sub_10025C9B0(&qword_1006D8920) + 44);
  v17 = *(sub_10025C9B0(&qword_1006D8928) + 44);
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = a1 + v16 + v17;
    sub_1002EF150(*v13, *(v13 + 8), *(v13 + 16) & 1);

    v12 = v13 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v12);
    sub_10025C9B0(&qword_1006D8938);
  }

  else
  {
    v15 = a1 + v16 + v17;
    sub_1002EF150(*v15, *(v15 + 8), *(v15 + 16) & 1);

    v14 = v15 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v1 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v1 - 8) + 8))(v14);
    sub_10025C9B0(&qword_1006D8938);

    sub_10025C9B0(&qword_1006D8940);
  }

  sub_10025C9B0(&qword_1006D8948);

  v5 = a1 + v16 + v17 + *(sub_10025C9B0(&qword_1006D8950) + 48);
  sub_1002EF150(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v8 = sub_10025C9B0(&qword_1006D8910);
  v4 = v5 + *(v8 + 36);
  v10 = type metadata accessor for AccessibilityAttachmentModifier();
  v11 = *(*(v10 - 8) + 8);
  v11(v4);
  sub_10025C9B0(&qword_1006D8958);

  v6 = a1 + v16 + *(sub_10025C9B0(&qword_1006D8960) + 64);
  v7 = v6 + *(sub_10025C9B0(&qword_1006D8968) + 44);
  sub_1002EF150(*v7, *(v7 + 8), *(v7 + 16) & 1);

  (v11)(v7 + *(v8 + 36), v10);

  v9 = v7 + *(sub_10025C9B0(&qword_1006D8970) + 48);
  sub_1002EF150(*v9, *(v9 + 8), *(v9 + 16) & 1);

  (v11)(v9 + *(v8 + 36), v10);
  return a1;
}

uint64_t sub_10002F430(uint64_t a1)
{
  v26 = *(sub_10025C9B0(&qword_1006D8920) + 44);
  v27 = *(sub_10025C9B0(&qword_1006D8928) + 44);
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = a1 + v26 + v27;
    sub_1002EF150(*v23, *(v23 + 8), *(v23 + 16) & 1);

    v22 = v23 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v22);
    sub_10025C9B0(&qword_1006D8938);
  }

  else
  {
    v25 = a1 + v26 + v27;
    sub_1002EF150(*v25, *(v25 + 8), *(v25 + 16) & 1);

    v24 = v25 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v1 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v1 - 8) + 8))(v24);
    sub_10025C9B0(&qword_1006D8938);

    sub_10025C9B0(&qword_1006D8940);
  }

  sub_10025C9B0(&qword_1006D8948);

  v13 = a1 + v26 + v27 + *(sub_10025C9B0(&qword_1006D8950) + 48);
  sub_1002EF150(*v13, *(v13 + 8), *(v13 + 16) & 1);

  v16 = sub_10025C9B0(&qword_1006D8910);
  v12 = v13 + *(v16 + 36);
  v18 = type metadata accessor for AccessibilityAttachmentModifier();
  v19 = *(*(v18 - 8) + 8);
  v19(v12);
  sub_10025C9B0(&qword_1006D8958);

  v14 = a1 + v26 + *(sub_10025C9B0(&qword_1006D8960) + 64);
  v15 = v14 + *(sub_10025C9B0(&qword_1006D8968) + 44);
  sub_1002EF150(*v15, *(v15 + 8), *(v15 + 16) & 1);

  (v19)(v15 + *(v16 + 36), v18);

  v17 = v15 + *(sub_10025C9B0(&qword_1006D8970) + 48);
  sub_1002EF150(*v17, *(v17 + 8), *(v17 + 16) & 1);

  (v19)(v17 + *(v16 + 36), v18);
  v20 = a1 + *(sub_10025C9B0(&qword_1006D8978) + 36);
  v21 = v20 + *(sub_10025C9B0(&qword_1006D8980) + 44);
  v3 = sub_10025C9B0(&qword_1006D8988);
  if (!(*(*(v3 - 8) + 48))(v21, 1))
  {
    sub_1002EF150(*v21, *(v21 + 8), *(v21 + 16) & 1);

    (v19)(v21 + *(v16 + 36), v18);
    sub_10025C9B0(&qword_1006D8938);
  }

  v10 = sub_10025C9B0(&qword_1006D8990);
  v11 = v21 + *(v10 + 48);
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v5 = sub_10025C9B0(&qword_1006D89A0);
    (v19)(v11 + *(v5 + 36), v18);
  }

  else
  {

    v4 = sub_10025C9B0(&qword_1006D89A0);
    (v19)(v11 + *(v4 + 36), v18);
    sub_10025C9B0(&qword_1006D89A8);
  }

  sub_10025C9B0(&qword_1006D89B0);

  v9 = v21 + *(v10 + 64);
  v6 = sub_10025C9B0(&qword_1006D89B8);
  if (!(*(*(v6 - 8) + 48))(v9, 1))
  {
    v8 = v9 + *(sub_10025C9B0(&qword_1006D89C0) + 48);
    sub_1002EF150(*v8, *(v8 + 8), *(v8 + 16) & 1);

    (v19)(v8 + *(v16 + 36), v18);
  }

  return a1;
}

__n128 sub_10002FC08(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v148 = *(sub_10025C9B0(&qword_1006D8920) + 44);
  v2 = a2 + v148;
  *v2 = *(a1 + v148);
  *(v2 + 16) = *(a1 + v148 + 16);
  v149 = *(sub_10025C9B0(&qword_1006D8928) + 44);
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v127 = a1 + v148 + v149;
    v121 = *v127;
    v122 = *(v127 + 8);
    v123 = *(v127 + 16);
    sub_1002EF238(*v127, v122, v123 & 1);
    v128 = a2 + v148 + v149;
    *v128 = v121;
    *(v128 + 8) = v122;
    *(v128 + 16) = v123 & 1;
    v124 = *(v127 + 24);

    *(v128 + 24) = v124;
    v9 = sub_10025C9B0(&qword_1006D8910);
    v126 = v128 + *(v9 + 36);
    v125 = v127 + *(v9 + 36);
    v10 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v10 - 8) + 16))(v126, v125);
    v11 = sub_10025C9B0(&qword_1006D8938);
    v130 = (v128 + *(v11 + 36));
    v12 = (v127 + *(v11 + 36));
    *v130 = *v12;
    v129 = v12[1];
    v131 = v12[2];

    v130[1] = v129;
    v130[2] = v131;
  }

  else
  {
    v141 = a1 + v148 + v149;
    v132 = *v141;
    v133 = *(v141 + 8);
    v134 = *(v141 + 16);
    sub_1002EF238(*v141, v133, v134 & 1);
    v142 = a2 + v148 + v149;
    *v142 = v132;
    *(v142 + 8) = v133;
    *(v142 + 16) = v134 & 1;
    v135 = *(v141 + 24);

    *(v142 + 24) = v135;
    v3 = sub_10025C9B0(&qword_1006D8910);
    v137 = v142 + *(v3 + 36);
    v136 = v141 + *(v3 + 36);
    v4 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v4 - 8) + 16))(v137, v136);
    v5 = sub_10025C9B0(&qword_1006D8938);
    v139 = (v142 + *(v5 + 36));
    v6 = (v141 + *(v5 + 36));
    *v139 = *v6;
    v138 = v6[1];
    v140 = v6[2];

    v139[1] = v138;
    v139[2] = v140;
    v7 = sub_10025C9B0(&qword_1006D8940);
    v144 = (v142 + *(v7 + 36));
    v8 = (v141 + *(v7 + 36));
    *v144 = *v8;
    v143 = v8[1];
    v145 = v8[2];

    v144[1] = v143;
    v144[2] = v145;
  }

  swift_storeEnumTagMultiPayload();
  v13 = sub_10025C9B0(&qword_1006D8948);
  v80 = a2 + v148 + v149;
  v79 = v80 + *(v13 + 36);
  v81 = a1 + v148 + v149;
  v78 = (v81 + *(v13 + 36));
  v76 = *v78;
  v77 = v78[1];

  *v79 = v76;
  *(v79 + 8) = v77;
  *(v79 + 16) = *(v78 + 1);
  v14 = sub_10025C9B0(&qword_1006D8950);
  v88 = v80 + *(v14 + 48);
  v89 = v81 + *(v14 + 48);
  v82 = *v89;
  v83 = *(v89 + 8);
  v84 = *(v89 + 16);
  sub_1002EF238(*v89, v83, v84 & 1);
  *v88 = v82;
  *(v88 + 8) = v83;
  *(v88 + 16) = v84 & 1;
  v85 = *(v89 + 24);

  *(v88 + 24) = v85;
  v112 = sub_10025C9B0(&qword_1006D8910);
  v87 = v88 + *(v112 + 36);
  v86 = v89 + *(v112 + 36);
  v114 = type metadata accessor for AccessibilityAttachmentModifier();
  v115 = *(*(v114 - 8) + 16);
  v115(v87, v86);
  v100 = sub_10025C9B0(&qword_1006D8958);
  v93 = v88 + *(v100 + 36);
  v92 = (v89 + *(v100 + 36));
  v90 = *v92;
  v91 = v92[1];

  *v93 = v90;
  *(v93 + 8) = v91;
  *(v93 + 16) = *(v92 + 1);
  v15 = sub_10025C9B0(&qword_1006D8960);
  v16 = a2 + v148 + *(v15 + 48);
  v17 = a1 + v148 + *(v15 + 48);
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v94 = a2 + v148 + *(v15 + 64);
  v95 = a1 + v148 + *(v15 + 64);
  *v94 = *v95;
  *(v94 + 16) = *(v95 + 16);
  v18 = sub_10025C9B0(&qword_1006D8968);
  v105 = v94 + *(v18 + 44);
  v106 = v95 + *(v18 + 44);
  v96 = *v106;
  v97 = *(v106 + 8);
  v98 = *(v106 + 16);
  sub_1002EF238(*v106, v97, v98 & 1);
  *v105 = v96;
  *(v105 + 8) = v97;
  *(v105 + 16) = v98 & 1;
  v99 = *(v106 + 24);

  *(v105 + 24) = v99;
  (v115)(v105 + *(v112 + 36), v106 + *(v112 + 36), v114);
  v104 = v105 + *(v100 + 36);
  v103 = (v106 + *(v100 + 36));
  v101 = *v103;
  v102 = v103[1];

  *v104 = v101;
  *(v104 + 8) = v102;
  *(v104 + 16) = *(v103 + 1);
  v19 = sub_10025C9B0(&qword_1006D8970);
  v111 = v105 + *(v19 + 48);
  v113 = v106 + *(v19 + 48);
  v107 = *v113;
  v108 = *(v113 + 8);
  v109 = *(v113 + 16);
  sub_1002EF238(*v113, v108, v109 & 1);
  *v111 = v107;
  *(v111 + 8) = v108;
  *(v111 + 16) = v109 & 1;
  v110 = *(v113 + 24);

  *(v111 + 24) = v110;
  (v115)(v111 + *(v112 + 36), v113 + *(v112 + 36), v114);
  v20 = sub_10025C9B0(&qword_1006D8978);
  v116 = a2 + *(v20 + 36);
  v117 = a1 + *(v20 + 36);
  *v116 = *v117;
  *(v116 + 16) = *(v117 + 16);
  v21 = sub_10025C9B0(&qword_1006D8980);
  __dst = (v116 + *(v21 + 44));
  __src = (v117 + *(v21 + 44));
  v120 = *(sub_10025C9B0(&qword_1006D8988) - 8);
  if ((*(v120 + 48))(__src, 1))
  {
    v29 = sub_10025C9B0(&qword_1006D89E0);
    memcpy(__dst, __src, *(*(v29 - 8) + 64));
  }

  else
  {
    v69 = *__src;
    v70 = __src[1];
    v71 = *(__src + 16);
    sub_1002EF238(*__src, v70, v71 & 1);
    *__dst = v69;
    __dst[1] = v70;
    *(__dst + 16) = v71 & 1;
    v72 = __src[3];

    __dst[3] = v72;
    (v115)(__dst + *(v112 + 36), __src + *(v112 + 36), v114);
    v22 = sub_10025C9B0(&qword_1006D8938);
    v74 = (__dst + *(v22 + 36));
    v23 = (__src + *(v22 + 36));
    *v74 = *v23;
    v73 = v23[1];
    v75 = v23[2];

    v74[1] = v73;
    v74[2] = v75;
    v24 = sub_10025C9B0(&qword_1006D89C8);
    memcpy(__dst + *(v24 + 36), __src + *(v24 + 36), 0x30uLL);
    v25 = sub_10025C9B0(&qword_1006D89D0);
    *(__dst + *(v25 + 36)) = *(__src + *(v25 + 36));
    v26 = sub_10025C9B0(&qword_1006D89D8);
    v27 = __dst + *(v26 + 48);
    v28 = __src + *(v26 + 48);
    *v27 = *v28;
    v27[8] = v28[8];
    (*(v120 + 56))();
  }

  v66 = sub_10025C9B0(&qword_1006D8990);
  v67 = (__dst + *(v66 + 48));
  v68 = (__src + *(v66 + 48));
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = *v68;

    *v67 = v55;
    v56 = v68[1];

    v67[1] = v56;
    v57 = v68[2];

    v67[2] = v57;
    v58 = v68[3];

    v67[3] = v58;
    v33 = sub_10025C9B0(&qword_1006D89A0);
    (v115)(v67 + *(v33 + 36), v68 + *(v33 + 36), v114);
  }

  else
  {
    v59 = *v68;

    *v67 = v59;
    v60 = v68[1];

    v67[1] = v60;
    v61 = v68[2];

    v67[2] = v61;
    v62 = v68[3];

    v67[3] = v62;
    v30 = sub_10025C9B0(&qword_1006D89A0);
    (v115)(v67 + *(v30 + 36), v68 + *(v30 + 36), v114);
    v31 = sub_10025C9B0(&qword_1006D89A8);
    v64 = (v67 + *(v31 + 36));
    v32 = (v68 + *(v31 + 36));
    *v64 = *v32;
    v63 = v32[1];
    v65 = v32[2];

    v64[1] = v63;
    v64[2] = v65;
  }

  swift_storeEnumTagMultiPayload();
  v34 = sub_10025C9B0(&qword_1006D89B0);
  v50 = v67 + *(v34 + 36);
  v49 = v68 + *(v34 + 36);
  v47 = *v49;
  v48 = *(v49 + 1);

  *v50 = v47;
  *(v50 + 1) = v48;
  *(v50 + 1) = *(v49 + 1);
  v51 = __dst + *(v66 + 64);
  v52 = __src + *(v66 + 64);
  v53 = sub_10025C9B0(&qword_1006D89B8);
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v52, 1))
  {
    v38 = sub_10025C9B0(&qword_1006D89F8);
    memcpy(v51, v52, *(*(v38 - 8) + 64));
  }

  else
  {
    *v51 = *v52;
    v51[8] = v52[8];
    v35 = sub_10025C9B0(&qword_1006D89C0);
    v45 = &v51[*(v35 + 48)];
    v46 = &v52[*(v35 + 48)];
    v41 = *v46;
    v42 = *(v46 + 1);
    v43 = v46[16];
    sub_1002EF238(*v46, v42, v43 & 1);
    *v45 = v41;
    *(v45 + 1) = v42;
    v45[16] = v43 & 1;
    v44 = *(v46 + 3);

    *(v45 + 3) = v44;
    (v115)(&v45[*(v112 + 36)], &v46[*(v112 + 36)], v114);
    v36 = sub_10025C9B0(&qword_1006D89E8);
    memcpy(&v45[*(v36 + 36)], &v46[*(v36 + 36)], 0x30uLL);
    v37 = sub_10025C9B0(&qword_1006D89F0);
    *&v45[*(v37 + 36)] = *&v46[*(v37 + 36)];
    (*(v54 + 56))(v51, 0, 1, v53);
  }

  v39 = sub_10025C9B0(&qword_1006D8A00);
  result = *(v117 + *(v39 + 36));
  *(v116 + *(v39 + 36)) = result;
  return result;
}

uint64_t sub_100030CFC(uint64_t a1)
{
  v16 = *(sub_10025C9B0(&qword_1006D8980) + 44);
  v1 = sub_10025C9B0(&qword_1006D8988);
  if (!(*(*(v1 - 8) + 48))(a1 + v16, 1))
  {
    sub_1002EF150(*(a1 + v16), *(a1 + v16 + 8), *(a1 + v16 + 16) & 1);

    v15 = a1 + v16 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v15);
    sub_10025C9B0(&qword_1006D8938);
  }

  v13 = sub_10025C9B0(&qword_1006D8990);
  v14 = a1 + v16 + *(v13 + 48);
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = v14 + *(sub_10025C9B0(&qword_1006D89A0) + 36);
    v4 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v4 - 8) + 8))(v11);
  }

  else
  {

    v12 = v14 + *(sub_10025C9B0(&qword_1006D89A0) + 36);
    v3 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v3 - 8) + 8))(v12);
    sub_10025C9B0(&qword_1006D89A8);
  }

  sub_10025C9B0(&qword_1006D89B0);

  v10 = a1 + v16 + *(v13 + 64);
  v5 = sub_10025C9B0(&qword_1006D89B8);
  if (!(*(*(v5 - 8) + 48))(v10, 1))
  {
    v8 = v10 + *(sub_10025C9B0(&qword_1006D89C0) + 48);
    sub_1002EF150(*v8, *(v8 + 8), *(v8 + 16) & 1);

    v9 = v8 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v6 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v6 - 8) + 8))(v9);
  }

  return a1;
}

uint64_t sub_100031128(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v71 = *(sub_10025C9B0(&qword_1006D8980) + 44);
  v73 = *(sub_10025C9B0(&qword_1006D8988) - 8);
  if ((*(v73 + 48))(a1 + v71, 1))
  {
    v11 = sub_10025C9B0(&qword_1006D89E0);
    memcpy((a2 + v71), (a1 + v71), *(*(v11 - 8) + 64));
  }

  else
  {
    v60 = *(a1 + v71);
    v61 = *(a1 + v71 + 8);
    v62 = *(a1 + v71 + 16);
    sub_1002EF238(v60, v61, v62 & 1);
    v69 = a2 + v71;
    *v69 = v60;
    *(v69 + 8) = v61;
    *(v69 + 16) = v62 & 1;
    v63 = *(a1 + v71 + 24);

    *(v69 + 24) = v63;
    v2 = sub_10025C9B0(&qword_1006D8910);
    v65 = a2 + v71 + *(v2 + 36);
    v64 = a1 + v71 + *(v2 + 36);
    v3 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v3 - 8) + 16))(v65, v64);
    v4 = sub_10025C9B0(&qword_1006D8938);
    v67 = (a2 + v71 + *(v4 + 36));
    v5 = (a1 + v71 + *(v4 + 36));
    *v67 = *v5;
    v66 = v5[1];
    v68 = v5[2];

    v67[1] = v66;
    v67[2] = v68;
    v6 = sub_10025C9B0(&qword_1006D89C8);
    memcpy((a2 + v71 + *(v6 + 36)), (a1 + v71 + *(v6 + 36)), 0x30uLL);
    v7 = sub_10025C9B0(&qword_1006D89D0);
    *(v69 + *(v7 + 36)) = *(a1 + v71 + *(v7 + 36));
    v8 = sub_10025C9B0(&qword_1006D89D8);
    v9 = a2 + v71 + *(v8 + 48);
    v10 = a1 + v71 + *(v8 + 48);
    *v9 = *v10;
    *(v9 + 8) = *(v10 + 8);
    (*(v73 + 56))();
  }

  v57 = sub_10025C9B0(&qword_1006D8990);
  v58 = (a2 + v71 + *(v57 + 48));
  v59 = (a1 + v71 + *(v57 + 48));
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *v59;

    *v58 = v42;
    v43 = v59[1];

    v58[1] = v43;
    v44 = v59[2];

    v58[2] = v44;
    v45 = v59[3];

    v58[3] = v45;
    v16 = sub_10025C9B0(&qword_1006D89A0);
    v47 = v58 + *(v16 + 36);
    v46 = v59 + *(v16 + 36);
    v17 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v17 - 8) + 16))(v47, v46);
  }

  else
  {
    v48 = *v59;

    *v58 = v48;
    v49 = v59[1];

    v58[1] = v49;
    v50 = v59[2];

    v58[2] = v50;
    v51 = v59[3];

    v58[3] = v51;
    v12 = sub_10025C9B0(&qword_1006D89A0);
    v53 = v58 + *(v12 + 36);
    v52 = v59 + *(v12 + 36);
    v13 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v13 - 8) + 16))(v53, v52);
    v14 = sub_10025C9B0(&qword_1006D89A8);
    v55 = (v58 + *(v14 + 36));
    v15 = (v59 + *(v14 + 36));
    *v55 = *v15;
    v54 = v15[1];
    v56 = v15[2];

    v55[1] = v54;
    v55[2] = v56;
  }

  swift_storeEnumTagMultiPayload();
  v18 = sub_10025C9B0(&qword_1006D89B0);
  v37 = v58 + *(v18 + 36);
  v36 = v59 + *(v18 + 36);
  v34 = *v36;
  v35 = *(v36 + 1);

  *v37 = v34;
  *(v37 + 1) = v35;
  *(v37 + 1) = *(v36 + 1);
  __dst = (a2 + v71 + *(v57 + 64));
  __src = (a1 + v71 + *(v57 + 64));
  v40 = sub_10025C9B0(&qword_1006D89B8);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(__src, 1))
  {
    v24 = sub_10025C9B0(&qword_1006D89F8);
    memcpy(__dst, __src, *(*(v24 - 8) + 64));
  }

  else
  {
    *__dst = *__src;
    __dst[8] = __src[8];
    v19 = sub_10025C9B0(&qword_1006D89C0);
    v32 = &__dst[*(v19 + 48)];
    v33 = &__src[*(v19 + 48)];
    v26 = *v33;
    v27 = *(v33 + 1);
    v28 = v33[16];
    sub_1002EF238(*v33, v27, v28 & 1);
    *v32 = v26;
    *(v32 + 1) = v27;
    v32[16] = v28 & 1;
    v29 = *(v33 + 3);

    *(v32 + 3) = v29;
    v20 = sub_10025C9B0(&qword_1006D8910);
    v31 = &v32[*(v20 + 36)];
    v30 = &v33[*(v20 + 36)];
    v21 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v21 - 8) + 16))(v31, v30);
    v22 = sub_10025C9B0(&qword_1006D89E8);
    memcpy(&v32[*(v22 + 36)], &v33[*(v22 + 36)], 0x30uLL);
    v23 = sub_10025C9B0(&qword_1006D89F0);
    *&v32[*(v23 + 36)] = *&v33[*(v23 + 36)];
    (*(v41 + 56))(__dst, 0, 1, v40);
  }

  return a2;
}

uint64_t sub_100031A50(uint64_t a1)
{
  v9 = *(sub_10025C9B0(&qword_1006D8928) + 44);
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002EF150(*(a1 + v9), *(a1 + v9 + 8), *(a1 + v9 + 16) & 1);

    v7 = a1 + v9 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v7);
    sub_10025C9B0(&qword_1006D8938);
  }

  else
  {
    sub_1002EF150(*(a1 + v9), *(a1 + v9 + 8), *(a1 + v9 + 16) & 1);

    v8 = a1 + v9 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v1 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v1 - 8) + 8))(v8);
    sub_10025C9B0(&qword_1006D8938);

    sub_10025C9B0(&qword_1006D8940);
  }

  sub_10025C9B0(&qword_1006D8948);

  v6 = a1 + v9 + *(sub_10025C9B0(&qword_1006D8950) + 48);
  sub_1002EF150(*v6, *(v6 + 8), *(v6 + 16) & 1);

  v5 = v6 + *(sub_10025C9B0(&qword_1006D8910) + 36);
  v3 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v3 - 8) + 8))(v5);
  sub_10025C9B0(&qword_1006D8958);

  return a1;
}

uint64_t sub_100031D58(uint64_t a1)
{
  v3 = a1 + *(sub_10025C9B0(&qword_1006D8968) + 44);
  sub_1002EF150(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4 = sub_10025C9B0(&qword_1006D8910);
  v2 = *(v4 + 36);
  v6 = type metadata accessor for AccessibilityAttachmentModifier();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v2);
  sub_10025C9B0(&qword_1006D8958);

  v5 = v3 + *(sub_10025C9B0(&qword_1006D8970) + 48);
  sub_1002EF150(*v5, *(v5 + 8), *(v5 + 16) & 1);

  (v7)(v5 + *(v4 + 36), v6);
  return a1;
}

__n128 sub_100031EC4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v58 = *(sub_10025C9B0(&qword_1006D8928) + 44);
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *(a1 + v58);
    v35 = *(a1 + v58 + 8);
    v36 = *(a1 + v58 + 16);
    sub_1002EF238(v34, v35, v36 & 1);
    v40 = a2 + v58;
    *v40 = v34;
    *(v40 + 8) = v35;
    *(v40 + 16) = v36 & 1;
    v37 = *(a1 + v58 + 24);

    *(v40 + 24) = v37;
    v8 = sub_10025C9B0(&qword_1006D8910);
    v39 = a2 + v58 + *(v8 + 36);
    v38 = a1 + v58 + *(v8 + 36);
    v9 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v9 - 8) + 16))(v39, v38);
    v10 = sub_10025C9B0(&qword_1006D8938);
    v42 = (a2 + v58 + *(v10 + 36));
    v11 = (a1 + v58 + *(v10 + 36));
    *v42 = *v11;
    v41 = v11[1];
    v43 = v11[2];

    v42[1] = v41;
    v42[2] = v43;
  }

  else
  {
    v44 = *(a1 + v58);
    v45 = *(a1 + v58 + 8);
    v46 = *(a1 + v58 + 16);
    sub_1002EF238(v44, v45, v46 & 1);
    v53 = a2 + v58;
    *v53 = v44;
    *(v53 + 8) = v45;
    *(v53 + 16) = v46 & 1;
    v47 = *(a1 + v58 + 24);

    *(v53 + 24) = v47;
    v2 = sub_10025C9B0(&qword_1006D8910);
    v49 = a2 + v58 + *(v2 + 36);
    v48 = a1 + v58 + *(v2 + 36);
    v3 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v3 - 8) + 16))(v49, v48);
    v4 = sub_10025C9B0(&qword_1006D8938);
    v51 = (a2 + v58 + *(v4 + 36));
    v5 = (a1 + v58 + *(v4 + 36));
    *v51 = *v5;
    v50 = v5[1];
    v52 = v5[2];

    v51[1] = v50;
    v51[2] = v52;
    v6 = sub_10025C9B0(&qword_1006D8940);
    v55 = (a2 + v58 + *(v6 + 36));
    v7 = (a1 + v58 + *(v6 + 36));
    *v55 = *v7;
    v54 = v7[1];
    v56 = v7[2];

    v55[1] = v54;
    v55[2] = v56;
  }

  swift_storeEnumTagMultiPayload();
  v12 = sub_10025C9B0(&qword_1006D8948);
  v21 = a2 + v58 + *(v12 + 36);
  v20 = (a1 + v58 + *(v12 + 36));
  v18 = *v20;
  v19 = v20[1];

  *v21 = v18;
  *(v21 + 8) = v19;
  *(v21 + 16) = *(v20 + 1);
  v13 = sub_10025C9B0(&qword_1006D8950);
  v28 = a2 + v58 + *(v13 + 48);
  v29 = a1 + v58 + *(v13 + 48);
  v22 = *v29;
  v23 = *(v29 + 8);
  v24 = *(v29 + 16);
  sub_1002EF238(*v29, v23, v24 & 1);
  *v28 = v22;
  *(v28 + 8) = v23;
  *(v28 + 16) = v24 & 1;
  v25 = *(v29 + 24);

  *(v28 + 24) = v25;
  v14 = sub_10025C9B0(&qword_1006D8910);
  v27 = v28 + *(v14 + 36);
  v26 = v29 + *(v14 + 36);
  v15 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v15 - 8) + 16))(v27, v26);
  v16 = sub_10025C9B0(&qword_1006D8958);
  v33 = (v28 + *(v16 + 36));
  v32 = (v29 + *(v16 + 36));
  v30 = v32->n128_u64[0];
  v31 = v32->n128_u64[1];

  v33->n128_u64[0] = v30;
  v33->n128_u64[1] = v31;
  result = v32[1];
  v33[1] = result;
  return result;
}

uint64_t sub_100032478(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_10025C9B0(&qword_1006D8968) + 44);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  sub_1002EF238(v6, v7, v8 & 1);
  v15 = a2 + v5;
  *v15 = v6;
  *(v15 + 8) = v7;
  *(v15 + 16) = v8 & 1;
  v9 = *(a1 + v5 + 24);

  *(v15 + 24) = v9;
  v20 = sub_10025C9B0(&qword_1006D8910);
  v10 = *(v20 + 36);
  v24 = type metadata accessor for AccessibilityAttachmentModifier();
  v25 = *(*(v24 - 8) + 16);
  v25(a2 + v5 + v10, a1 + v5 + v10);
  v11 = *(sub_10025C9B0(&qword_1006D8958) + 36);
  v14 = (a1 + v5 + v11);
  v12 = *v14;
  v13 = v14[1];

  v2 = a2 + v5 + v11;
  *v2 = v12;
  *(v2 + 8) = v13;
  *(v2 + 16) = *(v14 + 1);
  v16 = *(sub_10025C9B0(&qword_1006D8970) + 48);
  v23 = a1 + v5 + v16;
  v17 = *v23;
  v18 = *(v23 + 8);
  v19 = *(v23 + 16);
  sub_1002EF238(*v23, v18, v19 & 1);
  v22 = a2 + v5 + v16;
  *v22 = v17;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19 & 1;
  v21 = *(v23 + 24);

  *(v22 + 24) = v21;
  (v25)(v22 + *(v20 + 36), v23 + *(v20 + 36), v24);
  return a2;
}

uint64_t sub_100032708()
{
  v0 = *(*(type metadata accessor for InstantAnswerFlightContentView() - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000328F0(uint64_t a1)
{
  sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v1 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v1 - 8) + 8))(a1 + v3);
  sub_10025C9B0(&qword_1006D8958);

  return a1;
}

__n128 sub_1000329C0(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  sub_1002EF238(*a1, v6, v7 & 1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  v8 = *(a1 + 24);

  *(a2 + 24) = v8;
  v9 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v2 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  v12 = *(sub_10025C9B0(&qword_1006D8958) + 36);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);

  v3 = (a2 + v12);
  v3->n128_u64[0] = v13;
  v3->n128_u64[1] = v14;
  result = *(a1 + v12 + 16);
  v3[1] = result;
  return result;
}

uint64_t sub_100032B28()
{
  v0 = *(*(type metadata accessor for InstantAnswerFlightContentView() - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100032D10(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v4 = a1 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v4);
    sub_10025C9B0(&qword_1006D8938);
  }

  else
  {
    sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v5 = a1 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v1 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v1 - 8) + 8))(v5);
    sub_10025C9B0(&qword_1006D8938);

    sub_10025C9B0(&qword_1006D8940);
  }

  sub_10025C9B0(&qword_1006D8948);

  return a1;
}

uint64_t sub_100032F08()
{
  v0 = *(*(type metadata accessor for InstantAnswerFlightContentView() - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_1000330F0(uint64_t a1, uint64_t a2)
{
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    sub_1002EF238(*a1, v19, v20 & 1);
    *a2 = v18;
    *(a2 + 8) = v19;
    *(a2 + 16) = v20 & 1;
    v21 = *(a1 + 24);

    *(a2 + 24) = v21;
    v8 = sub_10025C9B0(&qword_1006D8910);
    v23 = a2 + *(v8 + 36);
    v22 = a1 + *(v8 + 36);
    v9 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v9 - 8) + 16))(v23, v22);
    v10 = sub_10025C9B0(&qword_1006D8938);
    v25 = (a2 + *(v10 + 36));
    v11 = (a1 + *(v10 + 36));
    *v25 = *v11;
    v24 = v11[1];
    v26 = v11[2];

    v25[1] = v24;
    v25[2] = v26;
  }

  else
  {
    v27 = *a1;
    v28 = *(a1 + 8);
    v29 = *(a1 + 16);
    sub_1002EF238(*a1, v28, v29 & 1);
    *a2 = v27;
    *(a2 + 8) = v28;
    *(a2 + 16) = v29 & 1;
    v30 = *(a1 + 24);

    *(a2 + 24) = v30;
    v2 = sub_10025C9B0(&qword_1006D8910);
    v32 = a2 + *(v2 + 36);
    v31 = a1 + *(v2 + 36);
    v3 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v3 - 8) + 16))(v32, v31);
    v4 = sub_10025C9B0(&qword_1006D8938);
    v34 = (a2 + *(v4 + 36));
    v5 = (a1 + *(v4 + 36));
    *v34 = *v5;
    v33 = v5[1];
    v35 = v5[2];

    v34[1] = v33;
    v34[2] = v35;
    v6 = sub_10025C9B0(&qword_1006D8940);
    v37 = (a2 + *(v6 + 36));
    v7 = (a1 + *(v6 + 36));
    *v37 = *v7;
    v36 = v7[1];
    v38 = v7[2];

    v37[1] = v36;
    v37[2] = v38;
  }

  swift_storeEnumTagMultiPayload();
  v12 = sub_10025C9B0(&qword_1006D8948);
  v17 = (a2 + *(v12 + 36));
  v16 = (a1 + *(v12 + 36));
  v14 = v16->n128_u64[0];
  v15 = v16->n128_u64[1];

  v17->n128_u64[0] = v14;
  v17->n128_u64[1] = v15;
  result = v16[1];
  v17[1] = result;
  return result;
}

uint64_t sub_10003356C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_10025C9B0(&qword_1006D88C8);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < &_mh_execute_header)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_100033694(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_10025C9B0(&qword_1006D88C8);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003389C(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D8DF0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_100033904(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D8DF0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_10025C9B0(&qword_1006D8E00) + 36);
  v5 = *(type metadata accessor for RoundedRectangle() + 20);
  v2 = type metadata accessor for RoundedCornerStyle();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  sub_10025C9B0(&qword_1006D8E58);

  return a1;
}

uint64_t sub_100033A10(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D8DF0);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(sub_10025C9B0(&qword_1006D8E00) + 36);
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v2 = type metadata accessor for RoundedCornerStyle();
  (*(*(v2 - 8) + 8))(a1 + v5 + v6);
  sub_10025C9B0(&qword_1006D8E58);

  v7 = *(sub_10025C9B0(&qword_1006D8E08) + 36);
  v3 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v3 - 8) + 8))(a1 + v7);
  return a1;
}

uint64_t sub_100033B7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10025C9B0(&qword_1006D8DF0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_10025C9B0(&qword_1006D8DF8);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v4 = sub_10025C9B0(&qword_1006D8E00);
  v13 = (a1 + *(v4 + 36));
  v14 = (a2 + *(v4 + 36));
  *v14 = *v13;
  v9 = *(type metadata accessor for RoundedRectangle() + 20);
  v5 = type metadata accessor for RoundedCornerStyle();
  (*(*(v5 - 8) + 16))(&v14[v9], &v13[v9]);
  v10 = sub_10025C9B0(&qword_1006D8E58);
  v11 = *(v10 + 52);
  v12 = *&v13[v11];

  *&v14[v11] = v12;
  *&v14[*(v10 + 56)] = *&v13[*(v10 + 56)];
  v6 = sub_10025C9B0(&qword_1006D8E80);
  *&v14[*(v6 + 36)] = *&v13[*(v6 + 36)];
  v15 = *(sub_10025C9B0(&qword_1006D8E08) + 36);
  v7 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v7 - 8) + 16))(a2 + v15, a1 + v15);
  return a2;
}

uint64_t sub_100033E08(uint64_t a1)
{
  v14 = *(sub_10025C9B0(&qword_1006D8F10) + 44);

  v15 = sub_10025C9B0(&qword_1006D8F18);
  v16 = *(v15 + 48);
  v17 = *(sub_10025C9B0(&qword_1006D8F20) + 44);
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ContentSizeCategory();
      (*(*(v2 - 8) + 8))(a1 + v14 + v16 + v17);
    }

    else
    {
    }

    type metadata accessor for InstantAnswerHotelContentView();
  }

  else
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = type metadata accessor for ContentSizeCategory();
      (*(*(v1 - 8) + 8))(a1 + v14 + v16 + v17);
    }

    else
    {
    }

    type metadata accessor for InstantAnswerFlightContentView();
  }

  v7 = a1 + v14 + v16 + v17 + *(sub_10025C9B0(&qword_1006D8F30) + 48);
  v9 = v7 + *(sub_10025C9B0(&qword_1006D8F38) + 44);
  v8 = v9 + *(sub_10025C9B0(&qword_1006D8F40) + 44);
  v3 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v3 - 8) + 8))(v8);
  v10 = v9 + *(sub_10025C9B0(&qword_1006D8F50) + 48);
  v11 = v10 + *(sub_10025C9B0(&qword_1006D8F58) + 44);
  v4 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v4 - 8) + 8))(v11);
  v12 = a1 + v14 + *(v15 + 80);
  v5 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v5 - 8) + 8))(v12);
  sub_10025C9B0(&qword_1006D8F68);

  sub_10025C9B0(&qword_1006D8F70);

  return a1;
}

uint64_t sub_1000343B0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v67 = *(sub_10025C9B0(&qword_1006D8F10) + 44);
  v68 = *(a1 + v67);

  v75 = (a2 + v67);
  *(a2 + v67) = v68;
  v69 = *(a1 + v67 + 8);

  v75[1] = v69;
  v70 = *(a1 + v67 + 16);

  v75[2] = v70;
  v71 = *(a1 + v67 + 24);

  v75[3] = v71;
  v72 = *(a1 + v67 + 32);

  v75[4] = v72;
  memcpy((a2 + v67 + 40), (a1 + v67 + 40), 0x29uLL);
  v75[11] = *(a1 + v67 + 88);
  v73 = *(a1 + v67 + 96);
  v74 = *(a1 + v67 + 104);

  v75[12] = v73;
  v75[13] = v74;
  v76 = sub_10025C9B0(&qword_1006D8F18);
  v77 = v76[12];
  v79 = a1 + v67 + v77;
  v2 = a2 + v67 + v77;
  *v2 = *v79;
  *(v2 + 16) = *(v79 + 16);
  v78 = *(sub_10025C9B0(&qword_1006D8F20) + 44);
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for ContentSizeCategory();
      (*(*(v8 - 8) + 16))();
    }

    else
    {
      v45 = *(a1 + v67 + v77 + v78);

      *(a2 + v67 + v77 + v78) = v45;
    }

    swift_storeEnumTagMultiPayload();
    v9 = type metadata accessor for InstantAnswerHotelContentView();
    v43 = (a2 + v67 + v77 + v78 + *(v9 + 20));
    v42 = (a1 + v67 + v77 + v78 + *(v9 + 20));
    *v43 = *v42;
    v40 = v42[1];

    v43[1] = v40;
    v43[2] = v42[2];
    v41 = v42[3];

    v43[3] = v41;
    v43[4] = v42[4];
    v44 = v42[5];

    v43[5] = v44;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = type metadata accessor for ContentSizeCategory();
      (*(*(v3 - 8) + 16))();
    }

    else
    {
      v64 = *(a1 + v67 + v77 + v78);

      *(a2 + v67 + v77 + v78) = v64;
    }

    swift_storeEnumTagMultiPayload();
    v62 = type metadata accessor for InstantAnswerFlightContentView();
    v59 = a2 + v67 + v77 + v78;
    v46 = v59 + v62[5];
    v63 = a1 + v67 + v77 + v78;
    v4 = v63 + v62[5];
    *v46 = *v4;
    v47 = *(v4 + 16);

    *(v46 + 16) = v47;
    v48 = v59 + v62[6];
    v5 = v63 + v62[6];
    *v48 = *v5;
    v49 = *(v5 + 16);

    *(v48 + 16) = v49;
    v50 = (v59 + v62[7]);
    v6 = (v63 + v62[7]);
    *v50 = *v6;
    v51 = v6[1];

    v50[1] = v51;
    v52 = (v59 + v62[8]);
    v7 = (v63 + v62[8]);
    *v52 = *v7;
    v53 = v7[1];

    v52[1] = v53;
    v60 = (v59 + v62[9]);
    v58 = (v63 + v62[9]);
    *v60 = *v58;
    v54 = v58[1];

    v60[1] = v54;
    v60[2] = v58[2];
    v55 = v58[3];

    v60[3] = v55;
    v60[4] = v58[4];
    v56 = v58[5];

    v60[5] = v56;
    v60[6] = v58[6];
    v57 = v58[7];

    v60[7] = v57;
    v60[8] = v58[8];
    v61 = v58[9];

    v60[9] = v61;
    *(v59 + v62[10]) = *(v63 + v62[10]);
    swift_storeEnumTagMultiPayload();
  }

  v10 = sub_10025C9B0(&qword_1006D8F30);
  v23 = (a2 + v67 + v77 + v78 + *(v10 + 48));
  v24 = (a1 + v67 + v77 + v78 + *(v10 + 48));
  *v23 = *v24;
  v11 = sub_10025C9B0(&qword_1006D8F38);
  v27 = &v23[*(v11 + 44)];
  v28 = &v24[*(v11 + 44)];
  *v27 = *v28;
  v27[16] = v28[16];
  v12 = sub_10025C9B0(&qword_1006D8F40);
  v26 = &v27[*(v12 + 44)];
  v25 = &v28[*(v12 + 44)];
  v13 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v13 - 8) + 16))(v26, v25);
  v14 = sub_10025C9B0(&qword_1006D8F50);
  v29 = &v27[*(v14 + 48)];
  v30 = &v28[*(v14 + 48)];
  *v29 = *v30;
  v29[16] = v30[16];
  v15 = sub_10025C9B0(&qword_1006D8F58);
  v32 = &v29[*(v15 + 44)];
  v31 = &v30[*(v15 + 44)];
  v16 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v16 - 8) + 16))(v32, v31);
  v17 = a2 + v67 + v76[16];
  v18 = a1 + v67 + v76[16];
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  v35 = a2 + v67 + v76[20];
  v36 = a1 + v67 + v76[20];
  v19 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v19 - 8) + 16))(v35, v36);
  v33 = *(sub_10025C9B0(&qword_1006D8F68) + 36);
  v34 = *(v36 + v33);

  *(v35 + v33) = v34;
  v20 = sub_10025C9B0(&qword_1006D8F70);
  v38 = (v35 + *(v20 + 36));
  v21 = (v36 + *(v20 + 36));
  *v38 = *v21;
  v37 = v21[1];
  v39 = v21[2];

  result = a2;
  v38[1] = v37;
  v38[2] = v39;
  return result;
}

uint64_t sub_100034E30(uint64_t a1, uint64_t a2)
{
  sub_10025C9B0(&qword_1006D8F80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v21 = sub_10025C9B0(&qword_1006D8F10);
    v60 = (a2 + *(v21 + 44));
    v61 = (a1 + *(v21 + 44));
    memcpy(v60, v61, 0x70uLL);
    v62 = sub_10025C9B0(&qword_1006D8F18);
    v63 = &v60[v62[12]];
    v64 = &v61[v62[12]];
    *v63 = *v64;
    v63[16] = v64[16];
    v22 = sub_10025C9B0(&qword_1006D8F20);
    __dst = &v63[*(v22 + 44)];
    __src = &v64[*(v22 + 44)];
    sub_10025C9B0(&qword_1006D8F28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = type metadata accessor for ContentSizeCategory();
        (*(*(v28 - 8) + 32))(__dst, __src);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, __src, *(*(v57 - 8) + 64));
      }

      v29 = type metadata accessor for InstantAnswerHotelContentView();
      memcpy(&__dst[*(v29 + 20)], &__src[*(v29 + 20)], 0x30uLL);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v59 = sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = type metadata accessor for ContentSizeCategory();
        (*(*(v23 - 8) + 32))(__dst, __src);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, __src, *(*(v59 - 8) + 64));
      }

      v58 = type metadata accessor for InstantAnswerFlightContentView();
      v24 = &__dst[v58[5]];
      v25 = &__src[v58[5]];
      *v24 = *v25;
      *(v24 + 2) = *(v25 + 2);
      v26 = &__dst[v58[6]];
      v27 = v58[6];
      *v26 = *&__src[v27];
      *(v26 + 2) = *&__src[v27 + 16];
      *&__dst[v58[7]] = *&__src[v58[7]];
      *&__dst[v58[8]] = *&__src[v58[8]];
      memcpy(&__dst[v58[9]], &__src[v58[9]], 0x50uLL);
      *&__dst[v58[10]] = *&__src[v58[10]];
      swift_storeEnumTagMultiPayload();
    }

    v30 = sub_10025C9B0(&qword_1006D8F30);
    v45 = &__dst[*(v30 + 48)];
    v46 = &__src[*(v30 + 48)];
    *v45 = *v46;
    v31 = sub_10025C9B0(&qword_1006D8F38);
    v49 = &v45[*(v31 + 44)];
    v50 = &v46[*(v31 + 44)];
    *v49 = *v50;
    v49[16] = v50[16];
    v32 = sub_10025C9B0(&qword_1006D8F40);
    v48 = &v49[*(v32 + 44)];
    v47 = &v50[*(v32 + 44)];
    v33 = sub_10025C9B0(&qword_1006D8F48);
    (*(*(v33 - 8) + 32))(v48, v47);
    v34 = sub_10025C9B0(&qword_1006D8F50);
    v51 = &v49[*(v34 + 48)];
    v52 = &v50[*(v34 + 48)];
    *v51 = *v52;
    v51[16] = v52[16];
    v35 = sub_10025C9B0(&qword_1006D8F58);
    v54 = &v51[*(v35 + 44)];
    v53 = &v52[*(v35 + 44)];
    v36 = sub_10025C9B0(&qword_1006D8F60);
    (*(*(v36 - 8) + 32))(v54, v53);
    v37 = &v60[v62[16]];
    v38 = &v61[v62[16]];
    *v37 = *v38;
    v37[8] = v38[8];
    v55 = &v60[v62[20]];
    v56 = &v61[v62[20]];
    v39 = sub_10025C9B0(&qword_1006D8EC8);
    (*(*(v39 - 8) + 32))(v55, v56);
    v40 = sub_10025C9B0(&qword_1006D8F68);
    *&v55[*(v40 + 36)] = *&v56[*(v40 + 36)];
    v41 = sub_10025C9B0(&qword_1006D8F70);
    v42 = &v55[*(v41 + 36)];
    v43 = &v56[*(v41 + 36)];
    *v42 = *v43;
    *(v42 + 2) = *(v43 + 2);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = sub_10025C9B0(&qword_1006D8F88);
    v84 = a2 + *(v2 + 44);
    v85 = a1 + *(v2 + 44);
    *v84 = *v85;
    *(v84 + 16) = *(v85 + 16);
    v3 = sub_10025C9B0(&qword_1006D8F90);
    v80 = (v84 + *(v3 + 44));
    v81 = (v85 + *(v3 + 44));
    memcpy(v80, v81, 0x31uLL);
    v4 = sub_10025C9B0(&qword_1006D8F98);
    v83 = &v80[*(v4 + 64)];
    v82 = &v81[*(v4 + 64)];
    v5 = sub_10025C9B0(&qword_1006D8EC8);
    (*(*(v5 - 8) + 32))(v83, v82);
    v6 = sub_10025C9B0(&qword_1006D8F68);
    *&v83[*(v6 + 36)] = *&v82[*(v6 + 36)];
    v7 = sub_10025C9B0(&qword_1006D8FA0);
    memcpy((v84 + *(v7 + 36)), (v85 + *(v7 + 36)), 0x29uLL);
    v86 = sub_10025C9B0(&qword_1006D8FA8);
    v87 = (v84 + *(v86 + 48));
    v88 = (v85 + *(v86 + 48));
    sub_10025C9B0(&qword_1006D8F28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v77 = sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = type metadata accessor for ContentSizeCategory();
        (*(*(v13 - 8) + 32))(v87, v88);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v87, v88, *(*(v77 - 8) + 64));
      }

      v14 = type metadata accessor for InstantAnswerHotelContentView();
      memcpy(&v87[*(v14 + 20)], &v88[*(v14 + 20)], 0x30uLL);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v79 = sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = type metadata accessor for ContentSizeCategory();
        (*(*(v8 - 8) + 32))(v87, v88);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v87, v88, *(*(v79 - 8) + 64));
      }

      v78 = type metadata accessor for InstantAnswerFlightContentView();
      v9 = &v87[v78[5]];
      v10 = &v88[v78[5]];
      *v9 = *v10;
      *(v9 + 2) = *(v10 + 2);
      v11 = &v87[v78[6]];
      v12 = v78[6];
      *v11 = *&v88[v12];
      *(v11 + 2) = *&v88[v12 + 16];
      *&v87[v78[7]] = *&v88[v78[7]];
      *&v87[v78[8]] = *&v88[v78[8]];
      memcpy(&v87[v78[9]], &v88[v78[9]], 0x50uLL);
      *&v87[v78[10]] = *&v88[v78[10]];
      swift_storeEnumTagMultiPayload();
    }

    v67 = (v84 + *(v86 + 64));
    v68 = (v85 + *(v86 + 64));
    *v67 = *v68;
    v15 = sub_10025C9B0(&qword_1006D8F38);
    v71 = &v67[*(v15 + 44)];
    v72 = &v68[*(v15 + 44)];
    *v71 = *v72;
    v71[16] = v72[16];
    v16 = sub_10025C9B0(&qword_1006D8F40);
    v70 = &v71[*(v16 + 44)];
    v69 = &v72[*(v16 + 44)];
    v17 = sub_10025C9B0(&qword_1006D8F48);
    (*(*(v17 - 8) + 32))(v70, v69);
    v18 = sub_10025C9B0(&qword_1006D8F50);
    v73 = &v71[*(v18 + 48)];
    v74 = &v72[*(v18 + 48)];
    *v73 = *v74;
    v73[16] = v74[16];
    v19 = sub_10025C9B0(&qword_1006D8F58);
    v76 = &v73[*(v19 + 44)];
    v75 = &v74[*(v19 + 44)];
    v20 = sub_10025C9B0(&qword_1006D8F60);
    (*(*(v20 - 8) + 32))(v76, v75);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_100035AFC(uint64_t a1, uint64_t a2)
{
  sub_10025C9B0(&qword_1006D8F80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v20 = sub_10025C9B0(&qword_1006D8F10);
    v89 = (a2 + *(v20 + 44));
    v90 = (a1 + *(v20 + 44));
    v82 = *v90;

    *v89 = v82;
    v83 = v90[1];

    v89[1] = v83;
    v84 = v90[2];

    v89[2] = v84;
    v85 = v90[3];

    v89[3] = v85;
    v86 = v90[4];

    v89[4] = v86;
    memcpy(v89 + 5, v90 + 5, 0x29uLL);
    v89[11] = v90[11];
    v87 = v90[12];
    v88 = v90[13];

    v89[12] = v87;
    v89[13] = v88;
    v91 = sub_10025C9B0(&qword_1006D8F18);
    v92 = v89 + v91[12];
    v93 = v90 + v91[12];
    *v92 = *v93;
    v92[16] = v93[16];
    v21 = sub_10025C9B0(&qword_1006D8F20);
    v94 = &v92[*(v21 + 44)];
    v95 = &v93[*(v21 + 44)];
    sub_10025C9B0(&qword_1006D8F28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = type metadata accessor for ContentSizeCategory();
        (*(*(v27 - 8) + 16))(v94, v95);
      }

      else
      {
        v64 = *v95;

        *v94 = v64;
      }

      swift_storeEnumTagMultiPayload();
      v28 = type metadata accessor for InstantAnswerHotelContentView();
      v62 = &v94[*(v28 + 20)];
      v61 = &v95[*(v28 + 20)];
      *v62 = *v61;
      v59 = *(v61 + 1);

      *(v62 + 1) = v59;
      *(v62 + 2) = *(v61 + 2);
      v60 = *(v61 + 3);

      *(v62 + 3) = v60;
      *(v62 + 4) = *(v61 + 4);
      v63 = *(v61 + 5);

      *(v62 + 5) = v63;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = type metadata accessor for ContentSizeCategory();
        (*(*(v22 - 8) + 16))(v94, v95);
      }

      else
      {
        v81 = *v95;

        *v94 = v81;
      }

      swift_storeEnumTagMultiPayload();
      v80 = type metadata accessor for InstantAnswerFlightContentView();
      v65 = &v94[v80[5]];
      v23 = &v95[v80[5]];
      *v65 = *v23;
      v66 = *(v23 + 2);

      *(v65 + 2) = v66;
      v67 = &v94[v80[6]];
      v24 = &v95[v80[6]];
      *v67 = *v24;
      v68 = *(v24 + 2);

      *(v67 + 2) = v68;
      v69 = &v94[v80[7]];
      v25 = &v95[v80[7]];
      *v69 = *v25;
      v70 = *(v25 + 1);

      *(v69 + 1) = v70;
      v71 = &v94[v80[8]];
      v26 = &v95[v80[8]];
      *v71 = *v26;
      v72 = *(v26 + 1);

      *(v71 + 1) = v72;
      v78 = &v94[v80[9]];
      v77 = &v95[v80[9]];
      *v78 = *v77;
      v73 = *(v77 + 1);

      *(v78 + 1) = v73;
      *(v78 + 2) = *(v77 + 2);
      v74 = *(v77 + 3);

      *(v78 + 3) = v74;
      *(v78 + 4) = *(v77 + 4);
      v75 = *(v77 + 5);

      *(v78 + 5) = v75;
      *(v78 + 6) = *(v77 + 6);
      v76 = *(v77 + 7);

      *(v78 + 7) = v76;
      *(v78 + 8) = *(v77 + 8);
      v79 = *(v77 + 9);

      *(v78 + 9) = v79;
      *&v94[v80[10]] = *&v95[v80[10]];
      swift_storeEnumTagMultiPayload();
    }

    v29 = sub_10025C9B0(&qword_1006D8F30);
    v42 = &v94[*(v29 + 48)];
    v43 = &v95[*(v29 + 48)];
    *v42 = *v43;
    v30 = sub_10025C9B0(&qword_1006D8F38);
    v46 = &v42[*(v30 + 44)];
    v47 = &v43[*(v30 + 44)];
    *v46 = *v47;
    v46[16] = v47[16];
    v31 = sub_10025C9B0(&qword_1006D8F40);
    v45 = &v46[*(v31 + 44)];
    v44 = &v47[*(v31 + 44)];
    v32 = sub_10025C9B0(&qword_1006D8F48);
    (*(*(v32 - 8) + 16))(v45, v44);
    v33 = sub_10025C9B0(&qword_1006D8F50);
    v48 = &v46[*(v33 + 48)];
    v49 = &v47[*(v33 + 48)];
    *v48 = *v49;
    v48[16] = v49[16];
    v34 = sub_10025C9B0(&qword_1006D8F58);
    v51 = &v48[*(v34 + 44)];
    v50 = &v49[*(v34 + 44)];
    v35 = sub_10025C9B0(&qword_1006D8F60);
    (*(*(v35 - 8) + 16))(v51, v50);
    v36 = v89 + v91[16];
    v37 = v90 + v91[16];
    *v36 = *v37;
    v36[8] = v37[8];
    v54 = v89 + v91[20];
    v55 = v90 + v91[20];
    v38 = sub_10025C9B0(&qword_1006D8EC8);
    (*(*(v38 - 8) + 16))(v54, v55);
    v52 = *(sub_10025C9B0(&qword_1006D8F68) + 36);
    v53 = *&v55[v52];

    *&v54[v52] = v53;
    v39 = sub_10025C9B0(&qword_1006D8F70);
    v57 = &v54[*(v39 + 36)];
    v40 = &v55[*(v39 + 36)];
    *v57 = *v40;
    v56 = *(v40 + 1);
    v58 = *(v40 + 2);

    *(v57 + 1) = v56;
    *(v57 + 2) = v58;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = sub_10025C9B0(&qword_1006D8F88);
    v140 = a2 + *(v2 + 44);
    v141 = a1 + *(v2 + 44);
    *v140 = *v141;
    *(v140 + 16) = *(v141 + 16);
    v3 = sub_10025C9B0(&qword_1006D8F90);
    v134 = v140 + *(v3 + 44);
    v135 = (v141 + *(v3 + 44));
    v129 = *v135;

    *v134 = v129;
    v130 = v135[1];

    *(v134 + 8) = v130;
    v131 = v135[2];

    *(v134 + 16) = v131;
    v132 = v135[3];

    *(v134 + 24) = v132;
    v133 = v135[4];

    *(v134 + 32) = v133;
    *(v134 + 40) = v135[5];
    *(v134 + 48) = *(v135 + 48);
    v4 = sub_10025C9B0(&qword_1006D8F98);
    v138 = v134 + *(v4 + 64);
    v136 = v135 + *(v4 + 64);
    v5 = sub_10025C9B0(&qword_1006D8EC8);
    (*(*(v5 - 8) + 16))(v138, v136);
    v137 = *(sub_10025C9B0(&qword_1006D8F68) + 36);
    v139 = *(v136 + v137);

    *(v138 + v137) = v139;
    v6 = sub_10025C9B0(&qword_1006D8FA0);
    memcpy((v140 + *(v6 + 36)), (v141 + *(v6 + 36)), 0x29uLL);
    v142 = sub_10025C9B0(&qword_1006D8FA8);
    v143 = (v140 + *(v142 + 48));
    v144 = (v141 + *(v142 + 48));
    sub_10025C9B0(&qword_1006D8F28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = type metadata accessor for ContentSizeCategory();
        (*(*(v12 - 8) + 16))(v143, v144);
      }

      else
      {
        v111 = *v144;

        *v143 = v111;
      }

      swift_storeEnumTagMultiPayload();
      v13 = type metadata accessor for InstantAnswerHotelContentView();
      v109 = (v143 + *(v13 + 20));
      v108 = (v144 + *(v13 + 20));
      *v109 = *v108;
      v106 = v108[1];

      v109[1] = v106;
      v109[2] = v108[2];
      v107 = v108[3];

      v109[3] = v107;
      v109[4] = v108[4];
      v110 = v108[5];

      v109[5] = v110;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v7 = type metadata accessor for ContentSizeCategory();
        (*(*(v7 - 8) + 16))(v143, v144);
      }

      else
      {
        v128 = *v144;

        *v143 = v128;
      }

      swift_storeEnumTagMultiPayload();
      v127 = type metadata accessor for InstantAnswerFlightContentView();
      v112 = v143 + v127[5];
      v8 = v144 + v127[5];
      *v112 = *v8;
      v113 = *(v8 + 2);

      *(v112 + 2) = v113;
      v114 = v143 + v127[6];
      v9 = v144 + v127[6];
      *v114 = *v9;
      v115 = *(v9 + 2);

      *(v114 + 2) = v115;
      v116 = (v143 + v127[7]);
      v10 = (v144 + v127[7]);
      *v116 = *v10;
      v117 = v10[1];

      v116[1] = v117;
      v118 = (v143 + v127[8]);
      v11 = (v144 + v127[8]);
      *v118 = *v11;
      v119 = v11[1];

      v118[1] = v119;
      v125 = (v143 + v127[9]);
      v124 = (v144 + v127[9]);
      *v125 = *v124;
      v120 = v124[1];

      v125[1] = v120;
      v125[2] = v124[2];
      v121 = v124[3];

      v125[3] = v121;
      v125[4] = v124[4];
      v122 = v124[5];

      v125[5] = v122;
      v125[6] = v124[6];
      v123 = v124[7];

      v125[7] = v123;
      v125[8] = v124[8];
      v126 = v124[9];

      v125[9] = v126;
      *(v143 + v127[10]) = *(v144 + v127[10]);
      swift_storeEnumTagMultiPayload();
    }

    v96 = (v140 + *(v142 + 64));
    v97 = (v141 + *(v142 + 64));
    *v96 = *v97;
    v14 = sub_10025C9B0(&qword_1006D8F38);
    v100 = &v96[*(v14 + 44)];
    v101 = &v97[*(v14 + 44)];
    *v100 = *v101;
    v100[16] = v101[16];
    v15 = sub_10025C9B0(&qword_1006D8F40);
    v99 = &v100[*(v15 + 44)];
    v98 = &v101[*(v15 + 44)];
    v16 = sub_10025C9B0(&qword_1006D8F48);
    (*(*(v16 - 8) + 16))(v99, v98);
    v17 = sub_10025C9B0(&qword_1006D8F50);
    v102 = &v100[*(v17 + 48)];
    v103 = &v101[*(v17 + 48)];
    *v102 = *v103;
    v102[16] = v103[16];
    v18 = sub_10025C9B0(&qword_1006D8F58);
    v105 = &v102[*(v18 + 44)];
    v104 = &v103[*(v18 + 44)];
    v19 = sub_10025C9B0(&qword_1006D8F60);
    (*(*(v19 - 8) + 16))(v105, v104);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_100036C84(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D8F80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a1 + *(sub_10025C9B0(&qword_1006D8F10) + 44);

    v19 = sub_10025C9B0(&qword_1006D8F18);
    v20 = v18 + *(v19 + 48);
    v21 = v20 + *(sub_10025C9B0(&qword_1006D8F20) + 44);
    sub_10025C9B0(&qword_1006D8F28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v7 = type metadata accessor for ContentSizeCategory();
        (*(*(v7 - 8) + 8))(v21);
      }

      else
      {
      }

      type metadata accessor for InstantAnswerHotelContentView();
    }

    else
    {
      sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v6 = type metadata accessor for ContentSizeCategory();
        (*(*(v6 - 8) + 8))(v21);
      }

      else
      {
      }

      type metadata accessor for InstantAnswerFlightContentView();
    }

    v12 = v21 + *(sub_10025C9B0(&qword_1006D8F30) + 48);
    v14 = v12 + *(sub_10025C9B0(&qword_1006D8F38) + 44);
    v13 = v14 + *(sub_10025C9B0(&qword_1006D8F40) + 44);
    v8 = sub_10025C9B0(&qword_1006D8F48);
    (*(*(v8 - 8) + 8))(v13);
    v15 = v14 + *(sub_10025C9B0(&qword_1006D8F50) + 48);
    v16 = v15 + *(sub_10025C9B0(&qword_1006D8F58) + 44);
    v9 = sub_10025C9B0(&qword_1006D8F60);
    (*(*(v9 - 8) + 8))(v16);
    v17 = v18 + *(v19 + 80);
    v10 = sub_10025C9B0(&qword_1006D8EC8);
    (*(*(v10 - 8) + 8))(v17);
    sub_10025C9B0(&qword_1006D8F68);

    sub_10025C9B0(&qword_1006D8F70);
  }

  else
  {
    v29 = a1 + *(sub_10025C9B0(&qword_1006D8F88) + 44);
    v27 = v29 + *(sub_10025C9B0(&qword_1006D8F90) + 44);

    v28 = v27 + *(sub_10025C9B0(&qword_1006D8F98) + 64);
    v1 = sub_10025C9B0(&qword_1006D8EC8);
    (*(*(v1 - 8) + 8))(v28);
    sub_10025C9B0(&qword_1006D8F68);

    v30 = sub_10025C9B0(&qword_1006D8FA8);
    v31 = v29 + *(v30 + 48);
    sub_10025C9B0(&qword_1006D8F28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v3 = type metadata accessor for ContentSizeCategory();
        (*(*(v3 - 8) + 8))(v31);
      }

      else
      {
      }

      type metadata accessor for InstantAnswerHotelContentView();
    }

    else
    {
      sub_10025C9B0(&qword_1006D88D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = type metadata accessor for ContentSizeCategory();
        (*(*(v2 - 8) + 8))(v31);
      }

      else
      {
      }

      type metadata accessor for InstantAnswerFlightContentView();
    }

    v22 = v29 + *(v30 + 64);
    v24 = v22 + *(sub_10025C9B0(&qword_1006D8F38) + 44);
    v23 = v24 + *(sub_10025C9B0(&qword_1006D8F40) + 44);
    v4 = sub_10025C9B0(&qword_1006D8F48);
    (*(*(v4 - 8) + 8))(v23);
    v25 = v24 + *(sub_10025C9B0(&qword_1006D8F50) + 48);
    v26 = v25 + *(sub_10025C9B0(&qword_1006D8F58) + 44);
    v5 = sub_10025C9B0(&qword_1006D8F60);
    (*(*(v5 - 8) + 8))(v26);
  }

  return a1;
}

uint64_t sub_1000375F0(uint64_t a1)
{
  v12 = *(sub_10025C9B0(&qword_1006D8F88) + 44);
  sub_10025C9B0(&qword_1006D8F90);

  sub_10025C9B0(&qword_1006D8F98);
  v1 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v1 - 8) + 8))();
  sub_10025C9B0(&qword_1006D8F68);

  v14 = sub_10025C9B0(&qword_1006D8FA8);
  v15 = *(v14 + 48);
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = type metadata accessor for ContentSizeCategory();
      (*(*(v3 - 8) + 8))(a1 + v12 + v15);
    }

    else
    {
    }

    type metadata accessor for InstantAnswerHotelContentView();
  }

  else
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ContentSizeCategory();
      (*(*(v2 - 8) + 8))(a1 + v12 + v15);
    }

    else
    {
    }

    type metadata accessor for InstantAnswerFlightContentView();
  }

  v7 = a1 + v12 + *(v14 + 64);
  v9 = v7 + *(sub_10025C9B0(&qword_1006D8F38) + 44);
  v8 = v9 + *(sub_10025C9B0(&qword_1006D8F40) + 44);
  v4 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v4 - 8) + 8))(v8);
  v10 = v9 + *(sub_10025C9B0(&qword_1006D8F50) + 48);
  v11 = v10 + *(sub_10025C9B0(&qword_1006D8F58) + 44);
  v5 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v5 - 8) + 8))(v11);
  return a1;
}

uint64_t sub_100037B14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v55 = *(sub_10025C9B0(&qword_1006D8F88) + 44);
  v67 = a2 + v55;
  *v67 = *(a1 + v55);
  *(v67 + 16) = *(a1 + v55 + 16);
  v56 = *(sub_10025C9B0(&qword_1006D8F90) + 44);
  v64 = (a1 + v55 + v56);
  v57 = *v64;

  v62 = a2 + v55 + v56;
  *(v67 + v56) = v57;
  v58 = v64[1];

  *(v62 + 8) = v58;
  v59 = v64[2];

  *(v62 + 16) = v59;
  v60 = v64[3];

  *(v62 + 24) = v60;
  v61 = v64[4];

  *(v62 + 32) = v61;
  *(v62 + 40) = v64[5];
  *(v62 + 48) = *(v64 + 48);
  v63 = *(sub_10025C9B0(&qword_1006D8F98) + 64);
  v2 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v2 - 8) + 16))();
  v65 = *(sub_10025C9B0(&qword_1006D8F68) + 36);
  v66 = *(v64 + v63 + v65);

  *(v62 + v63 + v65) = v66;
  v3 = sub_10025C9B0(&qword_1006D8FA0);
  memcpy((a2 + v55 + *(v3 + 36)), (a1 + v55 + *(v3 + 36)), 0x29uLL);
  v68 = sub_10025C9B0(&qword_1006D8FA8);
  v69 = *(v68 + 48);
  sub_10025C9B0(&qword_1006D8F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = type metadata accessor for ContentSizeCategory();
      (*(*(v9 - 8) + 16))();
    }

    else
    {
      v33 = *(a1 + v55 + v69);

      *(a2 + v55 + v69) = v33;
    }

    swift_storeEnumTagMultiPayload();
    v10 = type metadata accessor for InstantAnswerHotelContentView();
    v31 = (a2 + v55 + v69 + *(v10 + 20));
    v30 = (a1 + v55 + v69 + *(v10 + 20));
    *v31 = *v30;
    v28 = v30[1];

    v31[1] = v28;
    v31[2] = v30[2];
    v29 = v30[3];

    v31[3] = v29;
    v31[4] = v30[4];
    v32 = v30[5];

    v31[5] = v32;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for ContentSizeCategory();
      (*(*(v4 - 8) + 16))();
    }

    else
    {
      v52 = *(a1 + v55 + v69);

      *(a2 + v55 + v69) = v52;
    }

    swift_storeEnumTagMultiPayload();
    v50 = type metadata accessor for InstantAnswerFlightContentView();
    v47 = a2 + v55 + v69;
    v34 = v47 + v50[5];
    v51 = a1 + v55 + v69;
    v5 = v51 + v50[5];
    *v34 = *v5;
    v35 = *(v5 + 16);

    *(v34 + 16) = v35;
    v36 = v47 + v50[6];
    v6 = v51 + v50[6];
    *v36 = *v6;
    v37 = *(v6 + 16);

    *(v36 + 16) = v37;
    v38 = (v47 + v50[7]);
    v7 = (v51 + v50[7]);
    *v38 = *v7;
    v39 = v7[1];

    v38[1] = v39;
    v40 = (v47 + v50[8]);
    v8 = (v51 + v50[8]);
    *v40 = *v8;
    v41 = v8[1];

    v40[1] = v41;
    v48 = (v47 + v50[9]);
    v46 = (v51 + v50[9]);
    *v48 = *v46;
    v42 = v46[1];

    v48[1] = v42;
    v48[2] = v46[2];
    v43 = v46[3];

    v48[3] = v43;
    v48[4] = v46[4];
    v44 = v46[5];

    v48[5] = v44;
    v48[6] = v46[6];
    v45 = v46[7];

    v48[7] = v45;
    v48[8] = v46[8];
    v49 = v46[9];

    v48[9] = v49;
    *(v47 + v50[10]) = *(v51 + v50[10]);
    swift_storeEnumTagMultiPayload();
  }

  v18 = (a2 + v55 + *(v68 + 64));
  v19 = (a1 + v55 + *(v68 + 64));
  *v18 = *v19;
  v11 = sub_10025C9B0(&qword_1006D8F38);
  v22 = &v18[*(v11 + 44)];
  v23 = &v19[*(v11 + 44)];
  *v22 = *v23;
  v22[16] = v23[16];
  v12 = sub_10025C9B0(&qword_1006D8F40);
  v21 = &v22[*(v12 + 44)];
  v20 = &v23[*(v12 + 44)];
  v13 = sub_10025C9B0(&qword_1006D8F48);
  (*(*(v13 - 8) + 16))(v21, v20);
  v14 = sub_10025C9B0(&qword_1006D8F50);
  v24 = &v22[*(v14 + 48)];
  v25 = &v23[*(v14 + 48)];
  *v24 = *v25;
  v24[16] = v25[16];
  v15 = sub_10025C9B0(&qword_1006D8F58);
  v27 = &v24[*(v15 + 44)];
  v26 = &v25[*(v15 + 44)];
  v16 = sub_10025C9B0(&qword_1006D8F60);
  (*(*(v16 - 8) + 16))(v27, v26);
  return a2;
}

uint64_t sub_100038480(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D8FC8);
  (*(*(v1 - 8) + 8))(a1);
  sub_10025C9B0(&qword_1006D8FD0);

  return a1;
}

uint64_t sub_100038524(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_10025C9B0(&qword_1006D8DD0);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24)) < &_mh_execute_header)
    {
      v4 = *(a1 + *(a3 + 24));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_100038648(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_10025C9B0(&qword_1006D8DD0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100038744(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_10025C9B0(&qword_1006D88C8);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = sub_10025C9B0(&qword_1006D8DD0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 24), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 32) + 8) < &_mh_execute_header)
      {
        v4 = *(a1 + *(a3 + 32) + 8);
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_100038910(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_10025C9B0(&qword_1006D88C8);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = sub_10025C9B0(&qword_1006D8DD0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 24), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100038AB4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_10025C9B0(&qword_1006D8DD0);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = sub_10025C9B0(&qword_1006D88C8);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 28) + 8) < &_mh_execute_header)
      {
        v4 = *(a1 + *(a3 + 28) + 8);
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_100038C80(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_10025C9B0(&qword_1006D8DD0);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = sub_10025C9B0(&qword_1006D88C8);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100038ECC(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D8F90);

  sub_10025C9B0(&qword_1006D8F98);
  v1 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v1 - 8) + 8))();
  sub_10025C9B0(&qword_1006D8F68);

  return a1;
}

uint64_t sub_100038FE0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_10025C9B0(&qword_1006D8F90) + 44);
  v6 = *(a1 + v5);

  v11 = a2 + v5;
  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);

  *(v11 + 8) = v7;
  v8 = *(a1 + v5 + 16);

  *(v11 + 16) = v8;
  v9 = *(a1 + v5 + 24);

  *(v11 + 24) = v9;
  v10 = *(a1 + v5 + 32);

  *(v11 + 32) = v10;
  *(v11 + 40) = *(a1 + v5 + 40);
  *(v11 + 48) = *(a1 + v5 + 48);
  v12 = *(sub_10025C9B0(&qword_1006D8F98) + 64);
  v2 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v2 - 8) + 16))();
  v13 = *(sub_10025C9B0(&qword_1006D8F68) + 36);
  v14 = *(a1 + v5 + v12 + v13);

  *(a2 + v5 + v12 + v13) = v14;
  v3 = sub_10025C9B0(&qword_1006D8FA0);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1000391F0(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v1 - 8) + 8))(a1);
  sub_10025C9B0(&qword_1006D8F68);

  return a1;
}

uint64_t sub_100039280(uint64_t a1, uint64_t a2)
{
  v2 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_10025C9B0(&qword_1006D8F68) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_100039330(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v1 - 8) + 8))(a1);
  sub_10025C9B0(&qword_1006D8F68);

  sub_10025C9B0(&qword_1006D8F70);

  return a1;
}

uint64_t sub_1000393EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_10025C9B0(&qword_1006D8EC8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_10025C9B0(&qword_1006D8F68) + 36);
  v7 = *(a1 + v6);

  *(a2 + v6) = v7;
  v3 = sub_10025C9B0(&qword_1006D8F70);
  v4 = (a1 + *(v3 + 36));
  v11 = (a2 + *(v3 + 36));
  *v11 = *v4;
  v10 = v4[1];
  v12 = v4[2];

  result = a2;
  v11[1] = v10;
  v11[2] = v12;
  return result;
}

uint64_t sub_100039ED4()
{

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_100039F64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100039FB4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = type metadata accessor for UUID();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < &_mh_execute_header)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_10003A0CC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003A974(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = type metadata accessor for UUID();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < &_mh_execute_header)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_10003AA8C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AB7C()
{

  swift_unknownObjectRelease();
  sub_1000160F4(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10003B4DC()
{

  return swift_deallocObject();
}

uint64_t sub_10003B554()
{

  return swift_deallocObject();
}

uint64_t sub_10003B59C()
{

  return swift_deallocObject();
}

uint64_t sub_10003B634()
{
  sub_10025CAA4(&qword_1006D9FC8);
  sub_10036E180();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003B6A4()
{

  return swift_deallocObject();
}

uint64_t sub_10003B78C()
{

  return swift_deallocObject();
}

uint64_t sub_10003B854()
{

  _objc_release(*(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_10003B8FC()
{

  _objc_release(*(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_10003BAD4()
{

  return swift_deallocObject();
}

uint64_t sub_10003C0E4()
{
  _objc_release(*(v0 + 16));
  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_10003C13C()
{

  return swift_deallocObject();
}

uint64_t sub_10003C930()
{
  v2 = *(type metadata accessor for ActivityStateObserver.Update() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_10003CAD4()
{
  v2 = *(type metadata accessor for ActivityStateObserver.Update() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_10003CCA8()
{
  v6 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v0 = *(*(v6 - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  sub_10025C9B0(&qword_1006DA820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for OpenURLAction();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(v6 + 24);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_10003CE60(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_10025C9B0(&qword_1006DA818);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v5 = -1;
    if (*(a1 + *(a3 + 20) + 8) < &_mh_execute_header)
    {
      v5 = *(a1 + *(a3 + 20) + 8);
    }

    return (v5 + 1);
  }

  else
  {
    v4 = type metadata accessor for URL();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 24), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_10003D020(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_10025C9B0(&qword_1006DA818);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    result = type metadata accessor for URL();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003D218()
{
  v6 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v0 = *(*(v6 - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  sub_10025C9B0(&qword_1006DA820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for OpenURLAction();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(v6 + 24);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_10003D3B8()
{
  v6 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v0 = *(*(v6 - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  sub_10025C9B0(&qword_1006DA820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for OpenURLAction();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(v6 + 24);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_10003D558()
{

  return swift_deallocObject();
}

uint64_t sub_10003D678(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < &_mh_execute_header)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = type metadata accessor for DisplayRepresentation();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_10003D790(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = type metadata accessor for DisplayRepresentation();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003DAB0()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_10003DB00()
{
  v0 = *(*(type metadata accessor for MFReadLaterTriageInteractionState.State() - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10003DEB0()
{
  v2 = *(type metadata accessor for Date() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_10003E0D4()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10003E3DC()
{

  return swift_deallocObject();
}

uint64_t sub_10003E5CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*(a1 + 8) < &_mh_execute_header)
    {
      v7 = *(a1 + 8);
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = sub_10025C9B0(&qword_1006DB578);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 28), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_10003E6FC(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = sub_10025C9B0(&qword_1006DB578);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003E7FC()
{

  _objc_release(*(v0 + 64));
  _objc_release(*(v0 + 72));
  return swift_deallocObject();
}

uint64_t sub_10003EE50()
{
  _objc_release(*(v0 + 16));
  _objc_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_10003F810()
{

  return swift_deallocObject();
}

uint64_t sub_10003F860()
{

  return swift_deallocObject();
}

uint64_t sub_10003FB78()
{
  if (*(v0 + 40))
  {
    sub_1000160F4(v2 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_10003FBCC()
{

  return swift_deallocObject();
}

uint64_t sub_10003FC54()
{

  return swift_deallocObject();
}

uint64_t sub_10004013C()
{

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1000402A4()
{
  _objc_release(*(v0 + 16));
  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_100040328()
{
  v2 = *(type metadata accessor for SearchItem.Contact() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_10004054C()
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_100040730()
{
  v2 = *(type metadata accessor for SearchItem() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_100040BEC()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_100040D3C()
{
  v4 = type metadata accessor for URL();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_100040EE8()
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_10004124C()
{
  v5 = sub_10025C9B0(&unk_1006DC310);
  v6 = *(v5 - 8);
  v4 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v2 = v4 + *(v6 + 64);
  v9 = sub_10025C9B0(&qword_1006DC308);
  v7 = *(v9 - 8);
  v8 = (v2 + *(v7 + 80)) & ~*(v7 + 80);
  v3 = v8 + *(v7 + 64);
  v12 = sub_10025C9B0(&qword_1006DC300);
  v10 = *(v12 - 8);
  v11 = (v3 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v6 + 8))(v0 + v4, v5);
  (*(v7 + 8))(v0 + v8, v9);
  (*(v10 + 8))(v0 + v11, v12);
  return swift_deallocObject();
}

uint64_t sub_100041AE0()
{
  _objc_release(*(v0 + 16));

  _objc_release(*(v0 + 64));
  return swift_deallocObject();
}

uint64_t sub_100041C80()
{

  _objc_release(*(v0 + 56));
  return swift_deallocObject();
}

uint64_t sub_100041CE0()
{

  _objc_release(*(v0 + 56));
  return swift_deallocObject();
}

uint64_t sub_100042218()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100042388()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1000424F8()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100042668()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1000427D8()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100042948()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100042AC0()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  _objc_release(*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_100042C40()
{
  v4 = type metadata accessor for _SiriMailMessage.State();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_1000435C0()
{
  v2 = *(sub_10025C9B0(&qword_1006DC768) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_100043C94()
{
  if (*(v0 + 40))
  {
    sub_1000160F4(v2 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_100043CE8()
{

  return swift_deallocObject();
}

uint64_t sub_100043D70()
{

  return swift_deallocObject();
}

uint64_t sub_100043DF8()
{

  return swift_deallocObject();
}

uint64_t sub_100043F38()
{

  return swift_deallocObject();
}

uint64_t sub_1000440A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000442E8()
{

  return swift_deallocObject();
}

uint64_t sub_100044604()
{

  return swift_deallocObject();
}

uint64_t sub_100044744()
{

  return swift_deallocObject();
}

uint64_t sub_1000449A0()
{
  v2 = *(type metadata accessor for EntityIdentifier() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

void sub_1000456A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1000471AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AccountSetupController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10004843C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v12;

  _Unwind_Resume(a1);
}

void sub_100048744(id a1)
{
  v5[0] = NSFontAttributeName;
  v1 = +[UIBarButtonItem mailBoldBarButtonItemFont];
  v6[0] = v1;
  v5[1] = NSForegroundColorAttributeName;
  v2 = +[UIColor labelColor];
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = qword_1006DCDA0;
  qword_1006DCDA0 = v3;
}

void sub_100048888(id a1)
{
  v5[0] = NSFontAttributeName;
  v1 = +[UIBarButtonItem mailDefaultBarButtonItemFont];
  v6[0] = v1;
  v5[1] = NSForegroundColorAttributeName;
  v2 = +[UIColor labelColor];
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = qword_1006DCDB0;
  qword_1006DCDB0 = v3;
}

void sub_100048C70(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DCDC0;
  qword_1006DCDC0 = v1;
}

void sub_100048E84(_Unwind_Exception *a1)
{
  v6 = v5;

  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void sub_100049078(_Unwind_Exception *a1)
{
  v6 = v5;

  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void sub_1000490F4(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_1000491EC;
    v1[3] = &unk_10064C548;
    v1[4] = a1;
    sub_10004943C(a1, @"com.apple.mail.conversationview.blank", v1);
  }
}

void sub_100049170(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_100049564;
    v1[3] = &unk_10064C548;
    v1[4] = a1;
    sub_10004943C(a1, @"com.apple.mail.conversationview.blank.webview", v1);
  }
}

void sub_1000491EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) numberOfLoadAttempts]);
  [v3 setObject:v4 forKeyedSubscript:@"numberOfLoadAttempts"];

  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) numberOfFailedAttempts]);
  [v3 setObject:v5 forKeyedSubscript:@"numberOfFailedAttempts"];

  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[5];
  }

  v7 = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100049430;
  v13[3] = &unk_10064C520;
  v8 = v3;
  v14 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  [*(a1 + 32) setNumberOfLoadAttempts:0];
  [*(a1 + 32) setNumberOfFailedAttempts:0];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = 0;
  }

  [v10 removeAllObjects];
  v11 = +[BlankConversationController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 134218242;
    v16 = v12;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%p: Report blank conversation view metrics: %{public}@", buf, 0x16u);
  }
}

void sub_10004943C(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock(a1 + 2);
    v5[2](v5, v6);
    os_unfair_lock_unlock(a1 + 2);
    v7 = [[EMCoreAnalyticsEvent alloc] initWithEventName:v9 collectionData:v6];
    v8 = [(os_unfair_lock_s *)a1 analyticsCollector];
    [v8 logOneTimeEvent:v7];
  }
}

void sub_100049564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) numberOfWebViewLoads]);
  [v3 setObject:v4 forKeyedSubscript:@"numberOfLoadAttempts"];

  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) numberOfForegroundWebViewCrashes]);
  [v3 setObject:v5 forKeyedSubscript:@"numberOfForegroundCrashes"];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) numberOfBackgroundWebViewCrashes]);
  [v3 setObject:v6 forKeyedSubscript:@"numberOfBackgroundCrashes"];

  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[9];
  }

  v8 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000497F0;
  v14[3] = &unk_10064C520;
  v9 = v3;
  v15 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];

  [*(a1 + 32) setNumberOfWebViewLoads:0];
  [*(a1 + 32) setNumberOfForegroundWebViewCrashes:0];
  [*(a1 + 32) setNumberOfBackgroundWebViewCrashes:0];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 72);
  }

  else
  {
    v11 = 0;
  }

  [v11 removeAllObjects];
  v12 = +[BlankConversationController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 134218242;
    v17 = v13;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%p: Report conversation view web view metrics: %{public}@", buf, 0x16u);
  }
}

void sub_10004AA60(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10004AB44(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DCDD0;
  qword_1006DCDD0 = v1;
}

id sub_10004ADBC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];
  v8 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyPreferredSendingEmailAddress];
  if (!v7 || (+[MSAutosave autosave](MSAutosave, "autosave"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasAutosavedMessageWithIdentifier:v7], v9, !v10))
  {
    v17 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v21 = v5;
  v11 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];
  v12 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyOriginalMessageObjectID];
  v13 = [EMObjectID objectIDFromSerializedRepresentation:v12];
  v14 = [_MFMailCompositionContext alloc];
  v15 = [v5 daemonInterface];
  v16 = [v15 messageRepository];
  v17 = [v14 initRecoveredAutosavedMessageWithIdentifier:v7 draftSubject:v11 messageRepository:v16 originalMessageObjectID:v13];

  v5 = v21;
  if (v8)
  {
LABEL_6:
    [v17 setPreferredSendingEmailAddress:v8];
  }

LABEL_7:
  v18 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyDeferredAction];
  [v17 setDeferredAction:{objc_msgSend(v18, "integerValue")}];

  v19 = [v6 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyDeferredActionUserInfo];
  [v17 setDeferredActionUserInfo:v19];

  return v17;
}

void sub_10004B1AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10004B760(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

BOOL sub_10004B80C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _mailComposeController];
  v2 = [v1 subject];
  v3 = [v2 length] != 0;

  return v3;
}

void sub_10004B9E4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_10004BA20(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || (v3 = v1, [v1 isEqualToString:&stru_100662A88]))
  {
    if (+[UIDevice mf_isPadIdiom])
    {
      sub_10004C71C(@"NEW_MESSAGE_LONG");
    }

    else
    {
      sub_10004C71C(@"NEW_MESSAGE");
    }
    v3 = ;
  }

  return v3;
}

void sub_10004BE00(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = +[UIApplication sharedApplication];
    v3 = [*(a1 + 32) view];
    v4 = [v3 window];
    v5 = [v4 windowScene];
    v6 = [v5 session];
    [v7 requestSceneSessionRefresh:v6];
  }
}

void sub_10004BEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_10004BF08(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10004C0DC;
      v6[3] = &unk_10064C598;
      v7 = v3;
      [a1 dismissViewControllerAnimated:1 completion:v6];
    }

    else
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

id sub_10004C71C(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_100662A88 table:@"Main"];

  return v3;
}

void sub_10004DD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  objc_destroyWeak((v29 + 40));

  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v30 - 88));

  _Unwind_Resume(a1);
}

id sub_10004DDB0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateHeadersWithModel:v3];
  [*(a1 + 32) setNavigationDelegate:WeakRetained];
  v5 = [WeakRetained snapshotImageView];
  [v5 frame];
  [*(a1 + 32) setFrame:?];

  v6 = *(a1 + 32);
  v7 = [WeakRetained snapshotImageView];
  [WeakRetained insertSubview:v6 below:v7];

  v8 = +[EFPromise promise];
  [WeakRetained setContentLoadingPromise:v8];

  v9 = *(a1 + 32);
  v10 = [v3 htmlContent];
  v11 = [v9 loadHTMLString:v10 baseURL:0];
  [WeakRetained setExpectedContentNavigation:v11];

  v12 = [WeakRetained contentLoadingPromise];
  v13 = [v12 future];

  return v13;
}

id sub_10004DF30(uint64_t a1)
{
  v2 = +[EFPromise promise];
  v3 = *(a1 + 32);
  v4 = [v2 completionHandlerAdapter];
  [v3 takeSnapshotWithConfiguration:0 completionHandler:v4];

  v5 = [v2 future];

  return v5;
}

id sub_10004DFD4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setNavigationDelegate:0];
  [*(a1 + 32) removeFromSuperview];
  v5 = [WeakRetained snapshotImageView];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10004E15C;
  v13 = &unk_10064C660;
  v14 = WeakRetained;
  v6 = v3;
  v15 = v6;
  [UIView transitionWithView:v5 duration:5242880 options:&v10 animations:0 completion:0.25];

  v7 = [NSNull null:v10];
  v8 = [EFFuture futureWithResult:v7];

  return v8;
}

void sub_10004E15C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) snapshotImageView];
  [v2 setImage:v1];
}

void sub_10004E694(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10004E8B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) webview];
  v4 = [v1 snapshotContentUsingWebView:v2];

  v3 = [v4 result];
}

void sub_10004EAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v20 = v18;

  _Unwind_Resume(a1);
}

void sub_10004EB48(uint64_t a1)
{
  v2 = +[MSAutosave autosave];
  v3 = [v2 autosavedMessageDataWithIdentifier:*(a1 + 32)];

  v8 = 0;
  v4 = [v3 result:&v8];
  v5 = v8;
  if (v5)
  {
    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    v6 = [MFMailMessage messageWithRFC822Data:v4];
    v7 = [*(a1 + 48) _placeholderContentWithMessage:v6];
    [*(a1 + 40) finishWithResult:v7];
  }
}

id sub_10004EE7C(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 ef_map:&stru_10064C6F0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10004EFAC(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[CNComposeRecipient alloc] initWithContact:0 address:v2 kind:0];

  return v3;
}

void sub_10004F05C(id a1)
{
  v1 = objc_alloc_init(ContentProtectionTesting);
  v2 = qword_1006DCDE0;
  qword_1006DCDE0 = v1;
}

void sub_10004F638(uint64_t a1, void *a2)
{
  v12 = a2;
  [v12 setBlockedSender:{objc_msgSend(*(a1 + 32), "isBlockedSender")}];
  [v12 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  v3 = [*(a1 + 32) date];
  [v12 setDate:v3];

  v4 = [*(a1 + 32) senderList];
  [v12 setSenderList:v4];

  v5 = [*(a1 + 32) subject];
  [v12 setSubject:v5];

  v6 = [*(a1 + 32) messageContentRequest];
  [v12 setMessageContentRequest:v6];

  v7 = [*(a1 + 32) messageLoadingContext];
  [v12 setMessageLoadingContext:v7];

  v8 = [*(a1 + 32) summary];
  [v12 setSummary:v8];

  v9 = [*(a1 + 32) generatedSummary];
  [v12 setGeneratedSummary:v9];

  v10 = [*(a1 + 32) manualSummaryViewModel];
  [v12 setManualSummaryViewModel:v10];

  v11 = [*(a1 + 32) avatarContext];
  [v12 setAvatarContext:v11];

  (*(*(a1 + 40) + 16))();
}

void sub_10004F954(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 setBlockedSender:{objc_msgSend(*(a1 + 32), "isBlockedSender")}];
  [v13 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  v3 = [*(a1 + 32) date];
  [v13 setDate:v3];

  v4 = [*(a1 + 32) senderList];
  [v13 setSenderList:v4];

  v5 = [*(a1 + 32) subject];
  [v13 setSubject:v5];

  v6 = [*(a1 + 32) messageContentRequest];
  [v13 setMessageContentRequest:v6];

  v7 = [*(a1 + 32) messageLoadingContext];
  [v13 setMessageLoadingContext:v7];

  v8 = [*(a1 + 32) summary];
  [v13 setSummary:v8];

  v9 = [*(a1 + 32) generatedSummary];
  [v13 setGeneratedSummary:v9];

  v10 = [*(a1 + 32) manualSummaryViewModel];
  [v13 setManualSummaryViewModel:v10];

  [v13 setFlagged:{objc_msgSend(*(a1 + 32), "isFlagged")}];
  v11 = [*(a1 + 32) flagColors];
  [v13 setFlagColors:v11];

  [v13 setRead:{objc_msgSend(*(a1 + 32), "isRead")}];
  [v13 setReplied:{objc_msgSend(*(a1 + 32), "isReplied")}];
  [v13 setForwarded:{objc_msgSend(*(a1 + 32), "isForwarded")}];
  [v13 setRedirected:{objc_msgSend(*(a1 + 32), "isRedirected")}];
  [v13 setJunk:{objc_msgSend(*(a1 + 32), "isJunk")}];
  [v13 setNotify:{objc_msgSend(*(a1 + 32), "isNotify")}];
  [v13 setMute:{objc_msgSend(*(a1 + 32), "isMute")}];
  v12 = [*(a1 + 32) avatarContext];
  [v13 setAvatarContext:v12];

  (*(*(a1 + 40) + 16))();
}

id sub_100050B34(id result)
{
  if (result)
  {
    v1 = result;
    [result bounds];
    v3 = [[ConversationHeaderContentView alloc] initWithFrame:0.0, 0.0, v2, 0.0];
    [v1 setContentView:v3];

    v4 = sub_100051108(v1);
    v5 = [v1 contentView];
    [v5 setFont:v4];

    v6 = [v1 contentView];
    [v6 setUserInteractionEnabled:0];

    v7 = [v1 contentView];
    [v7 setTextAlignment:1];

    v8 = [v1 contentView];
    [v1 addSubview:v8];

    sub_100050E9C(v1);
    v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v1 setSuperTitleLabel:v9];

    v10 = sub_100051108(v1);
    v11 = [v1 superTitleLabel];
    [v11 setFont:v10];

    v12 = [v1 superTitleLabel];
    [v1 addSubview:v12];

    v13 = [v1 superTitleLabel];
    [v13 mf_activateDebugModeIfEnabled];

    return [v1 mf_activateDebugModeIfEnabled];
  }

  return result;
}

void sub_100050D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ConversationHeaderView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100050E9C(void *a1)
{
  if (a1)
  {
    v2 = +[MFFontMetricCache sharedFontMetricCache];
    v3 = sub_100051108(a1);
    v4 = [a1 displayMetrics];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000511D0;
    v21[3] = &unk_10064C780;
    v5 = v3;
    v22 = v5;
    v6 = v4;
    v23 = v6;
    v7 = [NSString stringWithFormat:@"collapsibleHeaderView.%@", @"contentViewTopToFirstBaseline"];
    [v2 cachedFloat:v21 forKey:v7];
    v9 = v8;

    [a1 setContentViewTopToFirstBaseline:v9];
    v10 = [a1 contentView];
    [v10 setFont:v5];

    [v6 conversationHeaderViewCollapsedTitleTopToFirstBaseline];
    v12 = v11;
    v13 = [a1 contentView];
    [v13 setTopToFirstBaseline:v12];

    [v6 conversationHeaderViewCollapsedTitleBottomToLastBaseline];
    v15 = v14;
    v16 = [a1 contentView];
    [v16 setLastBaselineToBottom:v15];

    v17 = [a1 contentView];
    [v17 reflow];

    v18 = [a1 superTitleLabel];
    [v18 setFont:v5];

    v19 = [v6 conversationHeaderViewShouldHideCollapsedSuperTitle];
    v20 = [a1 superTitleLabel];
    [v20 setHidden:v19];
  }
}

id sub_100051108(uint64_t a1)
{
  if (a1)
  {
    v1 = +[MFFontMetricCache sharedFontMetricCache];
    v2 = [NSString stringWithFormat:@"collapsibleHeaderView.%@", @"titleFont"];
    v3 = [v1 cachedFont:&stru_10064C7C0 forKey:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000511D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) conversationHeaderViewExpandedTitleTopToFirstBaseline];

  return [v1 _scaledValueForValue:?];
}

UIFont *__cdecl sub_100051208(id a1)
{
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryCompareToCategory(v2, UIContentSizeCategoryLarge);

  v4 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v5 = [v4 fontDescriptorWithSymbolicTraits:32770];
  if (v3 == NSOrderedDescending)
  {
    v6 = 21.0;
  }

  else
  {
    v6 = 17.0;
  }

  v7 = [UIFont fontWithDescriptor:v5 size:v6];

  return v7;
}

void sub_1000513A4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1)
  {
    *&v10 = -1;
    *(&v10 + 1) = -1;
    v53 = v10;
    v54 = v10;
    v52 = v10;
    v11 = [a1 superTitleLabel];
    v12 = v11;
    if (v11)
    {
      [v11 transform];
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
    }

    v13 = [a1 superTitleLabel];
    v14 = *&CGAffineTransformIdentity.c;
    v49 = *&CGAffineTransformIdentity.a;
    v50 = v14;
    v51 = *&CGAffineTransformIdentity.tx;
    [v13 setTransform:&v49];

    v15 = a1[5];
    v16 = [a1 superTitleLabel];
    [v16 setText:v15];

    v17 = [a1 superTitleLabel];
    [v17 sizeToFit];

    v18 = [a1 superTitleLabel];
    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v55.origin.x = v20;
    v55.origin.y = v22;
    v55.size.width = v24;
    v55.size.height = v26;
    CGRectGetWidth(v55);
    sub_1000516AC(a1, a2, a3, a4, a5);
    v27 = [a1 _screen];
    [v27 scale];
    v45 = v28;
    UIRectCenteredXInRectScale();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = [a1 displayMetrics];
    [v35 conversationHeaderViewCollapsedTitleTopToFirstBaseline];
    v36 = [a1 superTitleLabel];
    [v36 _firstLineBaseline];

    UIRoundToViewScale();
    v38 = v37;
    v39 = [a1 superTitleLabel];
    [v39 setFrame:{v30, v38, v32, v34}];

    v56.origin.x = v30;
    v56.origin.y = v38;
    v56.size.width = v32;
    v56.size.height = v34;
    MinX = CGRectGetMinX(v56);
    [a1 directionalLayoutMargins];
    [a1 setBackButtonMaximumWidth:MinX - (v41 + 8.0)];
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v42 = [a1 superTitleLabel];
    v49 = v46;
    v50 = v47;
    v51 = v48;
    [v42 setTransform:&v49];

    v43 = MSAccessibilityIdentifierMailHeaderMessageCount;
    v44 = [a1 superTitleLabel];
    [v44 setAccessibilityIdentifier:v43];
  }
}

void sub_1000516AC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1)
  {
    v10 = [a1 contentOverlayRects];
    sub_100051764(a1, v10);

    [a1 mf_prefersRightToLeftInterfaceLayout];
    v11.origin.x = a2;
    v11.origin.y = a3;
    v11.size.width = a4;
    v11.size.height = a5;
    CGRectGetWidth(v11);
  }
}