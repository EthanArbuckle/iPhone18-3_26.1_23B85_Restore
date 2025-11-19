void sub_100001D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001DC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Invalidated database-locking operation, error %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;
  }
}

void sub_1000021D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000021F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Invalidated object creation-locking operation, error %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 2);
    *(WeakRetained + 2) = 0;
  }
}

void sub_100002574(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_100002A78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002A90(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    objc_opt_class();
    v4 = *(a1 + 32);
    v5 = ICDynamicCast();
    v6 = v5;
    if (v5)
    {
      v17 = v5;
    }

    else
    {
      objc_opt_class();
      v7 = *(a1 + 32);
      v8 = ICDynamicCast();
      v17 = [v8 account];
    }

    v9 = *(a1 + 40);
    v10 = [ICAppURLUtilities appURLForFolder:v17];
    v11 = [v10 absoluteString];
    v12 = [v17 allItemsFolderLocalizedTitle];
    v13 = +[ICFolder defaultSystemImageName];
    v14 = [v9 initWithIdentifier:v11 title:v12 depth:0 shareDescription:0 systemImageName:v13];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

void sub_100002C0C(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    objc_opt_class();
    v13 = ICClassAndProtocolCast();
    v5 = *(a1 + 40);
    v6 = [ICAppURLUtilities appURLForHTMLFolder:v13, &OBJC_PROTOCOL___ICLegacyAccount];
    v7 = [v6 absoluteString];
    v8 = [v13 allItemsFolderLocalizedTitle];
    v9 = +[ICFolder defaultSystemImageName];
    v10 = [v5 initWithIdentifier:v7 title:v8 depth:0 shareDescription:0 systemImageName:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_100002D60(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    objc_opt_class();
    v4 = *(a1 + 32);
    v15 = ICDynamicCast();
    v5 = *(a1 + 40);
    v6 = [ICAppURLUtilities appURLForFolder:v15];
    v7 = [v6 absoluteString];
    v8 = [v15 localizedTitle];
    v9 = [v15 depth];
    v10 = [v15 shareDescription];
    v11 = [v15 systemImageName];
    v12 = [v5 initWithIdentifier:v7 title:v8 depth:v9 shareDescription:v10 systemImageName:v11];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_100002EC4(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    objc_opt_class();
    v14 = ICClassAndProtocolCast();
    v5 = *(a1 + 40);
    v6 = [ICAppURLUtilities appURLForHTMLFolder:v14, &OBJC_PROTOCOL___ICLegacyFolder];
    v7 = [v6 absoluteString];
    v8 = [v14 localizedTitle];
    v9 = [v14 depth];
    v10 = +[ICFolder defaultSystemImageName];
    v11 = [v5 initWithIdentifier:v7 title:v8 depth:v9 shareDescription:0 systemImageName:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_100003DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003E14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) eventReporter];
  [v2 submitNoteCreateEventForSearchIndexableNote:*(a1 + 40) createApproach:1];

  objc_opt_class();
  v3 = *(a1 + 40);
  v17 = ICDynamicCast();
  if (v17)
  {
    v4 = *(a1 + 32);
    v5 = [v17 folder];
    v6 = [v5 objectID];
    v7 = [*(a1 + 32) noteContext];
    v8 = [v7 htmlNoteContext];
    [v4 refreshNotesForCollectionWithId:v6 andContext:v8];
  }

  v9 = [NSUserActivity alloc];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 initWithActivityType:v11];

  v13 = [[INCreateNoteIntentResponse alloc] initWithCode:3 userActivity:v12];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = [*(a1 + 32) intentNoteForSearchIndexableNote:*(a1 + 40) includeContent:1];
  [*(*(*(a1 + 48) + 8) + 40) setCreatedNote:v16];
}

void sub_100004350(uint64_t a1)
{
  v2 = [*(a1 + 32) recentNotesIndexer];
  v3 = [v2 newSnapshotFromIndex];

  v4 = [v3 sectionIdentifiers];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000445C;
  v13 = &unk_100020808;
  v5 = *(a1 + 32);
  v14 = v3;
  v15 = v5;
  v6 = v3;
  v7 = [v4 ic_compactMap:&v10];

  v8 = [INObjectCollection alloc];
  v9 = [v8 initWithSections:{v7, v10, v11, v12, v13}];
  (*(*(a1 + 40) + 16))();
}

id sub_10000445C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 itemIdentifiersInSectionWithIdentifier:v4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004560;
  v11[3] = &unk_1000207E0;
  v11[4] = *(a1 + 40);
  v6 = [v5 ic_compactMap:v11];

  v7 = [INObjectSection alloc];
  v8 = [v4 title];

  v9 = [v7 initWithTitle:v8 items:v6];

  return v9;
}

id sub_100004560(uint64_t a1, void *a2)
{
  v3 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_100004848;
  v30[4] = sub_100004858;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100004848;
  v28 = sub_100004858;
  v29 = 0;
  if ([v3 ic_isModernNoteType])
  {
    v4 = [*(a1 + 32) modernContext];
    v5 = [v4 managedObjectContext];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100004860;
    v20[3] = &unk_1000207B8;
    v6 = *(a1 + 32);
    v22 = v30;
    v20[4] = v6;
    v21 = v3;
    v23 = &v24;
    [v5 performBlockAndWait:v20];

    v7 = v21;
LABEL_5:

    goto LABEL_9;
  }

  if ([v3 ic_isLegacyNoteType])
  {
    v8 = [*(a1 + 32) legacyContext];
    v9 = [v8 managedObjectContext];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004928;
    v16[3] = &unk_1000207B8;
    v10 = *(a1 + 32);
    v18 = v30;
    v16[4] = v10;
    v17 = v3;
    v19 = &v24;
    [v9 performBlockAndWait:v16];

    v7 = v17;
    goto LABEL_5;
  }

  v11 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100012D7C();
  }

LABEL_9:
  v12 = v25[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100012DEC();
    }
  }

  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(v30, 8);

  return v12;
}

void sub_100004824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004860(uint64_t a1)
{
  v2 = [*(a1 + 32) modernContext];
  v3 = [v2 managedObjectContext];
  v4 = [v3 ic_existingObjectWithID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [[ICIntentNote alloc] initWithObject:*(*(*(a1 + 48) + 8) + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }
}

void sub_100004928(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyContext];
  v3 = [v2 managedObjectContext];
  v4 = [v3 ic_existingObjectWithID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [[ICIntentNote alloc] initWithObject:*(*(*(a1 + 48) + 8) + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }
}

void sub_100004BE8(uint64_t a1)
{
  v45 = +[NSMutableDictionary dictionary];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [*(a1 + 32) results];
  v44 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v44)
  {
    v43 = *v69;
    *&v2 = 138412546;
    v41 = v2;
    do
    {
      v3 = 0;
      do
      {
        if (*v69 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v68 + 1) + 8 * v3);
        v5 = [*(a1 + 40) modernContext];
        v6 = [v5 persistentContainer];
        v7 = [v6 persistentStoreCoordinator];
        v8 = [v4 uniqueIdentifier];
        v9 = [v7 ic_managedObjectIDForURIString:v8];

        v10 = [*(a1 + 40) legacyContext];
        v11 = [v10 managedObjectContext];
        v12 = [v11 persistentStoreCoordinator];
        v13 = [v4 uniqueIdentifier];
        v14 = [v12 ic_managedObjectIDForURIString:v13];

        v62 = 0;
        v63 = &v62;
        v64 = 0x3032000000;
        v65 = sub_100004848;
        v66 = sub_100004858;
        v67 = 0;
        v56 = 0;
        v57 = &v56;
        v58 = 0x3032000000;
        v59 = sub_100004848;
        v60 = sub_100004858;
        v61 = 0;
        if ([v9 ic_isModernNoteType])
        {
          v15 = [*(a1 + 40) modernContext];
          v16 = [v15 managedObjectContext];
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_100005330;
          v52[3] = &unk_1000207B8;
          v17 = *(a1 + 40);
          v54 = &v62;
          v52[4] = v17;
          v53 = v9;
          v55 = &v56;
          [v16 performBlockAndWait:v52];
        }

        else if ([v14 ic_isLegacyNoteType])
        {
          v18 = [*(a1 + 40) legacyContext];
          v19 = [v18 managedObjectContext];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1000053F8;
          v48[3] = &unk_1000207B8;
          v20 = *(a1 + 40);
          v50 = &v62;
          v48[4] = v20;
          v49 = v14;
          v51 = &v56;
          [v19 performBlockAndWait:v48];
        }

        else
        {
          v21 = os_log_create("com.apple.notes", "Intents");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v41;
            v75 = v9;
            v76 = 2112;
            v77 = v14;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unknown object type — skipping {modernObjectID: %@, legacyObjectID: %@}", buf, 0x16u);
          }
        }

        if (v63[5])
        {
          v22 = [ICFolderListSectionIdentifier alloc];
          v23 = [v22 initWithObject:v63[5]];
          if (!v23)
          {
            v31 = os_log_create("com.apple.notes", "Intents");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = [v63[5] objectID];
              sub_100012E5C(v32, v72, &v73, v31);
            }

            goto LABEL_24;
          }

          v24 = [v45 objectForKeyedSubscript:v23];
          v25 = v24 == 0;

          if (v25)
          {
            v26 = +[NSMutableArray array];
            [v45 setObject:v26 forKeyedSubscript:v23];
          }

          v27 = [v45 objectForKeyedSubscript:v23];
          v28 = [v27 count];
          v29 = [*(a1 + 40) recentNotesIndexer];
          v30 = v28 < [v29 maximumNumberOfNotesPerAccount];

          if (v30)
          {
            v31 = [v45 objectForKeyedSubscript:v23];
            [v31 ic_addNonNilObject:v57[5]];
LABEL_24:
          }
        }

        else
        {
          v23 = os_log_create("com.apple.notes", "Intents");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v41;
            v75 = v9;
            v76 = 2112;
            v77 = v14;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Note does not exist — skipping {modernObjectID: %@, legacyObjectID: %@}", buf, 0x16u);
          }
        }

        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&v62, 8);

        v3 = v3 + 1;
      }

      while (v44 != v3);
      v44 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v44);
  }

  v33 = [v45 allKeys];
  v34 = +[ICFolderListSectionIdentifier sortDescriptors];
  v35 = [v33 sortedArrayUsingDescriptors:v34];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000054C0;
  v46[3] = &unk_100020858;
  v47 = v45;
  v36 = v45;
  v37 = [v35 ic_map:v46];
  v38 = [[INObjectCollection alloc] initWithSections:v37];
  v39 = *(a1 + 48);
  v40 = [*(a1 + 32) error];
  (*(v39 + 16))(v39, v38, v40);
}

void sub_1000052FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_100005330(uint64_t a1)
{
  v2 = [*(a1 + 32) modernContext];
  v3 = [v2 managedObjectContext];
  v4 = [v3 ic_existingObjectWithID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [[ICIntentNote alloc] initWithObject:*(*(*(a1 + 48) + 8) + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }
}

void sub_1000053F8(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyContext];
  v3 = [v2 managedObjectContext];
  v4 = [v3 ic_existingObjectWithID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [[ICIntentNote alloc] initWithObject:*(*(*(a1 + 48) + 8) + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }
}

id sub_1000054C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [INObjectSection alloc];
  v5 = [v3 title];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v3];

  v7 = [v4 initWithTitle:v5 items:v6];

  return v7;
}

void sub_1000056B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 allItems];
  v3 = [ICIntentNoteResolutionResult disambiguationWithIntentNotesToDisambiguate:v4];
  (*(v2 + 16))(v2, v3);
}

void sub_100005B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100005BBC(uint64_t a1)
{
  v2 = [*(a1 + 32) modernContext];
  v3 = [v2 managedObjectContext];
  v4 = [v3 ic_existingObjectWithID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [[ICIntentNote alloc] initWithObject:*(*(*(a1 + 48) + 8) + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }
}

void sub_100005C84(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyContext];
  v3 = [v2 managedObjectContext];
  v4 = [v3 ic_existingObjectWithID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [[ICIntentNote alloc] initWithObject:*(*(*(a1 + 48) + 8) + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }
}

void sub_1000061E0(uint64_t a1)
{
  v2 = [*(a1 + 32) folderIndexer];
  v3 = [v2 newSnapshotFromIndex];

  v4 = [v3 sectionIdentifiers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000062FC;
  v10[3] = &unk_100020948;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v13 = v6;
  v7 = v3;
  v8 = [v4 ic_compactMap:v10];

  v9 = [[INObjectCollection alloc] initWithSections:v8];
  (*(*(a1 + 48) + 16))();
}

id sub_1000062FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itemIdentifiersInSectionWithIdentifier:v3];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000649C;
  v16[3] = &unk_1000208F8;
  v16[4] = *(a1 + 40);
  v5 = [v4 ic_compactMap:v16];

  if ([*(a1 + 48) length])
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000069E8;
    v14 = &unk_100020920;
    v15 = *(a1 + 48);
    v6 = [v5 ic_objectsPassingTest:&v11];

    v7 = [v6 count];
    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = v6;
  }

  else
  {
    v6 = v5;
  }

  v8 = [INObjectSection alloc];
  v9 = [v3 title];
  v7 = [v8 initWithTitle:v9 items:v5];

LABEL_6:

  return v7;
}

id sub_10000649C(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100006830;
  v28 = sub_100006840;
  objc_opt_class();
  v29 = ICDynamicCast();
  objc_opt_class();
  v4 = ICDynamicCast();
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_100006830;
  v22[4] = sub_100006840;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100006830;
  v20 = sub_100006840;
  v21 = 0;
  if ([v25[5] ic_isModernContainerType])
  {
    v5 = [*(a1 + 32) modernContext];
    v6 = [v5 managedObjectContext];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100006848;
    v15[3] = &unk_1000208D0;
    v15[4] = *(a1 + 32);
    v15[5] = v22;
    v15[6] = &v24;
    v15[7] = &v16;
    [v6 performBlockAndWait:v15];
LABEL_5:

    goto LABEL_6;
  }

  if ([v25[5] ic_isLegacyContainerType])
  {
    v5 = [*(a1 + 32) legacyContext];
    v6 = [v5 managedObjectContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100006918;
    v14[3] = &unk_1000208D0;
    v14[4] = *(a1 + 32);
    v14[5] = v22;
    v14[6] = &v24;
    v14[7] = &v16;
    [v6 performBlockAndWait:v14];
    goto LABEL_5;
  }

  if (v4)
  {
    v11 = [[ICIntentNotesFolder alloc] initWithVirtualSmartFolder:v4];
    v12 = v17[5];
    v17[5] = v11;
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001301C(v3, v13);
    }
  }

LABEL_6:
  v7 = v17[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100013094(v3, v9);
    }
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  return v7;
}

uint64_t sub_100006830(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006848(uint64_t a1)
{
  v2 = [*(a1 + 32) modernContext];
  v3 = [v2 managedObjectContext];
  v4 = [v3 ic_existingObjectWithID:*(*(*(a1 + 48) + 8) + 40)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [[ICIntentNotesFolder alloc] initWithObject:*(*(*(a1 + 40) + 8) + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }
}

void sub_100006918(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyContext];
  v3 = [v2 managedObjectContext];
  v4 = [v3 ic_existingObjectWithID:*(*(*(a1 + 48) + 8) + 40)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [[ICIntentNotesFolder alloc] initWithObject:*(*(*(a1 + 40) + 8) + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }
}

id sub_1000069E8(uint64_t a1, void *a2)
{
  v3 = [a2 displayString];
  v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  return v4;
}

void sub_100006B80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 allItems];
  v3 = [ICIntentNotesFolderResolutionResult disambiguationWithIntentNotesFoldersToDisambiguate:v4];
  (*(v2 + 16))(v2, v3);
}

void sub_100006D50(id a1)
{
  qword_100027F28 = objc_alloc_init(ICSharingExtensionAttachmentsManager);

  _objc_release_x1();
}

void sub_100007264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 96), 8);
  _Unwind_Resume(a1);
}

BOOL sub_100007290(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attachment];
  if (v4)
  {

LABEL_4:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_5;
  }

  v5 = [v3 mediaURL];

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  v6 = [v3 attributedContentText];

  v7 = [v6 length] != 0;
  return v7;
}

uint64_t sub_100007328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaURL];
  if (v4 && (v5 = v4, [v3 mediaUTI], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 mediaUTI];
    v8 = [UTType typeWithIdentifier:v7];

    v9 = [v8 conformsToType:UTTypePDF];
    if (v9)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_100007CCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100013194();
    }

    v8 = [*(a1 + 32) appendLock];
    [v8 unlock];
  }

  else if (v5)
  {
    if ([v5 isFileURL])
    {
      v9 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:v5];
      [*(a1 + 40) addObject:v9];
      v10 = [*(a1 + 32) appendLock];
      [v10 unlock];
    }

    else
    {
      v9 = [*(a1 + 48) managedObjectContext];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100007E70;
      v14[3] = &unk_1000209D8;
      v15 = *(a1 + 48);
      v11 = v5;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v16 = v11;
      v17 = v12;
      v18 = *(a1 + 56);
      v19 = v13;
      [v9 performBlockAndWait:v14];
    }
  }
}

void sub_100007E70(uint64_t a1)
{
  v6 = [*(a1 + 32) addURLAttachmentWithURL:*(a1 + 40)];
  v2 = [*(a1 + 48) titleFromExtensionItem:*(a1 + 56)];
  [v6 setTitle:v2];

  v3 = +[NSDate date];
  [v6 setCreationDate:v3];
  [v6 setModificationDate:v3];
  v4 = objc_opt_new();
  [v4 setAttachment:v6];
  [*(a1 + 64) addObject:v4];
  v5 = [*(a1 + 48) appendLock];
  [v5 unlock];
}

void sub_100007F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001322C();
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    [v7 setAttributedContentText:v5];
    [*(a1 + 32) addObject:v7];
LABEL_7:
  }

  v8 = [*(a1 + 40) appendLock];
  [v8 unlock];
}

void sub_100008028(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000132C4();
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    [v7 setAttributedContentText:v5];
    [*(a1 + 32) addObject:v7];
LABEL_7:
  }

  v8 = [*(a1 + 40) appendLock];
  [v8 unlock];
}

void sub_1000080F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [UTTypePlainText identifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008284;
    v18[3] = &unk_100020A50;
    v9 = *(a1 + 48);
    v18[4] = *(a1 + 40);
    v10 = v9;
    v11 = *(a1 + 56);
    v19 = v10;
    v20 = v11;
    [v7 loadItemForTypeIdentifier:v8 options:0 completionHandler:v18];
  }

  else if (v5)
  {
    v13 = [*(a1 + 40) attributedContentText];
    v14 = [v13 string];
    v15 = [v5 isEqualToString:v14];

    if ((v15 & 1) == 0)
    {
      v16 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
      v17 = [[NSAttributedString alloc] initWithString:v5];
      [v16 setAttributedContentText:v17];

      [*(a1 + 48) addObject:v16];
    }
  }

  v12 = [*(a1 + 56) appendLock];
  [v12 unlock];
}

void sub_100008284(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001335C();
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v7 = [[NSString alloc] initWithData:v5 encoding:4];
    v9 = [a1[4] attributedContentText];
    v10 = [v9 string];
    v11 = [v7 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      v12 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
      v13 = [[NSAttributedString alloc] initWithString:v7];
      [v12 setAttributedContentText:v13];

      [a1[5] addObject:v12];
    }
  }

LABEL_6:
  v8 = [a1[6] appendLock];
  [v8 unlock];
}

void sub_1000083DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000133F4();
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v5)
  {
    v17 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v17];
    v7 = v17;
    if (v7)
    {
      v9 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100013470();
      }
    }

    v10 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    v11 = [v8 objectForKeyedSubscript:@"article-title"];
    [v10 setTitle:v11];

    v12 = [v8 objectForKeyedSubscript:@"article-summary"];
    v13 = v12;
    if (!v12)
    {
      [ICAssert handleFailedAssertWithCondition:"((summary) != nil)" functionName:"[ICSharingExtensionAttachmentsManager extractAttachmentsFromInputItems:note:]_block_invoke" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "summary"];
      v13 = &stru_1000213F0;
    }

    v14 = v13;

    v15 = [[NSAttributedString alloc] initWithString:v14];
    [v10 setAttributedContentText:v15];

    [*(a1 + 32) addObject:v10];
    goto LABEL_12;
  }

LABEL_13:
  v16 = [*(a1 + 40) appendLock];
  [v16 unlock];
}

void sub_1000085F0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000134E0();
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v30 = 0;
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v5 error:&v30];
    v13 = v30;

    if (v13)
    {
      v14 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100013470();
      }
    }

    [v7 setMetadata:v12];
    v15 = ICAttachmentMetadataURLKey;
    v16 = [v12 objectForKeyedSubscript:ICAttachmentMetadataURLKey];
    if (!v16)
    {
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = os_log_create("com.apple.notes", "SharingExtension");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10001355C();
        }

        goto LABEL_17;
      }

      v17 = [v16 absoluteString];
      if (!v17)
      {
LABEL_18:
        [a1[5] addObject:v7];

LABEL_19:
        goto LABEL_20;
      }
    }

    v18 = [v12 mutableCopy];
    [v18 removeObjectForKey:v15];
    v19 = v13;
    v20 = [v18 copy];

    v24 = [a1[4] managedObjectContext];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100008948;
    v25[3] = &unk_100020AC8;
    v26 = a1[4];
    v27 = v17;
    v21 = v20;
    v13 = v19;
    v12 = v21;
    v28 = v21;
    v29 = v7;
    v22 = v17;
    [v24 performBlockAndWait:v25];

LABEL_17:
    goto LABEL_18;
  }

LABEL_20:
  v23 = [a1[6] appendLock];
  [v23 unlock];
}

void sub_100008948(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSURL URLWithString:*(a1 + 40)];
  v5 = [v2 addURLAttachmentWithURL:v3];

  [v5 setMetadata:*(a1 + 48)];
  v4 = +[NSDate date];
  [v5 setCreationDate:v4];
  [v5 setModificationDate:v4];
  [*(a1 + 56) setAttachment:v5];
  [*(a1 + 56) setMetadata:0];
}

void sub_100008A10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000134E0();
    }

    goto LABEL_6;
  }

  if (v5)
  {
    v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
    v11 = ICAttachmentMetadataMapItemDataKey;
    v8 = [v5 base64EncodedStringWithOptions:0];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v7 setMetadata:v9];

    [*(a1 + 32) addObject:v7];
LABEL_6:
  }

  v10 = [*(a1 + 40) appendLock];
  [v10 unlock];
}

void sub_100008CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008CEC(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  if ([v2 isURL])
  {
    v3 = [*(a1 + 32) attachment];
    if ([v3 isiTunes])
    {
      v4 = 0;
    }

    else
    {
      v5 = [*(a1 + 32) attachment];
      if ([v5 isAppStore])
      {
        v4 = 0;
      }

      else
      {
        v6 = [*(a1 + 32) attachment];
        if ([v6 isNews])
        {
          v4 = 0;
        }

        else
        {
          v7 = [*(a1 + 32) attachment];
          if ([v7 isMap])
          {
            v4 = 0;
          }

          else
          {
            v8 = [*(a1 + 32) attachment];
            v4 = [v8 isPodcasts] ^ 1;
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = [*(a1 + 32) attachment];
  if (([v9 isiTunes] & 1) == 0)
  {
    v10 = [*(a1 + 32) attachment];
    if (([v10 isAppStore] & 1) == 0)
    {
      v11 = [*(a1 + 32) attachment];
      if (([v11 isNews] & 1) == 0)
      {
        v12 = [*(a1 + 32) attachment];
        if (([v12 isMap] & 1) == 0)
        {
          v13 = [*(a1 + 32) attachment];
          if (([v13 isURL] & 1) == 0)
          {
            v67 = [*(a1 + 32) attachment];
            v68 = [v67 isPodcasts];

            if ((v68 & 1) == 0)
            {
              return;
            }

            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_26:
  if (![*(a1 + 40) count])
  {
    return;
  }

  v14 = 0;
  v15 = 0;
  while (*(*(*(a1 + 56) + 8) + 24) == v14)
  {
LABEL_55:
    if (++v14 >= [*(a1 + 40) count])
    {
      goto LABEL_76;
    }
  }

  v16 = [*(a1 + 40) objectAtIndexedSubscript:v14];
  v17 = [v16 image];
  v18 = (v17 == 0) | v4;

  if ((v18 & 1) == 0)
  {
    v32 = [v16 image];
    [v32 size];
    v34 = v33;
    v36 = v35;
    [v32 scale];
    v38 = v37;
    if (v34 * v37 <= 800.0 && v36 * v37 <= 800.0)
    {
      [v32 ic_cropRectZeroAlpha];
      x = v79.origin.x;
      y = v79.origin.y;
      width = v79.size.width;
      height = v79.size.height;
      if (!CGRectIsEmpty(v79))
      {
        [v32 size];
        if (width < v44 || ([v32 size], height < v45))
        {
          v46 = [v32 ic_imageFromRect:{x, y, width, height}];

          v32 = v46;
        }
      }
    }

    [v32 size];
    v49 = v38 * v48;
    if (v38 * v47 > 384.0 && v49 > 384.0)
    {
      v51 = [v32 ic_scaledImageMinDimension:384.0 scale:v38];

      v32 = v51;
    }

    v52 = [*(a1 + 32) attachment];
    v15 = 1;
    v53 = [v52 updateAttachmentPreviewImageWithImage:v32 scale:1 scaleWhenDrawing:0 metadata:1 sendNotification:0.0];
    goto LABEL_50;
  }

  v19 = [v16 metadata];
  v20 = (v19 == 0) | v4;

  if ((v20 & 1) == 0)
  {
    v32 = [v16 metadata];
    v52 = [*(a1 + 32) attachment];
    [v52 setMetadata:v32];
    goto LABEL_50;
  }

  v21 = [*(a1 + 32) attachment];
  if (!v21 || (v22 = v21, [v16 attachment], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
  {
    v56 = [*(a1 + 32) attachment];
    v57 = [v56 isNews];

    if (!v57)
    {
      goto LABEL_54;
    }

    v58 = [*(a1 + 32) attachment];
    v59 = [v58 title];
    v60 = v59 == 0;
    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v62 = [v16 title];

      if (!v62)
      {
        v60 = 0;
        goto LABEL_63;
      }

      v58 = [v16 title];
      v61 = [*(a1 + 32) attachment];
      [v61 setTitle:v58];
    }

LABEL_63:
    v63 = [*(a1 + 32) attachment];
    v64 = [v63 summary];
    if (v64)
    {

      if (!v60)
      {
        goto LABEL_54;
      }

      goto LABEL_65;
    }

    v65 = [v16 attributedContentText];

    if (!v65)
    {
      if (!v60)
      {
        goto LABEL_54;
      }

LABEL_65:
      v15 = 1;
      goto LABEL_51;
    }

    v32 = [v16 attributedContentText];
    v52 = [v32 string];
    v66 = [*(a1 + 32) attachment];
    [v66 setSummary:v52];

    v15 = 1;
LABEL_50:

LABEL_51:
    [*(a1 + 40) removeObjectAtIndex:v14];
    v54 = *(*(a1 + 56) + 8);
    v55 = *(v54 + 24);
    if (v55 >= v14)
    {
      *(v54 + 24) = v55 - 1;
    }

    --v14;
    goto LABEL_54;
  }

  v24 = *(a1 + 48);
  v25 = [*(a1 + 32) attachment];
  v26 = [v25 URL];
  v27 = [v24 getURLWithoutQueryAndFragmentFromURL:v26];

  v28 = *(a1 + 48);
  v29 = [v16 attachment];
  v30 = [v29 URL];
  v31 = [v28 getURLWithoutQueryAndFragmentFromURL:v30];

  if ((([v27 isEqual:v31] | v4) & 1) == 0)
  {

LABEL_54:
    goto LABEL_55;
  }

  v69 = [*(a1 + 32) attachment];
  v70 = [v69 title];

  if (!v70)
  {
    v71 = [v16 attachment];
    v72 = [v71 title];
    v73 = [*(a1 + 32) attachment];
    [v73 setTitle:v72];
  }

  v74 = [v16 attachment];
  [ICAttachment deleteAttachment:v74];

  [*(a1 + 40) removeObjectAtIndex:v14];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) count];

LABEL_76:
  if (v15)
  {
    v75 = [*(a1 + 32) attachment];
    v76 = [v75 managedObjectContext];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_10000943C;
    v77[3] = &unk_100020AF0;
    v78 = *(a1 + 32);
    [v76 performBlockAndWait:v77];
  }
}

void sub_10000943C(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = [*(a1 + 32) attachment];
  [v3 setPreviewUpdateDate:v2];

  v4 = [*(a1 + 32) attachment];
  [v4 updateChangeCountWithReason:@"Consolidated duplicate attachment"];
}

void sub_100009654(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  if (v2)
  {
    v11 = v2;
    v3 = [*(a1 + 32) title];

    if (!v3)
    {
      v4 = ICAttachmentMetadataTitleKey;
      v5 = [v11 objectForKeyedSubscript:ICAttachmentMetadataTitleKey];

      if (v5)
      {
        v6 = [v11 objectForKeyedSubscript:v4];
        [*(a1 + 32) setTitle:v6];
      }
    }

    v7 = [*(a1 + 32) summary];

    v2 = v11;
    if (!v7)
    {
      v8 = ICAttachmentMetadataDescriptionKey;
      v9 = [v11 objectForKeyedSubscript:ICAttachmentMetadataDescriptionKey];

      v2 = v11;
      if (v9)
      {
        v10 = [v11 objectForKeyedSubscript:v8];
        [*(a1 + 32) setSummary:v10];

        v2 = v11;
      }
    }
  }
}

intptr_t sub_100009ED0(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(result + 32));
  }

  return result;
}

intptr_t sub_100009EE8(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(result + 32));
  }

  return result;
}

void sub_10000A1AC(id a1)
{
  v1 = [UTTypeImage identifier];
  v2 = [UTTypePDF identifier];
  v6[1] = v2;
  v3 = [UTTypeAudiovisualContent identifier];
  v6[2] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:3];
  v5 = qword_100027F30;
  qword_100027F30 = v4;
}

void sub_10000A688(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = [*(a1 + 40) appendLock];
  [v3 unlock];

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void sub_10000A6E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) appendLock];
  [v4 unlock];

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void sub_10000A744(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) appendLock];
  [v4 unlock];

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void sub_10000AAD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v14 = a1;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = os_log_create("com.apple.notes", "SharingExtension");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error pushing cloud objects, but trying again: %@", buf, 0xCu);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v11 = +[ICCloudContext sharedContext];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000AD04;
    v15[3] = &unk_100020C00;
    v16 = *(v14 + 32);
    [v11 processAllCloudObjectsWithCompletionHandler:v15];
  }

  else
  {
    v12 = +[ICNoteContext sharedContext];
    [v12 save];

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))();
    }
  }
}

uint64_t sub_10000AD04(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  [v2 save];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10000B19C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_10000B830(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B848(uint64_t a1)
{
  v2 = [*(a1 + 32) title];
  v3 = [v2 localizedCaseInsensitiveCompare:*(a1 + 40)];

  if (!v3)
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5 = *(a1 + 32);

    [v4 addObject:v5];
  }
}

void sub_10000BEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BF2C(uint64_t a1)
{
  if (([*(*(*(a1 + 40) + 8) + 40) hasPrefix:@"\n"] & 1) == 0)
  {
    v2 = [*(a1 + 32) noteAsPlainText];
    v3 = [v2 hasSuffix:@"\n"];

    if ((v3 & 1) == 0)
    {
      v4 = [@"\n" stringByAppendingString:*(*(*(a1 + 40) + 8) + 40)];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }

  if ([*(a1 + 32) isPasswordProtected])
  {
    v7 = [NSError errorWithDomain:ICErrorDomain code:206 userInfo:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    _objc_release_x1();
  }

  else
  {
    v10 = +[ICSharingExtensionAttachmentsManager sharedManager];
    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = *(*(a1 + 48) + 8);
    obj = *(v13 + 40);
    [v10 addString:v12 toNote:v11 error:&obj];
    objc_storeStrong((v13 + 40), obj);
  }
}

void sub_10000C324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C358(uint64_t a1)
{
  v2 = [*(a1 + 32) content];
  v3 = [v2 length];
  if (([*(a1 + 32) isPlainText] & 1) == 0)
  {
    v3 = [v2 ic_HTMLInsertionPoint];
    v4 = *(*(*(a1 + 56) + 8) + 40);
    v5 = ICNoteHTMLFromPlainText();
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (v3)
  {
    if ([*(a1 + 32) isPlainText])
    {
      v8 = [v2 characterAtIndex:v3 - 1];
      v9 = +[NSCharacterSet newlineCharacterSet];
      LOBYTE(v8) = [v9 characterIsMember:v8];

      if (v8)
      {
        goto LABEL_9;
      }

      v10 = @"\n%@";
    }

    else
    {
      v10 = @"<div>%@</div>";
    }

    v11 = [NSString localizedStringWithFormat:v10, *(*(*(a1 + 56) + 8) + 40)];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

LABEL_9:
  v14 = [v2 mutableCopy];
  [v14 insertString:*(*(*(a1 + 56) + 8) + 40) atIndex:v3];
  v15 = +[NSDate date];
  [*(a1 + 32) setModificationDate:v15];

  v16 = [v14 copy];
  [*(a1 + 32) setContent:v16];

  v17 = [*(a1 + 32) title];
  v18 = [v17 length];

  if (!v18)
  {
    v19 = [*(a1 + 40) text];
    v20 = ICNoteTitleFromPlainText();
    [*(a1 + 32) setTitle:v20];
  }

  objc_opt_class();
  v21 = [*(a1 + 48) noteContext];
  v22 = [v21 htmlNoteContext];
  v23 = ICCheckedDynamicCast();
  v24 = *(*(a1 + 64) + 8);
  obj = *(v24 + 40);
  v25 = [v23 save:&obj];
  objc_storeStrong((v24 + 40), obj);

  if (v25)
  {
    v26 = *(a1 + 48);
    v27 = [*(a1 + 32) store];
    v28 = [v27 objectID];
    v29 = [*(a1 + 48) noteContext];
    v30 = [v29 htmlNoteContext];
    [v26 refreshNotesForCollectionWithId:v28 andContext:v30];
  }
}

uint64_t sub_10000C948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000C960(uint64_t a1)
{
  v2 = objc_alloc_init(SANoteObject);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) title];
  [*(*(*(a1 + 40) + 8) + 40) setTitle:v5];

  v6 = [*(a1 + 32) modificationDate];
  [*(*(*(a1 + 40) + 8) + 40) setLastModifiedDate:v6];

  v7 = [*(a1 + 32) creationDate];
  [*(*(*(a1 + 40) + 8) + 40) setCreatedDate:v7];

  v8 = [ICAppURLUtilities appURLForNote:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) setIdentifier:v8];

  v9 = [*(a1 + 32) isPasswordProtected];
  v10 = *(*(*(a1 + 40) + 8) + 40);

  return [v10 setRestricted:v9];
}

id sub_10000CA70(uint64_t a1)
{
  v2 = objc_alloc_init(SANoteObject);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) title];
  [*(*(*(a1 + 40) + 8) + 40) setTitle:v5];

  v6 = [*(a1 + 32) modificationDate];
  [*(*(*(a1 + 40) + 8) + 40) setLastModifiedDate:v6];

  v7 = [*(a1 + 32) creationDate];
  [*(*(*(a1 + 40) + 8) + 40) setCreatedDate:v7];

  v8 = [ICAppURLUtilities appURLForHTMLNote:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) setIdentifier:v8];

  v9 = *(*(*(a1 + 40) + 8) + 40);

  return [v9 setRestricted:0];
}

void sub_10000CE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CE70(void *a1)
{
  v6 = [ICNote notesMatchingPredicate:a1[4] context:a1[5]];
  v2 = [v6 firstObject];
  v3 = ICProtocolCast();
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000CF08(uint64_t a1)
{
  v5 = [*(a1 + 32) existingObjectWithID:*(a1 + 40) error:0];
  v2 = ICProtocolCast();
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000D0F4(uint64_t a1)
{
  [*(a1 + 32) setStalenessInterval:0.0];
  v1 = +[ICNoteContext sharedContext];
  [v1 refreshAll];
}

void sub_10000D21C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = +[ICAccount accountUtilities];
    v9 = [*(a1 + 40) accountId];
    v10 = [v8 temporaryDirectoryURLForAccountIdentifier:v9];

    if (!v10)
    {
      [ICAssert handleFailedAssertWithCondition:"((tempDirectoryURL) != nil)" functionName:"[ICSharingExtensionItemExtractor extractMediaFileURLWithProvider:contentType:completion:]_block_invoke_2" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "tempDirectoryURL"];
    }

    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 URLByAppendingPathComponent:v12 isDirectory:1];

    v14 = +[NSFileManager defaultManager];
    [v14 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:0];

    v15 = [v6 lastPathComponent];
    v16 = [v13 URLByAppendingPathComponent:v15];

    v17 = +[NSFileManager defaultManager];
    LOBYTE(v12) = [v17 linkItemAtURL:v6 toURL:v16 error:0];

    if ((v12 & 1) == 0)
    {
      v18 = +[NSFileManager defaultManager];
      v25[0] = 0;
      v19 = [v18 copyItemAtURL:v6 toURL:v16 error:v25];
      v20 = v25[0];

      if ((v19 & 1) == 0)
      {
        [ICAssert handleFailedAssertWithCondition:"[[NSFileManager defaultManager] copyItemAtURL:url toURL:tempFileURL error:&copyError]" functionName:"[ICSharingExtensionItemExtractor extractMediaFileURLWithProvider:contentType:completion:]_block_invoke_2" simulateCrash:1 showAlert:0 format:@"Extracting media file: Failed to create temporary file copy: %@", v20];
      }
    }

    v21 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:v16];
    [v21 setUsesTemporaryFile:1];
    v24 = *(a1 + 48);
    v22 = v21;
    performBlockOnMainThread();
  }

  else
  {
    v23 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000135E0(a1, v7, v23);
    }

    v25[1] = _NSConcreteStackBlock;
    v25[2] = 3221225472;
    v25[3] = sub_10000D564;
    v25[4] = &unk_100020CC8;
    v26 = *(a1 + 48);
    performBlockOnMainThread();
    v13 = v26;
  }
}

void sub_10000D6CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v6 = v8;
  v7 = v5;
  performBlockOnMainThreadAndWait();
}

void sub_10000D79C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10001366C(a1, v2);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10000D98C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = a3;
  v6 = *(a1 + 56);
  v13 = v5;
  v15 = *(a1 + 64);
  v11 = *(a1 + 32);
  v7 = *(&v11 + 1);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  v14 = v8;
  v9 = v5;
  v10 = v12;
  performBlockOnMainThreadAndWait();
}

void sub_10000DAA4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001372C(v2, v3);
    }

LABEL_5:
    (*(*(a1 + 72) + 16))();
    return;
  }

  if (!*(a1 + 40))
  {
    v8 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100013844(v8);
    }

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 40) isFileURL])
  {
    v23 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:*(a1 + 40)];
    (*(*(a1 + 72) + 16))();
LABEL_12:

    return;
  }

  v4 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 80);
    v7 = *(a1 + 40);
    v23 = [v5 getAttachmentInfoWithImage:v7 useTempFile:v6];
    (*(*(a1 + 72) + 16))();

    goto LABEL_12;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [*(a1 + 56) registeredTypeIdentifiers];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
LABEL_20:
    v13 = 0;
    while (1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      v15 = [ICUTType typeWithIdentifier:v14];
      v16 = [ICUTType typeWithIdentifier:*(a1 + 64)];
      v17 = [v15 conformsToType:v16];

      if (v17)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    v19 = [ICUTType typeWithIdentifier:v14];
    v20 = [v19 preferredFilenameExtension];

    v18 = v14;
    if (!v20)
    {
      goto LABEL_29;
    }

    v21 = objc_opt_new();
    [v21 setMediaUTI:v18];
    [v21 setMediaData:*(a1 + 40)];
    [v21 setMediaFilenameExtension:v20];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
LABEL_26:

    v18 = 0;
LABEL_29:
    v22 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000137A8((a1 + 56), v22);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10000E18C(id a1)
{
  qword_100027F40 = objc_alloc_init(ICAnalyticsObserver);

  _objc_release_x1();
}

uint64_t sub_10000F00C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F024(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [ICAppURLUtilities appURLForNote:*(a1 + 32)];
    v6 = [v5 absoluteString];
    v7 = [*(a1 + 32) title];
    v8 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:*(a1 + 32) folderNoteSortType:*(a1 + 48)];
    v9 = [*(a1 + 32) contentInfoText];
    v10 = [*(a1 + 32) isPasswordProtected];
    v11 = [*(a1 + 32) isSharedViaICloud];
    v12 = [*(a1 + 32) isSharedViaICloud];
    if (v12)
    {
      LOBYTE(v12) = [*(a1 + 32) hasUnreadChanges];
    }

    LOBYTE(v17) = v12;
    v13 = [v4 initWithIdentifier:v6 title:v7 date:v8 contentInfo:v9 isLocked:v10 isShared:v11 isUnread:v17];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = *(a1 + 32);

    [v16 turnAttachmentsIntoFaults];
  }
}

void sub_10000F1AC(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v13 = [ICAppURLUtilities appURLForHTMLNote:*(a1 + 32)];
    v5 = [v13 absoluteString];
    v6 = [*(a1 + 32) title];
    v7 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:*(a1 + 32) folderNoteSortType:*(a1 + 48)];
    v8 = [*(a1 + 32) contentInfoText];
    LOBYTE(v12) = 0;
    v9 = [v4 initWithIdentifier:v5 title:v6 date:v7 contentInfo:v8 isLocked:0 isShared:0 isUnread:v12];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000100A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000100D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000100E8(uint64_t a1)
{
  v2 = +[ICNote newFetchRequestForNotes];
  v3 = +[ICNoteListSortUtilities sortDescriptorsForCurrentType];
  [v2 setSortDescriptors:v3];

  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v6 = +[NSCharacterSet whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [NSPredicate predicateWithFormat:@"title contains[cd] %@", *(a1 + 32)];
    [v4 addObject:v9];
  }

  v10 = [*(a1 + 40) predicateForSearchFromDate:*(a1 + 48) toDate:*(a1 + 56) dateSearchType:*(a1 + 96)];
  if (v10)
  {
    [v4 addObject:v10];
  }

  if (*(a1 + 64))
  {
    objc_opt_class();
    v11 = [*(a1 + 72) ic_existingObjectWithID:*(a1 + 64)];
    v12 = ICDynamicCast();

    v13 = [v12 predicateForVisibleNotesInFolder];
    [v4 addObject:v13];
  }

  else
  {
    v12 = [ICNote predicateForVisibleNotesInContext:*(a1 + 72)];
    [v4 addObject:v12];
  }

  if ([v4 count] < 2)
  {
    if ([v4 count] != 1)
    {
      goto LABEL_13;
    }

    v14 = [v4 firstObject];
  }

  else
  {
    v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];
  }

  v15 = v14;
  [v2 setPredicate:v14];

LABEL_13:
  [v2 setFetchLimit:kICMaximumSiriNoteCount + 1];
  v17 = *(a1 + 88);
  v16 = a1 + 88;
  v18 = *(v16 - 16);
  v19 = *(v17 + 8);
  obj = *(v19 + 40);
  v20 = [v18 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v19 + 40), obj);
  v21 = *(*(v16 - 8) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  if (*(*(*v16 + 8) + 40))
  {
    v23 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100013958(v16);
    }
  }
}

void sub_1000108C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100010908(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        objc_opt_class();
        v8 = ICDynamicCast();
        v10 = ICProtocolCast();
        if (v8 && (v11 = [v8 isVisible], v9 = v8, (v11 & 1) != 0) || v10 && (objc_msgSend(v10, "isMarkedForDeletion", v9) & 1) == 0 && (v12 = objc_opt_respondsToSelector(), v9 = v10, (v12 & 1) != 0))
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:{v9, v13}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_100010A90(uint64_t a1)
{
  v2 = +[ICNote newFetchRequestForNotes];
  v3 = +[ICNoteListSortUtilities sortDescriptorsForCurrentType];
  [v2 setSortDescriptors:v3];

  if (*(a1 + 32))
  {
    objc_opt_class();
    v4 = [*(a1 + 40) ic_existingObjectWithID:*(a1 + 32)];
    v5 = ICDynamicCast();

    v6 = [v5 predicateForVisibleNotesInFolder];
  }

  else
  {
    v6 = [ICNote predicateForVisibleNotesInContext:*(a1 + 40)];
  }

  if (*(a1 + 48))
  {
    v14[0] = *(a1 + 48);
    v14[1] = v6;
    v7 = [NSArray arrayWithObjects:v14 count:2];
    v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
    [v2 setPredicate:v8];
  }

  else
  {
    [v2 setPredicate:v6];
  }

  [v2 setFetchLimit:kICMaximumSiriNoteCount + 1];
  v9 = *(a1 + 40);
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v9 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v12 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100013958(a1 + 56);
    }
  }

  if ([v11 count])
  {
    [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v11];
  }
}

void sub_100010CC0(void *a1)
{
  v2 = +[NoteObject fetchRequest];
  v3 = +[ICNoteListSortUtilities sortDescriptorsForCurrentType];
  [v2 setSortDescriptors:v3];

  if (a1[4])
  {
    v27[0] = a1[4];
    v4 = +[NoteContext visibleNotesPredicate];
    v27[1] = v4;
    v5 = [NSArray arrayWithObjects:v27 count:2];
    v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];
    [v2 setPredicate:v6];
  }

  else
  {
    v7 = +[NoteContext visibleNotesPredicate];
    [v2 setPredicate:v7];
  }

  [v2 setFetchLimit:kICMaximumSiriNoteCount + 1];
  v8 = a1[5];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v8 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (*(*(a1[6] + 8) + 40))
  {
    v11 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000139C4((a1 + 6));
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v17 store];
        v19 = [v18 account];
        v20 = [v19 didChooseToMigrate];

        if ((v20 & 1) == 0)
        {
          [*(*(a1[7] + 8) + 40) addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v14);
  }
}

void sub_100010F70(void *a1)
{
  if (a1[4])
  {
    v2 = [*(*(a1[7] + 8) + 40) filteredArrayUsingPredicate:?];
    v3 = [v2 mutableCopy];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (a1[5] || a1[6])
  {
    v6 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = *(*(a1[7] + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          if (a1[5])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 folder];
              v14 = [v13 objectID];
              v15 = [v14 isEqual:a1[5]];

              if (v15)
              {
                [v6 addObject:v12];
              }
            }
          }

          if (a1[6])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v12 store];
              v17 = [v16 objectID];
              v18 = [v17 isEqual:a1[6]];

              if (v18)
              {
                [v6 addObject:v12];
              }
            }
          }

          objc_storeStrong((*(a1[7] + 8) + 40), v6);
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  v19 = *(*(a1[7] + 8) + 40);
  v20 = +[ICNoteListSortUtilities sortDescriptorsForCurrentType];
  [v19 sortUsingDescriptors:v20];
}

void sub_1000114B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000114E4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) noteAsPlainTextWithoutTitle];
    if ([v2 length])
    {
      v3 = [[INTextNoteContent alloc] initWithText:v2];
      v31 = v3;
      v4 = [NSArray arrayWithObjects:&v31 count:1];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }

  v7 = [INNote alloc];
  v8 = [INSpeakableString alloc];
  v30 = [*(a1 + 32) title];
  v9 = [v8 initWithSpokenPhrase:v30];
  v26 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [INSpeakableString alloc];
  v29 = [*(a1 + 32) folderName];
  v23 = [v10 initWithSpokenPhrase:v29];
  v28 = +[NSCalendar currentCalendar];
  v11 = *(a1 + 56);
  v27 = [*(a1 + 32) creationDate];
  v22 = [v28 components:v11 fromDate:v27];
  v25 = +[NSCalendar currentCalendar];
  v12 = *(a1 + 56);
  v24 = [*(a1 + 32) modificationDate];
  v13 = [v25 components:v12 fromDate:v24];
  v14 = [ICAppURLUtilities appURLForNote:*(a1 + 32)];
  v15 = [v14 absoluteString];
  v16 = [*(a1 + 32) folder];
  v17 = [v16 account];
  v18 = [v17 identifier];
  v19 = [v7 initWithTitle:v9 contents:v26 groupName:v23 createdDateComponents:v22 modifiedDateComponents:v13 identifier:v15 accountIdentifier:v18];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

void sub_1000117AC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) noteAsPlainTextWithoutTitle];
    if ([v2 length])
    {
      v3 = [[INTextNoteContent alloc] initWithText:v2];
      v31 = v3;
      v4 = [NSArray arrayWithObjects:&v31 count:1];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }

  v7 = [INNote alloc];
  v8 = [INSpeakableString alloc];
  v30 = [*(a1 + 32) title];
  v9 = [v8 initWithSpokenPhrase:v30];
  v26 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [INSpeakableString alloc];
  v29 = [*(a1 + 32) folderName];
  v23 = [v10 initWithSpokenPhrase:v29];
  v28 = +[NSCalendar currentCalendar];
  v11 = *(a1 + 56);
  v27 = [*(a1 + 32) creationDate];
  v22 = [v28 components:v11 fromDate:v27];
  v25 = +[NSCalendar currentCalendar];
  v12 = *(a1 + 56);
  v24 = [*(a1 + 32) modificationDate];
  v13 = [v25 components:v12 fromDate:v24];
  v14 = [ICAppURLUtilities appURLForHTMLNote:*(a1 + 32)];
  v15 = [v14 absoluteString];
  v16 = [*(a1 + 32) store];
  v17 = [v16 account];
  v18 = [v17 accountIdentifier];
  v19 = [v7 initWithTitle:v9 contents:v26 groupName:v23 createdDateComponents:v22 modifiedDateComponents:v13 identifier:v15 accountIdentifier:v18];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

uint64_t sub_100011F44@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

void sub_100011F58(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000123C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4();
  v9[0] = a5;
  v9[1] = a6;
  v10 = 2;
  LOBYTE(a6) = sub_100013B10();
  sub_100012510(v9);
  return a6 & 1;
}

id sub_100012460()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000124BC()
{
  result = qword_100027E38;
  if (!qword_100027E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E38);
  }

  return result;
}

uint64_t sub_100012510(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10001255C()
{
  result = qword_100027E40;
  if (!qword_100027E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E40);
  }

  return result;
}

unint64_t sub_1000125B0()
{
  result = qword_100027E48;
  if (!qword_100027E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E48);
  }

  return result;
}

unint64_t sub_100012604()
{
  result = qword_100027E50;
  if (!qword_100027E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E50);
  }

  return result;
}

unint64_t sub_100012658()
{
  result = qword_100027E58;
  if (!qword_100027E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E58);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for TelephonyUtilitiesFeature(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s38com_apple_mobilenotes_IntentsExtension25TelephonyUtilitiesFeatureVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s38com_apple_mobilenotes_IntentsExtension25TelephonyUtilitiesFeatureVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100012774()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

unint64_t sub_1000127BC()
{
  result = qword_100027E60;
  if (!qword_100027E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E60);
  }

  return result;
}

uint64_t sub_1000128A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v5 = sub_100013B30();
  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  sub_100013B20(v6);
  v7._countAndFlagsBits = sub_100013B30();
  sub_100013B20(v7);

  return v5;
}

unint64_t sub_10001294C()
{
  result = qword_100027E68;
  if (!qword_100027E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E68);
  }

  return result;
}

unint64_t sub_1000129CC()
{
  result = qword_100027E70;
  if (!qword_100027E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E70);
  }

  return result;
}

unint64_t sub_100012A4C()
{
  result = qword_100027E78;
  if (!qword_100027E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E78);
  }

  return result;
}

uint64_t sub_100012ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100012B08()
{
  result = qword_100027E80;
  if (!qword_100027E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027E80);
  }

  return result;
}

void sub_100012C6C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unknown object type — returning nil {objectID: %@}", buf, 0xCu);
}

void sub_100012CC4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create note: %@", &v2, 0xCu);
}

void sub_100012D7C()
{
  sub_100005DA8();
  sub_100005D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100012DEC()
{
  sub_100005DA8();
  sub_100005D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100012E5C(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cannot create folder list section identifier — skipping {objectID: %@}", buf, 0xCu);
}

void sub_100012EB8()
{
  sub_100005DA8();
  sub_100005D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100012F28()
{
  sub_100005DA8();
  sub_100005D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001301C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown item identifier type — skipping {itemID: %@}", &v2, 0xCu);
}

void sub_100013094(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Container does not exist — skipping {itemID: %@}", &v2, 0xCu);
}

void sub_100013194()
{
  sub_10000B1D0();
  v0 = [UTTypeURL identifier];
  sub_10000B184();
  sub_10000B19C(&_mh_execute_header, v1, v2, "Can't load item for type identifier %@: %@", v3, v4, v5, v6, v7);
}

void sub_10001322C()
{
  sub_10000B1D0();
  v0 = [UTTypeRTF identifier];
  sub_10000B184();
  sub_10000B19C(&_mh_execute_header, v1, v2, "Can't load item for type identifier %@: %@", v3, v4, v5, v6, v7);
}

void sub_1000132C4()
{
  sub_10000B1D0();
  v0 = [UTTypeFlatRTFD identifier];
  sub_10000B184();
  sub_10000B19C(&_mh_execute_header, v1, v2, "Can't load item for type identifier %@: %@", v3, v4, v5, v6, v7);
}

void sub_10001335C()
{
  sub_10000B1D0();
  v0 = [UTTypePlainText identifier];
  sub_10000B184();
  sub_10000B19C(&_mh_execute_header, v1, v2, "Can't load item for type identifier %@: %@", v3, v4, v5, v6, v7);
}

void sub_1000133F4()
{
  sub_10000B1BC();
  sub_100005D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100013470()
{
  sub_100005DA8();
  sub_100005D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000134E0()
{
  sub_10000B1BC();
  sub_100005D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001355C()
{
  sub_100005DA8();
  sub_100005D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000135E0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Extracting media file: Error loading file representation for content type %@ - error: %@", &v4, 0x16u);
}

void sub_10001366C(uint64_t a1, NSObject *a2)
{
  v4 = [UTTypeFileURL identifier];
  v5 = *(a1 + 40);
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Extracting URL: Error loading item for type identifier %@ - error: %@", &v6, 0x16u);
}

void sub_10001372C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading item: %@", &v3, 0xCu);
}

void sub_1000137A8(id *a1, NSObject *a2)
{
  v3 = [*a1 registeredTypeIdentifiers];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: could not find extension in %@", &v4, 0xCu);
}

void sub_100013888(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot save temporary file to disk: %@", &v2, 0xCu);
}

void sub_100013A30(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = a3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Exception raised when attempting to refresh notes for %@: %@", &v6, 0x16u);
  }

  objc_end_catch();
}