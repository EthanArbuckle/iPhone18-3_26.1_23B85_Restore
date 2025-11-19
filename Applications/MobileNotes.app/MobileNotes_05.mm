void sub_10014C9F4(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v4 setHasGroupInset:{objc_msgSend(WeakRetained, "hasGroupInset")}];

  [v4 setCloseHandler:*(a1 + 32)];
}

void sub_10014CA70(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = +[ICExpansionState sharedExpansionState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained indexer];
  v6 = [v5 expansionStateContext];
  [v3 expandItemIdentifier:v11 context:v6];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 willExpandItemHandler];

  if (v8)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 willExpandItemHandler];
    (v10)[2](v10, v11);
  }
}

void sub_10014CB70(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = +[ICExpansionState sharedExpansionState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained indexer];
  v6 = [v5 expansionStateContext];
  [v3 collapseItemIdentifier:v11 context:v6];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 willCollapseItemHandler];

  if (v8)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 willCollapseItemHandler];
    (v10)[2](v10, v11);
  }
}

void sub_10014CD70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10014CD8C(uint64_t a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = a2;
  obj = [v16 allVirtualSmartFolderIdentifiers];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v9 = [WeakRetained collectionViewDiffableDataSource];
        v10 = [v9 indexPathForItemIdentifier:v7];

        if (v10)
        {
          v11 = objc_loadWeakRetained((a1 + 40));
          v12 = [v11 collectionView];
          v13 = [v12 cellForItemAtIndexPath:v10];
        }

        else
        {
          v13 = 0;
        }

        objc_opt_class();
        v14 = ICDynamicCast();
        [v14 setVirtualSmartFolder:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v16);
  }
}

void sub_10014D620(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  v3 = ICDynamicCast();

  if (v3 && [v3 isDeletedOrInTrash])
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3032000000;
    v7[3] = sub_10014D780;
    v7[4] = sub_10014D790;
    v4 = [v3 account];
    v5 = [v4 trashFolder];
    v8 = [v5 objectID];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10014D798;
    v6[3] = &unk_100645FE0;
    v6[4] = *(a1 + 48);
    v6[5] = v7;
    dispatch_async(&_dispatch_main_q, v6);
    _Block_object_dispose(v7, 8);
  }
}

uint64_t sub_10014D780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10014D798(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewDiffableDataSource];
  v6 = [v2 indexPathForItemIdentifier:*(*(*(a1 + 40) + 8) + 40)];

  objc_opt_class();
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 cellForItemAtIndexPath:v6];
  v5 = ICDynamicCast();

  if (v5)
  {
    [v5 updateNoteCount];
  }
}

uint64_t sub_10014DD90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 modernViewContext];
  v5 = [v3 isHiddenInContext:v4];

  return v5 ^ 1;
}

BOOL sub_10014DF04(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  v5 = ICDynamicCast();

  LOBYTE(v4) = [v5 sectionType] == 8;
  return v4;
}

void sub_10014EDB8(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * v5);
        objc_opt_class();
        v7 = [v6 attachmentModel];
        v8 = ICDynamicCast();

        v9 = +[UIScreen mainScreen];
        [v9 scale];
        v11 = [v6 attachmentPreviewImageWithMinSize:240.0 scale:{240.0, v10}];

        v12 = [v11 orientedImage];
        if (v8)
        {
          v13 = [v8 drawing];

          if (v13)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            [*(a1 + 40) addObject:v6];
            v15 = *(a1 + 48);
            v16 = [v8 drawing];
            [v15 addObject:v16];

            [*(a1 + 56) addObject:v12];
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }
}

void sub_1001506C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  +[ICDrawing defaultPixelSize];
  v9 = [v2 attachmentPreviewImageWithMinSize:? scale:?];
  v3 = [v9 image];
  v4 = v3;
  if (v3)
  {
    v5 = UIImagePNGRepresentation(v3);
    v6 = *(a1 + 40);
    v7 = [NSString stringWithFormat:@"/image_%d.png", *(a1 + 56)];
    v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];

    [v5 writeToURL:v8 atomically:1];
    [*(a1 + 48) addObject:v8];
  }
}

void sub_1001531BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001531DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001531F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [ICNote ic_objectsFromObjectIDs:a2 context:*(*(*(a1 + 40) + 8) + 40)];
    (*(v2 + 16))(v2, v3);
  }
}

uint64_t sub_1001534B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];
  if (v4 == *(a1 + 32))
  {
    v5 = [v3 isDeletedOrInTrash];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_100153520(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) type];
  [v2 undoablyMoveNotes:v3 toVirtualSmartFolderType:v4 completionHandler:*(a1 + 56)];
}

void sub_1001537D4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) markAsSystemPaperIfNeeded:{*(a1 + 48), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 40) managedObjectContext];
  [v7 ic_save];
}

void sub_1001539D4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) markAsMathNoteIfNeeded:{*(a1 + 48), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 40) managedObjectContext];
  [v7 ic_save];
}

void sub_100153BD4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) markAsCallNoteIfNeeded:{*(a1 + 48), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 40) managedObjectContext];
  [v7 ic_save];
}

void sub_1001543C8(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 ic_save];
}

void sub_1001546A0(uint64_t a1)
{
  if ([*(a1 + 32) isSmartFolder])
  {
    v6 = [*(a1 + 32) account];
    v2 = [*(a1 + 32) smartFolderQuery];
    v3 = [v2 tagSelectionWithManagedObjectContext:*(a1 + 40)];
    if ([v3 isNonEmpty])
    {
      v4 = v6 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = [v3 tagIdentifiers];
      [v6 deleteUnusedHashtagsWithStandardizedContent:v5];
    }
  }
}

void sub_100154860(uint64_t a1)
{
  if ([*(a1 + 32) isSmartFolder])
  {
    v2 = [*(a1 + 32) smartFolderQuery];
    v3 = [v2 tagSelectionWithManagedObjectContext:*(a1 + 40)];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 tagIdentifiers];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [*(a1 + 32) account];
          v11 = [ICHashtag hashtagWithStandardizedContent:v9 onlyVisible:0 account:v10];
          [v11 unmarkForDeletion];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

void sub_100154F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154F40(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTotalUnitCount:{objc_msgSend(*(a1 + 32), "count")}];
  [v3 setCompletedUnitCount:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015503C;
  v8[3] = &unk_10064B488;
  v4 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v3;
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  v7 = v3;
  [v4 performBlockAndWait:v8];
}

void sub_10015503C(uint64_t a1)
{
  v21 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v24;
    *&v4 = 138412290;
    v20 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if ([*(a1 + 40) isCancelled])
        {
          objc_autoreleasePoolPop(v10);
          goto LABEL_16;
        }

        v11 = [ICNote ic_existingObjectWithID:v9 context:*(a1 + 48)];
        if (v11)
        {
          v12 = (*(*(a1 + 56) + 16))();
          if (v12)
          {
            [v21 addObject:v12];
          }
        }

        else
        {
          v12 = os_log_create("com.apple.notes", "Move");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            v28 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Cannot retrieve note to be processed — skipping {objectID: %@}", buf, 0xCu);
          }
        }

        ++v6;

        [*(a1 + 40) setCompletedUnitCount:v6];
        objc_autoreleasePoolPop(v10);
      }

      v5 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  if ([*(a1 + 48) ic_isMainThreadContext])
  {
    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 48);
    v22 = 0;
    v15 = [v14 save:&v22];
    v13 = v22;
    if ((v15 & 1) == 0)
    {
      v16 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1004E1FBC();
      }
    }
  }

  v17 = [NSManagedObject ic_permanentObjectIDsFromObjects:v21, v20];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

uint64_t sub_1001552E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

NSString *__cdecl sub_100155480(id a1, unint64_t a2, unint64_t a3)
{
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Moving note %lu of %lu…" value:&stru_100661CF0 table:0];

  v7 = [NSString localizedStringWithFormat:v6, a2, a3];

  return v7;
}

id sub_100155520(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 objectID];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v3 managedObjectContext];
    v11 = [ICFolder ic_existingObjectWithID:v9 context:v10];
  }

  else
  {
    v11 = 0;
  }

  if ([v11 isSmartFolder])
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E1FF0();
    }

    v13 = [v11 account];
    v14 = [v13 defaultFolder];

    v11 = v14;
  }

  if (v11)
  {
    if ([v3 markedForDeletion])
    {
      v15 = *(a1 + 40);
      v16 = [v3 objectID];
      v17 = [v15 objectForKeyedSubscript:v16];

      v18 = [v3 managedObjectContext];
      v19 = [ICNote ic_existingObjectWithID:v17 context:v18];

      [*(a1 + 48) unmarkNoteAndAttachmentsForDeletion:v3];
      if (v19)
      {
        [*(a1 + 48) markNoteAndAttachmentsForDeletion:v19];
      }

      else
      {
        v23 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1004E2030();
        }
      }

      v21 = v3;
    }

    else
    {
      [v3 setFolder:v11];
      v22 = +[NSDate date];
      [v3 setFolderModificationDate:v22];

      [v3 updateChangeCountWithReason:@"Unmoved note"];
      v21 = v3;
    }
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1004E2064(v3);
    }

    v21 = 0;
  }

  return v21;
}

NSString *__cdecl sub_100155A6C(id a1, unint64_t a2, unint64_t a3)
{
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Moving note %lu of %lu…" value:&stru_100661CF0 table:0];

  v7 = [NSString localizedStringWithFormat:v6, a2, a3];

  return v7;
}

void *sub_100155B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 folder];
  v5 = *(a1 + 32);
  v6 = [v3 objectID];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v3 objectID];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v3 managedObjectContext];
    v12 = [ICFolder ic_existingObjectWithID:v10 context:v11];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 isSmartFolder])
  {
    v13 = [v3 account];
    v14 = [v13 defaultFolder];

    v12 = v14;
  }

  if (v12)
  {
    v15 = [v3 folder];
    v16 = [v15 objectID];
    v17 = *(a1 + 40);
    v18 = [v3 objectID];
    [v17 setObject:v16 forKeyedSubscript:v18];

    if (([ICMoveDecision shouldCopyThenDeleteWhenMovingObject:v3 toNoteContainer:v12]& 1) != 0)
    {
      if ([v3 isPasswordProtected])
      {
        if ([v3 isAuthenticated])
        {
          v19 = [ICNote duplicateNote:v3 intoFolder:v12 isPasswordProtected:1 removeOriginalNote:1];
          [v19 setIsPinned:{objc_msgSend(v3, "isPinned")}];
          [v19 setPreferredBackgroundType:{objc_msgSend(v3, "preferredBackgroundType")}];
          [v19 updateChangeCountWithReason:@"Moved note"];
        }

        else
        {
          v19 = 0;
        }

        v21 = 0;
        goto LABEL_19;
      }

      v19 = [ICNote newEmptyNoteInFolder:v12];
      v24 = [v19 ic_permanentObjectID];
      v25 = *(a1 + 48);
      v26 = [v3 objectID];
      [v25 setObject:v24 forKeyedSubscript:v26];

      [v3 copyValuesToNote:v19];
      v27 = [v3 account];
      [v19 setAccount:v27];

      v28 = [v12 account];
      [v19 setAccount:v28];

      v29 = +[NSDate date];
      [v19 setFolderModificationDate:v29];

      [v19 updateChangeCountWithReason:@"Moved note"];
      [*(a1 + 56) markNoteAndAttachmentsForDeletion:v3];
      v23 = v3;
    }

    else
    {
      [v3 setFolder:v12];
      v22 = +[NSDate date];
      [v3 setFolderModificationDate:v22];

      [v3 updateChangeCountWithReason:@"Moved note"];
      v23 = v3;
      v19 = v23;
    }

    v21 = v23;
LABEL_19:
    v30 = +[NSUndoManager shared];
    v31 = [v30 isUndoing];

    if ((v31 & 1) == 0)
    {
      v32 = [[ICCloudSyncingObjectMoveAction alloc] initWithObject:v3 fromParentObject:v4 toParentObject:v12 isCopy:0];
      if (v32)
      {
        [ICCloudSyncingObject undoablyPersistActivityEventsForMoveAction:v32 oldObject:v3 newObject:v19];
      }
    }

    v33 = *(a1 + 64);
    v34 = [v19 objectID];
    [v33 ic_addNonNilObject:v34];

    goto LABEL_24;
  }

  v20 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_1004E20F4(v3);
  }

  v19 = 0;
  v21 = 0;
LABEL_24:
  v35 = v21;

  return v21;
}

void sub_100155F4C(void *a1, void *a2)
{
  v8 = a2;
  if ([v8 count])
  {
    v3 = +[NSUndoManager shared];
    v4 = [v3 prepareWithInvocationTarget:a1[4]];
    [v4 undoablyUnmoveNoteIDs:v8 toFolderIDs:a1[5] originalToCopyNoteIDs:a1[6] actionName:a1[7] noteToFolderIDsForRedo:a1[8] workerContext:a1[9]];

    v5 = +[NSUndoManager shared];
    [v5 setActionName:a1[7]];
  }

  v6 = +[NSUndoManager shared];
  [v6 endUndoGrouping];

  v7 = a1[11];
  if (v7)
  {
    (*(v7 + 16))(v7, a1[10]);
  }
}

void sub_1001565DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100156600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004E21C8(v6, v7);
    }

    goto LABEL_4;
  }

  v7 = os_log_create("com.apple.notes", "LaunchTask");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v8)
    {
      LOWORD(v10) = 0;
      v9 = "No client state found from CoreSpotlight.";
      goto LABEL_14;
    }

LABEL_4:

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_5;
  }

  if (v8)
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Client State from CoreSpotlight: %@", &v10, 0xCu);
  }

  if (([v5 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      v9 = "clientStateFromCoreSpotlight not equal to clientStateFromDefaults";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, &v10, 2u);
      goto LABEL_4;
    }

    goto LABEL_4;
  }

LABEL_5:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100156830(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = +[UIColor systemBackgroundColor];
  v5 = [v3 traitCollection];

  v6 = [v4 resolvedColorWithTraitCollection:v5];

  v7 = [WeakRetained view];
  [v7 setBackgroundColor:v6];
}

id sub_100156A0C(uint64_t a1)
{
  v2 = UISplitViewControllerAutomaticDimension;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) primaryColumnWidth];
    v4 = v3;
    if ([*(a1 + 32) style] == 2)
    {
      [*(a1 + 32) supplementaryColumnWidth];
      v2 = v5;
    }

    v6 = [*(a1 + 32) style];
    v7 = *(a1 + 32);
    if (v6 == 2)
    {
      v8 = [v7 viewControllerManager];
      if ([v8 canTilePrimaryContent])
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }
    }

    else if ([v7 style] == 1)
    {
      v9 = [*(a1 + 40) splitBehavior];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v4 = UISplitViewControllerAutomaticDimension;
  }

  [*(a1 + 32) setPreferredPrimaryColumnWidth:v4];
  [*(a1 + 32) setMinimumPrimaryColumnWidth:v4];
  [*(a1 + 32) setMaximumPrimaryColumnWidth:v4];
  if ([*(a1 + 32) style] == 2)
  {
    [*(a1 + 32) setPreferredSupplementaryColumnWidth:v2];
    [*(a1 + 32) setMinimumSupplementaryColumnWidth:v2];
    [*(a1 + 32) setMaximumSupplementaryColumnWidth:v2];
  }

  v10 = *(a1 + 32);

  return [v10 setPreferredSplitBehavior:v9];
}

void sub_1001572B0(uint64_t a1)
{
  v2 = [*(a1 + 32) directory];

  if (v2)
  {
    v4 = [*(a1 + 32) directory];
    [ICCallNoteCoordinator importAndDeleteCallRecordingFilesIfNeededFromDirectory:v4 managedObjectContext:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);

    [ICCallNoteCoordinator importAndDeleteCallRecordingFilesIfNeededFromDirectory:0 managedObjectContext:v3];
  }
}

void sub_100157718(id a1)
{
  v1 = +[ICNoteContext sharedContext];
  v3 = [v1 managedObjectContext];

  v2 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v2 generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext:v3];
}

__CFString *sub_100158580(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 length])
  {
    v2 = v1;
  }

  else
  {
    v2 = @"(None)";
  }

  v3 = v2;

  return v2;
}

void sub_100158AB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100158ADC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained tableView];
  v5 = *(a1 + 32);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:100];
}

void sub_100158ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100158F34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  +[CATransaction begin];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100159030;
  v7[3] = &unk_100645BA0;
  v3 = *(a1 + 32);
  v7[4] = WeakRetained;
  v7[5] = v3;
  [CATransaction setCompletionBlock:v7];
  v4 = [WeakRetained tableView];
  v5 = [WeakRetained tableView];
  v6 = [v5 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v6 animated:1];

  +[CATransaction commit];
}

void sub_100159038(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tableView];
  v2 = [WeakRetained tableView];
  v3 = [v2 indexPathForSelectedRow];
  [v1 deselectRowAtIndexPath:v3 animated:1];
}

void *sub_10015966C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

void sub_100159BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_100159C30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  performBlockOnMainThread();
}

void sub_100159CD8(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) results];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 uniqueIdentifier];
        v9 = [*(a1 + 40) attachment];
        v10 = [v9 searchIndexingIdentifier];
        v11 = [v8 isEqualToString:v10];

        if (v11)
        {
          v12 = sub_100159E88(v7);
          [*(a1 + 40) setSpotlightResults:v12];

          v13 = [*(a1 + 40) tableView];
          v14 = [NSIndexSet indexSetWithIndex:7];
          [v13 reloadSections:v14 withRowAnimation:100];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

id sub_100159E88(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v19 = v1;
  v3 = [v1 attributeSet];
  v4 = [v3 attributeDictionary];
  v5 = [v4 objectForKeyedSubscript:@"_kMDItemSDBInfo"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:"compare:"];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [ICKeyValuePair alloc];
        v14 = [v5 objectForKeyedSubscript:v12];
        v15 = [v14 debugDescription];
        v16 = [(ICKeyValuePair *)v13 initWithKey:v12 value:v15];
        [v2 addObject:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = [v2 copy];

  return v17;
}

void sub_10015A658(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "LaunchTask");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004E2284(a1, v3, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E2310(a1, v5);
    }

    v5 = [NSNumber numberWithInteger:13];
    [ICSettingsUtilities setObject:v5 forKey:kICSearchIndexingVersionKey];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10015A960(uint64_t a1)
{
  v2 = [ICMoveDecisionController alloc];
  v3 = [*(a1 + 32) note];
  v14 = v3;
  v4 = [NSArray arrayWithObjects:&v14 count:1];
  v5 = [*(a1 + 32) presentingViewController];
  v6 = [(ICMoveDecisionController *)v2 initWithSourceObjects:v4 presentingViewController:v5];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015AAB8;
  v10[3] = &unk_100645BC8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v9 = v6;
  [UIViewController ic_performNotesActivity:v10];
}

void sub_10015AAB8(void *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10015AB48;
  v3[3] = &unk_100648068;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 performDecisionWithCompletion:v3];
}

void sub_10015AB48(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) activityDidFinish:1];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v6 count] != 0;
    v5 = [*(a1 + 32) activityType];
    (*(v3 + 16))(v3, v4, v5);
  }
}

void sub_10015BA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    NSLog(@"Exception raised when attempting to refresh notes for %@: %@");

    objc_end_catch();
    JUMPOUT(0x10015B9D8);
  }

  _Unwind_Resume(exception_object);
}

NSString *__cdecl sub_10015BC18(id a1, unint64_t a2, unint64_t a3)
{
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Importing %lu of %lu Notes" value:&stru_100661CF0 table:0];

  v7 = [NSString localizedStringWithFormat:v6, a2, a3];

  return v7;
}

void sub_10015C000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015C018(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10015C030(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 archiveImporter];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) objectID];
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  [v5 importArchiveAtURL:v6 intoNoteContainerWithID:v7 progress:v4 error:&obj];

  objc_storeStrong((v8 + 40), obj);
}

id sub_10015C0D4(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) != 0 || !*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = +[ICAttachmentPreviewGenerator sharedGenerator];
    [v3 generatePreviewsIfNeeded];
  }

  else
  {
    [*(a1 + 32) showError:?];
  }

  v4 = [*(a1 + 32) completion];

  if (v4)
  {
    v5 = [*(a1 + 32) completion];
    v5[2](v5, *(*(*(a1 + 40) + 8) + 40));
  }

  v6 = *(a1 + 32);

  return [v6 setCompletion:0];
}

objc_class *sub_10015C490()
{
  v1 = OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100531E10;
    v5 = v0;
    *(preferredElementSize + 32) = sub_10015C9F8();
    *(preferredElementSize + 40) = sub_10015CB68();
    *(preferredElementSize + 48) = sub_10015CCD0();
    *(preferredElementSize + 56) = sub_10015CE50();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14).super.super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100531E20;
    *(v8 + 32) = sub_10015C7F0();
    *(v8 + 40) = isa;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    v10.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, v8, v15).super.super.isa;
    v11 = *(v0 + v1);
    *(v5 + v1) = v10;
    v3 = v10.super.super.isa;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_10015C5F8()
{
  v1 = sub_10015C7F0();
  v2 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection;
  v3 = 1;
  if (*(v0 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = 0;
    }
  }

  [v1 setState:v3];

  v4 = sub_10015C9F8();
  v6 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if ([v5 selectionType] == 1)
      {
        v6 = 1;
      }
    }
  }

  [v4 setState:v6];

  v7 = sub_10015CB68();
  v9 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      if (![v8 selectionType])
      {
        v9 = 1;
      }
    }
  }

  [v7 setState:v9];

  v10 = sub_10015CCD0();
  v12 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      if ([v11 selectionType] == 2)
      {
        v12 = 1;
      }
    }
  }

  [v10 setState:v12];

  v15 = sub_10015CE50();
  v14 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      if ([v13 selectionType] == 3)
      {
        v14 = 1;
      }
    }
  }

  [v15 setState:v14];
}

id sub_10015C7F0()
{
  v1 = OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionOff;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionOff];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionOff];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_10015C95C(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  [a2 setNeedsUpdateConfiguration];
  sub_10015C5F8();
  v4 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v4)
  {

    v4(v5);

    sub_10000C840(v4);
  }
}

id sub_10015C9F8()
{
  v1 = OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionAnyone;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionAnyone];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionAnyone];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_10015CB68()
{
  v1 = OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionMe;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionMe];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionMe];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_10015CCD0()
{
  v1 = OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionSpecificUsers;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionSpecificUsers];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionSpecificUsers];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_10015CE50()
{
  v1 = OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionNone;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionNone];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionNone];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_10015CFBC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [objc_opt_self() sharedContext];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 managedObjectContext];

      if (v6)
      {
        v7 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_accountObjectID];
        if (v7)
        {
          v8 = objc_allocWithZone(ICMentionsFilterTypeSelection);
          v9 = v7;
          v10 = [v8 initWithManagedObjectContext:v6 accountObjectID:v9 selectionType:a1 joinOperator:a1 == 2];
          v11 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
          *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = v10;
          v12 = v10;

          [v2 setNeedsUpdateConfiguration];
          goto LABEL_8;
        }
      }
    }
  }

  v14 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  v13 = [v2 setNeedsUpdateConfiguration];
LABEL_8:
  result = sub_10015C5F8(v13);
  v16 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v16)
  {

    v16(v17);

    return sub_10000C840(v16);
  }

  return result;
}

id sub_10015D20C(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menu] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionOff] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionAnyone] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionMe] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionSpecificUsers] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionNone] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerFilterCellMentions();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_10015D2E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionNone);
}

id sub_10015D364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellMentions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of OpenAccountIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&unk_1006BCA20);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&unk_1006BCA30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for AccountEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006C4160, type metadata accessor for AccountEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_10015DA04(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of DeleteChecklistItemsIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&unk_1006BCA50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BE070, type metadata accessor for ChecklistItemEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_10015DF68(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t variable initialization expression of AppendToNoteIntent._text()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&unk_1006BCAE0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for AttributedString();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of TableEntity._title()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of AddTagsToNotesIntent._notes()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v26 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v28 = sub_10015DA04(&unk_1006BCAF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v39 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v29, 1, 1, v19);
  v20(v30, 1, 1, v19);
  v34 = sub_10026EE08();
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of AddTagsToNotesIntent._tags()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&qword_1006BCB00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BCB08, type metadata accessor for TagEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of ChangeFolderViewSettingIntent._changeOperation()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v29 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v28 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = v25 - v5;
  v6 = sub_10015DA04(&qword_1006BCB10);
  __chkstk_darwin(v6 - 8);
  v26 = v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v25[0] = v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v25[1] = sub_10015DA04(&qword_1006BCB18);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v25[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for ChangeOperation();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v27, 1, 1, v22);
  v23(v28, 1, 1, v22);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_10015DF68(&qword_1006BCB20, &type metadata accessor for ChangeOperation);
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_10015DF68(&qword_1006BCB28, &type metadata accessor for ChangeOperation);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of ChangeFolderViewSettingIntent._setting()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 2;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179820();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of CreateNoteIntent._contents()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&unk_1006BCB50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for AttributedString();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t _s11MobileNotes18AppendToNoteIntentV7_entity33_1B409668634D5C5878571926638C9FA5LL10AppIntents0F9ParameterCyAA0E6EntityVGvpfi_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of AppendMarkdownToNoteIntent._markdownText()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&unk_1006BCB70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of ICNavigableQueue.accessQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000054A4(0, &qword_1006BE9E0);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10015DF68(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_1001798C8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of AttachmentEntity._title()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of CreateTagIntent._name()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of CreateChecklistItemIntent._name()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of CreateChecklistItemIntent._noteEntity()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v29 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v30 = v29 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29[1] = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v29[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = sub_10026EE08();
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of ChangeTagSelectionIntent._includedTags()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&qword_1006BCB00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = _swiftEmptyArrayStorage;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BCB08, type metadata accessor for TagEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of ChangeTagSelectionIntent._excludedTags()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&qword_1006BCB00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = _swiftEmptyArrayStorage;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BCB08, type metadata accessor for TagEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of ChangeTagSelectionIntent._selectionOperator()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCBA0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 1;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179974();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t sub_100162F2C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of AddLinkAttachmentIntent._name()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of AddLinkAttachmentIntent._url()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCC28);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of AddLinkAttachmentIntent._note()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v29 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v30 = v29 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29[1] = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v29[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = sub_100270998();
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of OpenFolderIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&unk_1006BCC30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for FolderEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006C45A0, type metadata accessor for FolderEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of ApplyFormattingIntent._bold()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCC40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 3;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179A00();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of ApplyFormattingIntent._italic()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCC40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 3;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179A00();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of ApplyFormattingIntent._underline()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCC40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 3;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179A00();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of ApplyFormattingIntent._strikethrough()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCC40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 3;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179A00();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of SetParagraphStyleIntent._paragraphStyle()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCC50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 10;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179A54();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

double variable initialization expression of ICArchiveImporter.didReceiveMemoryWarningObserver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t _s11MobileNotes16CreateNoteIntentV5_name33_FF81D7DC729AA96A8BAE0481A3D0B83FLL10AppIntents0E9ParameterCySSSgGvpfi_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of CreateNoteFromMarkdownIntent._markdownContents()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t _s11MobileNotes16CreateNoteIntentV7_folder33_FF81D7DC729AA96A8BAE0481A3D0B83FLL10AppIntents0E9ParameterCyAA12FolderEntityVSgGvpfi_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v30 - v5;
  v6 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v33 = &v30 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v31 = &v30 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v32 = sub_10015DA04(&unk_1006BCB60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for FolderEntity();
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v34, 1, 1, v22);
  v23(v35, 1, 1, v22);
  v39 = sub_10019C71C();
  v40 = v24;
  v41 = v25 & 1;
  v42 = v26 & 1;
  v43 = v27 & 1;
  v44 = v28 & 1;
  (*(v37 + 104))(v36, enum case for InputConnectionBehavior.default(_:), v38);
  sub_100179874();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of InsertMentionIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v29 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v30 = v29 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29[1] = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v29[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = sub_10026EE08();
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of InsertMentionIntent._mentionText()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&unk_1006BCB70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of OpenNotesViewIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCCC0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 2;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179AA8();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of OpenTableIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&qword_1006BCCD0);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&qword_1006BCCD8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for TableEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006BCCE0, type metadata accessor for TableEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of DeleteAttachmentsIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&qword_1006BCCE8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of RenameFolderIntent._entity()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v30 - v5;
  v6 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v33 = &v30 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v31 = &v30 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v32 = sub_10015DA04(&unk_1006BCC30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for FolderEntity();
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v34, 1, 1, v22);
  v23(v35, 1, 1, v22);
  v39 = VisibleAccountsQuery.init(requireFolderCreationSupport:)();
  v40 = v24;
  v41 = v25 & 1;
  v42 = v26 & 1;
  v43 = v27 & 1;
  v44 = v28 & 1;
  (*(v37 + 104))(v36, enum case for InputConnectionBehavior.default(_:), v38);
  sub_100179874();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of RenameFolderIntent._name()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&unk_1006BCB70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of DeleteTablesIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&unk_1006C44C0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BCCE0, type metadata accessor for TableEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of CreateFolderIntent._name()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

id variable initialization expression of RealtimeCollaborationController.eventReporter()
{
  type metadata accessor for RealtimeCollaborationController(0);
  sub_10015DA04(&qword_1006BCD00);
  String.init<A>(describing:)();
  v0 = objc_allocWithZone(ICNAEventReporter);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSubTrackerName:v1];

  return v2;
}

uint64_t variable initialization expression of RealtimeCollaborationController.contextNotifications()
{
  v0 = sub_10015DA04(&qword_1006BCD10);
  __chkstk_darwin(v0);
  v2 = &v5 - v1;
  (*(v3 + 104))(&v5 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  sub_10015DA04(&qword_1006BCD18);
  swift_allocObject();
  return sub_10017618C(v2);
}

uint64_t variable initialization expression of OpenTopLevelFolderIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCD20);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 4;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179AFC();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of MoveNotesToFolderIntent._container()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v30 - v5;
  v6 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v33 = &v30 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v31 = &v30 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v32 = sub_10015DA04(&unk_1006BCC30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for FolderEntity();
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v34, 1, 1, v22);
  v23(v35, 1, 1, v22);
  v39 = sub_10019C84C();
  v40 = v24;
  v41 = v25 & 1;
  v42 = v26 & 1;
  v43 = v27 & 1;
  v44 = v28 & 1;
  (*(v37 + 104))(v36, enum case for InputConnectionBehavior.default(_:), v38);
  sub_100179874();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of MoveNotesToFolderIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&unk_1006BCAF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of GetLinkedNotesIntent._entity()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of PinNotesIntent._operation()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v29 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v28 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = v25 - v5;
  v6 = sub_10015DA04(&qword_1006BCD30);
  __chkstk_darwin(v6 - 8);
  v26 = v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v25[0] = v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v25[1] = sub_10015DA04(&qword_1006BCD38);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v25[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for FavoriteOperation();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v27, 1, 1, v22);
  v23(v28, 1, 1, v22);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_10015DF68(&qword_1006BCD40, &type metadata accessor for FavoriteOperation);
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_10015DF68(&qword_1006BCD48, &type metadata accessor for FavoriteOperation);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of PinNotesIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v26 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v28 = sub_10015DA04(&unk_1006BCAF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v39 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v29, 1, 1, v19);
  v20(v30, 1, 1, v19);
  v34 = sub_10026EE08();
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of DeleteTagsIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&qword_1006BCB00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BCB08, type metadata accessor for TagEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of OpenAttachmentIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&unk_1006BCD50);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&unk_1006C6BF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for AttachmentEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of NoteEntity._title()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of NoteEntity._subtitle()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of NoteEntity._contents()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006BCD60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of NoteEntity._folder()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C5290);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10015DF68(&qword_1006C45A0, type metadata accessor for FolderEntity);
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of NoteEntity._tags()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006BCD70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10015DF68(&qword_1006BCB08, type metadata accessor for TagEntity);
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of NoteEntity._creationDate()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C52A0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of NoteEntity._modificationDate()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C52A0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t sub_10016D838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_10015DA04(a1);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id variable initialization expression of TagCreateOrRenameAlertController.sizingCell()
{
  type metadata accessor for TagCell();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_10016D8DC(SEL *a1)
{
  v2 = [objc_opt_self() sharedContext];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 *a1];

  return v4;
}

uint64_t variable initialization expression of ChecklistItemEntity._text()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of ChecklistItemEntity._checked()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006BCD90);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  return EntityProperty<>.init(title:)();
}

uint64_t variable initialization expression of ChecklistItemEntity._note()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&qword_1006C60E0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10015DF68(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return EntityProperty<>.init(title:)();
}

uint64_t sub_10016DFD4(uint64_t *a1)
{
  sub_10015DA04(a1);
  swift_getKeyPath();
  return IntentParameterDependency.__allocating_init<A, B>(_:)();
}

uint64_t sub_10016E008@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of DeleteFoldersIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&qword_1006BCDA8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006C45A0, type metadata accessor for FolderEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of SetAttachmentSizeIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v27 - v5;
  v6 = sub_10015DA04(&unk_1006BCD50);
  __chkstk_darwin(v6 - 8);
  v30 = &v27 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v28 = &v27 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29 = sub_10015DA04(&unk_1006C6BF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v28;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for AttachmentEntity();
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = VisibleAccountsQuery.init(requireFolderCreationSupport:)();
  v37 = v24;
  v38 = v25 & 1;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_100179B50();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of SetAttachmentSizeIntent._attachmentSize()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006C6C00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 4;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179BA4();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of ReplaceSelectionIntent._text()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&unk_1006BCAE0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for AttributedString();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of InsertNoteLinkIntent._linkedNote()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v38 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v31 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v34 = &v31 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v32 = &v31 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v31 = type metadata accessor for LocalizedStringResource();
  v16 = *(v31 - 8);
  v17 = __chkstk_darwin(v31);
  __chkstk_darwin(v17);
  v33 = &v31 - v18;
  v35 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v11 + 104);
  v20(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v13, v19, v10);
  v21 = v32;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v16 + 56))(v21, 0, 1, v31);
  v22 = type metadata accessor for NoteEntity(0);
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v13, v19, v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = v36;
  IntentDialog.init(_:)();
  v24 = type metadata accessor for IntentDialog();
  v25 = *(*(v24 - 8) + 56);
  v25(v23, 0, 1, v24);
  v25(v37, 1, 1, v24);
  v41 = sub_10026EE08();
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  (*(v39 + 104))(v38, enum case for InputConnectionBehavior.default(_:), v40);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of InsertNoteLinkIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v29 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v30 = v29 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29[1] = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v29[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = sub_10026EE08();
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of InsertNoteLinkIntent._useNoteTitleAsName()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCE28);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&unk_1006BCE30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 1;
  v19 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of ICArchiveCreator.softwareIdentifier()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t variable initialization expression of ICArchiveCreator.softwareVersionName()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = sub_1002DF11C(0xD00000000000001ALL, 0x800000010055E950), (v4 & 1) == 0))
  {

    return 0;
  }

  sub_10000A2A0(*(v2 + 56) + 32 * v3, v7);

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

CFStringRef variable initialization expression of ICArchiveCreator.softwareVersion()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_10;
  }

  v6 = sub_1002DF11C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_10000A2A0(*(v2 + 56) + 32 * v6, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t variable initialization expression of OpenChecklistItemIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&qword_1006C6490);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&qword_1006BCE40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for ChecklistItemEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006BE070, type metadata accessor for ChecklistItemEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of DeleteNotesIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&unk_1006BCAF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of CreateTableIntent._name()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of CreateTableIntent._csvString()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of CreateTableIntent._note()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v29 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v30 = v29 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29[1] = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v29[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = sub_10026EE08();
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of ICArchiveExporterConfiguration.creator@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC910 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1006EFA10;
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_1006EFA00;
  *(a1 + 40) = v1;
}

uint64_t variable initialization expression of RealtimeCollaborationMessageController.cloudKitRecords()
{
  v0 = sub_10015DA04(&qword_1006BCE48);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v1 + 104))(&v10 - v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  v7 = *(v1 + 16);
  v7(v4, v6, v0);
  sub_10015DA04(&unk_1006BCE50);
  swift_allocObject();
  v8 = sub_100176B74(v4);
  v7(v4, v6, v0);
  swift_allocObject();
  sub_100176B74(v4);
  (*(v1 + 8))(v6, v0);
  return v8;
}

uint64_t variable initialization expression of RealtimeCollaborationMessageController.selectionMessages()
{
  v0 = sub_10015DA04(&unk_1006C86D0);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v1 + 104))(&v10 - v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  v7 = *(v1 + 16);
  v7(v4, v6, v0);
  sub_10015DA04(&unk_1006BCE60);
  swift_allocObject();
  v8 = sub_100176828(v4);
  v7(v4, v6, v0);
  swift_allocObject();
  sub_100176828(v4);
  (*(v1 + 8))(v6, v0);
  return v8;
}

uint64_t variable initialization expression of RealtimeCollaborationMessageController.paperKitOutbox()
{
  v0 = sub_10015DA04(&qword_1006BCE70);
  __chkstk_darwin(v0);
  v2 = &v5 - v1;
  (*(v3 + 104))(&v5 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  sub_10015DA04(&qword_1006BCE78);
  swift_allocObject();
  return sub_1001764D8(v2);
}

uint64_t sub_10017283C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10015DA04(a1);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a3;
  return result;
}

uint64_t variable initialization expression of OpenTagIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&qword_1006C8B80);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&qword_1006BCE90);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for TagEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006BCB08, type metadata accessor for TagEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of OpenNoteIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

id variable initialization expression of TagCell.imageView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of TagCell.textLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of TagCell.unemphasizedBackgroundColor()
{
  v0 = [objc_opt_self() tertiarySystemFillColor];

  return v0;
}

id variable initialization expression of TagCell.excludedBackgroundColor()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return v0;
}

id variable initialization expression of TagCell.emphasizedTextColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of ContentInsetViewController.configuration()
{
  v0 = type metadata accessor for ContentInsetViewController.Configuration();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets];
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v2 = *&NSDirectionalEdgeInsetsZero.top;
  v2[1] = v3;
  v1[OBJC_IVAR___ICContentInsetViewControllerConfiguration_usesSafeAreaLayoutGuide] = 0;
  *&v1[OBJC_IVAR___ICContentInsetViewControllerConfiguration_cornerRadius] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t variable initialization expression of AddFileAttachmentIntent._name()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of AddFileAttachmentIntent._file()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v25 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v24 = v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCE98);
  __chkstk_darwin(v4 - 8);
  v23 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v22[0] = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&unk_1006BCEA0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v22[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for IntentFile();
  (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
  sub_10015DA04(&unk_1006C9010);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100531E30;
  static UTType.item.getter();
  (*(v26 + 104))(v25, enum case for InputConnectionBehavior.default(_:), v27);
  return IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of AddFileAttachmentIntent._note()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v29 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v30 = v29 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29[1] = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v29[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = sub_100270998();
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of InsertAllMentionIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v29 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v30 = v29 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29[1] = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v29[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = sub_10026EE08();
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t variable initialization expression of AddOrRemoveNoteLockIntent._operation()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&unk_1006BCEB0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 3;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179BF8();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of AddOrRemoveNoteLockIntent._target()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v29 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v30 = v29 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v29[1] = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v29[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v36 = sub_100270998();
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_1001797CC();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
}

uint64_t sub_1001755C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ShowQuickNoteIntent.layoutMonitor()
{
  v0 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v1 = [objc_opt_self() monitorWithConfiguration:v0];

  type metadata accessor for ShowQuickNoteIntent.LayoutMonitorBox();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t variable initialization expression of ChangeSettingIntent._changeOperation()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v29 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v28 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = v25 - v5;
  v6 = sub_10015DA04(&qword_1006BCB10);
  __chkstk_darwin(v6 - 8);
  v26 = v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v25[0] = v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v25[1] = sub_10015DA04(&qword_1006BCB18);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v25[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for ChangeOperation();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v27, 1, 1, v22);
  v23(v28, 1, 1, v22);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_10015DF68(&qword_1006BCB20, &type metadata accessor for ChangeOperation);
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_10015DF68(&qword_1006BCB28, &type metadata accessor for ChangeOperation);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of ChangeSettingIntent._setting()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCEC0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 5;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179C4C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t sub_10017618C(uint64_t a1)
{
  v19 = a1;
  v2 = sub_10015DA04(&qword_1006BCD10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v18 = sub_10015DA04(&qword_1006BD3E8);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v18 - v7;
  v9 = sub_10015DA04(&qword_1006BD3F0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = sub_10015DA04(&qword_1006BD3F8);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  (*(v3 + 16))(v5, v19, v2);
  v20 = v14;
  type metadata accessor for Notification();
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v6 + 32))(v1 + *(*v1 + 96), v8, v18);
  sub_100006038(v14, v12, &qword_1006BD3F0);
  result = (*(v16 + 48))(v12, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v19, v2);
    (*(v16 + 32))(v1 + *(*v1 + 88), v12, v15);
    sub_1000073B4(v14, &qword_1006BD3F0);
    return v1;
  }

  return result;
}

uint64_t sub_1001764D8(uint64_t a1)
{
  v22 = a1;
  v2 = sub_10015DA04(&qword_1006BCE70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v21 = sub_10015DA04(&qword_1006C8890);
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v19 - v7;
  v9 = sub_10015DA04(&qword_1006BD3A0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = sub_10015DA04(&qword_1006BD3A8);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = *(v3 + 16);
  v20 = v2;
  v17(v5, v22, v2);
  v23 = v14;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v6 + 32))(v1 + *(*v1 + 96), v8, v21);
  sub_100006038(v14, v12, &qword_1006BD3A0);
  result = (*(v16 + 48))(v12, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v22, v20);
    (*(v16 + 32))(v1 + *(*v1 + 88), v12, v15);
    sub_1000073B4(v14, &qword_1006BD3A0);
    return v1;
  }

  return result;
}

uint64_t sub_100176828(uint64_t a1)
{
  v19 = a1;
  v2 = sub_10015DA04(&unk_1006C86D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v18 = sub_10015DA04(&qword_1006BD3B0);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v18 - v7;
  v9 = sub_10015DA04(&qword_1006BD3B8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = sub_10015DA04(&qword_1006BD3C0);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  (*(v3 + 16))(v5, v19, v2);
  v20 = v14;
  type metadata accessor for FastSync.SelectionMessage();
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v6 + 32))(v1 + *(*v1 + 96), v8, v18);
  sub_100006038(v14, v12, &qword_1006BD3B8);
  result = (*(v16 + 48))(v12, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v19, v2);
    (*(v16 + 32))(v1 + *(*v1 + 88), v12, v15);
    sub_1000073B4(v14, &qword_1006BD3B8);
    return v1;
  }

  return result;
}

uint64_t sub_100176B74(uint64_t a1)
{
  v19 = a1;
  v2 = sub_10015DA04(&qword_1006BCE48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v18 = sub_10015DA04(&qword_1006BD3C8);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v18 - v7;
  v9 = sub_10015DA04(&qword_1006BD3D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = sub_10015DA04(&qword_1006BD3D8);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  (*(v3 + 16))(v5, v19, v2);
  v20 = v14;
  sub_10015DA04(&qword_1006BD3E0);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v6 + 32))(v1 + *(*v1 + 96), v8, v18);
  sub_100006038(v14, v12, &qword_1006BD3D0);
  result = (*(v16 + 48))(v12, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v19, v2);
    (*(v16 + 32))(v1 + *(*v1 + 88), v12, v15);
    sub_1000073B4(v14, &qword_1006BD3D0);
    return v1;
  }

  return result;
}

uint64_t sub_100176ECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_1000073B4(a2, a3);
  v8 = sub_10015DA04(a5);
  v11 = *(v8 - 8);
  (*(v11 + 16))(a2, a1, v8);
  v9 = *(v11 + 56);

  return v9(a2, 0, 1, v8);
}

uint64_t variable initialization expression of AsyncBufferedMulticastManager.streams()
{
  type metadata accessor for AsyncBufferedQueue();
  Array.init()();
  type metadata accessor for Array();
  v0 = sub_100179CA0();

  return v0;
}

uint64_t variable initialization expression of SetChecklistItemsCheckedIntent._changeOperation()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCED0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 2;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100179D1C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t variable initialization expression of SetChecklistItemsCheckedIntent._entities()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[1] = sub_10015DA04(&unk_1006BCA50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_10015DF68(&qword_1006BE070, type metadata accessor for ChecklistItemEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of SetChecklistItemsCheckedIntent._note()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v25 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v28 = &v25 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v27 = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10015DF68(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t _s11MobileNotes03PinB6IntentV8_context33_52A02AAC27D0B7014C7B94315114B535LL10AppIntents0M10DependencyCySo20ICUnifiedNoteContextCGvpfi_0()
{
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  return AppDependency.__allocating_init(key:manager:)();
}

uint64_t _s11MobileNotes03PinB6IntentV21_loggingConfiguration33_52A02AAC27D0B7014C7B94315114B535LL10AppIntents0N10DependencyCy0B6Shared07LoggingF0VGvpfi_0()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  return AppDependency.__allocating_init(key:manager:)();
}

uint64_t sub_1001780B4(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BD1A0, type metadata accessor for ICError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100178120(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BD1A0, type metadata accessor for ICError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10017818C(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BE4D0, type metadata accessor for ICError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100178230@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100178278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1001782E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_100178344@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_10017836C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1001783E4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100178464@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_1001784A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001784F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100178544(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BE4D0, type metadata accessor for ICError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001785B0(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BE4D0, type metadata accessor for ICError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10017861C(void *a1, uint64_t a2)
{
  v4 = sub_10015DF68(&qword_1006BE4D0, type metadata accessor for ICError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001786AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DF68(&qword_1006BE4D0, type metadata accessor for ICError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

_DWORD *sub_100178728@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_100178760(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100178790@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1001787BC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_10017887C(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BD590, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001788E8(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BD590, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100178954(void *a1, uint64_t a2)
{
  v4 = sub_10015DF68(&qword_1006BD590, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001789E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DF68(&qword_1006BD590, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100178A60()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100178AC0()
{
  sub_10015DF68(&qword_1006BD240, type metadata accessor for TextStyle);
  sub_10015DF68(&qword_1006BD248, type metadata accessor for TextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100178B7C()
{
  sub_10015DF68(&qword_1006C95D0, type metadata accessor for Key);
  sub_10015DF68(&qword_1006BD670, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100178C38()
{
  sub_10015DF68(&qword_1006BD610, type metadata accessor for OpenExternalURLOptionsKey);
  sub_10015DF68(&qword_1006BD618, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100178CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10015DF68(&qword_1006BE4D0, type metadata accessor for ICError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100178D78()
{
  sub_10015DF68(&qword_1006BD638, type metadata accessor for VirtualSmartFolderItemIdentifierTypes);
  sub_10015DF68(&qword_1006BD640, type metadata accessor for VirtualSmartFolderItemIdentifierTypes);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100178E34()
{
  sub_10015DF68(&qword_1006BD600, type metadata accessor for Name);
  sub_10015DF68(&qword_1006BD608, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100178EF0()
{
  sub_10015DF68(&qword_1006BD250, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_10015DF68(&qword_1006BD258, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_100178FAC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100178FB8()
{
  sub_10015DF68(&qword_1006BD620, type metadata accessor for Level);
  sub_10015DF68(&qword_1006BD628, type metadata accessor for Level);
  sub_10017B398();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100179080()
{
  sub_10015DF68(&qword_1006BD648, type metadata accessor for ActivityType);
  sub_10015DF68(&qword_1006BD650, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10017913C()
{
  sub_10015DF68(&qword_1006BD658, type metadata accessor for URLResourceKey);
  sub_10015DF68(&unk_1006BD660, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1001791F8()
{
  sub_10015DF68(&qword_1006BD5E0, type metadata accessor for DocumentAttributeKey);
  sub_10015DF68(&qword_1006BD5E8, type metadata accessor for DocumentAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1001792B4@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1001792FC()
{
  sub_10015DF68(&qword_1006BD5F0, type metadata accessor for DocumentReadingOptionKey);
  sub_10015DF68(&qword_1006BD5F8, type metadata accessor for DocumentReadingOptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1001793B8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1001799C8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1001793F8(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BD598, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100179464(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BD598, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001794D0(uint64_t a1)
{
  v2 = sub_10015DF68(&qword_1006BD590, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10017953C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10015DF68(&qword_1006BD590, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_1001795D8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_10017962C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100179668()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1001796BC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100179744()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_1001797CC()
{
  result = qword_1006C99F0;
  if (!qword_1006C99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C99F0);
  }

  return result;
}

unint64_t sub_100179820()
{
  result = qword_1006BCB38;
  if (!qword_1006BCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCB38);
  }

  return result;
}

unint64_t sub_100179874()
{
  result = qword_1006BFAB0;
  if (!qword_1006BFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFAB0);
  }

  return result;
}

unint64_t sub_1001798C8()
{
  result = qword_1006BCB90;
  if (!qword_1006BCB90)
  {
    sub_10017992C(&unk_1006BFD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCB90);
  }

  return result;
}

uint64_t sub_10017992C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100179974()
{
  result = qword_1006BCBA8;
  if (!qword_1006BCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCBA8);
  }

  return result;
}

uint64_t sub_1001799C8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100179A00()
{
  result = qword_1006BCC48;
  if (!qword_1006BCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCC48);
  }

  return result;
}

unint64_t sub_100179A54()
{
  result = qword_1006BCC58;
  if (!qword_1006BCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCC58);
  }

  return result;
}

unint64_t sub_100179AA8()
{
  result = qword_1006BCCC8;
  if (!qword_1006BCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCCC8);
  }

  return result;
}

unint64_t sub_100179AFC()
{
  result = qword_1006BCD28;
  if (!qword_1006BCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCD28);
  }

  return result;
}

unint64_t sub_100179B50()
{
  result = qword_1006BCE10;
  if (!qword_1006BCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCE10);
  }

  return result;
}

unint64_t sub_100179BA4()
{
  result = qword_1006BCE20;
  if (!qword_1006BCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCE20);
  }

  return result;
}

unint64_t sub_100179BF8()
{
  result = qword_1006C9940;
  if (!qword_1006C9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9940);
  }

  return result;
}

unint64_t sub_100179C4C()
{
  result = qword_1006BCEC8;
  if (!qword_1006BCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCEC8);
  }

  return result;
}

uint64_t sub_100179CA0()
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
}

unint64_t sub_100179D1C()
{
  result = qword_1006BCED8;
  if (!qword_1006BCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCED8);
  }

  return result;
}

__n128 sub_100179DD0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ICAttachmentArchiveModel.Coordinate(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _s17LaunchRequirementVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s17LaunchRequirementVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17LaunchRequirementVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100179F30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100179F50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_10017A3B8()
{
  result = qword_1006BD1C8;
  if (!qword_1006BD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD1C8);
  }

  return result;
}

uint64_t sub_10017A554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

unint64_t sub_10017B398()
{
  result = qword_1006BD630;
  if (!qword_1006BD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD630);
  }

  return result;
}

id sub_10017B534(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [v4 noteEditorViewController];
  v6 = [v5 canPerformAction:*a3 withSender:0];

  return v6;
}

id sub_10017B628()
{
  v1 = [v0 currentNoteBrowseViewController];
  v2 = [v1 selectedModernNotes];

  sub_10017CC14();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10015DA04(&qword_1006BD800);
  sub_10017CCA4();
  Collection.only.getter();

  if (!v5)
  {
    return 0;
  }

  v3 = [v5 isLockable];

  return v3;
}

BOOL sub_10017B74C(SEL *a1)
{
  v3 = &selRef_countByEnumeratingWithState_objects_count_;
  v4 = [v1 currentNoteBrowseViewController];
  v5 = &selRef_removeObjectsInArray_;
  v6 = [v4 selectedModernNotes];

  sub_10017CC14();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i < 1)
    {
      break;
    }

    v9 = [v1 v3[71]];
    v10 = [v9 v5[262]];

    v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (v1 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (1)
    {
      v13 = v11 == v12;
      if (v11 == v12)
      {
LABEL_15:

        return v13;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v14 = *(v1 + 8 * v12 + 32);
      }

      v3 = v14;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v5 = [v14 *a1];

      ++v12;
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

id sub_10017B9D0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 noteEditorViewController];
  v6 = [v5 *a3];

  return v6;
}

uint64_t sub_10017BB38(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = [v6 noteEditorViewController];
  sub_10017CC60(v9, v9[3]);
  [v7 *a4];

  swift_unknownObjectRelease();
  return sub_100009F60(v9);
}

void sub_10017BBF4()
{
  v1 = [v0 currentNoteBrowseViewController];
  v2 = [v1 selectedModernNotes];

  sub_10017CC14();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v8 = [objc_allocWithZone(ICPinNoteActivity) initWithNote:v6 eventReporter:0];
    [v8 performActivityWithCompletion:0];
  }

  while (v4 != v5);
LABEL_10:
}

void sub_10017BD60()
{
  v1 = [v0 currentNoteBrowseViewController];
  isa = [v1 selectedModernNotes];

  if (!isa)
  {
    sub_10017CC14();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v3 = [v0 persistenceConfiguration];
  v4 = [v3 modernViewContext];

  [v4 ic_save];
}

void sub_10017BE98()
{
  v1 = v0;
  v2 = [v0 currentNoteBrowseViewController];
  v3 = [v2 selectedModernNotes];

  sub_10017CC14();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[0] = v4;
  sub_10015DA04(&qword_1006BD800);
  sub_10017CCA4();
  Collection.only.getter();

  if (v12)
  {
    v5 = v12;
    v6 = [v1 activeEditorController];
    v7 = [objc_allocWithZone(ICLockNoteActivity) initWithNote:v5 presentingViewController:v6];

    [v1 setLockNoteActivity:v7];
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    aBlock[4] = sub_10017CD08;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10017C07C;
    aBlock[3] = &unk_10064E370;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    [v7 performActivityWithCompletion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_10017C07C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v3(a2, v4, v6);
}

uint64_t sub_10017C110(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_100009F60(&v9);
}

uint64_t sub_10017C1AC(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  swift_unknownObjectRetain();
  v8 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v9 = [v8 noteEditorViewController];
  v10 = [v9 *a4];

  if (v10)
  {
    sub_10017CC60(v12, v12[3]);
    [v10 *a5];

    swift_unknownObjectRelease();
  }

  return sub_100009F60(v12);
}

uint64_t sub_10017C2A0()
{
  v1 = [v0 noteEditorViewController];
  v2 = [v1 containsUnCheckedItems];

  v3 = [objc_opt_self() mainBundle];
  if (v2)
  {
    v10 = 0x800000010055FC10;
    v4 = 0x207361206B72614DLL;
    v5 = 0xEF64656B63656843;
    v6 = 0xD000000000000027;
  }

  else
  {
    v10 = 0x800000010055FBE0;
    v5 = 0x800000010055FBC0;
    v6 = 0xD000000000000029;
    v4 = 0xD000000000000011;
  }

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v3, v7, *&v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10017C400()
{
  v1 = v0;
  v2 = &selRef_countByEnumeratingWithState_objects_count_;
  v3 = [v0 currentNoteBrowseViewController];
  v4 = &selRef_removeObjectsInArray_;
  v5 = [v3 selectedModernNotes];

  sub_10017CC14();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v27 = v1;
    v4 = 0;
    v1 = &selRef_importFolders;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(v6 + 8 * v4 + 32);
      }

      v9 = v8;
      v2 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v8 isPinned])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v2 == i)
      {
        v1 = v27;
        v2 = &selRef_countByEnumeratingWithState_objects_count_;
        v4 = 0x1006A2000;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage[2];
  }

  v11 = [v1 v2[71]];
  v12 = [v11 *(v4 + 2096)];

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13 >> 62;
  if (v10 <= 0)
  {
    if (v14)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = [objc_opt_self() mainBundle];
    if (v20 < 2)
    {
      v26 = 0x800000010055FB40;
      v17 = 0x65746F4E206E6950;
      v18 = 0xE800000000000000;
      v21.super.isa = v16;
      v22 = 0;
      v23 = 0xE000000000000000;
      v19 = 0xD000000000000012;
      goto LABEL_31;
    }

    v26 = 0x800000010055FB60;
    v17 = 0x65746F4E206E6950;
    v19 = 0xD000000000000013;
    v18 = 0xE900000000000073;
  }

  else
  {
    if (v14)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = [objc_opt_self() mainBundle];
    if (v15 < 2)
    {
      v26 = 0x800000010055FB80;
      v17 = 0x6F4E206E69706E55;
      v19 = 0xD000000000000014;
      v18 = 0xEA00000000006574;
    }

    else
    {
      v26 = 0x800000010055FBA0;
      v17 = 0x6F4E206E69706E55;
      v18 = 0xEB00000000736574;
      v19 = 0xD000000000000015;
    }
  }

  v21.super.isa = v16;
  v22 = 0;
  v23 = 0xE000000000000000;
LABEL_31:
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v17, 0, v21, *&v22, *&v19)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10017C810()
{
  v1 = [v0 currentNoteBrowseViewController];
  v2 = [v1 selectedModernNotes];

  sub_10017CC14();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 isPinned])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = _swiftEmptyArrayStorage[2];
  }

  if (v9 <= 0)
  {
    return 7235952;
  }

  else
  {
    return 0x73616C732E6E6970;
  }
}

id sub_10017CA10(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_10017CA80()
{
  v1 = [v0 currentNoteBrowseViewController];
  v2 = [v1 selectedModernNotes];

  sub_10017CC14();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = [objc_opt_self() mainBundle];
  if (v4 < 2)
  {
    v14 = 0x800000010055FAE0;
    v6 = 0xEE0065746F4E2065;
    v8 = 0x746163696C707544;
    v9.super.isa = v5;
    v10 = 0;
    v11 = 0xE000000000000000;
    v7 = 0xD000000000000026;
  }

  else
  {
    v14 = 0x800000010055FB10;
    v6 = 0xEF7365746F4E2065;
    v7 = 0xD000000000000027;
    v8 = 0x746163696C707544;
    v9.super.isa = v5;
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v9, *&v10, *&v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_10017CC14()
{
  result = qword_1006C1420;
  if (!qword_1006C1420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C1420);
  }

  return result;
}

void *sub_10017CC60(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10017CCA4()
{
  result = qword_1006BD808;
  if (!qword_1006BD808)
  {
    sub_10017992C(&qword_1006BD800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD808);
  }

  return result;
}

uint64_t sub_10017CD48()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static OpenAccountIntent.title);
  sub_10002597C(v6, static OpenAccountIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenAccountIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC540 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenAccountIntent.title);
}

uint64_t static OpenAccountIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC540 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenAccountIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenAccountIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static OpenAccountIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006BD810);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006BD818);
  __chkstk_darwin(v1);
  sub_100020E0C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BD820);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x746E756F63636120;
  v3._object = 0xE800000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t OpenAccountIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for AccountEntity();
  __chkstk_darwin(v2 - 8);
  sub_10017E280(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_10017E2E4(a1);
}

uint64_t (*OpenAccountIntent.target.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*OpenAccountIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t ChangeFolderViewSettingIntent.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017D7DC, v3, v2);
}

uint64_t sub_10017D7DC()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017D8D8(uint64_t a1)
{
  v2 = type metadata accessor for AccountEntity();
  __chkstk_darwin(v2 - 8);
  sub_10017E280(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_10017E2E4(a1);
}

uint64_t (*sub_10017D968(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

void sub_10017D9E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10017DA38()
{
  v0 = sub_10015DA04(&qword_1006BD810);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006BD818);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BD820);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x746E756F63636120;
  v3._object = 0xE800000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10017DBE0@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes17OpenAccountIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t _s11MobileNotes17OpenAccountIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v26 - v5;
  v6 = sub_10015DA04(&unk_1006BCA20);
  __chkstk_darwin(v6 - 8);
  v28 = &v26 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v27 = &v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26 = sub_10015DA04(&unk_1006BCA30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for AccountEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10017E550(&qword_1006C4160);
  v24 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCA40);
  v34 = 0xD000000000000024;
  v35 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  v34 = 0xD000000000000021;
  v35 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v24;
}

uint64_t sub_10017E280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017E2E4(uint64_t a1)
{
  v2 = type metadata accessor for AccountEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10017E374(uint64_t a1)
{
  result = sub_10017E39C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10017E39C()
{
  result = qword_1006BD858;
  if (!qword_1006BD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD858);
  }

  return result;
}

unint64_t sub_10017E3F4()
{
  result = qword_1006BD860;
  if (!qword_1006BD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD860);
  }

  return result;
}

uint64_t sub_10017E4B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10017E500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017E550(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccountEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_10017E5A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10017E5F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10017E644()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10015DA04(&unk_1006C3FD0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  v12 = sub_10017EB60();
  v17[15] = 0;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  sub_1001802AC(v11, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_10018031C(v11);
    sub_10018031C(v9);
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v13 = *(v1 + 16);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [v13 cellForItemAtIndexPath:isa];

    (*(v3 + 8))(v5, v2);
    sub_10018031C(v11);
    if (v15)
    {
      type metadata accessor for SmartFolderComposerTextFieldCell();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_10017E868(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  v3 = sub_10017E644();
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 48);

    v6 = sub_100435D90();
    if (v5)
    {
      v7 = String._bridgeToObjectiveC()();
    }

    else
    {
      v7 = 0;
    }

    [v6 setText:v7];
  }
}

uint64_t sub_10017E93C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 title];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v0[7];
    if (v5 && ([v5 isEmpty] & 1) == 0)
    {
      v9 = [objc_opt_self() mainBundle];
      v10 = String._bridgeToObjectiveC()();
      v8 = [v9 localizedStringForKey:v10 value:0 table:0];

      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }
    }

    else
    {
      v6 = [objc_opt_self() mainBundle];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 localizedStringForKey:v7 value:0 table:0];

      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }
    }

    v3 = [objc_opt_self() deduplicatingTitle:v8 account:v0[4]];

    if (!v3)
    {
      return 0;
    }

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

id sub_10017EB60()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = sub_10017ECA4(v0);
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_10017EBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = 0;
  v9 = [objc_opt_self() sharedContext];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 managedObjectContext];
  }

  else
  {
    v11 = 0;
  }

  *(v4 + 64) = v11;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  v12 = *(v4 + 24);
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = a2;

  *(v4 + 40) = a3;
  *(v4 + 48) = a4;

  if (a4)
  {

    *(v4 + 72) = 1;
  }

  return v4;
}

uint64_t sub_10017ECA4(uint64_t a1)
{
  v28 = sub_10015DA04(&qword_1006BD9B8);
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v28);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v29 = &v24 - v5;
  v25 = sub_10015DA04(&qword_1006BD9C0);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v25);
  v9 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  type metadata accessor for SmartFolderComposerTextFieldCell();

  v26 = v11;
  UICollectionView.CellRegistration.init(handler:)();
  sub_1000054A4(0, &qword_1006BD9C8);

  v12 = v29;
  UICollectionView.CellRegistration.init(handler:)();
  v24 = *(a1 + 16);
  v13 = v25;
  (*(v6 + 16))(v9, v11, v25);
  v14 = v27;
  v15 = v12;
  v16 = v28;
  (*(v2 + 16))(v27, v15, v28);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + *(v2 + 80) + v17) & ~*(v2 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v9, v13);
  (*(v2 + 32))(v19 + v18, v14, v16);
  v20 = objc_allocWithZone(sub_10015DA04(&qword_1006BD9D0));
  v21 = v24;
  v22 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  (*(v2 + 8))(v29, v16);
  (*(v6 + 8))(v26, v13);
  return v22;
}

uint64_t sub_10017F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);

  v7 = sub_100435D90();
  if (v6)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText:v8];

  v9 = *(a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  [v11 setAccessibilityLabel:v14];

  v15 = (a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange);
  v16 = *(a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange);
  *v15 = sub_1001802A4;
  v15[1] = a4;

  return sub_10000C840(v16);
}

void sub_10017F1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  v5 = sub_10017E644(v4);
  if (v5)
  {
    v6 = v5;
    v7 = *(a3 + 48);

    v8 = sub_100435D90();
    if (v7)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    [v8 setText:v9];
  }

  *(a3 + 72) = 1;
}

uint64_t sub_10017F274(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v6 - 8);
  v63 = &v56 - v7;
  v64 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIListContentConfiguration();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  UICollectionViewListCell.defaultContentConfiguration()();
  v15 = objc_opt_self();
  v16 = [v15 tintColor];
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v15 whiteColor];
  v20 = [v17 ic_symbolGraphicNamed:v18 size:v19 symbolColor:v16 backgroundColor:{28.0, 28.0}];

  v21 = v13;
  UIListContentConfiguration.image.setter();
  v22 = *(a4 + 56);
  if (v22 && ([v22 isEmpty] & 1) == 0)
  {
    v30 = objc_opt_self();
    v31 = [v30 mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 localizedStringForKey:v32 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UIListContentConfiguration.text.setter();
    v34 = *(a4 + 56);
    if (v34)
    {
      v35 = [v34 filterTypeSelections];
      sub_1000054A4(0, &unk_1006C2B90);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v36 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v37 = 0;
    }

    sub_10015DA04(&qword_1006C1A30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v37;
    v39 = [v30 mainBundle];
    v40 = String._bridgeToObjectiveC()();
    v41 = [v39 localizedStringForKey:v40 value:0 table:0];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    sub_10035B3E8(inited, v42, v44);
    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    sub_10015DA04(&unk_1006C5D10);
    swift_arrayDestroy();
  }

  else
  {
    v23 = objc_opt_self();
    v24 = [v23 mainBundle];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 localizedStringForKey:v25 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UIListContentConfiguration.text.setter();
    v27 = [v23 mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 localizedStringForKey:v28 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v56 = v21;
  UIListContentConfiguration.secondaryText.setter();
  v45 = v61;
  v65[3] = v61;
  v65[4] = &protocol witness table for UIListContentConfiguration;
  v46 = sub_100180240(v65);
  v47 = v60;
  (*(v60 + 16))(v46, v21, v45);
  UICollectionViewCell.contentConfiguration.setter();
  sub_10015DA04(&unk_1006BD9E0);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_100531E30;
  v48 = v57;
  v49 = v58;
  (*(v9 + 104))(v57, enum case for UICellAccessory.DisplayedState.always(_:), v58);
  v50 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
  v51 = v59;
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v62 + 8))(v51, v64);
  (*(v9 + 8))(v48, v49);
  UICollectionViewListCell.accessories.setter();
  v52 = UIAccessibilityTraitButton;
  v53 = [v14 accessibilityTraits];
  if ((v52 & ~v53) != 0)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0;
  }

  [v14 setAccessibilityTraits:v54 | v53];
  return (*(v47 + 8))(v56, v45);
}

uint64_t sub_10017FAE0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    sub_1000054A4(0, &qword_1006BD9C8);
  }

  else
  {
    type metadata accessor for SmartFolderComposerTextFieldCell();
  }

  return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
}

id *sub_10017FB84()
{

  return v0;
}

uint64_t sub_10017FBD4()
{
  sub_10017FB84();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TableEntity.SortType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TableEntity.SortType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10017FDD0()
{
  result = qword_1006BD980;
  if (!qword_1006BD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD980);
  }

  return result;
}

uint64_t sub_10017FE54(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10017FEAC()
{
  result = qword_1006BD998;
  if (!qword_1006BD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD998);
  }

  return result;
}

uint64_t sub_10017FF00()
{
  v1 = sub_10015DA04(&qword_1006BD9A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-v3];
  if (*(v0 + 72) != 1 || !*(v0 + 48))
  {
    v5 = sub_10017E93C();
    sub_10017E868(v5, v6);
  }

  sub_100180084();
  sub_1001800D8();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10064B8D0);
  v9[15] = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v9[14] = 1;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v7 = sub_10017EB60();
  dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_100180084()
{
  result = qword_1006BD9A8;
  if (!qword_1006BD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD9A8);
  }

  return result;
}

unint64_t sub_1001800D8()
{
  result = qword_1006BD9B0;
  if (!qword_1006BD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD9B0);
  }

  return result;
}

uint64_t sub_10018013C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_10015DA04(&qword_1006BD9C0);
  sub_10015DA04(&qword_1006BD9B8);

  return sub_10017FAE0(a1, a2, a3);
}

uint64_t *sub_100180240(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1001802AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C3FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018031C(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006C3FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001803AC()
{
  v1 = OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___closeButton;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___closeButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___closeButton];
  }

  else
  {
    v4 = sub_100180BC8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100180418()
{
  v1 = OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___label);
  }

  else
  {
    v4 = sub_100180A78();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100180478()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006C6810);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - v7;
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_100180418();
  v12 = [objc_opt_self() ic_preferredFontForStyle:UIFontTextStyleTitle2 symbolicTraits:2];
  [v11 setFont:v12];

  v13 = objc_opt_self();
  LODWORD(v12) = [v13 ic_isVision];
  v14 = [v13 ic_isVision];
  v15 = 20.0;
  if (v12)
  {
    if ((v14 & 1) == 0)
    {
      if (([v1 ic_hasCompactWidth] & 1) == 0 || (v15 = 22.0, (objc_msgSend(v1, "ic_hasCompactHeight") & 1) == 0))
      {
        v15 = 30.0;
      }
    }

    v16 = [objc_opt_self() configurationWithPointSize:6 weight:1 scale:v15];
    v17 = sub_1001803AC();
    UIButton.configuration.getter();
    v18 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v18 - 8) + 48))(v10, 1, v18))
    {
      sub_1001819E8(v10, v8);
      UIButton.configuration.setter();

      sub_100181A58(v10);
    }

    else
    {
      v27 = [objc_opt_self() secondaryLabelColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }
  }

  else
  {
    if ((v14 & 1) == 0)
    {
      if (![v1 ic_hasCompactWidth] || (v15 = 22.0, (objc_msgSend(v1, "ic_hasCompactHeight") & 1) == 0))
      {
        v15 = 30.0;
      }
    }

    v19 = objc_opt_self();
    v20 = [v19 configurationWithPointSize:4 weight:2 scale:v15];
    sub_10015DA04(&unk_1006BD390);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100531E20;
    v22 = objc_opt_self();
    v23 = v20;
    *(v21 + 32) = [v22 secondaryLabelColor];
    *(v21 + 40) = [v22 tertiarySystemFillColor];
    sub_1000054A4(0, &qword_1006BDAC0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = [v19 configurationWithPaletteColors:isa];

    v26 = [v23 configurationByApplyingConfiguration:v25];
    v16 = v26;
  }

  v28 = String._bridgeToObjectiveC()();

  v29 = [objc_opt_self() systemImageNamed:v28 withConfiguration:v16];

  v30 = sub_1001803AC();
  UIButton.configuration.getter();
  v31 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v31 - 8) + 48))(v5, 1, v31))
  {
    sub_1001819E8(v5, v8);
    UIButton.configuration.setter();

    sub_100181A58(v5);
  }

  else
  {
    v32 = v29;
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }
}

void sub_100180994(void *a1)
{
  *(v1 + OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_horizontalMargin) = 0x4030000000000000;
  *(v1 + OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_verticalMargin) = 0x4024000000000000;
  *(v1 + OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_closeButtonTopMargin) = 0x4018000000000000;
  *(v1 + OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_isCloseButtonHidden) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___label) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___closeButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100180A78()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  [v0 setText:v3];

  [v0 setAdjustsFontForContentSizeCategory:1];
  v4 = UIAccessibilityTraitHeader;
  v5 = v0;
  v6 = [v5 accessibilityTraits];
  if ((v4 & ~v6) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  [v5 setAccessibilityTraits:v7 | v6];

  return v5;
}

id sub_100180BC8(void *a1)
{
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  if ([objc_opt_self() ic_isVision])
  {
    static UIButton.Configuration.bordered()();
  }

  else
  {
    static UIButton.Configuration.plain()();
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  aBlock[4] = sub_100181AC0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002DEFE0;
  aBlock[3] = &unk_10064E5A0;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  v13 = [v9 ic_actionWithImage:0 handler:v11];
  _Block_release(v11);
  sub_1000054A4(0, &qword_1006BDAC8);
  (*(v3 + 16))(v6, v8, v2);
  v14 = v13;
  v15 = UIButton.init(configuration:primaryAction:)();
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v17 setAccessibilityLabel:v20];

  (*(v3 + 8))(v8, v2);
  return v17;
}

void *sub_100180EDC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result hideActivityStreamWithCompletion:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

id ICCloudSyncingObject.MoveAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100181070(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_horizontalMargin] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_verticalMargin] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_closeButtonTopMargin] = 0x4018000000000000;
  v2[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_isCloseButtonHidden] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___label] = 0;
  *&v2[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___closeButton] = 0;
  swift_unknownObjectWeakAssign();
  v78.receiver = v2;
  v78.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (_UISolariumEnabled() && ![objc_opt_self() ic_isVision])
  {
    v9 = 0;
  }

  else
  {
    v7 = sub_100180418();
    [v6 addSubview:v7];

    v8 = sub_1001803AC();
    [v6 addSubview:v8];

    v9 = 1;
  }

  v10 = [objc_allocWithZone(UILayoutGuide) init];
  v11 = v6;
  [v11 addLayoutGuide:v10];
  v12 = v11;
  isa = v11;
  if (v9)
  {
    v14 = 6.0;
    if ((a2 & 1) == 0)
    {
      if (a1)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = [v15 noteEditorViewController];
          v17 = [v16 navigationController];

          if (v17)
          {
            v18 = [v17 navigationBar];

            [v18 bounds];
            v20 = v19;

            v21 = [objc_opt_self() ic_isVision];
            v22 = 44.0;
            if (v21)
            {
              v22 = 30.0;
            }

            v14 = (v20 - v22) * 0.5;
          }
        }
      }
    }

    v76 = objc_opt_self();
    v23 = [v76 ic_isVision];
    v24 = sub_1001803AC();
    v25 = v24;
    if (v23)
    {
      v26 = [v24 centerYAnchor];

      v27 = sub_100180418();
      v28 = [v27 centerYAnchor];

      v29 = [v26 constraintEqualToAnchor:v28];
    }

    else
    {
      v26 = [v24 topAnchor];

      v28 = [v11 topAnchor];
      v29 = [v26 constraintEqualToAnchor:v28 constant:v14];
    }

    v77 = v29;

    v75 = sub_10015DA04(&unk_1006BD390);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100534660;
    v31 = sub_100180418();
    v32 = [v31 trailingAnchor];

    v33 = sub_1001803AC();
    v34 = [v33 leadingAnchor];

    v35 = [v32 constraintEqualToAnchor:v34 constant:-16.0];
    *(v30 + 32) = v35;
    v36 = OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___label;
    v37 = [*&v11[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___label] topAnchor];
    v38 = [v10 topAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:10.0];

    *(v30 + 40) = v39;
    v40 = [*&v11[v36] bottomAnchor];
    v41 = [v10 bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:-10.0];

    *(v30 + 48) = v42;
    v43 = [*&v11[v36] centerYAnchor];
    v44 = [v10 centerYAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v30 + 56) = v45;
    v46 = [*&v11[v36] leadingAnchor];
    v47 = [v11 leadingAnchor];

    v48 = [v46 constraintEqualToAnchor:v47 constant:16.0];
    *(v30 + 64) = v48;
    v49 = OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___closeButton;
    v50 = [*&v11[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView____lazy_storage___closeButton] trailingAnchor];
    v51 = [v11 trailingAnchor];

    v52 = [v76 ic_isVision];
    v53 = -6.0;
    if (v52)
    {
      v53 = -12.0;
    }

    v54 = [v50 constraintEqualToAnchor:v51 constant:{v53, v75}];

    *(v30 + 72) = v54;
    v55 = [*&v11[v49] widthAnchor];
    if ([v76 ic_isVision])
    {
      v56 = 30.0;
    }

    else
    {
      v56 = 44.0;
    }

    v57 = objc_opt_self();
    v58 = [v55 constraintEqualToConstant:v56];

    *(v30 + 80) = v58;
    v59 = [*&v11[v49] heightAnchor];
    v60 = [*&v11[v49] widthAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v30 + 88) = v61;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100534670;
    *(inited + 32) = v77;
    v12 = v77;
    sub_1002DBA90(inited);
    sub_1000054A4(0, &qword_1006C5D90);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v57 activateConstraints:isa];
  }

  v63 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100531E20;
  v65 = [v10 topAnchor];
  v66 = [v11 topAnchor];

  v67 = [v65 constraintEqualToAnchor:v66];
  *(v64 + 32) = v67;
  v68 = [v10 bottomAnchor];
  v69 = [v11 safeAreaLayoutGuide];

  v70 = [v69 bottomAnchor];
  v71 = [v68 constraintEqualToAnchor:v70];

  *(v64 + 40) = v71;
  sub_1000054A4(0, &qword_1006C5D90);
  v72 = Array._bridgeToObjectiveC()().super.isa;

  [v63 activateConstraints:v72];

  sub_100180478();
  sub_1000054A4(0, &qword_1006BDAB0);
  static UITraitCollection.traitsAffectingSizeAndColor.getter();
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v73 = sub_1001803AC();
  [v73 setHidden:v11[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_isCloseButtonHidden]];

  return v11;
}

uint64_t sub_1001819E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C6810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100181A58(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C6810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

objc_class *sub_100181AD0()
{
  v1 = OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1005346C0;
    v5 = v0;
    *(preferredElementSize + 32) = sub_10018221C();
    *(preferredElementSize + 40) = sub_100182388();
    *(preferredElementSize + 48) = sub_100182508();
    *(preferredElementSize + 56) = sub_100182678();
    *(preferredElementSize + 64) = sub_1001827EC();
    *(preferredElementSize + 72) = sub_100182958();
    *(preferredElementSize + 80) = sub_100182ACC();
    *(preferredElementSize + 88) = sub_100182C3C();
    *(preferredElementSize + 96) = sub_100182DB4();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14).super.super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100531E20;
    *(v8 + 32) = sub_100182014();
    *(v8 + 40) = isa;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    v10.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, v8, v15).super.super.isa;
    v11 = *(v0 + v1);
    *(v5 + v1) = v10;
    v3 = v10.super.super.isa;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_100181C60()
{
  v1 = sub_100182014();
  v2 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection;
  v3 = 1;
  if (*(v0 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = 0;
    }
  }

  [v1 setState:v3];

  v4 = sub_10018221C();
  v6 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if ([v5 selectionType] == 1)
      {
        v6 = 1;
      }
    }
  }

  [v4 setState:v6];

  v7 = sub_100182388();
  v9 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      if ([v8 selectionType] == 2)
      {
        v9 = 1;
      }
    }
  }

  [v7 setState:v9];

  v10 = sub_100182508();
  v12 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      if ([v11 selectionType] == 3)
      {
        v12 = 1;
      }
    }
  }

  [v10 setState:v12];

  v13 = sub_100182678();
  v15 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      if ([v14 selectionType] == 4)
      {
        v15 = 1;
      }
    }
  }

  [v13 setState:v15];

  v16 = sub_1001827EC();
  v18 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      if ([v17 selectionType] == 5)
      {
        v18 = 1;
      }
    }
  }

  [v16 setState:v18];

  v19 = sub_100182958();
  v21 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      if ([v20 selectionType] == 6)
      {
        v21 = 1;
      }
    }
  }

  [v19 setState:v21];

  v22 = sub_100182ACC();
  v24 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      if ([v23 selectionType] == 7)
      {
        v24 = 1;
      }
    }
  }

  [v22 setState:v24];

  v25 = sub_100182C3C();
  v27 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      if ([v26 selectionType] == 8)
      {
        v27 = 1;
      }
    }
  }

  [v25 setState:v27];

  v30 = sub_100182DB4();
  v29 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      if ([v28 selectionType] == 9)
      {
        v29 = 1;
      }
    }
  }

  [v30 setState:v29];
}

id sub_100182014()
{
  v1 = OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionOff;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionOff];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionOff];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_100182180(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  [a2 setNeedsUpdateConfiguration];
  sub_100181C60();
  v4 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v4)
  {

    v4(v5);

    sub_10000C840(v4);
  }
}

id sub_10018221C()
{
  v1 = OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionAny;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionAny];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionAny];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_100182388()
{
  v1 = OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionPhotoVideo;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionPhotoVideo];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionPhotoVideo];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_100182508()
{
  v1 = OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionScan;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionScan];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes35FolderComposerFilterCellAttachments____lazy_storage___menuActionScan];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}