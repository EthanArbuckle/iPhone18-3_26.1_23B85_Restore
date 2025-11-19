uint64_t sub_29C8EE2B0(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_29C8F4F18(a1);
  }

  [MEMORY[0x29EDC5EC0] startSharedContextWithOptions:2056];
  return [*(a1 + 40) acAccount:*(a1 + 32) wasDeletedInStore:*(a1 + 48)];
}

void sub_29C8EE56C(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_29C8F4F8C(a1);
  }

  v3 = (a1 + 32);
  v4 = [*(a1 + 32) dirtyProperties];
  v5 = [v4 count];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8F5048();
    }
  }

  v7 = [*v3 dirtyAccountProperties];
  v8 = [v7 count];

  if (v8)
  {
    v9 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8F50F0();
    }
  }

  v10 = [*v3 dirtyDataclassProperties];
  v11 = [v10 count];

  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8F5198();
    }
  }

  [MEMORY[0x29EDC5EC0] startSharedContextWithOptions:2056];
  [*(a1 + 40) deleteSpotlightDomainIfNecessaryForAccount:*(a1 + 48) oldAccount:*(a1 + 56)];
  v13 = *(a1 + 72);
  if (v13 == 3)
  {
    [*(a1 + 40) acAccount:*(a1 + 32) wasDeletedInStore:*(a1 + 64)];
  }

  else if (v13 == 2 || v13 == 1)
  {
    [*(a1 + 40) acAccount:*(a1 + 32) wasModifiedInStore:*(a1 + 64)];
  }

  v14 = [MEMORY[0x29EDC5EC0] sharedContext];
  v15 = [v14 workerManagedObjectContext];

  [MEMORY[0x29EDC5EB8] updateAllLegacyAccountMigrationStatesInContext:v15];
  v16 = dispatch_time(0, 2000000000);
  dispatch_after(v16, MEMORY[0x29EDCA578], &unk_2A23DAE90);
}

void sub_29C8EE7B4()
{
  v0 = [MEMORY[0x29EDC5F20] sharedWidget];
  [v0 reloadTimelinesWithReason:@"Account has changed"];
}

uint64_t sub_29C8EE848()
{
  v0 = *MEMORY[0x29EDB81C8];
  qword_2A1A11C98 = [MEMORY[0x29EDB8E50] setWithObjects:{*MEMORY[0x29EDB81C0], *MEMORY[0x29EDB81C8], *MEMORY[0x29EDB8238], *MEMORY[0x29EDB8240], *MEMORY[0x29EDB8250], *MEMORY[0x29EDB8260], *MEMORY[0x29EDB82C0], *MEMORY[0x29EDB8210], 0}];

  return MEMORY[0x2A1C71028]();
}

void sub_29C8EF1AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Accounts");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29C8F5468();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8F54D0(a1);
    }

    [MEMORY[0x29EDC5F18] setObject:0 forKey:*MEMORY[0x29EDC5F28]];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_29C8EF694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_29C8EF6CC(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_29C8F5708();
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_29C8EF728(uint64_t a1)
{
  v74 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC5E90];
  v3 = a1 + 32;
  v4 = [*(a1 + 32) identifier];
  v5 = [v2 accountWithIdentifier:v4 context:*(v3 + 8)];

  v6 = v5;
  if (v5)
  {
    goto LABEL_39;
  }

  v7 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_29C8F5744(v3);
  }

  v8 = [MEMORY[0x29EDC82A8] sharedManager];
  v9 = [v8 currentUser];

  v54 = v9;
  v10 = [v9 userType];
  v11 = [*v3 objectForKeyedSubscript:*MEMORY[0x29EDC5ED0]];
  v12 = [*v3 objectForKeyedSubscript:*MEMORY[0x29EDC5ED8]];
  v13 = [*v3 objectForKeyedSubscript:*MEMORY[0x29EDC5EE0]];
  if (!v11 || !v12 || ![v11 BOOLValue] || (objc_msgSend(v12, "BOOLValue") & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8F57D0();
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v56 = v13;
  v15 = MEMORY[0x29EDC5E90];
  v16 = [*(a1 + 32) identifier];
  v17 = [v15 newAccountWithIdentifier:v16 type:1 context:*(a1 + 40)];

  [v17 setNeedsToBeFetchedFromCloud:1];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (v11)
  {
    [v17 setDidChooseToMigrate:{objc_msgSend(v11, "BOOLValue")}];
  }

  if (v12)
  {
    [v17 setDidFinishMigration:{objc_msgSend(v12, "BOOLValue")}];
  }

  v52 = v12;
  v53 = v11;
  if (v13)
  {
    [v17 setDidMigrateOnMac:{objc_msgSend(v13, "BOOLValue")}];
  }

  v18 = [*v3 ic_isNotesMigrated];
  v19 = [*v3 ic_hasICloudEmailAddress];
  v55 = v3;
  v20 = [*v3 ic_isManagedAppleID];
  v21 = v20;
  v22 = v19 ^ 1u;
  v23 = v18 | v22 | v20 | (v10 == 1);
  v57 = v17;
  if ([v17 didChooseToMigrate])
  {
    if ([v17 didFinishMigration] & 1) != 0 || ((v23 ^ 1))
    {
      goto LABEL_26;
    }

LABEL_22:
    v24 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *v3;
      v26 = v10 == 1;
      v27 = v21 & 1;
      *buf = 67110146;
      v65 = v18;
      v66 = 1024;
      v67 = v22;
      v68 = 1024;
      v69 = v21 & 1;
      v70 = 1024;
      v71 = v10 == 1;
      v72 = 2112;
      v73 = v25;
      _os_log_impl(&dword_29C8EC000, v24, OS_LOG_TYPE_DEFAULT, "Automatically upgrading Notes because notesMigrated in account bag (%d), there is no iCloud email address (%d), Apple ID is managed (%d), or user is ephemeral (%d): %@", buf, 0x24u);
    }

    else
    {
      v26 = v10 == 1;
      v27 = v21 & 1;
    }

    NSLog(&cfstr_AutomaticallyU.isa, v18, v22, v27, v26, *(a1 + 32));
    [v57 setDidChooseToMigrate:1];
    [v57 setDidFinishMigration:1];
    [v57 setDidMigrateOnMac:1];
    [v57 updateChangeCountWithReason:@"Upgraded account"];
    *(*(*(a1 + 72) + 8) + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    goto LABEL_26;
  }

  if (v23)
  {
    goto LABEL_22;
  }

LABEL_26:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v28 = [MEMORY[0x29EDC5E90] allAccountsInContext:*(a1 + 40)];
  v29 = [v28 copy];

  v30 = [v29 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v60;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v60 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v59 + 1) + 8 * i);
        v35 = *(a1 + 48);
        v36 = [v34 identifier];
        v37 = [v35 accountWithIdentifier:v36];

        if ([v34 accountType] == 1)
        {
          v38 = [v34 identifier];
          v39 = [v57 identifier];
          if ([v38 isEqual:v39])
          {
          }

          else
          {
            v40 = [v37 ic_isNotesEnabled];

            if ((v40 & 1) == 0)
            {
              [MEMORY[0x29EDC5E90] deleteAccount:v34];
            }
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v31);
  }

  v5 = 0;
  v3 = v55;
  v6 = v57;
LABEL_39:
  v41 = [v6 name];
  v42 = [*v3 accountDescription];
  v43 = [v41 isEqualToString:v42];

  if (v43)
  {
    v44 = [MEMORY[0x29EDC5EA0] sharedController];
    [v44 batchUpdateTopicSubscriptionsAllAccountsInContext:*(a1 + 40)];

    if (v5)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v45 = [*(a1 + 32) accountDescription];
    [v6 setName:v45];

    v46 = [MEMORY[0x29EDC5EA0] sharedController];
    [v46 batchUpdateTopicSubscriptionsAllAccountsInContext:*(a1 + 40)];
  }

  v47 = *(a1 + 40);
  v58 = 0;
  v48 = [v47 save:&v58];
  v49 = v58;
  if ((v48 & 1) == 0)
  {
    v50 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_29C8F580C();
    }
  }

LABEL_48:
  v51 = *MEMORY[0x29EDCA608];
}

void sub_29C8EFDB0(uint64_t a1)
{
  v2 = MEMORY[0x29EDC5E90];
  v3 = [*(a1 + 32) identifier];
  v4 = [v2 accountWithIdentifier:v3 context:*(a1 + 40)];

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    [*(a1 + 48) fetchAndSetMigrationStateForACAccount:*(a1 + 32) inStore:*(a1 + 56)];
    v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDC5ED0]];
    v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDC5ED8]];
    v7 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDC5EE0]];
    [v4 setDidChooseToMigrate:{objc_msgSend(v5, "BOOLValue")}];
    [v4 setDidFinishMigration:{objc_msgSend(v6, "BOOLValue")}];
    [v4 setDidMigrateOnMac:{objc_msgSend(v7, "BOOLValue")}];
    [v4 updateChangeCountWithReason:@"Set migration state"];

    v8 = a1 + 80;
    if (*(*(*(a1 + 80) + 8) + 24) != 1)
    {
      goto LABEL_14;
    }

LABEL_7:
    v12 = [MEMORY[0x29EDC5EB0] currentDeviceMigrationStateForAccount:v4];
    if ([v4 didFinishMigration])
    {
      if ([v12 state] != 7)
      {
        v13 = @"Finished migration";
        v14 = 7;
LABEL_12:
        [v12 setState:v14];
        v15 = [MEMORY[0x29EDB8DB0] date];
        [v12 setStateModificationDate:v15];

        [v12 updateChangeCountWithReason:v13];
      }
    }

    else if ([v4 didChooseToMigrate])
    {
      v13 = @"Set migration state";
      v14 = 2;
      goto LABEL_12;
    }

LABEL_14:
    v16 = *(a1 + 40);
    v21 = 0;
    v17 = [v16 save:&v21];
    v18 = v21;
    if (v17)
    {
      v19 = [MEMORY[0x29EDC5EC0] sharedContext];
      v20 = [v19 crossProcessChangeCoordinator];
      [v20 postAccountDidChangeNotification];
    }

    else
    {
      v19 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_29C8F580C();
      }
    }

    if (*(*(*v8 + 8) + 24) == 1)
    {
      [MEMORY[0x29EDC5EC8] updateNotesOnLockScreenWhenAccountSupportingLockScreenAdded];
    }

    goto LABEL_21;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 32) reload];
    v9 = MEMORY[0x29EDB8EB0];
    [*(a1 + 32) setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:*MEMORY[0x29EDC5ED0]];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:*MEMORY[0x29EDC5ED8]];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:*MEMORY[0x29EDC5EE0]];
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = sub_29C8F0134;
    v22[3] = &unk_29F331580;
    v23 = v11;
    [v10 saveAccount:v23 withCompletionHandler:v22];
  }

  v8 = a1 + 80;
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    goto LABEL_7;
  }

LABEL_21:
}

void sub_29C8F0134(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29C8F5874(a1);
    }
  }
}

void sub_29C8F034C(uint64_t a1)
{
  v2 = MEMORY[0x29EDC5E90];
  v3 = [*(a1 + 32) identifier];
  v5 = [v2 accountWithIdentifier:v3 context:*(a1 + 40)];

  if (v5)
  {
    v4 = [MEMORY[0x29EDC5EA0] sharedController];
    [v4 removeAllTopicSubscriptionsForAccount:v5];
  }
}

void sub_29C8F03EC(uint64_t a1)
{
  v2 = MEMORY[0x29EDC5E90];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) identifier];
  v5 = [v2 accountWithIdentifier:v4 context:v3[1]];

  if (v5)
  {
    v6 = [MEMORY[0x29EDC5EA8] sharedController];
    [v6 clearCachedDevicesForAccount:v5];

    [MEMORY[0x29EDC5E90] deleteAccountWithBatchDelete:v5];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8F596C(v3);
    }
  }

  [*(a1 + 48) cleanupAdditionalPersistentStores];
  v8 = [*(a1 + 48) crossProcessChangeCoordinator];
  [v8 postAccountDidChangeNotification];

  [MEMORY[0x29EDC5EC8] disableNotesOnLockScreenIfNecessary];
}

void sub_29C8F08C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C8F08F0(uint64_t a1, char a2, char a3, char a4, void *a5)
{
  v9 = a5;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = sub_29C8F0A14;
  v16[3] = &unk_29F3315F8;
  v17 = v9;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *&v13 = *(a1 + 56);
  *(&v13 + 1) = *(a1 + 64);
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v18 = v14;
  v19 = v13;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v15 = v9;
  dispatch_async(v10, v16);
}

void sub_29C8F0A14(uint64_t a1)
{
  if (*(a1 + 32))
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 56) identifier];
    v4 = [v2 accountWithIdentifier:v3];

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || !v4)
    {
      dispatch_semaphore_signal(*(a1 + 40));
    }

    else
    {
      [*(a1 + 56) reload];
      v5 = MEMORY[0x29EDC5EB8];
      v6 = *(a1 + 72);
      v7 = *(a1 + 73);
      v8 = *(a1 + 74);
      v10 = *(a1 + 48);
      v9 = *(a1 + 56);
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = sub_29C8F0B5C;
      v11[3] = &unk_29F331580;
      v12 = *(a1 + 40);
      [v5 saveDidChooseToMigrate:v6 didFinishMigration:v7 didMigrateOnMac:v8 toACAccount:v9 inStore:v10 completionHandler:v11];
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
}

void sub_29C8F0B64(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8F5A84();
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_29C8F0C44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t ThumbnailKey.accountId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId);
  v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId + 8);

  return v1;
}

id sub_29C8F0D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_29C8F5B40();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t ThumbnailKey.objectId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId);
  v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId + 8);

  return v1;
}

uint64_t ThumbnailKey.thumbnailId.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);

  return v1;
}

id ThumbnailKey.__allocating_init(accountId:objectId:thumbnailId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___ICThumbnailKey_accountId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR___ICThumbnailKey_objectId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ThumbnailKey.init(accountId:objectId:thumbnailId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR___ICThumbnailKey_accountId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR___ICThumbnailKey_objectId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ThumbnailKey.init(accountId:objectId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_29C8F5B40();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_29C8F5B40();

LABEL_6:
  v8 = sub_29C8F5B40();
  v9 = [v4 initWithAccountId:v6 objectId:v7 thumbnailId:v8];

  return v9;
}

id ThumbnailKey.__allocating_init(type:accountId:objectId:preferredSize:scale:appearance:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v18 = objc_allocWithZone(v10);
  if (!a6)
  {
    v19 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v19 = sub_29C8F5B40();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = sub_29C8F5B40();

LABEL_6:
  LODWORD(v23) = 0;
  v21 = [v18 initWithType:a1 accountId:v19 objectId:v20 preferredSize:a9 scale:0 appearance:0 isRTL:a2 contentSizeCategory:a3 hasBoldText:a4 hasButtonShapes:v23 hasDarkerSystemColors:? hasBorder:?];

  return v21;
}

id ThumbnailKey.init(type:accountId:objectId:preferredSize:scale:appearance:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a6)
  {
    v16 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = sub_29C8F5B40();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = sub_29C8F5B40();

LABEL_6:
  LODWORD(v20) = 0;
  v18 = [v9 initWithType:a1 accountId:v16 objectId:v17 preferredSize:a9 scale:0 appearance:0 isRTL:a2 contentSizeCategory:a3 hasBoldText:a4 hasButtonShapes:v20 hasDarkerSystemColors:? hasBorder:?];

  return v18;
}

id ThumbnailKey.__allocating_init(type:accountId:objectId:preferredSize:traitCollection:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v16 = objc_allocWithZone(v9);
  if (!a5)
  {
    v17 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v17 = sub_29C8F5B40();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = sub_29C8F5B40();

LABEL_6:
  [a8 displayScale];
  v20 = v19;
  v21 = [a8 userInterfaceStyle] == 2;
  v22 = [a8 layoutDirection] == 1;
  v23 = [a8 preferredContentSizeCategory];
  v24 = [a8 legibilityWeight] == 1;
  BYTE3(v27) = 0;
  BYTE2(v27) = [a8 accessibilityContrast] == 1;
  LOWORD(v27) = v24;
  v25 = [v16 initWithType:a1 accountId:v17 objectId:v18 preferredSize:v21 scale:v22 appearance:v23 isRTL:a2 contentSizeCategory:a3 hasBoldText:v20 hasButtonShapes:v27 hasDarkerSystemColors:? hasBorder:?];

  return v25;
}

id ThumbnailKey.init(type:accountId:objectId:preferredSize:traitCollection:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  if (!a5)
  {
    v15 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_29C8F5B40();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_29C8F5B40();

LABEL_6:
  [a8 displayScale];
  v18 = v17;
  v19 = [a8 userInterfaceStyle] == 2;
  v20 = [a8 layoutDirection] == 1;
  v21 = [a8 preferredContentSizeCategory];
  v22 = [a8 legibilityWeight] == 1;
  BYTE3(v25) = 0;
  BYTE2(v25) = [a8 accessibilityContrast] == 1;
  LOWORD(v25) = v22;
  v23 = [v9 initWithType:a1 accountId:v15 objectId:v16 preferredSize:v19 scale:v20 appearance:v21 isRTL:a2 contentSizeCategory:a3 hasBoldText:v18 hasButtonShapes:v25 hasDarkerSystemColors:? hasBorder:?];

  return v23;
}

uint64_t ThumbnailKey.description.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId);
  v17 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId);
  v18 = v1;
  v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v19 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v20 = v2;

  v4 = 0;
  v5 = MEMORY[0x29EDCA190];
LABEL_2:
  if (v4 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 + 1;
  v8 = 16 * v4 + 40;
  while (1)
  {
    if (v4 == 3)
    {
      sub_29C8F33C8(&qword_2A1797030, &qword_29C8F6620);
      swift_arrayDestroy();
      sub_29C8F33C8(&qword_2A1797038, &qword_29C8F6628);
      sub_29C8F3410();
      v15 = sub_29C8F5B30();

      return v15;
    }

    if (v7 == ++v4)
    {
      break;
    }

    v9 = v8 + 16;
    v10 = *&v16[v8];
    v8 += 16;
    if (v10)
    {
      v11 = *&v16[v9 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29C8F32BC(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_29C8F32BC((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t ThumbnailKey.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_29C8F33C8(&qword_2A1797048, &qword_29C8F6630);
  v4 = sub_29C8F5B80();
  swift_unknownObjectRelease();
  if (v4 == v2)
  {
    v8 = 1;
    return v8 & 1;
  }

  sub_29C8F34BC(a1, v13);
  if (!v14)
  {
    sub_29C8F352C(v13);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v8 = 0;
    return v8 & 1;
  }

  v5 = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
  v6 = *&v12[OBJC_IVAR___ICThumbnailKey_accountId + 8];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId) == *&v12[OBJC_IVAR___ICThumbnailKey_accountId] && v5 == v6;
    if (!v7 && (sub_29C8F5C10() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v6)
  {
    goto LABEL_24;
  }

  v9 = *(v2 + OBJC_IVAR___ICThumbnailKey_objectId + 8);
  v10 = *&v12[OBJC_IVAR___ICThumbnailKey_objectId + 8];
  if (v9)
  {
    if (v10 && (*(v2 + OBJC_IVAR___ICThumbnailKey_objectId) == *&v12[OBJC_IVAR___ICThumbnailKey_objectId] && v9 == v10 || (sub_29C8F5C10() & 1) != 0))
    {
      goto LABEL_20;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v10)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (*(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId) == *&v12[OBJC_IVAR___ICThumbnailKey_thumbnailId] && *(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8) == *&v12[OBJC_IVAR___ICThumbnailKey_thumbnailId + 8])
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_29C8F5C10();
  }

  return v8 & 1;
}

uint64_t ThumbnailKey.hash.getter()
{
  sub_29C8F5C70();
  if (*(v0 + OBJC_IVAR___ICThumbnailKey_accountId + 8))
  {
    v1 = *(v0 + OBJC_IVAR___ICThumbnailKey_accountId);
    sub_29C8F5C40();
    sub_29C8F5B60();
  }

  else
  {
    sub_29C8F5C40();
  }

  if (*(v0 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
  {
    v2 = *(v0 + OBJC_IVAR___ICThumbnailKey_objectId);
    sub_29C8F5C40();
    sub_29C8F5B60();
  }

  else
  {
    sub_29C8F5C40();
  }

  v3 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v4 = *(v0 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  sub_29C8F5B60();
  return sub_29C8F5C50();
}

id ThumbnailKey.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR___ICThumbnailKey_accountId);
  v4 = *(v1 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
  v7 = *(v1 + OBJC_IVAR___ICThumbnailKey_objectId);
  v6 = *(v1 + OBJC_IVAR___ICThumbnailKey_objectId + 8);
  v9 = *(v1 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v8 = *(v1 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v10 = objc_allocWithZone(ObjectType);
  v11 = &v10[OBJC_IVAR___ICThumbnailKey_accountId];
  *v11 = v5;
  *(v11 + 1) = v4;
  v12 = &v10[OBJC_IVAR___ICThumbnailKey_objectId];
  *v12 = v7;
  *(v12 + 1) = v6;
  v13 = &v10[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v13 = v9;
  *(v13 + 1) = v8;
  v15.receiver = v10;
  v15.super_class = ObjectType;

  result = objc_msgSendSuper2(&v15, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t ThumbnailKey.containerUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_29C8F5B00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x2A1C7C4A8])();
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = v37 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = v37 - v13;
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = v37 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v19 = v37 - v18;
  if (*(v2 + OBJC_IVAR___ICThumbnailKey_accountId + 8))
  {
    v37[1] = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId);
    v20 = [objc_opt_self() sharedInstance];
    v21 = sub_29C8F5B40();
    v22 = [v20 applicationDocumentsURLForAccountIdentifier_];
    v38 = v2;
    v23 = v22;

    sub_29C8F5AF0();
    v24 = *MEMORY[0x29EDC5EF0];
    sub_29C8F5B50();
    sub_29C8F5AD0();

    v25 = *(v4 + 8);
    v25(v11, v3);
    sub_29C8F5AD0();
    v25(v14, v3);
    v26 = *MEMORY[0x29EDC5EE8];
    sub_29C8F5B50();
    sub_29C8F5AD0();

    v25(v17, v3);
    if (*(v38 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
    {
      v27 = *(v38 + OBJC_IVAR___ICThumbnailKey_objectId);
      v28 = sub_29C8F5B40();
      v29 = [v28 ic_sanitizedFilenameString];

      sub_29C8F5B50();
    }

    sub_29C8F5AD0();

    return (v25)(v19, v3);
  }

  else
  {
    v30 = [objc_opt_self() applicationDocumentsURL];
    sub_29C8F5AF0();

    v31 = *MEMORY[0x29EDC5EE8];
    sub_29C8F5B50();
    sub_29C8F5AD0();

    v32 = *(v4 + 8);
    v32(v17, v3);
    if (*(v2 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
    {
      v33 = *(v2 + OBJC_IVAR___ICThumbnailKey_objectId);
      v34 = sub_29C8F5B40();
      v35 = [v34 ic_sanitizedFilenameString];

      sub_29C8F5B50();
    }

    sub_29C8F5AD0();

    return (v32)(v8, v3);
  }
}

id sub_29C8F2600(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_29C8F5B00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  sub_29C8F2718(a3, v9);

  v11 = sub_29C8F5AC0();
  (*(v6 + 8))(v9, v5);

  return v11;
}

uint64_t sub_29C8F2718@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v23[0] = sub_29C8F5B20();
  v4 = *(v23[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29C8F5B00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = v23 - v14;
  ThumbnailKey.containerUrl.getter(v13);
  v16 = *(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v17 = *(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v18 = sub_29C8F5B40();
  v19 = [v18 ic_sanitizedFilenameString];

  sub_29C8F5B50();
  sub_29C8F5AD0();

  v20 = *(v9 + 8);
  v21 = v20(v13, v8);
  a1(v21);
  sub_29C8F5B10();
  (*(v4 + 8))(v7, v23[0]);
  sub_29C8F5AE0();

  return v20(v15, v8);
}

id ThumbnailKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29C8F2A08()
{
  v1 = *v0;
  sub_29C8F5C20();
  MEMORY[0x29ED4A650](v1);
  return sub_29C8F5C60();
}

uint64_t sub_29C8F2A7C()
{
  v1 = *v0;
  sub_29C8F5C20();
  MEMORY[0x29ED4A650](v1);
  return sub_29C8F5C60();
}

uint64_t sub_29C8F2AC0()
{
  v1 = 0x64497463656A626FLL;
  if (*v0 != 1)
  {
    v1 = 0x69616E626D756874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_29C8F2B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29C8F4C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29C8F2B68(uint64_t a1)
{
  v2 = sub_29C8F3594();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29C8F2BA4(uint64_t a1)
{
  v2 = sub_29C8F3594();

  return MEMORY[0x2A1C73280](a1, v2);
}

id ThumbnailKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ThumbnailKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_29C8F33C8(&qword_2A1797050, &qword_29C8F6638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_29C8F4DA4(a1, a1[3]);
  sub_29C8F3594();
  sub_29C8F5C90();
  v11 = *(v3 + OBJC_IVAR___ICThumbnailKey_accountId);
  v12 = *(v3 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
  v18[15] = 0;
  sub_29C8F5BD0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR___ICThumbnailKey_objectId);
  v14 = *(v3 + OBJC_IVAR___ICThumbnailKey_objectId + 8);
  v18[14] = 1;
  sub_29C8F5BD0();
  v16 = *(v3 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v17 = *(v3 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v18[13] = 2;
  sub_29C8F5BE0();
  return (*(v6 + 8))(v9, v5);
}

id ThumbnailKey.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29C8F33C8(&qword_2A1797058, &qword_29C8F6640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_29C8F4DA4(a1, a1[3]);
  sub_29C8F3594();
  sub_29C8F5C80();
  if (v2)
  {
    sub_29C8F4DE8(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = 0;
    v11 = sub_29C8F5BB0();
    v13 = &v1[OBJC_IVAR___ICThumbnailKey_accountId];
    *v13 = v11;
    v13[1] = v14;
    v24 = 1;
    v15 = sub_29C8F5BB0();
    v16 = &v1[OBJC_IVAR___ICThumbnailKey_objectId];
    *v16 = v15;
    v16[1] = v17;
    v24 = 2;
    v18 = sub_29C8F5BC0();
    v19 = &v1[OBJC_IVAR___ICThumbnailKey_thumbnailId];
    *v19 = v18;
    v19[1] = v20;
    v23.receiver = v1;
    v23.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_29C8F4DE8(a1);
  }

  return v3;
}

id sub_29C8F311C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ThumbnailKey.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *sub_29C8F3190(char *a1, int64_t a2, char a3)
{
  result = sub_29C8F31B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29C8F31B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29C8F33C8(&unk_2A17970C0, &qword_29C8F67E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29C8F32BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29C8F33C8(&unk_2A17970C0, &qword_29C8F67E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29C8F33C8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_29C8F3410()
{
  result = qword_2A1797040;
  if (!qword_2A1797040)
  {
    sub_29C8F3474(&qword_2A1797038, &qword_29C8F6628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1797040);
  }

  return result;
}

uint64_t sub_29C8F3474(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_29C8F34BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C8F33C8(&qword_2A1797048, &qword_29C8F6630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C8F352C(uint64_t a1)
{
  v2 = sub_29C8F33C8(&qword_2A1797048, &qword_29C8F6630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29C8F3594()
{
  result = qword_2A17970D0[0];
  if (!qword_2A17970D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A17970D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThumbnailKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ThumbnailKey.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29C8F3784()
{
  result = qword_2A17972E0[0];
  if (!qword_2A17972E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A17972E0);
  }

  return result;
}

unint64_t sub_29C8F37DC()
{
  result = qword_2A17973F0;
  if (!qword_2A17973F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17973F0);
  }

  return result;
}

unint64_t sub_29C8F3834()
{
  result = qword_2A17973F8[0];
  if (!qword_2A17973F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A17973F8);
  }

  return result;
}

uint64_t sub_29C8F3888(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v30 = result;
    v10 = 0;
    v11 = a5 + 40;
    v12 = MEMORY[0x29EDCA190];
LABEL_3:
    v13 = (v11 + 16 * v10);
    while (1)
    {
      if (v5 == v10)
      {

        v32 = v12;
        sub_29C8F33C8(&qword_2A1797038, &qword_29C8F6628);
        sub_29C8F3410();
        v21 = sub_29C8F5B30();
        v23 = v22;

        v24 = type metadata accessor for ThumbnailKey();
        v25 = objc_allocWithZone(v24);
        v26 = &v25[OBJC_IVAR___ICThumbnailKey_accountId];
        *v26 = v30;
        *(v26 + 1) = a2;
        v27 = &v25[OBJC_IVAR___ICThumbnailKey_objectId];
        *v27 = a3;
        *(v27 + 1) = a4;
        v28 = &v25[OBJC_IVAR___ICThumbnailKey_thumbnailId];
        *v28 = v21;
        v28[1] = v23;
        v31.receiver = v25;
        v31.super_class = v24;
        return objc_msgSendSuper2(&v31, sel_init);
      }

      if (v10 >= *(a5 + 16))
      {
        break;
      }

      ++v10;
      v14 = *(v13 - 1);
      v15 = *v13;
      v13 += 2;
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v32 = v12;
        v29 = a3;
        v17 = a4;
        if ((result & 1) == 0)
        {
          result = sub_29C8F3190(0, *(v12 + 16) + 1, 1);
          v12 = v32;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_29C8F3190((v18 > 1), v19 + 1, 1);
          v12 = v32;
        }

        *(v12 + 16) = v19 + 1;
        v20 = v12 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v15;
        a4 = v17;
        a3 = v29;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29C8F3A70(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD000000000000013;
      }

      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      return 0x6572507265706150;
    }

    if (a1 == 8)
    {
      return 0x726174617641;
    }

    if (a1 == 10 || a1 == 11)
    {
      return 0xD000000000000014;
    }

LABEL_24:
    result = sub_29C8F5BA0();
    __break(1u);
    return result;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x656D686361747441;
    }

    if (a1 == 1)
    {
      return 1702129486;
    }

    goto LABEL_24;
  }

  if (a1 == 2)
  {
    return 0x6174744165746F4ELL;
  }

  if (a1 == 3)
  {
    return 0xD000000000000013;
  }

  return 0x7268437265706150;
}

void sub_29C8F3C5C(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_29C8F5BF0();
  MEMORY[0x29ED4A590](120, 0xE100000000000000);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 < 9.22337204e18)
  {
    v3 = sub_29C8F5BF0();
    MEMORY[0x29ED4A590](v3);

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_29C8F3D80(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    v1 = sub_29C8F5BF0();
    MEMORY[0x29ED4A590](v1);

    MEMORY[0x29ED4A590](120, 0xE100000000000000);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_29C8F3E3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29C8F5B40();
  }

  else
  {
    v2 = *MEMORY[0x29EDC80B8];
  }

  v3 = v2;
  v4 = *MEMORY[0x29EDC8098];
  v5 = sub_29C8F5B50();
  v7 = v6;
  if (v5 == sub_29C8F5B50() && v7 == v8)
  {

    return 21336;
  }

  v10 = sub_29C8F5C10();

  if (v10)
  {

    return 21336;
  }

  v12 = *MEMORY[0x29EDC80B0];
  v13 = sub_29C8F5B50();
  v15 = v14;
  if (v13 == sub_29C8F5B50() && v15 == v16)
  {

    return 83;
  }

  v18 = sub_29C8F5C10();

  if (v18)
  {

    return 83;
  }

  v19 = *MEMORY[0x29EDC80A8];
  v20 = sub_29C8F5B50();
  v22 = v21;
  if (v20 == sub_29C8F5B50() && v22 == v23)
  {
    goto LABEL_22;
  }

  v24 = sub_29C8F5C10();

  if (v24)
  {
    goto LABEL_24;
  }

  v25 = *MEMORY[0x29EDC80B8];
  v26 = sub_29C8F5B50();
  v28 = v27;
  if (v26 == sub_29C8F5B50() && v28 == v29)
  {
LABEL_22:

    return 77;
  }

  v30 = sub_29C8F5C10();

  if (v30)
  {
LABEL_24:

    return 77;
  }

  v31 = *MEMORY[0x29EDC80A0];
  v32 = sub_29C8F5B50();
  v34 = v33;
  if (v32 == sub_29C8F5B50() && v34 == v35)
  {

    return 76;
  }

  v36 = sub_29C8F5C10();

  if (v36)
  {

    return 76;
  }

  v37 = *MEMORY[0x29EDC8090];
  v38 = sub_29C8F5B50();
  v40 = v39;
  if (v38 == sub_29C8F5B50() && v40 == v41)
  {

    return 19544;
  }

  v42 = sub_29C8F5C10();

  if (v42)
  {

    return 19544;
  }

  v43 = *MEMORY[0x29EDC8088];
  v44 = sub_29C8F5B50();
  v46 = v45;
  if (v44 == sub_29C8F5B50() && v46 == v47)
  {
    goto LABEL_43;
  }

  v48 = sub_29C8F5C10();

  if (v48)
  {
    goto LABEL_45;
  }

  v49 = *MEMORY[0x29EDC8080];
  v50 = sub_29C8F5B50();
  v52 = v51;
  if (v50 == sub_29C8F5B50() && v52 == v53)
  {
LABEL_43:

    return 5003314;
  }

  v54 = sub_29C8F5C10();

  if (v54)
  {
LABEL_45:

    return 5003314;
  }

  v55 = *MEMORY[0x29EDC8070];
  v56 = sub_29C8F5B50();
  v58 = v57;
  if (v56 == sub_29C8F5B50() && v58 == v59)
  {

    return 19777;
  }

  v60 = sub_29C8F5C10();

  if (v60)
  {

    return 19777;
  }

  v61 = *MEMORY[0x29EDC8068];
  v62 = sub_29C8F5B50();
  v64 = v63;
  if (v62 == sub_29C8F5B50() && v64 == v65)
  {

    return 19521;
  }

  v66 = sub_29C8F5C10();

  if (v66)
  {

    return 19521;
  }

  v67 = *MEMORY[0x29EDC8060];
  v68 = sub_29C8F5B50();
  v70 = v69;
  if (v68 == sub_29C8F5B50() && v70 == v71)
  {

    return 5003329;
  }

  v72 = sub_29C8F5C10();

  if (v72)
  {

    return 5003329;
  }

  v73 = *MEMORY[0x29EDC8058];
  v74 = sub_29C8F5B50();
  v76 = v75;
  if (v74 == sub_29C8F5B50() && v76 == v77)
  {

    return 1280848449;
  }

  v78 = sub_29C8F5C10();

  if (v78)
  {

    return 1280848449;
  }

  v79 = *MEMORY[0x29EDC8050];
  v80 = sub_29C8F5B50();
  v82 = v81;
  if (v80 == sub_29C8F5B50() && v82 == v83)
  {

    return 1280848705;
  }

  else
  {
    v84 = sub_29C8F5C10();

    if (v84)
    {
      return 1280848705;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29C8F4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  if (a1 <= 4)
  {
    if ((a1 - 1) < 3)
    {

      swift_getObjectType();
      sub_29C8F33C8(&unk_2A17970C0, &qword_29C8F67E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29C8F6600;
      *(inited + 32) = sub_29C8F3A70(a1);
      *(inited + 40) = v29;
      sub_29C8F3C5C(a9, a10);
      *(inited + 48) = v30;
      *(inited + 56) = v31;
      if (a6)
      {
        if (a6 != 1)
        {
          goto LABEL_60;
        }

        v34 = a11;
        v32 = 0xE400000000000000;
        v33 = 1802658116;
      }

      else
      {
        v32 = 0xE500000000000000;
        v33 = 0x746867694CLL;
        v34 = a11;
      }

      *(inited + 64) = v33;
      *(inited + 72) = v32;
      sub_29C8F3D80(v34);
      *(inited + 80) = v54;
      *(inited + 88) = v55;
      v51 = a2;
      v52 = a3;
      v53 = a4;
      v56 = a5;
      v57 = inited;
LABEL_59:
      v85 = sub_29C8F3888(v51, v52, v53, v56, v57);
      swift_deallocPartialClassInstance();
      return v85;
    }

    if (a1)
    {
      v89 = a2;
      v91 = a4;
      v58 = a7;
      if (a1 != 4)
      {
        goto LABEL_60;
      }

      goto LABEL_27;
    }

    swift_getObjectType();
    sub_29C8F33C8(&unk_2A17970C0, &qword_29C8F67E0);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_29C8F65E0;
    *(v46 + 32) = 0x656D686361747441;
    *(v46 + 40) = 0xEA0000000000746ELL;
    sub_29C8F3C5C(a9, a10);
    *(v46 + 48) = v47;
    *(v46 + 56) = v48;
    sub_29C8F3D80(a11);
    *(v46 + 64) = v49;
    *(v46 + 72) = v50;
    v51 = a2;
    v52 = a3;
    v53 = a4;
LABEL_25:
    v56 = a5;
    v57 = v46;
    goto LABEL_59;
  }

  if (a1 > 7)
  {
    if ((a1 - 10) < 2)
    {
      v87 = a5;
      swift_getObjectType();
      sub_29C8F33C8(&unk_2A17970C0, &qword_29C8F67E0);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_29C8F65F0;
      *(v36 + 32) = sub_29C8F3A70(a1);
      *(v36 + 40) = v37;
      if (a6)
      {
        if (a6 != 1)
        {
          goto LABEL_60;
        }

        v40 = a7;
        v38 = 0xE400000000000000;
        v39 = 1802658116;
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x746867694CLL;
        v40 = a7;
      }

      *(v36 + 48) = v39;
      *(v36 + 56) = v38;
      v71 = sub_29C8F3E3C(v40, a8);
      v73 = v72;

      *(v36 + 64) = v71;
      *(v36 + 72) = v73;
      v74 = 0x5472616C75676552;
      if (a12)
      {
        v74 = 0x74786554646C6F42;
      }

      v75 = 0xEB00000000747865;
      if (a12)
      {
        v75 = 0xE800000000000000;
      }

      *(v36 + 80) = v74;
      *(v36 + 88) = v75;
      v76 = 0x4372616C75676552;
      if (a13)
      {
        v76 = 0x6F4372656B726144;
      }

      v77 = 0xED000073726F6C6FLL;
      if (a13)
      {
        v77 = 0xEC00000073726F6CLL;
      }

      *(v36 + 96) = v76;
      *(v36 + 104) = v77;
      v51 = a2;
      v53 = a4;
      v52 = a3;
      goto LABEL_58;
    }

    if (a1 != 8)
    {
      goto LABEL_60;
    }

    swift_getObjectType();
    sub_29C8F33C8(&unk_2A17970C0, &qword_29C8F67E0);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_29C8F65E0;
    *(v46 + 32) = 0x726174617641;
    *(v46 + 40) = 0xE600000000000000;
    sub_29C8F3C5C(a9, a10);
    *(v46 + 48) = v61;
    *(v46 + 56) = v62;
    v63 = 0x726564726F426F4ELL;
    if (a14)
    {
      v63 = 0x726564726F42;
    }

    v64 = 0xE800000000000000;
    if (a14)
    {
      v64 = 0xE600000000000000;
    }

    *(v46 + 64) = v63;
    *(v46 + 72) = v64;
    v51 = a2;
    v53 = a4;
    v52 = a3;
    goto LABEL_25;
  }

  if ((a1 - 5) >= 2)
  {
    v89 = a2;
    v91 = a4;
    v58 = a7;
    if (a1 != 7)
    {
      goto LABEL_60;
    }

LABEL_27:
    v87 = a5;
    swift_getObjectType();
    sub_29C8F33C8(&unk_2A17970C0, &qword_29C8F67E0);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_29C8F65F0;
    *(v36 + 32) = sub_29C8F3A70(a1);
    *(v36 + 40) = v65;
    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_60;
      }

      v68 = v58;
      v66 = 0xE400000000000000;
      v67 = 1802658116;
    }

    else
    {
      v66 = 0xE500000000000000;
      v67 = 0x746867694CLL;
      v68 = v58;
    }

    *(v36 + 48) = v67;
    *(v36 + 56) = v66;
    v78 = sub_29C8F3E3C(v68, a8);
    v80 = v79;

    *(v36 + 64) = v78;
    *(v36 + 72) = v80;
    v81 = 0x5472616C75676552;
    if (a12)
    {
      v81 = 0x74786554646C6F42;
    }

    v82 = 0xEB00000000747865;
    if (a12)
    {
      v82 = 0xE800000000000000;
    }

    *(v36 + 80) = v81;
    *(v36 + 88) = v82;
    v83 = 0x4372616C75676552;
    if (a13)
    {
      v83 = 0x6F4372656B726144;
    }

    v84 = 0xED000073726F6C6FLL;
    if (a13)
    {
      v84 = 0xEC00000073726F6CLL;
    }

    *(v36 + 96) = v83;
    *(v36 + 104) = v84;
    v51 = v89;
    v52 = a3;
    v53 = v91;
LABEL_58:
    v56 = v87;
    v57 = v36;
    goto LABEL_59;
  }

  swift_getObjectType();
  sub_29C8F33C8(&unk_2A17970C0, &qword_29C8F67E0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_29C8F65E0;
  *(v19 + 32) = sub_29C8F3A70(a1);
  *(v19 + 40) = v20;
  if (!a6)
  {
    v21 = 0xE500000000000000;
    v22 = 0x746867694CLL;
LABEL_31:
    *(v19 + 48) = v22;
    *(v19 + 56) = v21;
    v69 = 0x4372616C75676552;
    if (a13)
    {
      v69 = 0x6F4372656B726144;
    }

    v70 = 0xED000073726F6C6FLL;
    if (a13)
    {
      v70 = 0xEC00000073726F6CLL;
    }

    *(v19 + 64) = v69;
    *(v19 + 72) = v70;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v56 = 0;
    v57 = v19;
    goto LABEL_59;
  }

  if (a6 == 1)
  {
    v21 = 0xE400000000000000;
    v22 = 1802658116;
    goto LABEL_31;
  }

LABEL_60:
  result = sub_29C8F5BA0();
  __break(1u);
  return result;
}

uint64_t sub_29C8F4C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_29C8F5C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64497463656A626FLL && a2 == 0xE800000000000000 || (sub_29C8F5C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEB0000000064496CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_29C8F5C10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_29C8F4DA4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29C8F4DE8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_29C8F4E38()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C8F0C38();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C8F4EA8()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C8F0C38();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C8F4F18(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  sub_29C8F0C84();
  sub_29C8F0C2C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C8F4F8C(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = [*(a1 + 32) accountType];
  v8 = [v1 identifier];
  sub_29C8F0C04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5048()
{
  sub_29C8F0C78();
  v1 = *MEMORY[0x29EDCA608];
  v3 = [sub_29C8F0C6C(v2) identifier];
  v4 = [*v0 dirtyProperties];
  sub_29C8F0C14();
  sub_29C8F0C04();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C8F50F0()
{
  sub_29C8F0C78();
  v1 = *MEMORY[0x29EDCA608];
  v3 = [sub_29C8F0C6C(v2) identifier];
  v4 = [*v0 dirtyAccountProperties];
  sub_29C8F0C14();
  sub_29C8F0C04();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5198()
{
  sub_29C8F0C78();
  v1 = *MEMORY[0x29EDCA608];
  v3 = [sub_29C8F0C6C(v2) identifier];
  v4 = [*v0 dirtyDataclassProperties];
  sub_29C8F0C14();
  sub_29C8F0C04();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5254()
{
  sub_29C8F0C78();
  v10 = *MEMORY[0x29EDCA608];
  v2 = [v1 identifier];
  v3 = [v0 dirtyProperties];
  sub_29C8F0C14();
  sub_29C8F0C04();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29C8F52FC(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = [a1 identifier];
  sub_29C8F0C38();
  sub_29C8F0C04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5388()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C8F0C38();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C8F53F8()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C8F0C38();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5468()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29C8F0C38();
  sub_29C8F0C44(&dword_29C8EC000, v0, v1, "Error deleting search index domain after deleting account: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C8F54D0(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  sub_29C8F0C84();
  sub_29C8F0C2C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5544(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = [a1 identifier];
  sub_29C8F0C38();
  sub_29C8F0C04();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C8F55D4()
{
  sub_29C8F0C60();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C8F5610(NSObject *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDC5EC0] sharedContext];
  v3 = [v2 persistentStoresByAccountId];
  sub_29C8F0C38();
  _os_log_debug_impl(&dword_29C8EC000, a1, OS_LOG_TYPE_DEBUG, "Current persistent stores by account ID = %@", v5, 0xCu);

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5708()
{
  sub_29C8F0C60();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C8F5744(uint64_t a1)
{
  v1 = *MEMORY[0x29EDCA608];
  v2 = [sub_29C8F0C6C(a1) identifier];
  sub_29C8F0C38();
  sub_29C8F0C04();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C8F57D0()
{
  sub_29C8F0C60();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C8F580C()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29C8F0C38();
  sub_29C8F0C44(&dword_29C8EC000, v0, v1, "Error saving context after adding account: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5874(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  sub_29C8F0C84();
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_29C8EC000, v3, OS_LOG_TYPE_ERROR, "Error updating migration flags for ACAccount (%@): %@", v5, 0x16u);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_29C8F58FC()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C8F0C38();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C8F596C(uint64_t *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  sub_29C8F0C84();
  sub_29C8F0C2C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C8F59E0()
{
  sub_29C8F0C60();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C8F5A1C()
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29C8F0C38();
  sub_29C8F0C44(&dword_29C8EC000, v0, v1, "Cannot remove recent System Paper thumbnails {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C8F5A84()
{
  sub_29C8F0C60();
  sub_29C8F0C2C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}