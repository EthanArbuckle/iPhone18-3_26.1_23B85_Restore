@interface AddressBookDataMigrator
- (AddressBookDataMigrator)init;
- (BOOL)migrateMainDatabase:(id)a3 index:(unint64_t)a4;
- (BOOL)performMigration;
- (float)estimatedDuration;
- (id)_ciImageForPersonIfNeedsBackgroundColors:(void *)a3;
- (id)_matchUUIDsToPersons:(id)a3 addressBook:(void *)a4;
- (id)_recordIDsOfContactsMissingBackgroundColors:(void *)a3;
- (id)getDatabasePaths;
- (unint64_t)_optimalBatchSizeForImageProcessing;
- (void)copyPosterDataToMetadataStore;
- (void)dealloc;
- (void)generateAvatarBackgroundColorsIfNeeded;
- (void)migrateContactMetadataDatabase;
- (void)migrateImagesDatabase:(id)a3 index:(unint64_t)a4;
- (void)migrateUserDefaultsToNSPersonNameComponentsFormatter;
- (void)resetContactProviderFeature;
@end

@implementation AddressBookDataMigrator

- (AddressBookDataMigrator)init
{
  v5.receiver = self;
  v5.super_class = AddressBookDataMigrator;
  v2 = [(AddressBookDataMigrator *)&v5 init];
  if (v2)
  {
    v2->_changedImagePersonIdentifiers = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  changedImagePersonIdentifiers = self->_changedImagePersonIdentifiers;
  if (changedImagePersonIdentifiers)
  {
    CFRelease(changedImagePersonIdentifiers);
  }

  v4.receiver = self;
  v4.super_class = AddressBookDataMigrator;
  [(AddressBookDataMigrator *)&v4 dealloc];
}

- (BOOL)performMigration
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(AddressBookDataMigrator *)self getDatabasePaths];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1018;
  v10[3] = &unk_82B0;
  v10[4] = self;
  v10[5] = &v11;
  [v3 enumerateObjectsUsingBlock:v10];
  [(AddressBookDataMigrator *)self migrateUserDefaultsToNSPersonNameComponentsFormatter];
  [(AddressBookDataMigrator *)self migrateContactMetadataDatabase];
  [(AddressBookDataMigrator *)self resetContactProviderFeature];
  [(AddressBookDataMigrator *)self copyPosterDataToMetadataStore];
  if (*(v12 + 24) == 1)
  {
    v4 = ABOSLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [(AddressBookDataMigrator *)self mainDbTime];
      *buf = 134217984;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AB Migration - main dbs migration took %fs", buf, 0xCu);
    }

    v6 = ABOSLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [(AddressBookDataMigrator *)self imageDbTime];
      *buf = 134217984;
      v16 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AB Migration - image dbs migration took %fs", buf, 0xCu);
    }

    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

- (id)getDatabasePaths
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = ABCAddressBookCopyDBDirectory();
  if (v3)
  {
    [v2 addObject:v3];
    v4 = ABCAddressBookCopyDelegateDBDirectories();
    if (v4)
    {
      [v2 addObjectsFromArray:v4];
    }
  }

  v5 = [v2 copy];

  return v5;
}

- (void)migrateImagesDatabase:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v7 = ABOSLogGeneral();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    LOWORD(v20) = 0;
    v9 = "AB Migration - migrating delegate images database";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    LOWORD(v20) = 0;
    v9 = "AB Migration - migrating main images database";
  }

  _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v9, &v20, 2u);
LABEL_7:

  v10 = ABCImageStoreCopyDatabasePathForDatabaseDirectory();
  if (v10)
  {
    v11 = v10;
    Current = CFAbsoluteTimeGetCurrent();
    CFArrayRemoveAllValues([(AddressBookDataMigrator *)self changedImagePersonIdentifiers]);
    [(AddressBookDataMigrator *)self changedImagePersonIdentifiers];
    v13 = ABCImageStoreCreateWithPathAndForceInProcessMigration();
    v14 = ABOSLogGeneral();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (a4)
      {
        if (v15)
        {
          v20 = 138412290;
          v21 = v11;
          v16 = "AB Migration - delegate images database found at %@";
LABEL_17:
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v16, &v20, 0xCu);
        }
      }

      else if (v15)
      {
        v20 = 138412290;
        v21 = v11;
        v16 = "AB Migration - main images database found at %@";
        goto LABEL_17;
      }

      ABCImageStoreGetCountOfImagesWithFormat();
      CPRecordStoreDestroy();
LABEL_23:
      CFRelease(v11);
      v18 = CFAbsoluteTimeGetCurrent() - Current;
      [(AddressBookDataMigrator *)self imageDbTime];
      [(AddressBookDataMigrator *)self setImageDbTime:v19 + v18];
      goto LABEL_24;
    }

    if (a4)
    {
      if (v15)
      {
        v20 = 138412290;
        v21 = v11;
        v17 = "AB Migration - delegate images database not found at %@";
LABEL_21:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v17, &v20, 0xCu);
      }
    }

    else if (v15)
    {
      v20 = 138412290;
      v21 = v11;
      v17 = "AB Migration - main images database not found at %@";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (BOOL)migrateMainDatabase:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = ABOSLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AB Migration - migrating delegate main database", buf, 2u);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = ABCCreateAddressBookWithDatabaseDirectoryAndForceInProcessMigrationInProcessLinkingAndResetSortKeys();
  v10 = v9;
  if (v9)
  {
    ABAddressBookGetGroupCount(v9);
    [(AddressBookDataMigrator *)self changedImagePersonIdentifiers];
    ABChangeHistoryInsertPersonImageChangeRecordForRecordsWithIdentifiers();
    ABCIsSortDataValid();
    CFRelease(v10);
    v11 = CFAbsoluteTimeGetCurrent() - Current;
    [(AddressBookDataMigrator *)self mainDbTime];
    [(AddressBookDataMigrator *)self setMainDbTime:v12 + v11];
  }

  return v10 != 0;
}

- (void)migrateUserDefaultsToNSPersonNameComponentsFormatter
{
  *keyExistsAndHasValidFormat = 0;
  v25 = keyExistsAndHasValidFormat;
  v26 = 0x2050000000;
  v2 = qword_C320;
  v27 = qword_C320;
  if (!qword_C320)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_2C58;
    v23[3] = &unk_82D8;
    v23[4] = keyExistsAndHasValidFormat;
    sub_2C58(v23);
    v2 = *(v25 + 3);
  }

  v3 = v2;
  _Block_object_dispose(keyExistsAndHasValidFormat, 8);
  v4 = ABPeoplePickerPrefs();
  v5 = CFPreferencesCopyAppValue(@"personNameOrdering", v4);
  v6 = v5 != 0;
  if (v5)
  {
    v7 = v5;
    LODWORD(v23[0]) = 0;
    CFNumberGetValue(v5, kCFNumberIntType, v23);
    if (LODWORD(v23[0]))
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [v2 setDefaultDisplayNameOrder:v8];
    v9 = ABPeoplePickerPrefs();
    CFPreferencesSetAppValue(@"personNameOrdering", 0, v9);
    CFRelease(v7);
  }

  v10 = ABPeoplePickerPrefs();
  v11 = CFPreferencesCopyAppValue(@"personShortNameFormat", v10);
  if (v11)
  {
    v12 = v11;
    LODWORD(v23[0]) = 0;
    CFNumberGetValue(v11, kCFNumberIntType, v23);
    if (LODWORD(v23[0]) <= 3)
    {
      [v2 setShortNameFormat:LODWORD(v23[0]) + 1];
    }

    v13 = ABPeoplePickerPrefs();
    CFPreferencesSetAppValue(@"personShortNameFormat", 0, v13);
    CFRelease(v12);
    v6 = 1;
  }

  keyExistsAndHasValidFormat[0] = 0;
  v14 = ABPeoplePickerPrefs();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"personShortNameFormatEnabled", v14, keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    [v2 setShortNameIsEnabled:AppBooleanValue != 0];
    v16 = ABPeoplePickerPrefs();
    CFPreferencesSetAppValue(@"personShortNameFormatEnabled", 0, v16);
    v6 = 1;
  }

  v17 = ABPeoplePickerPrefs();
  v18 = CFPreferencesGetAppBooleanValue(@"personShortNamePreferNicknames", v17, keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    [v2 setPreferNicknamesDefault:v18 != 0];
    v19 = ABPeoplePickerPrefs();
    CFPreferencesSetAppValue(@"personShortNamePreferNicknames", 0, v19);
    v20 = ABPeoplePickerPrefs();
    CFPreferencesAppSynchronize(v20);
  }

  else
  {
    v21 = ABPeoplePickerPrefs();
    CFPreferencesAppSynchronize(v21);
    if (!v6)
    {
      return;
    }
  }

  v22 = ABOSLogGeneral();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23[0]) = 0;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "AB Migration - user defaults was migrated", v23, 2u);
  }
}

- (void)migrateContactMetadataDatabase
{
  v2 = sub_1840();
  Current = CFAbsoluteTimeGetCurrent();
  v9 = 0;
  v4 = [v2 performLightweightMigrationIfNeededError:&v9];
  v5 = v9;
  v6 = ABOSLogGeneral();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CFAbsoluteTimeGetCurrent();
      *buf = 134217984;
      v11 = v8 - Current;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AB Migration - Contact metadata db was migrated, took %fs", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_3068(v5, v7);
  }
}

- (void)copyPosterDataToMetadataStore
{
  v2 = ABAddressBookCreate();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = qword_C340;
  v20 = qword_C340;
  if (!qword_C340)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_2FB8;
    v22 = &unk_82D8;
    v23 = &v17;
    sub_2FB8(buf);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = sub_1840();
  if (ABAddressBookGetIntegerProperty() == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = ABOSLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AB Migration - Poster Data will copy", buf, 2u);
    }

    v8 = objc_alloc_init(v5);
    v9 = [v3 alloc];
    v10 = [v9 initWithAddressBook:v2 storeManager:{v8, v17}];
    [v10 performMigration];
    v11 = ABOSLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = CFAbsoluteTimeGetCurrent();
      *buf = 134217984;
      *&buf[4] = v12 - Current;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "AB Migration - Contact poster data was copied, took %fs", buf, 0xCu);
    }

    v13 = ABOSLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 contactsWithPostersCount];
      v15 = [v10 postersMigratedCount];
      v16 = [v10 postersNotFetchedCount];
      *buf = 134218496;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v22 = v16;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "AB Migration - Contact poster data stats: posterCount: %li, migrated: %li, not fetched: %li", buf, 0x20u);
    }

    ABAddressBookSetIntegerProperty();
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else if (v2)
  {
    CFRelease(v2);
  }
}

- (void)generateAvatarBackgroundColorsIfNeeded
{
  v3 = ABAddressBookCreate();
  if (ABAddressBookGetIntegerProperty())
  {
    Current = CFAbsoluteTimeGetCurrent();
    error = 0;
    p_error = &error;
    v53 = 0x2050000000;
    v5 = qword_C348;
    v54 = qword_C348;
    if (!qword_C348)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_3010;
      v56 = COERCE_DOUBLE(&unk_82D8);
      *v57 = &error;
      sub_3010(buf);
      v5 = p_error[3];
    }

    addressBook = v3;
    v6 = v5;
    _Block_object_dispose(&error, 8);
    v46 = v5;
    v7 = objc_alloc_init(v5);
    v40 = [(AddressBookDataMigrator *)self _recordIDsOfContactsMissingBackgroundColors:v3];
    v8 = [v40 count] == 0;
    v9 = ABOSLogGeneral();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "AB Migration - No contacts need background color generation", buf, 2u);
      }

      ABAddressBookSetIntegerProperty();
      goto LABEL_57;
    }

    if (v10)
    {
      v11 = [v40 count];
      *buf = 134217984;
      *&buf[4] = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "AB Migration - Found %lu contacts needing background color generation", buf, 0xCu);
    }

    v39 = [(AddressBookDataMigrator *)self _optimalBatchSizeForImageProcessing];
    v38 = [v40 count];
    v12 = ABOSLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v39;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "AB Migration - Starting background color generation in batches of %lu", buf, 0xCu);
    }

    if (!v38)
    {
      goto LABEL_53;
    }

    v37 = 0;
    v13 = 0;
    property = kABPersonImageBackgroundColorsDataProperty;
    do
    {
      v42 = v13;
      v43 = [v40 subarrayWithRange:v36];
      v14 = CFAbsoluteTimeGetCurrent();
      v15 = [(AddressBookDataMigrator *)self _matchUUIDsToPersons:v43 addressBook:addressBook];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (v16)
      {
        v44 = 0;
        v17 = *v48;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v48 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v47 + 1) + 8 * i);
            v20 = [(AddressBookDataMigrator *)self _ciImageForPersonIfNeedsBackgroundColors:v19];
            if (v20)
            {
              v21 = [v7 fetchColorsForImage:v20];
              if ([v21 count])
              {
                v22 = [(__CFError *)v46 encodedDataFromColors:v21];
                if (v22)
                {
                  error = 0;
                  ABRecordSetValue(v19, property, v22, &error);
                  if (error)
                  {
                    v23 = ABOSLogGeneral();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = error;
                      _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "AB Migration - Failed to set background color data for contact: %@", buf, 0xCu);
                    }

                    CFRelease(error);
                  }

                  else
                  {
                    ++v44;
                  }
                }
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v47 objects:v60 count:16];
        }

        while (v16);
        if (v44 >= 1)
        {
          v24 = CFAbsoluteTimeGetCurrent();
          v25 = ABOSLogGeneral();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134219008;
            *&buf[4] = v42 / v39 + 1;
            *&buf[12] = 2048;
            *&buf[14] = (v38 + v39 - 1) / v39;
            *&buf[22] = 2048;
            v56 = *&v44;
            *v57 = 2048;
            *&v57[2] = v24 - v14;
            v58 = 2048;
            v59 = (v24 - v14) / v44;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "AB Migration - Processed batch %lu of %lu: %li contacts in %.2fs (%.2fs per contact)", buf, 0x34u);
          }

          error = 0;
          if (!ABAddressBookSave(addressBook, &error))
          {
            v26 = ABOSLogGeneral();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = error;
              v28 = v36;
              if (error)
              {
                v28 = error;
              }

              v36 = v28;
              v29 = @"unknown error";
              if (error)
              {
                v29 = error;
              }

              *buf = 138412290;
              *&buf[4] = v29;
              _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "AB Migration - Failed to save batch of avatar background colors, %@", buf, 0xCu);
              if (v27)
              {
              }
            }
          }

          v37 += v44;
        }
      }

      v13 = v42 + v39;
    }

    while (v42 + v39 < v38);
    if (v37 > 0)
    {
      v30 = ABOSLogGeneral();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v40 count];
        v32 = CFAbsoluteTimeGetCurrent();
        *buf = 134218496;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v31;
        *&buf[22] = 2048;
        v56 = v32 - Current;
        v33 = "AB Migration - Avatar background colors were generated for %li contacts (from %lu candidates), took %fs";
        v34 = v30;
        v35 = 32;
LABEL_55:
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
      }
    }

    else
    {
LABEL_53:
      v30 = ABOSLogGeneral();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = "AB Migration - No avatar background colors needed to be generated";
        v34 = v30;
        v35 = 2;
        goto LABEL_55;
      }
    }

    ABAddressBookSetIntegerProperty();
LABEL_57:
    if (addressBook)
    {
      CFRelease(addressBook);
    }

    return;
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (id)_recordIDsOfContactsMissingBackgroundColors:(void *)a3
{
  v3 = +[ABSQLPredicate predicateForContactsMissingBackgroundColors];
  v4 = ABAddressBookCopyAllPeopleForBufferPredicate();

  return v4;
}

- (id)_matchUUIDsToPersons:(id)a3 addressBook:(void *)a4
{
  v4 = [ABSQLPredicate predicateForContactsWithUUIDs:a3 ignoreUnifiedIdentifiers:1];
  v5 = ABAddressBookCopyAllPeopleForBufferPredicate();

  return v5;
}

- (unint64_t)_optimalBatchSizeForImageProcessing
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 physicalMemory];

  v4 = v3 / 0x28uLL;
  if (v3 >> 30 >= 3)
  {
    v4 = v3 / 0x1E;
  }

  if (v3 >> 31 >= 3)
  {
    v5 = v3 / 0x14;
  }

  else
  {
    v5 = v4;
  }

  v6 = ((v5 * 0xCCCCCCCCCCCCCCDuLL) >> 64) >> 18;
  if (v6 >= 0x64)
  {
    v6 = 100;
  }

  if (v6 <= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = v6;
  }

  v8 = ABOSLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    v11 = v7;
    v12 = 2048;
    v13 = v3 >> 20;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "AB Migration - Using batch size: %lu (memory: %llu MB)", &v10, 0x16u);
  }

  return v7;
}

- (id)_ciImageForPersonIfNeedsBackgroundColors:(void *)a3
{
  if (ABPersonHasImageData(a3))
  {
    v4 = ABRecordCopyValue(a3, kABPersonImageBackgroundColorsDataProperty);
    if (!v4)
    {
      v7 = ABPersonCopyImageData(a3);
      if (v7)
      {
        v5 = [CIImage imageWithData:v7];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_5;
    }

    CFRelease(v4);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)resetContactProviderFeature
{
  v2 = ABAddressBookCreate();
  if (ABAddressBookGetIntegerProperty() == 1)
  {
    v3 = ABOSLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AB Migration - Contact Provider will reset", buf, 2u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    error = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = ABAddressBookCopyArrayOfAllSources(v2);
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (ABRecordGetIntValue() == 7)
          {
            ABAddressBookRemoveRecord(v2, v11, &error);
            if (error)
            {
              v12 = ABOSLogGeneral();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v22 = *&error;
                _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "AB Migration - Contact Provider container was not deleted, %@", buf, 0xCu);
              }

              v9 = 0;
              error = 0;
            }
          }
        }

        v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 1;
    }

    if (ABAddressBookHasUnsavedChanges(v2) && (ABAddressBookSave(v2, &error), error))
    {
      v13 = ABOSLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_3100(&error, v13);
      }
    }

    else if (v9)
    {
      v14 = ABOSLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = CFAbsoluteTimeGetCurrent();
        *buf = 134217984;
        v22 = v15 - Current;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "AB Migration - Contact Provider did reset, took %fs", buf, 0xCu);
      }

      ABAddressBookSetIntegerProperty();
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  else if (v2)
  {

    CFRelease(v2);
  }
}

- (float)estimatedDuration
{
  v2 = ABCAddressBookCopyDBPath();
  if (v2)
  {
    v3 = v2;
    SchemaVersionAtPath = CPSqliteUtilitiesGetSchemaVersionAtPath();
    IntegerQueryResultAtPath = CPSqliteUtilitiesGetIntegerQueryResultAtPath();
    if (SchemaVersionAtPath == 108)
    {
      v6 = 0;
      v7 = IntegerQueryResultAtPath;
      v8 = 0.0;
    }

    else
    {
      v6 = sub_2B88();
      v7 = v6 / 1536.0;
      v8 = v7 * 0.0022 + v6 * 0.0000458984375;
    }

    v9 = v8 + 0.0;
    v10 = ABOSLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67110144;
      v19 = SchemaVersionAtPath;
      v20 = 1024;
      v21 = v6;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v7 * 0.0022;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AB Migration estimate - Regular DB (v%i) Size: %i - estimated duration: %f (%f) (total: %f)", &v18, 0x2Cu);
    }

    CFRelease(v3);
  }

  else
  {
    v9 = 0.0;
  }

  v11 = ABCImageStoreCopyPath();
  if (v11)
  {
    v12 = v11;
    v13 = CPSqliteUtilitiesGetSchemaVersionAtPath();
    if (v13 == 10)
    {
      v14 = 0;
      v15 = 0.0;
    }

    else
    {
      v14 = sub_2B88();
      v15 = v14 * 0.0000303441828;
    }

    v9 = v15 + v9;
    v16 = ABOSLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109888;
      v19 = v13;
      v20 = 1024;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      v24 = 2048;
      v25 = v9;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "AB Migration estimate - Images DB (v%i) Size: %i - duration: %f (total: %f)", &v18, 0x22u);
    }

    CFRelease(v12);
  }

  return v9;
}

@end