void sub_1304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1328(uint64_t a1)
{
  if (![@"MobileSafari" length])
  {
    goto LABEL_8;
  }

  v2 = [@"MobileSafari" UTF8String];
  *v16 = xmmword_2460;
  v17 = 0;
  size = 0;
  v3 = sysctl(v16, 3u, 0, &size, 0, 0);
  v4 = v3;
  if (!v3)
  {
    v5 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v6 = sysctl(v16, 3u, v5, &size, 0, 0);
    if (v6)
    {
      v4 = v6;
      free(v5);
      if (v4 < 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (size < 0x288)
      {
LABEL_19:
        free(v5);
        goto LABEL_8;
      }

      v13 = size / 0x288;
      v14 = v5 + 243;
      while (1)
      {
        v4 = *(v14 - 203);
        if (v4 >= 1 && !strncmp(v2, v14, 0x10uLL))
        {
          break;
        }

        v14 += 648;
        if (!--v13)
        {
          goto LABEL_19;
        }
      }

      free(v5);
    }

LABEL_7:
    kill(v4, 9);
    goto LABEL_8;
  }

  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = [*(a1 + 32) _bookmarkCollection];
  +[WebBookmarkCollection lockSync];
  [v7 removePersistedInMemoryBookmarkChangesFile];
  if ([v7 mergeWithBookmarksDictionary:&__NSDictionary0__struct clearHidden:1 error:0])
  {
    v8 = [*(a1 + 32) _tabCollection];
    *(*(*(a1 + 40) + 8) + 24) = [v8 mergeWithBookmarksDictionary:&__NSDictionary0__struct clearHidden:0 error:0];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  +[WebBookmarkCollection unlockSync];
  v9 = *(*(a1 + 32) + 24);
  if (!v9)
  {
    v10 = +[WBSSafariBookmarksSyncAgentProxy sharedProxy];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v9 = *(*(a1 + 32) + 24);
  }

  [v9 deleteBackgroundImageDirectory];
  [*(*(a1 + 32) + 24) deletePerSiteSettingsSyncData];
  [*(*(a1 + 32) + 24) deleteCloudExtensionStatesDatabaseWithCompletionHandler:&stru_41E0];
}

void sub_15A4(uint64_t a1)
{
  v4 = [[WBBookmarkDBAccess alloc] initWithCollectionType:0];
  v2 = [v4 createDatabase];
  if (v2)
  {
    v3 = v2;
    [v4 openDatabase:v2];
    if ([v4 localCloudKitMigrationState:v3] != &dword_0 + 3)
    {
      [v4 clearAllSyncDataWithDatabase:v3];
    }

    [v4 closeDatabase:v3 shouldSave:1];
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_17F8(id a1)
{
  if ((+[WebBookmarkTabCollection isLockedSync]& 1) != 0)
  {
    v1 = [WebBookmarkTabCollection alloc];
    v8 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
    v2 = [v1 initWithConfiguration:v8 checkIntegrity:0];
    v3 = qword_8628;
    qword_8628 = v2;
  }

  else
  {
    +[WebBookmarkTabCollection lockSync];
    v4 = [WebBookmarkTabCollection alloc];
    v5 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
    v6 = [v4 initWithConfiguration:v5 checkIntegrity:0];
    v7 = qword_8628;
    qword_8628 = v6;

    +[WebBookmarkTabCollection unlockSync];
  }
}

void sub_19A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _bookmarkCollection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 containsOnlyStockBookmarks];
}