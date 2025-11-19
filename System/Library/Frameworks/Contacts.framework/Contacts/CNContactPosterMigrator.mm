@interface CNContactPosterMigrator
+ (id)log;
- (BOOL)makeAvatarRecipeCurrentFor:(id)a3 avatarRecipeData:(id)a4;
- (BOOL)makePosterCurrentWithUUID:(id)a3 contactIdentifier:(id)a4;
- (BOOL)migrateRecipe:(__CFData *)a3 contactIdentifier:(id)a4 error:(id *)a5;
- (BOOL)migrateToContactPosterStore:(id)a3 posterMetadata:(id)a4 watchPosterImageData:(id)a5 contactIdentifier:(id)a6 externalUUID:(id)a7 error:(id *)a8;
- (CNContactPosterMigrator)init;
- (CNContactPosterMigrator)initWithAddressBook:(void *)a3 storeManager:(id)a4;
- (NSURL)tempUnarchivingURL;
- (PRSPosterArchiver)posterArchiver;
- (id)posterUUIDFromPosterArchiveData:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)deleteExistingPostersFromContactPosterStore;
- (void)migrateLinkIdentifiersToNonUnifiedContactIdentifiers;
- (void)performMigration;
- (void)performMigrationOfAvatarRecipesForRecordIDs:(__CFArray *)a3;
- (void)performMigrationOfPosterDataForContactIdentifiers:(id)a3;
- (void)resetStatistics;
@end

@implementation CNContactPosterMigrator

+ (id)log
{
  if (log_cn_once_token_0_9 != -1)
  {
    +[CNContactPosterMigrator log];
  }

  v3 = log_cn_once_object_0_9;

  return v3;
}

uint64_t __30__CNContactPosterMigrator_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNContactPosterMigrator");
  v1 = log_cn_once_object_0_9;
  log_cn_once_object_0_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactPosterMigrator)init
{
  v3 = ABAddressBookCreate();
  v4 = CFAutorelease(v3);
  v5 = objc_alloc_init(CNContactPosterDataPersistentStoreManager);
  v6 = [(CNContactPosterMigrator *)self initWithAddressBook:v4 storeManager:v5];

  return v6;
}

- (CNContactPosterMigrator)initWithAddressBook:(void *)a3 storeManager:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CNContactPosterMigrator;
  v8 = [(CNContactPosterMigrator *)&v16 init];
  if (v8)
  {
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    v8->_addressBook = v9;
    objc_storeStrong(&v8->_storeManager, a4);
    v10 = [MEMORY[0x1E695DF00] now];
    lastUsedDate = v8->_lastUsedDate;
    v8->_lastUsedDate = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v8->_fileManager;
    v8->_fileManager = v12;

    v8->_shouldDeleteExistingPosters = 0;
    v14 = v8;
  }

  return v8;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = CNContactPosterMigrator;
  [(CNContactPosterMigrator *)&v4 dealloc];
}

- (void)resetStatistics
{
  [(CNContactPosterMigrator *)self setContactsWithPostersCount:0];
  [(CNContactPosterMigrator *)self setPostersMigratedCount:0];
  [(CNContactPosterMigrator *)self setPostersNotFetchedCount:0];
  [(CNContactPosterMigrator *)self setPosterUUIDsNotExtractedCount:0];
  [(CNContactPosterMigrator *)self setPosterUUIDsAlreadyExistCount:0];
  [(CNContactPosterMigrator *)self setContactsWithAvatarRecipeCount:0];
  [(CNContactPosterMigrator *)self setAvatarRecipesMigratedCount:0];
  [(CNContactPosterMigrator *)self setAvatarRecipesNotFetchedCount:0];
  [(CNContactPosterMigrator *)self setAvatarRecipesWithCurrentMatchCount:0];

  [(CNContactPosterMigrator *)self setRecentsMigratedFromLinkIdentifiersCount:0];
}

- (void)performMigration
{
  [(CNContactPosterMigrator *)self resetStatistics];
  if ([(CNContactPosterMigrator *)self shouldDeleteExistingPosters])
  {
    [(CNContactPosterMigrator *)self deleteExistingPostersFromContactPosterStore];
  }

  [(CNContactPosterMigrator *)self migrateLinkIdentifiersToNonUnifiedContactIdentifiers];
  [(CNContactPosterMigrator *)self addressBook];
  v4 = ABAddressBookCopyArrayOfInternalUUIDsOfPeopleWithWallpaper();
  -[CNContactPosterMigrator setContactsWithPostersCount:](self, "setContactsWithPostersCount:", [v4 count]);
  [(CNContactPosterMigrator *)self performMigrationOfPosterDataForContactIdentifiers:v4];
  [(CNContactPosterMigrator *)self addressBook];
  v3 = ABAddressBookCopyRecordIDsOfPeopleWithAvatarRecipes();
  [(CNContactPosterMigrator *)self setContactsWithAvatarRecipeCount:CFArrayGetCount(v3)];
  [(CNContactPosterMigrator *)self performMigrationOfAvatarRecipesForRecordIDs:v3];
  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)migrateLinkIdentifiersToNonUnifiedContactIdentifiers
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Failed to save updates to link identifiers, error: %@", &v2, 0xCu);
}

void __79__CNContactPosterMigrator_migrateLinkIdentifiersToNonUnifiedContactIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v30[0] = @"CNContactPoster";
  v30[1] = @"CNContactImage";
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v3 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v18 = *v26;
    do
    {
      v6 = 0;
      v7 = v5;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(*(&v25 + 1) + 8 * v6)];
        v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", *(a1 + 32)];
        [v8 setPredicate:v9];

        [v8 setResultType:2];
        [v8 setReturnsDistinctResults:1];
        v24 = v7;
        v10 = [v19 executeFetchRequest:v8 error:&v24];
        v5 = v24;

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:*(a1 + 32)];
              [*(a1 + 40) _cn_addNonNilObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
          }

          while (v13);
        }

        ++v6;
        v7 = v5;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }
}

void __79__CNContactPosterMigrator_migrateLinkIdentifiersToNonUnifiedContactIdentifiers__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CNContactPosterMigrator_migrateLinkIdentifiersToNonUnifiedContactIdentifiers__block_invoke_2;
  v8[3] = &unk_1E7415910;
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v11 = *(a1 + 48);
  v5 = v3;
  [v4 _cn_each:v8];
  v7 = 0;
  LOBYTE(v4) = [v5 save:&v7];
  v6 = v7;
  *(*(*(a1 + 56) + 8) + 24) = v4;
}

void __79__CNContactPosterMigrator_migrateLinkIdentifiersToNonUnifiedContactIdentifiers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v5 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v32[0] = @"CNContactPoster";
  v32[1] = @"CNContactImage";
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v21)
  {
    v6 = 0;
    v19 = *v28;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(*(&v27 + 1) + 8 * v7)];
        v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", *(a1 + 32), v20];
        [v9 setPredicate:v10];

        v11 = *(a1 + 40);
        v26 = v8;
        v12 = [v11 executeFetchRequest:v9 error:&v26];
        v6 = v26;

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v31 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v22 + 1) + 8 * i) setContactIdentifier:v5];
              [*(a1 + 48) setRecentsMigratedFromLinkIdentifiersCount:{objc_msgSend(*(a1 + 48), "recentsMigratedFromLinkIdentifiersCount") + 1}];
            }

            v15 = [v13 countByEnumeratingWithState:&v22 objects:v31 count:16];
          }

          while (v15);
        }

        ++v7;
        v8 = v6;
      }

      while (v7 != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v21);
  }
}

- (void)performMigrationOfPosterDataForContactIdentifiers:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138412546;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v19 = 0;
        cf = 0;
        v17 = 0;
        v18 = 0;
        [(CNContactPosterMigrator *)self addressBook];
        if (ABAddressBookCopyWallpaperMigrationDataForInternalUUID())
        {
          v16 = 0;
          v11 = [(CNContactPosterMigrator *)self migrateToContactPosterStore:cf posterMetadata:v19 watchPosterImageData:v18 contactIdentifier:v10 externalUUID:v17 error:&v16];
          v12 = v16;
          if (!v11)
          {
            v13 = [objc_opt_class() log];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v26 = v10;
              v27 = 2112;
              v28 = v12;
              _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_DEFAULT, "Failed to migrate ABL poster data for contact identifier %@: %@", buf, 0x16u);
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v17)
          {
            CFRelease(v17);
          }
        }

        else
        {
          v14 = [objc_opt_class() log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v10;
            _os_log_impl(&dword_1954A0000, v14, OS_LOG_TYPE_DEFAULT, "Failed to fetch ABL poster data for contact identifier %@", buf, 0xCu);
          }

          [(CNContactPosterMigrator *)self setPostersNotFetchedCount:[(CNContactPosterMigrator *)self postersNotFetchedCount]+ 1];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }
}

- (void)performMigrationOfAvatarRecipesForRecordIDs:(__CFArray *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = *MEMORY[0x1E698A438];
      *&v6 = 138412546;
      v24 = v6;
      do
      {
        v10 = [(CNContactPosterMigrator *)self addressBook];
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
        PersonWithRecordID = ABAddressBookGetPersonWithRecordID(v10, ValueAtIndex);
        if (!PersonWithRecordID)
        {
          v19 = [objc_opt_class() log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Failed to fetch contact for record_id associated with avatar recipe", buf, 2u);
          }

          [(CNContactPosterMigrator *)self setAvatarRecipesNotFetchedCount:[(CNContactPosterMigrator *)self avatarRecipesNotFetchedCount]+ 1];
          goto LABEL_22;
        }

        v13 = ABRecordCopyValue(PersonWithRecordID, v9);
        if (v13)
        {
          v14 = ABPersonCopyAvatarRecipeData();
          if (v14)
          {
            v15 = v14;
            v25 = 0;
            v16 = [(CNContactPosterMigrator *)self migrateRecipe:v14 contactIdentifier:v13 error:&v25];
            v17 = v25;
            if (!v16)
            {
              v18 = [objc_opt_class() log];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v24;
                v27 = v13;
                v28 = 2112;
                v29 = v17;
                _os_log_impl(&dword_1954A0000, v18, OS_LOG_TYPE_DEFAULT, "Failed to migrate avatar recipe data contact identifier %@: %@", buf, 0x16u);
              }
            }

            CFRelease(v15);

            goto LABEL_21;
          }

          v20 = [objc_opt_class() log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v13;
            v21 = v20;
            v22 = "Failed to fetch avatar recipe for contactIdentifier: %@";
            v23 = 12;
            goto LABEL_19;
          }
        }

        else
        {
          v20 = [objc_opt_class() log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v21 = v20;
            v22 = "Failed to extract contactIdentifier from ABPerson associated with avatar recipe";
            v23 = 2;
LABEL_19:
            _os_log_impl(&dword_1954A0000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
          }
        }

        [(CNContactPosterMigrator *)self setAvatarRecipesNotFetchedCount:[(CNContactPosterMigrator *)self avatarRecipesNotFetchedCount]+ 1];
LABEL_21:

LABEL_22:
        ++v8;
      }

      while (v7 != v8);
    }
  }
}

- (BOOL)migrateRecipe:(__CFData *)a3 contactIdentifier:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__20;
  v28 = __Block_byref_object_dispose__20;
  v29 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [(CNContactPosterMigrator *)self makeAvatarRecipeCurrentFor:v8 avatarRecipeData:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v8;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Avatar recipe already exists for contactIdentifier %@, updated it to current", buf, 0xCu);
    }

    [(CNContactPosterMigrator *)self setAvatarRecipesWithCurrentMatchCount:[(CNContactPosterMigrator *)self avatarRecipesWithCurrentMatchCount]+ 1];
  }

  else
  {
    v13 = [(CNContactPosterMigrator *)self storeManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__CNContactPosterMigrator_migrateRecipe_contactIdentifier_error___block_invoke;
    v18[3] = &unk_1E7415960;
    v23 = a3;
    v19 = v8;
    v20 = self;
    v21 = &v30;
    v22 = &v24;
    v14 = (v25 + 5);
    obj = v25[5];
    [v13 performWorkWithManagedObjectContext:v18 error:&obj];
    objc_storeStrong(v14, obj);
  }

  objc_autoreleasePoolPop(v9);
  if (v11)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v31 + 24);
    if (a5 && (v31[3] & 1) == 0)
    {
      v15 = 0;
      *a5 = v25[5];
    }
  }

  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v15 & 1;
}

void __65__CNContactPosterMigrator_migrateRecipe_contactIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactImage" inManagedObjectContext:v3];
  [v4 setImageData:*(a1 + 64)];
  [v4 setImageDataEncodingType:&unk_1F09871B0];
  [v4 setContactIdentifier:*(a1 + 32)];
  v5 = [*(a1 + 40) lastUsedDate];
  [v4 setLastUsedDate:v5];

  [v4 setIsCurrent:1];
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CNContactPoster"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(deletionDate = NULL) AND (isCurrent = %@) AND (contactIdentifier = %@)", MEMORY[0x1E695E118], *(a1 + 32)];
  [v6 setPredicate:v7];

  v8 = [v3 executeFetchRequest:v6 error:0];
  if ([v8 count])
  {
    v9 = [v8 firstObject];
    [v4 setPairedPoster:v9];
  }

  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v3 save:&obj];
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v11;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) setAvatarRecipesMigratedCount:{objc_msgSend(*(a1 + 40), "avatarRecipesMigratedCount") + 1}];
  }

  else
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Failed to save avatar recipe for contactIdentifier %@", buf, 0xCu);
    }
  }
}

- (BOOL)migrateToContactPosterStore:(id)a3 posterMetadata:(id)a4 watchPosterImageData:(id)a5 contactIdentifier:(id)a6 externalUUID:(id)a7 error:(id *)a8
{
  v57 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v31 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__20;
  v49 = __Block_byref_object_dispose__20;
  v50 = 0;
  context = objc_autoreleasePoolPush();
  v17 = [[CNWallpaper alloc] initWithDataRepresentationForPersistence:v13];
  v18 = [(CNWallpaper *)v17 posterArchiveData];
  v19 = (v46 + 5);
  obj = v46[5];
  v20 = [(CNContactPosterMigrator *)self posterUUIDFromPosterArchiveData:v18 error:&obj];
  objc_storeStrong(v19, obj);
  if (!v20)
  {
    v24 = [objc_opt_class() log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v24, OS_LOG_TYPE_DEFAULT, "Failed to extract poster UUID", buf, 2u);
    }

    [(CNContactPosterMigrator *)self setPosterUUIDsNotExtractedCount:[(CNContactPosterMigrator *)self posterUUIDsNotExtractedCount]+ 1];
    goto LABEL_9;
  }

  if (![(CNContactPosterMigrator *)self makePosterCurrentWithUUID:v20 contactIdentifier:v15])
  {
LABEL_9:
    v25 = [(CNContactPosterMigrator *)self storeManager];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __128__CNContactPosterMigrator_migrateToContactPosterStore_posterMetadata_watchPosterImageData_contactIdentifier_externalUUID_error___block_invoke;
    v33[3] = &unk_1E7415988;
    v34 = v18;
    v35 = v31;
    v36 = v14;
    v37 = v15;
    v38 = v20;
    v39 = v17;
    v40 = self;
    v41 = v16;
    v42 = &v51;
    v43 = &v45;
    v26 = (v46 + 5);
    v32 = v46[5];
    [v25 performWorkWithManagedObjectContext:v33 error:&v32];
    objc_storeStrong(v26, v32);

    v23 = 1;
    goto LABEL_10;
  }

  v21 = [objc_opt_class() log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v20 UUIDString];
    *buf = 138412290;
    v56 = v22;
    _os_log_impl(&dword_1954A0000, v21, OS_LOG_TYPE_DEFAULT, "Poster UUID already exists %@, updated it to current", buf, 0xCu);
  }

  [(CNContactPosterMigrator *)self setPosterUUIDsAlreadyExistCount:[(CNContactPosterMigrator *)self posterUUIDsAlreadyExistCount]+ 1];
  v23 = 0;
LABEL_10:

  objc_autoreleasePoolPop(context);
  if (v23)
  {
    v27 = *(v52 + 24);
    if (a8 && (v52[3] & 1) == 0)
    {
      v27 = 0;
      *a8 = v46[5];
    }
  }

  else
  {
    v27 = 1;
  }

  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  return v27 & 1;
}

void __128__CNContactPosterMigrator_migrateToContactPosterStore_posterMetadata_watchPosterImageData_contactIdentifier_externalUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5B8];
  v4 = a2;
  v5 = [v3 insertNewObjectForEntityForName:@"CNContactPoster" inManagedObjectContext:v4];
  [v5 setPosterData:*(a1 + 32)];
  [v5 setPosterMetadata:*(a1 + 40)];
  [v5 setWatchPosterImageData:*(a1 + 48)];
  [v5 setContactIdentifier:*(a1 + 56)];
  [v5 setIdentifier:*(a1 + 64)];
  [v5 setContentIsSensitive:{objc_msgSend(*(a1 + 72), "contentIsSensitive")}];
  v6 = [*(a1 + 80) lastUsedDate];
  [v5 setLastUsedDate:v6];

  [v5 setIsCurrent:1];
  v7 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactExternalDetails" inManagedObjectContext:v4];
  [v7 setExternalUUID:*(a1 + 88)];
  [v5 setExternalDetails:v7];
  [v7 setPoster:v5];
  v8 = *(*(a1 + 104) + 8);
  obj = *(v8 + 40);
  v9 = [v4 save:&obj];

  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 96) + 8) + 24) = v9;
  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    [*(a1 + 80) setPostersMigratedCount:{objc_msgSend(*(a1 + 80), "postersMigratedCount") + 1}];
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 64) UUIDString];
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "Failed to save poster UUID %@", buf, 0xCu);
    }
  }
}

- (void)deleteExistingPostersFromContactPosterStore
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__20;
  v12 = __Block_byref_object_dispose__20;
  v13 = 0;
  v2 = [(CNContactPosterMigrator *)self storeManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__CNContactPosterMigrator_deleteExistingPostersFromContactPosterStore__block_invoke;
  v7[3] = &unk_1E74159B0;
  v7[4] = &v8;
  v7[5] = &v14;
  v3 = (v9 + 5);
  obj = v9[5];
  [v2 performWorkWithManagedObjectContext:v7 error:&obj];
  objc_storeStrong(v3, obj);

  if ((v15[3] & 1) == 0)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v9[5];
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Failed to delete posters before migration: %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __70__CNContactPosterMigrator_deleteExistingPostersFromContactPosterStore__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18[0] = @"CNContactPoster";
  v18[1] = @"CNContactExternalDetails";
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(*(&v14 + 1) + 8 * v7)];
        v9 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
        v10 = *(*(a1 + 32) + 8);
        v13 = *(v10 + 40);
        v11 = [v3 executeRequest:v9 error:&v13];
        objc_storeStrong((v10 + 40), v13);
        *(*(*(a1 + 40) + 8) + 24) |= v11 != 0;

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }
}

- (BOOL)makePosterCurrentWithUUID:(id)a3 contactIdentifier:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 UUIDString];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__20;
  v32 = __Block_byref_object_dispose__20;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v9 = [(CNContactPosterMigrator *)self storeManager];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__CNContactPosterMigrator_makePosterCurrentWithUUID_contactIdentifier___block_invoke;
  v18[3] = &unk_1E74159D8;
  v10 = v8;
  v19 = v10;
  v22 = &v28;
  v11 = v7;
  v20 = v11;
  v21 = self;
  v23 = &v24;
  v12 = (v29 + 5);
  obj = v29[5];
  [v9 performWorkWithManagedObjectContext:v18 error:&obj];
  objc_storeStrong(v12, obj);

  if (v29[5])
  {
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v29[5];
      *buf = 138412546;
      v35 = v10;
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_DEFAULT, "Failed to update poster for UUID %@, potentially creating a dupe, error: %@", buf, 0x16u);
    }
  }

  v15 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v15 & 1;
}

void __71__CNContactPosterMigrator_makePosterCurrentWithUUID_contactIdentifier___block_invoke(void *a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CNContactPoster"];
  v5 = MEMORY[0x1E696AE18];
  v24[0] = a1[4];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"identifier", v6];
  [v4 setPredicate:v7];

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastUsedDate" ascending:0];
  v23 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v4 setSortDescriptors:v9];

  v10 = *(a1[7] + 8);
  obj = *(v10 + 40);
  v11 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  memset(v20, 0, sizeof(v20));
  if ([v11 countByEnumeratingWithState:v20 objects:v22 count:16])
  {
    v12 = **(&v20[0] + 1);
    [**(&v20[0] + 1) setIsCurrent:1];
    [v12 setDeletionDate:0];
    if (a1[5])
    {
      v13 = [v12 contactIdentifier];
      v14 = [v13 isEqualToString:a1[5]];

      if ((v14 & 1) == 0)
      {
        v15 = [objc_opt_class() log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1954A0000, v15, OS_LOG_TYPE_DEFAULT, "Unexpectedly needed to update contactIdentifier on recent poster based on UUID match. Could be recents using unified identifier where we now expect non-unified identifiers.", buf, 2u);
        }

        [v12 setContactIdentifier:a1[5]];
      }
    }

    v16 = *(a1[7] + 8);
    v18 = *(v16 + 40);
    v17 = [v3 save:&v18];
    objc_storeStrong((v16 + 40), v18);
    if (v17 && !*(*(a1[7] + 8) + 40))
    {
      *(*(a1[8] + 8) + 24) = 1;
    }
  }
}

- (BOOL)makeAvatarRecipeCurrentFor:(id)a3 avatarRecipeData:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__20;
  v30 = __Block_byref_object_dispose__20;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v8 = [(CNContactPosterMigrator *)self storeManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__CNContactPosterMigrator_makeAvatarRecipeCurrentFor_avatarRecipeData___block_invoke;
  v17[3] = &unk_1E7415A00;
  v9 = v6;
  v18 = v9;
  v20 = &v26;
  v10 = v7;
  v19 = v10;
  v21 = &v22;
  v11 = (v27 + 5);
  obj = v27[5];
  [v8 performWorkWithManagedObjectContext:v17 error:&obj];
  objc_storeStrong(v11, obj);

  if (v27[5])
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v27[5];
      *buf = 138412546;
      v33 = v9;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "Failed to update image for contactIdentifier %@, potentially creating a dupe, error: %@", buf, 0x16u);
    }
  }

  v14 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v14 & 1;
}

void __71__CNContactPosterMigrator_makeAvatarRecipeCurrentFor_avatarRecipeData___block_invoke(void *a1, void *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CNContactImage"];
  v5 = MEMORY[0x1E696AE18];
  v29[0] = a1[4];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"contactIdentifier", v6];
  [v4 setPredicate:v7];

  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v21 = v3;
  v9 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 imageDataEncodingType];
        if ([v16 intValue] == 1)
        {
          v17 = [v15 imageData];
          v18 = [v17 isEqualToData:a1[5]];

          if (v18)
          {
            [v15 setIsCurrent:1];
            [v15 setDeletionDate:0];
            v19 = *(a1[6] + 8);
            v22 = *(v19 + 40);
            v20 = [v21 save:&v22];
            objc_storeStrong((v19 + 40), v22);
            if (v20 && !*(*(a1[6] + 8) + 40))
            {
              *(*(a1[7] + 8) + 24) = 1;
            }

            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (PRSPosterArchiver)posterArchiver
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __41__CNContactPosterMigrator_posterArchiver__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (!v2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v3 = getPRSPosterArchiverClass_softClass;
    v16 = getPRSPosterArchiverClass_softClass;
    if (!getPRSPosterArchiverClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getPRSPosterArchiverClass_block_invoke;
      v12[3] = &unk_1E7412110;
      v12[4] = &v13;
      __getPRSPosterArchiverClass_block_invoke(v12);
      v3 = v14[3];
    }

    v4 = v3;
    _Block_object_dispose(&v13, 8);
    v5 = [v3 alloc];
    v6 = [*(a1 + 32) fileManager];
    v7 = [*(a1 + 32) tempUnarchivingURL];
    v8 = [v5 initWithFileManager:v6 unarchivingContainerURL:v7];
    v9 = *(a1 + 32);
    v10 = *(v9 + 128);
    *(v9 + 128) = v8;

    v2 = *(*(a1 + 32) + 128);
  }

  return v2;
}

- (NSURL)tempUnarchivingURL
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __45__CNContactPosterMigrator_tempUnarchivingURL__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"ContactPosterStoreMigrator"];
    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    *(v4 + 136) = v3;

    v2 = *(*(a1 + 32) + 136);
  }

  return v2;
}

- (id)posterUUIDFromPosterArchiveData:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CNContactPosterMigrator *)self posterArchiver];
  v21 = 0;
  v8 = [v7 unarchiveConfigurationFromData:v6 format:-1 error:&v21];

  v9 = v21;
  if (v8)
  {
    v10 = [(CNContactPosterMigrator *)self tempUnarchivingURL];
    v11 = [v8 serverUUID];
    v12 = [v11 UUIDString];
    v13 = [v10 URLByAppendingPathComponent:v12];

    v14 = [(CNContactPosterMigrator *)self fileManager];
    v20 = v9;
    LOBYTE(v12) = [v14 removeItemAtURL:v13 error:&v20];
    v15 = v20;

    if ((v12 & 1) == 0)
    {
      v16 = [objc_opt_class() log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v15;
        _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Failed to remove poster configuration files: %@", buf, 0xCu);
      }
    }

    v17 = [v8 serverUUID];
  }

  else
  {
    if (a4)
    {
      v18 = v9;
      v17 = 0;
      *a4 = v9;
    }

    else
    {
      v17 = 0;
    }

    v15 = v9;
  }

  return v17;
}

@end