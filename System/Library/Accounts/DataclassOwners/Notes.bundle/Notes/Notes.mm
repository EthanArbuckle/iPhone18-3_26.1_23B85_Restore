void sub_1480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_14C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_14DC(uint64_t a1)
{
  v5 = [*(a1 + 32) identifier];
  v2 = [ICAccount cloudKitAccountWithIdentifier:v5 context:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1558(uint64_t a1)
{
  v2 = [*(a1 + 32) _noteContext];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v4 childAccounts];
    v6 = [v3 _syncingAccountForParentAccount:v4 withChildren:v5];

    v7 = [v6 identifier];
    v8 = [v2 accountForAccountId:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v11 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_2728(a1 + 48, v11);
      }

      v12 = *(a1 + 32);
      objc_opt_class();
      v13 = *(*(*(a1 + 48) + 8) + 40);
      v14 = ICCheckedDynamicCast();
      *(*(*(a1 + 56) + 8) + 24) = [v12 htmlAccountHasLocalUnsyncedData:v14];
    }
  }
}

void sub_1784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_179C(uint64_t a1)
{
  v2 = +[ICCloudContext sharedContext];
  v3 = [*(a1 + 32) managedObjectContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_185C;
  v4[3] = &unk_8260;
  v4[4] = *(a1 + 40);
  [v2 enumerateAllCloudObjectsInContext:v3 batchSize:0 saveAfterBatch:0 usingBlock:v4];
}

void sub_185C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  if ([v7 needsToBePushedToCloud])
  {
    v6 = [v7 shouldBeIgnoredForSync] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) |= v6;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_19FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A14(uint64_t a1)
{
  v2 = [*(a1 + 32) stores];
  *(*(*(a1 + 40) + 8) + 24) = [v2 ic_containsObjectPassingTest:&stru_82C8];
}

BOOL sub_1A78(id a1, NoteStoreObject *a2, BOOL *a3)
{
  v3 = [(NoteStoreObject *)a2 changes];
  v4 = [v3 count] != 0;

  return v4;
}

void sub_1E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3C(uint64_t a1)
{
  v2 = [*(a1 + 32) _noteContext];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 accountForAccountId:v3];

  v5 = os_log_create("com.apple.notes", "Accounts");
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_2934();
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2818();
  }

  *(*(*(a1 + 48) + 8) + 24) = [v2 deleteAccount:v4];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v10 = 0;
    v7 = [v2 save:&v10];
    v6 = v10;
    *(*(*(a1 + 48) + 8) + 24) = v7;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v8 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_2884();
      }

      if ([NoteContext databaseIsCorrupt:v6])
      {
        v9 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_28F4();
        }
      }
    }

LABEL_14:
  }
}

void sub_20A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _noteContext];
  v3 = [v2 localAccount];
  v4 = [v2 allNotesInCollection:v3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v2 deleteNoteRegardlessOfConstraints:*(*(&v14 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = 0;
  v9 = [v2 save:&v13];
  v10 = v13;
  *(*(*(a1 + 40) + 8) + 24) = v9;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_2884();
    }

    if ([NoteContext databaseIsCorrupt:v10])
    {
      v12 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_28F4();
      }
    }
  }
}

void sub_25C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_2658(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_25C0(&dword_0, a3, a3, "found ICAccount %@", a2);
}

void sub_26A8(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "has local unsynced data %d", v3, 8u);
}

void sub_2728(uint64_t a1, NSObject *a2)
{
  v3 = [*(*(*a1 + 8) + 40) accountIdentifier];
  sub_25A8();
  sub_25C0(&dword_0, a2, v4, "found NoteAccountObject %@", v5);
}

void sub_27C0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Could not find a notes-syncable account for this ACAccount: %@", buf, 0xCu);
}

void sub_2884()
{
  sub_25A8();
  sub_25B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2974(void *a1, NSObject *a2)
{
  v3 = [a1 username];
  sub_25A8();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No account syncing Notes found on parent account %@.", v4, 0xCu);
}