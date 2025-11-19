int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001BB8(id a1)
{
  qword_10000CD70 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.nanonews.sync"];

  _objc_release_x1();
}

void sub_100001CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001CF8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10000CD88)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001E3C;
    v4[4] = &unk_100008300;
    v4[5] = v4;
    v5 = off_1000082E8;
    v6 = 0;
    qword_10000CD88 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10000CD88)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000351C();
  }

  qword_10000CD80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001E3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CD88 = result;
  return result;
}

void sub_10000201C(id a1, BOOL a2, id a3)
{
  v3 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = FCURLsForAppExternalFiles();
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        v10 = +[NSFileManager defaultManager];
        [v10 removeItemAtURL:v9 error:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  v11 = [NSSUserDefaultsDataDestructionItem alloc];
  v12 = NewsCoreUserDefaults();
  v13 = FCDefaultsSuiteName;
  v14 = objc_opt_new();
  v15 = [v11 initWithUserDefaults:v12 domainName:v13 stickyKeys:v14];

  v16 = [NSSUserDefaultsDataDestructionItem alloc];
  v17 = NewsCoreSensitiveUserDefaults();
  v18 = FCSensitiveDefaultsSuiteName;
  v19 = objc_opt_new();
  v20 = [v16 initWithUserDefaults:v17 domainName:v18 stickyKeys:v19];

  v21 = [NSSUserDefaultsDataDestructionItem alloc];
  v22 = +[NSUserDefaults nanoNewsSyncDefaults];
  v23 = objc_opt_new();
  v24 = [v21 initWithUserDefaults:v22 domainName:@"com.apple.nanonews.sync" stickyKeys:v23];

  v39[0] = v15;
  v39[1] = v20;
  v39[2] = v24;
  v25 = [NSArray arrayWithObjects:v39 count:3];
  NSSDestroyUserDefaultsDataWithItems();

  v26 = MGCopyAnswer();
  Value = CFBooleanGetValue(v26);
  if (v26)
  {
    CFRelease(v26);
  }

  if (!Value)
  {
    +[NanoNewsSettingsManager resetSaved];
    +[NanoNewsSettingsManager resetSeen];
  }

  v28 = [NSSDataContainerDataDestructionItem alloc];
  v29 = [v28 initWithContainerClass:NDNewsdDataContainerClass identifier:{objc_msgSend(NDNewsdDataContainerIdentifier, "UTF8String")}];
  v30 = [NSSDataContainerDataDestructionItem alloc];
  v31 = [v30 initWithContainerClass:7 identifier:{objc_msgSend(NSSStocksNewsDataContainerIdentifier, "UTF8String")}];
  v38[0] = v29;
  v38[1] = v31;
  v32 = [NSArray arrayWithObjects:v38 count:2];
  v33 = NSSDestroyDataContainersWithItems();

  v3[2](v3);
}

void sub_1000023B8(id a1)
{
  qword_10000CD98 = [[NNArticleIdentifierSyncManager alloc] initWithReadonlyResetKey:@"gizmoSavedResetDate" readwriteResetKey:@"companionSavedResetDate" readonlyKey:@"gizmoSavedStates" readwriteKey:@"companionSavedStates"];

  _objc_release_x1();
}

void sub_10000245C(id a1)
{
  qword_10000CDA8 = [[NNArticleIdentifierSyncManager alloc] initWithReadonlyResetKey:@"gizmoSeenResetDate" readwriteResetKey:@"companionSeenResetDate" readonlyKey:@"gizmoSeenStates" readwriteKey:@"companionSeenStates"];

  _objc_release_x1();
}