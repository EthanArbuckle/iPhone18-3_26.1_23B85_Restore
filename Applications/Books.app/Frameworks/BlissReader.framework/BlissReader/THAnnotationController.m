@interface THAnnotationController
- (BOOL)_isPageInfoAnnotated:(id)a3 checkBookmarks:(BOOL)a4;
- (BOOL)getPlaceholder:(id *)a3 andPageHistory:(id *)a4;
- (BOOL)isAbsolutePhysicalPageBookmarked:(unint64_t)a3;
- (BOOL)isAbsolutePhysicalPageHighlightedWithNotes:(unint64_t)a3;
- (BOOL)isPageInfoBookmarked:(id)a3;
- (BOOL)isPageInfoHighlightedWithNotes:(id)a3;
- (BOOL)p_annotationNeedsMigration:(id)a3;
- (BOOL)p_annotationsNeedsMigration:(id)a3;
- (BOOL)p_cachedAnnotationNeedsMigration:(id)a3;
- (BOOL)p_ensureCFIForAEAnnotation:(id)a3 moc:(id)a4;
- (BOOL)p_migrateAEAnnotation:(id)a3 fromStorage:(id)a4 toAnyNonBodyStorageInContentNode:(id)a5 moc:(id)a6;
- (BOOL)p_migrateAEAnnotation:(id)a3 withinStorage:(id)a4 moc:(id)a5;
- (BOOL)p_migrateAEAnnotationIfNecessary:(id)a3 moc:(id)a4;
- (BOOL)p_migrateBookmarkOrPlaceholderAEAnnotation:(id)a3 inContentNode:(id)a4 moc:(id)a5;
- (THAnnotationController)initWithAnnotationProvider:(id)a3 documentNavigationModel:(id)a4;
- (_NSRange)p_rangeOfAEAnnotation:(id)a3 inStorage:(id)a4;
- (id)addAnnotationForStorage:(id)a3 range:(_NSRange)a4 contentNode:(id)a5 style:(int)a6 undoContext:(id)a7;
- (id)allBookmarkIdentifiers;
- (id)allBookmarksFetchedResultsController;
- (id)annotationID;
- (id)annotationRequestForAllNotes;
- (id)annotationRequestForNonOrphanedNotes;
- (id)annotationRequestForNonOrphanedSearchText:(id)a3;
- (id)annotationRequestForNonSponsoredNonOrphaned;
- (id)annotationRequestForOrphanedNotes;
- (id)annotationRequestForOrphanedSearchText:(id)a3;
- (id)annotationRequestForSearchText:(id)a3;
- (id)annotationRequestForStorageID:(id)a3;
- (id)annotationWithUuid:(id)a3;
- (id)cachedAnnotationForFetchedObject:(id)a3;
- (id)cachedAnnotationsForAnnotations:(id)a3 filteredWithContentNode:(id)a4;
- (id)cachedAnnotationsForAnnotations:(id)a3 withFilter:(id)a4;
- (id)cachedAnnotationsForContentNode:(id)a3;
- (id)cachedAnnotationsForFetchRequest:(id)a3 migrateIfNecessary:(BOOL)a4;
- (id)contentNodeForAnnotation:(id)a3;
- (id)maxAnnotationAssetVersion;
- (id)modifiedAnnotation:(id)a3 withChapterTitle:(id)a4 physicalPageNumber:(id)a5;
- (id)modifyAnnotation:(id)a3 undoContext:(id)a4 undoActionName:(id)a5 withBlock:(id)a6;
- (id)modifyAnnotation:(id)a3 withNoteText:(id)a4 undoContext:(id)a5;
- (id)modifyAnnotation:(id)a3 withStyle:(int)a4 undoContext:(id)a5;
- (id)p_actionForDeletingAEAnnotation:(id)a3;
- (id)p_actionForDeletingCachedAnnotation:(id)a3 moc:(id)a4;
- (id)p_actionForInsertingAnnotationWithType:(int)a3 style:(int)a4 absolutePageIndex:(unint64_t)a5 range:(_NSRange)a6 storage:(id)a7 contentNode:(id)a8 updateBlock:(id)a9;
- (id)p_actionForUpdatingAnnotation:(id)a3 withBlock:(id)a4;
- (id)p_actionForUpdatingAnnotation:(id)a3 withContentNode:(id)a4 block:(id)a5;
- (id)p_allBookmarksFetchRequest;
- (id)p_allContentNodeAnnotations;
- (id)p_annotationForCachedAnnotation:(id)a3 moc:(id)a4;
- (id)p_annotationRequestForAllNotesWithPredicate:(id)a3;
- (id)p_annotationRequestForAnnotationUUID:(id)a3 includeDeleted:(BOOL)a4;
- (id)p_annotationRequestForContentNode:(id)a3;
- (id)p_annotationRequestForContentNode:(id)a3 withSearchText:(id)a4;
- (id)p_annotationRequestForSearchText:(id)a3 conjoinedWithPredicate:(id)a4;
- (id)p_annotationRequestForStorageID:(id)a3 intersectingRange:(_NSRange)a4;
- (id)p_annotationsForContentNode:(id)a3 moc:(id)a4;
- (id)p_annotationsForFetchRequest:(id)a3 moc:(id)a4 migrateIfNecessary:(BOOL)a5;
- (id)p_annotationsForManagedObjectIDs:(id)a3 moc:(id)a4;
- (id)p_bookmarkRequestForContentNode:(id)a3;
- (id)p_bookmarkSortDescriptorsAscending:(BOOL)a3;
- (id)p_bookmarksWithMOC:(id)a3;
- (id)p_cachedAnnotationsForContentNode:(id)a3 moc:(id)a4;
- (id)p_cachedBookmarksWithMoc:(id)a3;
- (id)p_contentNodeForCachedAnnotation:(id)a3;
- (id)p_extendExistingAnnotationForRange:(_NSRange)a3 storage:(id)a4 contentNode:(id)a5 style:(int)a6 moc:(id)a7;
- (id)p_fetchedResultsControllerForFetchRequest:(id)a3 moc:(id)a4;
- (id)p_getReadingLocationWithMOC:(id)a3;
- (id)p_infoForNodeUniqueID:(id)a3 inContentNode:(id)a4;
- (id)p_keyForContentNode:(id)a3;
- (id)p_nonCurrentVersionPredicateWithPredicate:(id)a3;
- (id)p_nonOrphanedRangeAnnotationPredicateWithPredicate:(id)a3;
- (id)p_nonSponsoredAnnotationRequest;
- (id)p_nonSponsoredPredicateWithDocumentRoot:(id)a3;
- (id)p_pointAnnotationPredicateWithPredicate:(id)a3;
- (id)p_rangeAnnotationPredicateWithPredicate:(id)a3;
- (id)p_sortedAssetIDVersionsWithMoc:(id)a3;
- (id)p_storageAnnotationForUUID:(id)a3 includeDeleted:(BOOL)a4 moc:(id)a5;
- (id)placeholder;
- (id)placeholderFetchRequest;
- (id)readingProgress;
- (id)readingProgressHighwaterMark;
- (id)temporaryAnnotationForStorage:(id)a3 contentNode:(id)a4 withRange:(_NSRange)a5 style:(int)a6 chapterTitle:(id)a7;
- (unint64_t)nonOrphanedAnnotationCount;
- (unint64_t)numberOfBookmarks;
- (unint64_t)p_absolutePageIndexForCharacterIndex:(unint64_t)a3 withStorage:(id)a4 contentNode:(id)a5;
- (void)_unbookmarkBookmarks:(id)a3;
- (void)bookmarkAbsolutePhysicalPage:(unint64_t)a3 anchor:(id)a4;
- (void)bookmarkPageInfo:(id)a3 anchor:(id)a4;
- (void)dealloc;
- (void)destroyAnnotation:(id)a3 undoContext:(id)a4;
- (void)destroyAnnotations:(id)a3 undoContext:(id)a4;
- (void)destroyBookmarkForIdentifier:(id)a3;
- (void)ensureNonSponsoredAnnotationsAreMigrated;
- (void)p_addVersioningPropertiesAE:(id)a3;
- (void)p_beginIgnoringWritability;
- (void)p_clearUndoStack;
- (void)p_closeActionGroupWithMoc:(id)a3;
- (void)p_closeUndoGroup;
- (void)p_endIgnoringWritability;
- (void)p_invalidateCaches;
- (void)p_managedObjectContextDidSaveNotification:(id)a3;
- (void)p_migrateAEAnnotation:(id)a3 inContentNode:(id)a4 moc:(id)a5;
- (void)p_openActionGroup;
- (void)p_openUndoGroupWithContext:(id)a3 actionName:(id)a4;
- (void)p_orphanAEAnnotation:(id)a3 moc:(id)a4;
- (void)p_performAction:(id)a3 undoable:(BOOL)a4 moc:(id)a5;
- (void)p_performUndoableAction:(id)a3 moc:(id)a4;
- (void)p_processChangeList:(id)a3 moc:(id)a4;
- (void)p_redoWithUndoGroup:(id)a3;
- (void)p_registerAnnotationObserver:(id)a3 forKey:(id)a4;
- (void)p_undoWithUndoGroup:(id)a3;
- (void)p_unregisterAnnotationObserver:(id)a3 forKey:(id)a4;
- (void)p_upgradeAEAnnotation:(id)a3 moc:(id)a4;
- (void)registerAnnotationObserver:(id)a3 forContentNode:(id)a4;
- (void)registerAnnotationUndoObserver:(id)a3;
- (void)registerBookmarkObserver:(id)a3;
- (void)registerWithUndoManager:(id)a3;
- (void)removeBookmark:(id)a3;
- (void)rescueDanglingAnnotationsWithDocumentRoot:(id)a3;
- (void)setPlaceholder:(id)a3 pageHistoryDictionary:(id)a4 withContentNode:(id)a5;
- (void)teardown;
- (void)unbookmarkPageInfo:(id)a3 absolutePageIndex:(unint64_t)a4;
- (void)unregisterAnnotationObserver:(id)a3 forContentNode:(id)a4;
- (void)unregisterAnnotationUndoObserver:(id)a3;
- (void)unregisterBookmarkObserver:(id)a3;
- (void)unregisterWithUndoManager:(id)a3;
@end

@implementation THAnnotationController

- (THAnnotationController)initWithAnnotationProvider:(id)a3 documentNavigationModel:(id)a4
{
  v10.receiver = self;
  v10.super_class = THAnnotationController;
  v6 = [(THAnnotationController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->mCurrentStyle = 3;
    v6->mAnnotationProvider = a3;
    [(THAnnotationController *)v7 setDocumentNavModel:a4];
    -[THAnnotationController setDocumentRoot:](v7, "setDocumentRoot:", [a4 documentRoot]);
    v7->mObservers = objc_alloc_init(TSURetainedPointerKeyDictionary);
    v7->mCachedAnnotations = objc_alloc_init(NSMutableDictionary);
    v7->mAEAnnotationManagedObjectIDs = objc_alloc_init(NSMutableDictionary);
    v7->mAnnotationCache = objc_alloc_init(NSMutableDictionary);
    -[THAnnotationController setManagedObjectContextSaveObserver:](v7, "setManagedObjectContextSaveObserver:", [+[NSNotificationCenter defaultCenter](NSNotificationCenter addNonBlockingObserver:"addNonBlockingObserver:selector:name:object:" selector:v7 name:"p_managedObjectContextDidSaveNotification:" object:NSManagedObjectContextDidSaveNotification, 0]);
    [(THAnnotationController *)v7 setBasePredicate:[NSPredicate predicateWithFormat:@"(annotationAssetID == %@) && (annotationDeleted == NO)", [(THAnnotationController *)v7 annotationID]]];
    v8 = [(THAnnotationController *)v7 basePredicate];
    [(THAnnotationController *)v7 setNonCurrentVersionPredicate:[NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:v8, [NSPredicate predicateWithFormat:@"((%K != %@) || (%K==nil))", kAEAnnotationAssetVersionKey, [(THBookVersion *)[(THDocumentProperties *)[(THDocumentRoot *)[(THAnnotationController *)v7 documentRoot] properties] bookVersion] versionString], kAEAnnotationAssetVersionKey], 0]]];
    [(THAnnotationController *)v7 setRangePredicate:[NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:[(THAnnotationController *)v7 basePredicate], [NSPredicate predicateWithFormat:@"(annotationType==%d)", 2], 0]]];
    [(THAnnotationController *)v7 setPointPredicate:[NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:[(THAnnotationController *)v7 basePredicate], [NSPredicate predicateWithFormat:@"(annotationType==%d)", 1], 0]]];
    [(THAnnotationController *)v7 setGlobalPredicate:[NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:[(THAnnotationController *)v7 basePredicate], [NSPredicate predicateWithFormat:@"(annotationType==%d)", 3], 0]]];
    [(THAnnotationController *)v7 setNonOrphanedPredicate:[NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:[(THAnnotationController *)v7 basePredicate], [NSPredicate predicateWithFormat:@"(annotationLocation!=nil)"], 0]]];
    [(THAnnotationController *)v7 setNonOrphanedRangePredicate:[NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:[(THAnnotationController *)v7 nonOrphanedPredicate], [NSPredicate predicateWithFormat:@"(annotationType==%d)", 2], 0]]];
    -[THAnnotationController setNonSponsoredNonOrphanedPredicate:](v7, "setNonSponsoredNonOrphanedPredicate:", +[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", -[THAnnotationController nonOrphanedPredicate](v7, "nonOrphanedPredicate"), -[THAnnotationController p_nonSponsoredPredicateWithDocumentRoot:](v7, "p_nonSponsoredPredicateWithDocumentRoot:", [a4 documentRoot]), 0)));
    [(THAnnotationController *)v7 setOrphanedPredicate:[NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:[(THAnnotationController *)v7 basePredicate], [NSPredicate predicateWithFormat:@"(annotationLocation==nil)"], 0]]];
    [(THAnnotationController *)v7 setOrphanedRangePredicate:[NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:[(THAnnotationController *)v7 orphanedPredicate], [NSPredicate predicateWithFormat:@"(annotationType==%d)", 2], 0]]];
    -[THAnnotationController setNonSponsoredPredicate:](v7, "setNonSponsoredPredicate:", +[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", -[THAnnotationController basePredicate](v7, "basePredicate"), -[THAnnotationController p_nonSponsoredPredicateWithDocumentRoot:](v7, "p_nonSponsoredPredicateWithDocumentRoot:", [a4 documentRoot]), 0)));
    [(THAnnotationController *)v7 setAnnotationsReadEnabled:1];
    [(THAnnotationController *)v7 setAnnotationsWriteEnabled:1];
  }

  return v7;
}

- (void)teardown
{
  self->mObservers = 0;

  self->mBookmarkObservers = 0;
  self->mUndoObservers = 0;
  if (self->mUndoManager)
  {
    [(THAnnotationController *)self unregisterWithUndoManager:?];
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", [(THAnnotationController *)self managedObjectContextSaveObserver]];

  [(THAnnotationController *)self setManagedObjectContextSaveObserver:0];
}

- (void)dealloc
{
  [(THAnnotationController *)self teardown];
  [(THAnnotationController *)self setDocumentRoot:0];
  [(THAnnotationController *)self setDocumentNavModel:0];
  [(THAnnotationController *)self setBasePredicate:0];
  [(THAnnotationController *)self setNonOrphanedPredicate:0];
  [(THAnnotationController *)self setOrphanedPredicate:0];
  [(THAnnotationController *)self setRangePredicate:0];
  [(THAnnotationController *)self setPointPredicate:0];
  [(THAnnotationController *)self setGlobalPredicate:0];
  [(THAnnotationController *)self setNonCurrentVersionPredicate:0];
  [(THAnnotationController *)self setNonOrphanedRangePredicate:0];
  [(THAnnotationController *)self setOrphanedRangePredicate:0];
  [(THAnnotationController *)self setNonSponsoredPredicate:0];
  [(THAnnotationController *)self setNonSponsoredNonOrphanedPredicate:0];
  [(THAnnotationController *)self setLastCommitMoc:0];
  if (self->mObservers)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mAnnotationProvider = 0;
  self->mAnnotationID = 0;

  self->mObservers = 0;
  self->mBookmarkObservers = 0;

  self->mCachedAnnotations = 0;
  self->mAEAnnotationManagedObjectIDs = 0;

  self->mAnnotationCache = 0;
  if (self->mCurrentUndoGroup || self->mCurrentChangeList)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mUndoObservers || self->mUndoManager)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3.receiver = self;
  v3.super_class = THAnnotationController;
  [(THAnnotationController *)&v3 dealloc];
}

- (void)p_managedObjectContextDidSaveNotification:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_opt_class();
  [a3 object];
  v5 = TSUDynamicCast();
  if ([v5 sessionContextType] == 2)
  {
    v6 = [v5 persistentStoreCoordinator];
    if (v6 == [(AEAnnotationProvider *)self->mAnnotationProvider persistentStoreCoordinator])
    {
      objc_sync_enter(self);
      [(THAnnotationController *)self p_invalidateCaches];
      objc_sync_exit(self);

      [(THAnnotationController *)self p_clearUndoStack];
    }
  }
}

- (void)p_invalidateCaches
{
  [(NSMutableDictionary *)self->mCachedAnnotations removeAllObjects];
  [(NSMutableDictionary *)self->mAEAnnotationManagedObjectIDs removeAllObjects];
  [(NSMutableDictionary *)self->mAnnotationCache removeAllObjects];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] navigationModel] contentNodes];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [(THAnnotationController *)self p_keyForContentNode:v8];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = [(TSURetainedPointerKeyDictionary *)self->mObservers objectForKey:v9];
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v24 + 1) + 8 * j) annotationsUpdatedForContentNode:v8];
            }

            v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v12);
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = [(TSURetainedPointerKeyDictionary *)self->mObservers objectForKey:@"THMacAnnotationLostOrphans", 0];
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * k) annotationsUpdatedForContentNode:0];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (id)p_keyForContentNode:(id)a3
{
  if (a3)
  {
    return [a3 nodeGUID];
  }

  else
  {
    return @"THMacAnnotationLostOrphans";
  }
}

- (id)annotationID
{
  result = self->mAnnotationID;
  if (!result)
  {
    result = [(THBookDescription *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] bookDescription] annotationID];
    self->mAnnotationID = result;
    if (!result)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return self->mAnnotationID;
    }
  }

  return result;
}

- (id)p_annotationsForFetchRequest:(id)a3 moc:(id)a4 migrateIfNecessary:(BOOL)a5
{
  v5 = a5;
  if (![(THAnnotationController *)self annotationsReadEnabled])
  {
    return 0;
  }

  v21 = 0;
  v9 = [a4 executeFetchRequest:a3 error:&v21];
  if (v21)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"[THAnnotationController p_annotationsForFetchRequest:moc:migrateIfNecessary:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THAnnotationController.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:708 description:{@"Error fetching exceptions: %@", objc_msgSend(v21, "description")}];
  }

  if (v5)
  {
    [(THAnnotationController *)self p_openActionGroup];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v9);
          }

          [(THAnnotationController *)self p_migrateAEAnnotationIfNecessary:*(*(&v17 + 1) + 8 * v15) moc:a4];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }

    [(THAnnotationController *)self p_closeActionGroupWithMoc:a4];
  }

  return v9;
}

- (id)p_fetchedResultsControllerForFetchRequest:(id)a3 moc:(id)a4
{
  if (![(THAnnotationController *)self annotationsReadEnabled])
  {
    return 0;
  }

  v6 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:a3 managedObjectContext:a4 sectionNameKeyPath:0 cacheName:0];

  return v6;
}

- (id)p_nonSponsoredPredicateWithDocumentRoot:(id)a3
{
  v4 = +[NSMutableDictionary dictionary];
  [objc_msgSend(a3 "rootNode")];
  v5 = [v4 allKeys];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_9423C;
  v13 = sub_9424C;
  v14 = +[NSMutableArray array];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_94258;
  v8[3] = &unk_45C730;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = [NSCompoundPredicate notPredicateWithSubpredicate:[NSCompoundPredicate orPredicateWithSubpredicates:v10[5]]];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)p_rangeAnnotationPredicateWithPredicate:(id)a3
{
  v3 = [NSArray arrayWithObjects:[(THAnnotationController *)self rangePredicate], a3, 0];

  return [NSCompoundPredicate andPredicateWithSubpredicates:v3];
}

- (id)p_pointAnnotationPredicateWithPredicate:(id)a3
{
  v3 = [NSArray arrayWithObjects:[(THAnnotationController *)self pointPredicate], a3, 0];

  return [NSCompoundPredicate andPredicateWithSubpredicates:v3];
}

- (id)p_nonCurrentVersionPredicateWithPredicate:(id)a3
{
  v3 = [NSArray arrayWithObjects:[(THAnnotationController *)self nonCurrentVersionPredicate], a3, 0];

  return [NSCompoundPredicate andPredicateWithSubpredicates:v3];
}

- (id)p_nonOrphanedRangeAnnotationPredicateWithPredicate:(id)a3
{
  v3 = [NSArray arrayWithObjects:[(THAnnotationController *)self nonOrphanedRangePredicate], a3, 0];

  return [NSCompoundPredicate andPredicateWithSubpredicates:v3];
}

- (id)p_annotationRequestForAnnotationUUID:(id)a3 includeDeleted:(BOOL)a4
{
  v4 = a4;
  v7 = [NSFetchRequest alloc];
  v8 = [v7 initWithEntityName:kAEAnnotationEntityName];
  if (v4)
  {
    v9 = [NSPredicate predicateWithFormat:@"(annotationAssetID == %@)", [(THAnnotationController *)self annotationID]];
  }

  else
  {
    v9 = [(THAnnotationController *)self basePredicate];
  }

  [v8 setPredicate:{+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v9, +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(annotationUuid == %@)", a3), 0))}];
  return v8;
}

- (id)p_storageAnnotationForUUID:(id)a3 includeDeleted:(BOOL)a4 moc:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  v6 = a4;
  if (![a3 length])
  {
    return 0;
  }

  v15 = 0;
  v9 = [a5 executeFetchRequest:-[THAnnotationController p_annotationRequestForAnnotationUUID:includeDeleted:](self error:{"p_annotationRequestForAnnotationUUID:includeDeleted:", a3, v6), &v15}];
  if (v15)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"[THAnnotationController p_storageAnnotationForUUID:includeDeleted:moc:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THAnnotationController.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:810 description:{@"Error fetching execeptions: %@", objc_msgSend(v15, "description")}];
  }

  if (![v9 count])
  {
    return 0;
  }

  v13 = [v9 objectAtIndex:0];
  if ([v9 count] != &dword_0 + 1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v13;
}

- (id)annotationRequestForStorageID:(id)a3
{
  v5 = [NSFetchRequest alloc];
  v6 = [v5 initWithEntityName:kAEAnnotationEntityName];
  [v6 setPredicate:{-[THAnnotationController p_nonOrphanedRangeAnnotationPredicateWithPredicate:](self, "p_nonOrphanedRangeAnnotationPredicateWithPredicate:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(plStorageUUID == %@)", a3))}];
  [v6 setSortDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSSortDescriptor sortDescriptorWithKey:ascending:](NSSortDescriptor, "sortDescriptorWithKey:ascending:", @"plLocationRangeStart", 0))}];
  return v6;
}

- (id)p_annotationRequestForStorageID:(id)a3 intersectingRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = [NSFetchRequest alloc];
  v9 = [v8 initWithEntityName:kAEAnnotationEntityName];
  [v9 setPredicate:{-[THAnnotationController p_nonOrphanedRangeAnnotationPredicateWithPredicate:](self, "p_nonOrphanedRangeAnnotationPredicateWithPredicate:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(plStorageUUID == %@) && (plLocationRangeStart < %d) && (plLocationRangeEnd >= %d)", a3, location + length, location))}];
  [v9 setSortDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSSortDescriptor sortDescriptorWithKey:ascending:](NSSortDescriptor, "sortDescriptorWithKey:ascending:", @"plLocationRangeStart", 0))}];
  return v9;
}

- (id)p_annotationRequestForAllNotesWithPredicate:(id)a3
{
  v4 = [NSFetchRequest alloc];
  v5 = [v4 initWithEntityName:kAEAnnotationEntityName];
  [v5 setPredicate:a3];
  [v5 setSortDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSSortDescriptor sortDescriptorWithKey:ascending:](NSSortDescriptor, "sortDescriptorWithKey:ascending:", @"plLocationRangeStart", 0))}];
  return v5;
}

- (id)annotationRequestForAllNotes
{
  v3 = [(THAnnotationController *)self rangePredicate];

  return [(THAnnotationController *)self p_annotationRequestForAllNotesWithPredicate:v3];
}

- (id)annotationRequestForNonOrphanedNotes
{
  v3 = [(THAnnotationController *)self nonOrphanedRangePredicate];

  return [(THAnnotationController *)self p_annotationRequestForAllNotesWithPredicate:v3];
}

- (id)annotationRequestForOrphanedNotes
{
  v3 = [(THAnnotationController *)self orphanedRangePredicate];

  return [(THAnnotationController *)self p_annotationRequestForAllNotesWithPredicate:v3];
}

- (id)annotationRequestForNonSponsoredNonOrphaned
{
  v3 = [(THAnnotationController *)self nonSponsoredNonOrphanedPredicate];

  return [(THAnnotationController *)self p_annotationRequestForAllNotesWithPredicate:v3];
}

- (id)p_annotationRequestForSearchText:(id)a3 conjoinedWithPredicate:(id)a4
{
  v6 = [NSFetchRequest alloc];
  v7 = [v6 initWithEntityName:kAEAnnotationEntityName];
  [v7 setPredicate:{+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", a4, +[NSCompoundPredicate orPredicateWithSubpredicates:](NSCompoundPredicate, "orPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"annotationRepresentativeText contains[cd] %@", a3), +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"annotationNote contains[cd] %@", a3), 0)), 0))}];
  [v7 setSortDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSSortDescriptor sortDescriptorWithKey:ascending:](NSSortDescriptor, "sortDescriptorWithKey:ascending:", @"plLocationRangeStart", 0))}];

  return v7;
}

- (id)annotationRequestForSearchText:(id)a3
{
  v5 = [(THAnnotationController *)self rangePredicate];

  return [(THAnnotationController *)self p_annotationRequestForSearchText:a3 conjoinedWithPredicate:v5];
}

- (id)annotationRequestForNonOrphanedSearchText:(id)a3
{
  v5 = [(THAnnotationController *)self nonOrphanedRangePredicate];

  return [(THAnnotationController *)self p_annotationRequestForSearchText:a3 conjoinedWithPredicate:v5];
}

- (id)annotationRequestForOrphanedSearchText:(id)a3
{
  v5 = [(THAnnotationController *)self orphanedRangePredicate];

  return [(THAnnotationController *)self p_annotationRequestForSearchText:a3 conjoinedWithPredicate:v5];
}

- (id)p_nonSponsoredAnnotationRequest
{
  v3 = [NSFetchRequest alloc];
  v4 = [v3 initWithEntityName:kAEAnnotationEntityName];
  [v4 setPredicate:{-[THAnnotationController nonSponsoredPredicate](self, "nonSponsoredPredicate")}];
  [v4 setSortDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSSortDescriptor sortDescriptorWithKey:ascending:](NSSortDescriptor, "sortDescriptorWithKey:ascending:", @"plLocationRangeStart", 0))}];
  return v4;
}

- (id)p_annotationRequestForContentNode:(id)a3
{
  v5 = [NSFetchRequest alloc];
  v6 = [v5 initWithEntityName:kAEAnnotationEntityName];
  [v6 setPredicate:{-[THAnnotationController p_rangeAnnotationPredicateWithPredicate:](self, "p_rangeAnnotationPredicateWithPredicate:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(plStorageUUID BEGINSWITH[n] %@)", objc_msgSend(a3, "nodeGUID")))}];
  [v6 setSortDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSSortDescriptor sortDescriptorWithKey:ascending:](NSSortDescriptor, "sortDescriptorWithKey:ascending:", @"plLocationRangeStart", 0))}];
  return v6;
}

- (id)p_bookmarkSortDescriptorsAscending:(BOOL)a3
{
  v3 = a3;
  if ([(THBookDescription *)[(THDocumentRoot *)self->mDocumentRoot bookDescription] isEpub])
  {
    v4 = [[NSSortDescriptor alloc] initWithKey:@"annotationLocation" ascending:v3 selector:"localizedStandardCompare:"];
    v5 = [[NSSortDescriptor alloc] initWithKey:@"annotationCreationDate" ascending:v3];
    v9[0] = v4;
    v9[1] = v5;
    v6 = [NSArray arrayWithObjects:v9 count:2];
  }

  else
  {
    v8 = [NSSortDescriptor sortDescriptorWithKey:@"plAbsolutePhysicalLocation" ascending:v3];
    return [NSArray arrayWithObjects:&v8 count:1];
  }

  return v6;
}

- (id)p_bookmarkRequestForContentNode:(id)a3
{
  v5 = [NSFetchRequest alloc];
  v6 = [v5 initWithEntityName:kAEAnnotationEntityName];
  [v6 setPredicate:{-[THAnnotationController p_pointAnnotationPredicateWithPredicate:](self, "p_pointAnnotationPredicateWithPredicate:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(plStorageUUID BEGINSWITH[n] %@)", objc_msgSend(a3, "nodeGUID")))}];
  [v6 setSortDescriptors:{-[THAnnotationController p_bookmarkSortDescriptorsAscending:](self, "p_bookmarkSortDescriptorsAscending:", 0)}];
  return v6;
}

- (id)p_annotationRequestForContentNode:(id)a3 withSearchText:(id)a4
{
  v7 = [NSFetchRequest alloc];
  v8 = [v7 initWithEntityName:kAEAnnotationEntityName];
  [v8 setPredicate:{+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", -[THAnnotationController p_rangeAnnotationPredicateWithPredicate:](self, "p_rangeAnnotationPredicateWithPredicate:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(plStorageUUID BEGINSWITH[n] %@)", objc_msgSend(a3, "nodeGUID"))), +[NSCompoundPredicate orPredicateWithSubpredicates:](NSCompoundPredicate, "orPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"annotationRepresentativeText contains[cd] %@", a4), +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"annotationNote contains[cd] %@", a4), 0)), 0))}];
  [v8 setSortDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSSortDescriptor sortDescriptorWithKey:ascending:](NSSortDescriptor, "sortDescriptorWithKey:ascending:", @"plLocationRangeStart", 0))}];

  return v8;
}

- (unint64_t)p_absolutePageIndexForCharacterIndex:(unint64_t)a3 withStorage:(id)a4 contentNode:(id)a5
{
  v7 = [a5 relativePageIndexForCharacterIndex:a3 forInfo:a4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v7;
  v10 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] context]];

  return [a5 absolutePageIndexForRelativePageIndex:v9 forPresentationType:v10];
}

- (BOOL)p_annotationNeedsMigration:(id)a3
{
  v4 = -[THBookVersion initWithString:]([THBookVersion alloc], "initWithString:", [a3 annotationBookVersion]);
  v5 = [(THBookVersion *)[(THDocumentProperties *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] properties] bookVersion] isValid]&& (![(THBookVersion *)v4 isValid]|| [(THBookVersion *)[(THDocumentProperties *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] properties] bookVersion] isStrictlyNewerThanBookVersion:v4]);

  return v5;
}

- (BOOL)p_cachedAnnotationNeedsMigration:(id)a3
{
  v4 = -[THBookVersion initWithString:]([THBookVersion alloc], "initWithString:", [a3 annotationBookVersion]);
  v5 = [(THBookVersion *)[(THDocumentProperties *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] properties] bookVersion] isValid]&& (![(THBookVersion *)v4 isValid]|| [(THBookVersion *)[(THDocumentProperties *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] properties] bookVersion] isStrictlyNewerThanBookVersion:v4]);

  return v5;
}

- (id)contentNodeForAnnotation:(id)a3
{
  v4 = [(THAnnotationController *)self documentNavModel];
  v5 = [a3 annotationContentNodeID];

  return [(THDocumentNavigationModel *)v4 contentNodeForGUID:v5];
}

- (id)p_allBookmarksFetchRequest
{
  v3 = [NSFetchRequest alloc];
  v4 = [v3 initWithEntityName:kAEAnnotationEntityName];
  [v4 setPredicate:{-[THAnnotationController pointPredicate](self, "pointPredicate")}];
  [v4 setSortDescriptors:{-[THAnnotationController p_bookmarkSortDescriptorsAscending:](self, "p_bookmarkSortDescriptorsAscending:", 1)}];

  return v4;
}

- (id)allBookmarksFetchedResultsController
{
  v3 = [(THAnnotationController *)self p_allBookmarksFetchRequest];
  v4 = [v3 predicate];
  [v3 setPredicate:{-[THAnnotationController p_nonCurrentVersionPredicateWithPredicate:](self, "p_nonCurrentVersionPredicateWithPredicate:", objc_msgSend(v3, "predicate"))}];
  v5 = [(AEAnnotationProvider *)self->mAnnotationProvider uiManagedObjectContext];
  [(THAnnotationController *)self p_annotationsForFetchRequest:v3 moc:v5 migrateIfNecessary:1];
  [v3 setPredicate:v4];

  return [(THAnnotationController *)self p_fetchedResultsControllerForFetchRequest:v3 moc:v5];
}

- (void)bookmarkAbsolutePhysicalPage:(unint64_t)a3 anchor:(id)a4
{
  v7 = [a4 storage];
  v8 = [a4 range];
  v10 = v8;
  if (v9)
  {
    v11 = v9 - (&v8[v9] == [v7 length] + 1);
  }

  else
  {
    v11 = 0;
  }

  mAnnotationProvider = self->mAnnotationProvider;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_9555C;
  v13[3] = &unk_45C758;
  v13[8] = v10;
  v13[9] = v11;
  v13[4] = self;
  v13[5] = v7;
  v13[6] = a4;
  v13[7] = a3;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v13];
}

- (void)_unbookmarkBookmarks:(id)a3
{
  if (![a3 count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THAnnotationController *)self p_openActionGroup];
  mAnnotationProvider = self->mAnnotationProvider;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_956D8;
  v6[3] = &unk_45C780;
  v6[4] = a3;
  v6[5] = self;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v6];
}

- (void)unbookmarkPageInfo:(id)a3 absolutePageIndex:(unint64_t)a4
{
  v7 = [a3 bodyStorageRange];
  v9 = v8;
  v10 = [a3 parent];
  if (!v10)
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    }

    v10 = [(THDocumentNavigationModel *)self->mDocumentNavModel contentNodeForAbsolutePageIndex:a4];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_95934;
  v11[3] = &unk_45C7A0;
  v11[4] = a4;
  v11[5] = v7;
  v11[6] = v9;
  -[THAnnotationController _unbookmarkBookmarks:](self, "_unbookmarkBookmarks:", [objc_msgSend(-[THAnnotationController cachedAnnotationsForContentNode:](self cachedAnnotationsForContentNode:{v10), "bookmarkAnnotations"), "tsu_arrayOfObjectsPassingTest:", v11}]);
}

- (void)bookmarkPageInfo:(id)a3 anchor:(id)a4
{
  v6 = [a4 storage];
  v7 = [a4 range];
  v9 = v7;
  if (v8)
  {
    v10 = v8 - (&v7[v8] == [v6 length] + 1);
  }

  else
  {
    v10 = 0;
  }

  mAnnotationProvider = self->mAnnotationProvider;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_95A84;
  v12[3] = &unk_45C7C8;
  v12[7] = v9;
  v12[8] = v10;
  v12[4] = self;
  v12[5] = v6;
  v12[6] = a4;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v12];
}

- (void)removeBookmark:(id)a3
{
  if (a3)
  {
    v3 = a3;
    [(THAnnotationController *)self _unbookmarkBookmarks:[NSArray arrayWithObjects:&v3 count:1]];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (BOOL)isAbsolutePhysicalPageBookmarked:(unint64_t)a3
{
  v5 = [(THAnnotationController *)self annotationsReadEnabled];
  if (v5)
  {
    v6 = [-[THAnnotationController cachedAnnotationsForContentNode:](self cachedAnnotationsForContentNode:{-[THDocumentNavigationModel contentNodeForAbsolutePageIndex:](self->mDocumentNavModel, "contentNodeForAbsolutePageIndex:", a3)), "bookmarkAbsolutePhysicalPageIndexSet"}];

    LOBYTE(v5) = [v6 containsIndex:a3];
  }

  return v5;
}

- (BOOL)_isPageInfoAnnotated:(id)a3 checkBookmarks:(BOOL)a4
{
  v4 = a4;
  v7 = [(THAnnotationController *)self annotationsReadEnabled];
  LOBYTE(v8) = 0;
  if (a3 && v7)
  {
    v9 = [a3 bodyStorageRange];
    if (NSInvalidRange[0] == v9 && NSInvalidRange[1] == v10)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v12 = v9;
      v13 = v10;
      v14 = -[THAnnotationController cachedAnnotationsForContentNode:](self, "cachedAnnotationsForContentNode:", [a3 parent]);
      if (v4)
      {
        v15 = [v14 bookmarkAnnotations];
      }

      else
      {
        v15 = [v14 annotationsForStorage:{objc_msgSend(a3, "bodyStorage")}];
      }

      v16 = v15;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        v17 = v8;
        v18 = *v25;
        v19 = v13 + v12;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v24 + 1) + 8 * i) annotationStorageRange];
            if (v12 <= v21 && v19 >= v21 + 1)
            {
              LOBYTE(v8) = 1;
              return v8;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          LOBYTE(v8) = 0;
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return v8;
}

- (BOOL)isPageInfoBookmarked:(id)a3
{
  if (a3)
  {
    return [THAnnotationController _isPageInfoAnnotated:"_isPageInfoAnnotated:checkBookmarks:" checkBookmarks:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isAbsolutePhysicalPageHighlightedWithNotes:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || ![(THAnnotationController *)self annotationsReadEnabled])
  {
    return 0;
  }

  v5 = [(THAnnotationController *)self cachedAnnotationsForContentNode:[(THDocumentNavigationModel *)self->mDocumentNavModel contentNodeForAbsolutePageIndex:a3]];

  return [v5 hasAnnotationWithNoteInAbsolutePhysicalPageIndex:a3];
}

- (BOOL)isPageInfoHighlightedWithNotes:(id)a3
{
  if (!a3 || ![(THAnnotationController *)self annotationsReadEnabled])
  {
    return 0;
  }

  v5 = -[THAnnotationController cachedAnnotationsForContentNode:](self, "cachedAnnotationsForContentNode:", [a3 parent]);

  return [v5 hasAnnotationWithNoteOnPageInfo:a3];
}

- (void)registerBookmarkObserver:(id)a3
{
  if (a3)
  {
    objc_sync_enter(self);
    mBookmarkObservers = self->mBookmarkObservers;
    if (!mBookmarkObservers)
    {
      mBookmarkObservers = objc_alloc_init(TSUMutablePointerSet);
      self->mBookmarkObservers = mBookmarkObservers;
    }

    [(TSUMutablePointerSet *)mBookmarkObservers addObject:a3];

    objc_sync_exit(self);
  }
}

- (void)unregisterBookmarkObserver:(id)a3
{
  if (a3)
  {
    objc_sync_enter(self);
    [(TSUMutablePointerSet *)self->mBookmarkObservers removeObject:a3];
    if (![(TSUMutablePointerSet *)self->mBookmarkObservers count])
    {

      self->mBookmarkObservers = 0;
    }

    objc_sync_exit(self);
  }
}

- (unint64_t)numberOfBookmarks
{
  v3 = [(THDocumentNavigationModel *)self->mDocumentNavModel contentNodes];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v11;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v6 += [objc_msgSend(-[THAnnotationController cachedAnnotationsForContentNode:](self cachedAnnotationsForContentNode:{*(*(&v10 + 1) + 8 * i)), "bookmarkAnnotations"), "count"}];
    }

    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v5);
  return v6;
}

- (id)allBookmarkIdentifiers
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_9423C;
  v14 = sub_9424C;
  v15 = 0;
  objc_sync_enter(self);
  v3 = [(NSMutableDictionary *)self->mAnnotationCache objectForKey:@"THMacAnnotationAllBookmarks"];
  v11[5] = v3;
  objc_sync_exit(self);
  v4 = v11[5];
  if (!v4)
  {
    mAnnotationProvider = self->mAnnotationProvider;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_96234;
    v9[3] = &unk_45C7F0;
    v9[4] = self;
    v9[5] = &v10;
    [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v9];
    v6 = v11[5];
    v4 = v11[5];
  }

  v7 = [v4 bookmarkAnnotations];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)destroyBookmarkForIdentifier:(id)a3
{
  if (![(THAnnotationController *)self canModifyAnnotations])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v4 = TSUCheckedProtocolCast();
  mAnnotationProvider = self->mAnnotationProvider;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_963EC;
  v6[3] = &unk_45C780;
  v6[4] = self;
  v6[5] = v4;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v6];
}

- (void)rescueDanglingAnnotationsWithDocumentRoot:(id)a3
{
  mAnnotationProvider = self->mAnnotationProvider;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_964B4;
  v4[3] = &unk_45C780;
  v4[4] = self;
  v4[5] = a3;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v4];
}

- (id)placeholderFetchRequest
{
  v3 = [NSFetchRequest alloc];
  v4 = [v3 initWithEntityName:kAEAnnotationEntityName];
  [v4 setPredicate:{-[THAnnotationController globalPredicate](self, "globalPredicate")}];
  [v4 setSortDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSSortDescriptor sortDescriptorWithKey:ascending:](NSSortDescriptor, "sortDescriptorWithKey:ascending:", @"plAbsolutePhysicalLocation", 1))}];

  return v4;
}

- (id)p_getReadingLocationWithMOC:(id)a3
{
  v3 = [(THAnnotationController *)self p_annotationsForFetchRequest:[(THAnnotationController *)self placeholderFetchRequest] moc:a3 migrateIfNecessary:1];
  result = [v3 count];
  if (result)
  {

    return [v3 objectAtIndex:0];
  }

  return result;
}

- (id)placeholder
{
  v3 = 0;
  [(THAnnotationController *)self getPlaceholder:&v3 andPageHistory:0];
  return v3;
}

- (id)readingProgress
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mAnnotationProvider = self->mAnnotationProvider;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_96898;
  v6[3] = &unk_45C818;
  v6[4] = self;
  v6[5] = &v7;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v6];
  LODWORD(v3) = *(v8 + 6);
  v4 = [NSNumber numberWithFloat:v3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)readingProgressHighwaterMark
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mAnnotationProvider = self->mAnnotationProvider;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_969AC;
  v6[3] = &unk_45C818;
  v6[4] = self;
  v6[5] = &v7;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v6];
  LODWORD(v3) = *(v8 + 6);
  v4 = [NSNumber numberWithFloat:v3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)getPlaceholder:(id *)a3 andPageHistory:(id *)a4
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = sub_9423C;
  v24 = sub_9424C;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_9423C;
  v18 = sub_9424C;
  v19 = 0;
  mAnnotationProvider = self->mAnnotationProvider;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_96C58;
  v13[3] = &unk_45C840;
  v13[4] = self;
  v13[5] = &v20;
  v13[6] = &v14;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v13];
  v8 = v21[5];
  v9 = v15[5];
  if (a3)
  {
    v10 = v21[5];
    if (!v10)
    {
      if ([(THBookDescription *)[(THDocumentRoot *)self->mDocumentRoot bookDescription] isEpub])
      {
        v11 = [(NSArray *)[(THDocumentNavigationModel *)self->mDocumentNavModel contentNodes] firstObject];
        v10 = -[THPageLocation initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:]([THPageLocation alloc], "initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:", 0, 0, 0, [v11 nodeGUID], objc_msgSend(v11, "nodeGUID"));
        v21[5] = v10;
      }

      else
      {
        v10 = v21[5];
      }
    }

    *a3 = v10;
  }

  if (a4)
  {
    *a4 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return a3 != 0;
}

- (void)setPlaceholder:(id)a3 pageHistoryDictionary:(id)a4 withContentNode:(id)a5
{
  v9 = [(THAnnotationController *)self placeholderFetchRequest];
  v10 = [(AEAnnotationProvider *)self->mAnnotationProvider uiManagedObjectContext];
  v11 = [(THAnnotationController *)self p_annotationsForFetchRequest:v9 moc:v10 migrateIfNecessary:1];
  [(THAnnotationController *)self p_beginIgnoringWritability];
  [(THAnnotationController *)self p_openActionGroup];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_96FF4;
  v27[3] = &unk_45C868;
  v27[4] = a3;
  v27[5] = self;
  v27[6] = v10;
  [v11 enumerateObjectsUsingBlock:v27];
  v12 = 0.0;
  if (![(THBookDescription *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] bookDescription] isSample])
  {
    v13 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] navigationModel] pageCount];
    v14 = ([a3 absolutePhysicalPageIndex] + 1) / v13;
    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    v12 = fmaxf(v14, 0.0);
  }

  if (a3)
  {
    if ([v11 count] && (v15 = objc_msgSend(v11, "objectAtIndex:", 0)) != 0)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_97050;
      v25[3] = &unk_45C890;
      v25[4] = a3;
      v25[5] = a5;
      v26 = v12;
      v25[6] = a4;
      v25[7] = self;
      v16 = [(THAnnotationController *)self p_actionForUpdatingAnnotation:v15 withContentNode:a5 block:v25];
    }

    else
    {
      v17 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] context]];
      objc_opt_class();
      [a5 infoForNodeUniqueID:objc_msgSend(a3 forPresentationType:{"storageUID"), v17}];
      v18 = TSUDynamicCast();
      v19 = [(THAnnotationController *)self currentAnnotationStyle];
      v20 = [a3 absolutePhysicalPageIndex];
      v21 = [a3 range];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_97128;
      v23[3] = &unk_45C8B8;
      v23[4] = a4;
      v23[5] = self;
      v24 = v12;
      v16 = [(THAnnotationController *)self p_actionForInsertingAnnotationWithType:3 style:v19 absolutePageIndex:v20 range:v21 storage:v22 contentNode:v18 updateBlock:a5, v23];
    }

    [(THAnnotationController *)self p_performAction:v16 moc:v10];
  }

  [(THAnnotationController *)self p_closeActionGroupWithMoc:v10];
  [(THAnnotationController *)self p_endIgnoringWritability];
}

- (id)p_allContentNodeAnnotations
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableDictionary dictionary];
  [(THModelNode *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] rootNode] addMappingFromGUIDToNodeToDictionary:v4];
  v5 = [v4 allKeys];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(THAnnotationController *)self cachedAnnotationsForContentNode:[(THDocumentNavigationModel *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] navigationModel] contentNodeForGUID:*(*(&v12 + 1) + 8 * v8)]];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_97358;
        v11[3] = &unk_45C8E0;
        v11[4] = v3;
        [v9 enumerateAnnotationsWithBlock:v11];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(self);
  return v3;
}

- (id)annotationWithUuid:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_973E4;
  v4[3] = &unk_45C908;
  v4[4] = a3;
  return [-[THAnnotationController p_allContentNodeAnnotations](self "p_allContentNodeAnnotations")];
}

- (id)maxAnnotationAssetVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_9423C;
  v10 = sub_9424C;
  v11 = 0;
  mAnnotationProvider = self->mAnnotationProvider;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_9751C;
  v5[3] = &unk_45C818;
  v5[4] = self;
  v5[5] = &v6;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)p_sortedAssetIDVersionsWithMoc:(id)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_9423C;
  v25 = sub_9424C;
  v26 = 0;
  mAnnotationProvider = self->mAnnotationProvider;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_977A4;
  v20[3] = &unk_45C818;
  v20[4] = self;
  v20[5] = &v21;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v20];
  v4 = v22[5];
  v5 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v22[5];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v7)
  {
    v8 = *v17;
    v9 = kAEAnnotationAssetVersionKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) objectForKey:v9];
        if (v11)
        {
          v12 = [[THBookVersion alloc] initWithString:v11];
        }

        else
        {
          v12 = +[THBookVersion newUnversionedBookVersion];
        }

        v13 = v12;
        [v5 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v7);
  }

  v14 = [v5 sortedArrayUsingComparator:&stru_45C948];
  _Block_object_dispose(&v21, 8);
  return v14;
}

- (void)ensureNonSponsoredAnnotationsAreMigrated
{
  mAnnotationProvider = self->mAnnotationProvider;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_97970;
  v3[3] = &unk_45C970;
  v3[4] = self;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v3];
}

- (BOOL)p_migrateAEAnnotationIfNecessary:(id)a3 moc:(id)a4
{
  if ([(THAnnotationController *)self p_annotationNeedsMigration:?])
  {
    v7 = -[THDocumentNavigationModel contentNodeForGUID:](-[THAnnotationController documentNavModel](self, "documentNavModel"), "contentNodeForGUID:", [a3 annotationContentNodeID]);
    if (v7)
    {
      [(THAnnotationController *)self p_migrateAEAnnotation:a3 inContentNode:v7 moc:a4];
    }

    else
    {
      [(THAnnotationController *)self p_orphanAEAnnotation:a3 moc:a4];
    }
  }

  else if (![(THAnnotationController *)self p_annotationNeedsMigrationForAnnotationSchemaVersion:a3]|| ![(THAnnotationController *)self p_ensureCFIForAEAnnotation:a3 moc:a4])
  {
    v8 = [(THAnnotationController *)self p_annotationNeedsMigrationForAnnotationSchemaVersion:a3];
    if (!v8)
    {
      return v8;
    }
  }

  [(THAnnotationController *)self p_upgradeAEAnnotation:a3 moc:a4];
  if ([a3 isOrphan] && (objc_msgSend(a3, "annotationType") == 1 || objc_msgSend(a3, "annotationType") == 3))
  {
    [(THAnnotationController *)self p_performAction:[(THAnnotationController *)self p_actionForDeletingAEAnnotation:a3] moc:a4];
  }

  LOBYTE(v8) = 1;
  return v8;
}

- (void)p_migrateAEAnnotation:(id)a3 inContentNode:(id)a4 moc:(id)a5
{
  -[THAnnotationController p_infoForNodeUniqueID:inContentNode:](self, "p_infoForNodeUniqueID:inContentNode:", [a3 annotationStorageIDWithoutContentNodeID], a4);
  objc_opt_class();
  v9 = TSUDynamicCast();
  if ([a3 isPlaceholder])
  {
    [(THAnnotationController *)self p_performAction:[(THAnnotationController *)self p_actionForUpdatingAnnotation:a3 withBlock:&stru_45C9B0] moc:a5];
  }

  if (!-[THAnnotationController p_migrateAEAnnotation:withinStorage:moc:](self, "p_migrateAEAnnotation:withinStorage:moc:", a3, v9, a5) && (([a4 isBodyStorage:v9] & 1) != 0 || !-[THAnnotationController p_migrateAEAnnotation:fromStorage:toAnyNonBodyStorageInContentNode:moc:](self, "p_migrateAEAnnotation:fromStorage:toAnyNonBodyStorageInContentNode:moc:", a3, v9, a4, a5)) && !-[THAnnotationController p_migrateBookmarkOrPlaceholderAEAnnotation:inContentNode:moc:](self, "p_migrateBookmarkOrPlaceholderAEAnnotation:inContentNode:moc:", a3, a4, a5))
  {

    [(THAnnotationController *)self p_orphanAEAnnotation:a3 moc:a5];
  }
}

- (_NSRange)p_rangeOfAEAnnotation:(id)a3 inStorage:(id)a4
{
  if (a4)
  {
    v6 = [a3 annotationRepresentativeText];
    v7 = [a3 selectionPreContextText];
    v8 = [a3 selectionPostContextText];
    v9 = [a3 annotationStorageRange];

    v10 = [a4 closestMatchForString:v6 leftContext:v7 rightContext:v8 startCharIndex:v9];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0;
  }

  result.length = v11;
  result.location = v10;
  return result;
}

- (BOOL)p_migrateAEAnnotation:(id)a3 withinStorage:(id)a4 moc:(id)a5
{
  v8 = [(THAnnotationController *)self p_rangeOfAEAnnotation:a3 inStorage:a4];
  v10 = v8;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_97D64;
    v12[3] = &unk_45C9D0;
    v12[4] = v8;
    v12[5] = v9;
    [(THAnnotationController *)self p_performAction:[(THAnnotationController *)self p_actionForUpdatingAnnotation:a3 withBlock:v12] moc:a5];
  }

  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)p_migrateAEAnnotation:(id)a3 fromStorage:(id)a4 toAnyNonBodyStorageInContentNode:(id)a5 moc:(id)a6
{
  v7 = a5;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = [a5 storagesForAllPresentationTypes];
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v32 = 0;
    v33 = a3;
    v28 = a6;
    v13 = *v37;
    v30 = 0;
    v31 = 0xFFFFFFFFLL;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        v15 = TSUDynamicCast();
        if (v15)
        {
          v16 = v15 == a4;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = v15;
          if (([v7 isBodyStorage:v15] & 1) == 0)
          {
            v18 = v10;
            v19 = v7;
            v20 = [(THAnnotationController *)self p_rangeOfAEAnnotation:v33 inStorage:v17];
            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v10 = v18;
            }

            else
            {
              v22 = v20;
              v23 = v21;
              v24 = [v33 annotationStorageRange];
              v25 = v23;
              v26 = (v24 - v22);
              if (v22 >= v24)
              {
                v26 = (v22 - v24);
              }

              v7 = v19;
              v10 = v18;
              if (!v32 || v26 < v31)
              {
                v30 = v25;
                v31 = v26;
                v29 = v22;
                v32 = v17;
                if (!v26)
                {
                  goto LABEL_21;
                }
              }
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v17 = v32;
    v22 = v29;
    v25 = v30;
    if (v32)
    {
LABEL_21:
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_97FC8;
      v35[3] = &unk_45C9F8;
      v35[4] = v7;
      v35[5] = v17;
      v35[6] = v22;
      v35[7] = v25;
      [(THAnnotationController *)self p_performAction:[(THAnnotationController *)self p_actionForUpdatingAnnotation:v33 withBlock:v35] moc:v28];
      LOBYTE(v11) = 1;
      return v11;
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)p_ensureCFIForAEAnnotation:(id)a3 moc:(id)a4
{
  v7 = -[THDocumentNavigationModel contentNodeForGUID:](-[THAnnotationController documentNavModel](self, "documentNavModel"), "contentNodeForGUID:", [a3 annotationContentNodeID]);
  if (v7)
  {
    v8 = v7;
    -[THAnnotationController p_infoForNodeUniqueID:inContentNode:](self, "p_infoForNodeUniqueID:inContentNode:", [a3 annotationStorageIDWithoutContentNodeID], v7);
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_98120;
      v10[3] = &unk_45CA20;
      v10[4] = v8;
      v10[5] = v7;
      [(THAnnotationController *)self p_performAction:[(THAnnotationController *)self p_actionForUpdatingAnnotation:a3 withBlock:v10] moc:a4];
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (BOOL)p_migrateBookmarkOrPlaceholderAEAnnotation:(id)a3 inContentNode:(id)a4 moc:(id)a5
{
  if (([a3 isBookmark] & 1) != 0 || (v9 = objc_msgSend(a3, "isPlaceholder")) != 0)
  {
    v10 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] context]];
    v11 = [a3 contentNodeRelativePageIndex];
    if (v11 >= [a4 pageCountForPresentationType:v10])
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v12 = [a4 absolutePageIndexForRelativePageIndex:v11];
      v13 = [a4 pageAtRelativeIndex:v11 forPresentationType:v10];
      v14 = [v13 pageStartCharIndex];
      if ([v13 pageStartCharIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0;
      }

      else
      {
        v16 = [v13 pageEndCharIndex];
        v15 = v16 - [v13 pageStartCharIndex];
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_98324;
      v18[3] = &unk_45CA40;
      v18[4] = v12;
      v18[5] = v14;
      v18[6] = v15;
      [(THAnnotationController *)self p_performAction:[(THAnnotationController *)self p_actionForUpdatingAnnotation:a3 withBlock:v18] moc:a5];
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)p_orphanAEAnnotation:(id)a3 moc:(id)a4
{
  v6 = [(THAnnotationController *)self p_actionForUpdatingAnnotation:a3 withBlock:&stru_45CA60];

  [(THAnnotationController *)self p_performAction:v6 moc:a4];
}

- (void)p_addVersioningPropertiesAE:(id)a3
{
  [a3 setAnnotationBookVersion:{-[THBookVersion versionString](-[THDocumentProperties bookVersion](-[THDocumentRoot properties](-[THAnnotationController documentRoot](self, "documentRoot"), "properties"), "bookVersion"), "versionString")}];
  v4 = kAEAnnotationVersion_4;

  [a3 setAnnotationVersion:v4];
}

- (void)p_upgradeAEAnnotation:(id)a3 moc:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_984AC;
  v4[3] = &unk_45CA88;
  v4[4] = self;
  [(THAnnotationController *)self p_performAction:[(THAnnotationController *)self p_actionForUpdatingAnnotation:a3 withBlock:v4] moc:a4];
}

- (id)p_infoForNodeUniqueID:(id)a3 inContentNode:(id)a4
{
  v6 = [(THDocumentRoot *)[(THAnnotationController *)self documentRoot] context];
  if (!a4)
  {
    return 0;
  }

  v7 = v6;
  result = [a4 infoForNodeUniqueID:a3 forPresentationType:{+[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", v6)}];
  if (!result)
  {
    v9 = [THPresentationType flowPresentationTypeInContext:v7];

    return [a4 infoForNodeUniqueID:a3 forPresentationType:v9];
  }

  return result;
}

- (void)p_registerAnnotationObserver:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    objc_sync_enter(self);
    v7 = [(TSURetainedPointerKeyDictionary *)self->mObservers objectForKey:a4];
    if (!v7)
    {
      v7 = +[TSUMutablePointerSet set];
      [(TSURetainedPointerKeyDictionary *)self->mObservers setObject:v7 forUncopiedKey:a4];
    }

    [v7 addObject:a3];

    objc_sync_exit(self);
  }
}

- (void)registerAnnotationObserver:(id)a3 forContentNode:(id)a4
{
  v6 = [(THAnnotationController *)self p_keyForContentNode:a4];

  [(THAnnotationController *)self p_registerAnnotationObserver:a3 forKey:v6];
}

- (void)p_unregisterAnnotationObserver:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    objc_sync_enter(self);
    v7 = [(TSURetainedPointerKeyDictionary *)self->mObservers objectForKey:a4];
    [v7 removeObject:a3];
    if (![v7 count])
    {
      [(TSURetainedPointerKeyDictionary *)self->mObservers removeObjectForKey:a4];
    }

    objc_sync_exit(self);
  }
}

- (void)unregisterAnnotationObserver:(id)a3 forContentNode:(id)a4
{
  v6 = [(THAnnotationController *)self p_keyForContentNode:a4];

  [(THAnnotationController *)self p_unregisterAnnotationObserver:a3 forKey:v6];
}

- (id)p_cachedAnnotationsForContentNode:(id)a3 moc:(id)a4
{
  v7 = [(THAnnotationController *)self p_keyForContentNode:?];
  objc_sync_enter(self);
  v8 = [(NSMutableDictionary *)self->mCachedAnnotations objectForKey:v7];
  objc_sync_exit(self);
  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [-[THAnnotationController p_annotationsForContentNode:moc:](self p_annotationsForContentNode:a3 moc:{a4), "allValues", 0}];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [[THCachedAnnotation alloc] initWithAnnotation:*(*(&v15 + 1) + 8 * v12) contentNode:a3];
          [v8 setObject:v13 forKey:{-[THCachedAnnotation annotationUuid](v13, "annotationUuid")}];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    objc_sync_enter(self);
    [(NSMutableDictionary *)self->mCachedAnnotations setObject:v8 forKey:v7];
    objc_sync_exit(self);
  }

  return v8;
}

- (id)p_annotationsForContentNode:(id)a3 moc:(id)a4
{
  v7 = [(THAnnotationController *)self p_keyForContentNode:?];
  objc_sync_enter(self);
  v8 = [(NSMutableDictionary *)self->mAEAnnotationManagedObjectIDs objectForKey:v7];
  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
    if (a3)
    {
      v9 = [(THAnnotationController *)self p_annotationsForFetchRequest:[(THAnnotationController *)self p_annotationRequestForContentNode:a3] moc:a4 migrateIfNecessary:1];
      v22 = v7;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v10)
      {
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [v8 setObject:objc_msgSend(*(*(&v31 + 1) + 8 * i) forKey:{"objectID"), objc_msgSend(*(*(&v31 + 1) + 8 * i), "annotationUuid")}];
          }

          v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v10);
      }

      v7 = v22;
      v13 = [(THAnnotationController *)self p_annotationsForFetchRequest:[(THAnnotationController *)self p_bookmarkRequestForContentNode:a3] moc:a4 migrateIfNecessary:1];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v14)
      {
        v15 = *v28;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [v8 setObject:objc_msgSend(*(*(&v27 + 1) + 8 * j) forKey:{"objectID"), objc_msgSend(*(*(&v27 + 1) + 8 * j), "annotationUuid")}];
          }

          v14 = [v13 countByEnumeratingWithState:&v27 objects:v36 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v17 = [(THAnnotationController *)self p_annotationsForFetchRequest:[(THAnnotationController *)self p_nonSponsoredAnnotationRequest] moc:a4 migrateIfNecessary:1];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
      if (v18)
      {
        v19 = *v24;
        do
        {
          for (k = 0; k != v18; k = k + 1)
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(v17);
            }

            [v8 setObject:objc_msgSend(*(*(&v23 + 1) + 8 * k) forKey:{"objectID"), objc_msgSend(*(*(&v23 + 1) + 8 * k), "annotationUuid")}];
          }

          v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
        }

        while (v18);
      }
    }

    [(NSMutableDictionary *)self->mAEAnnotationManagedObjectIDs setObject:v8 forKey:v7];
  }

  objc_sync_exit(self);
  return [(THAnnotationController *)self p_annotationsForManagedObjectIDs:v8 moc:a4];
}

- (id)p_annotationsForManagedObjectIDs:(id)a3 moc:(id)a4
{
  v7 = +[NSMutableDictionary dictionary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_98D24;
  v9[3] = &unk_45CAB0;
  v9[4] = a4;
  v9[5] = self;
  v9[6] = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
  return v7;
}

- (id)p_cachedBookmarksWithMoc:(id)a3
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->mCachedAnnotations objectForKey:@"THMacAnnotationAllBookmarks"];
  objc_sync_exit(self);
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [-[THAnnotationController p_bookmarksWithMOC:](self p_bookmarksWithMOC:{a3), "allValues", 0}];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = -[THCachedAnnotation initWithAnnotation:contentNode:]([THCachedAnnotation alloc], "initWithAnnotation:contentNode:", *(*(&v12 + 1) + 8 * v9), -[THDocumentNavigationModel contentNodeForGUID:](-[THAnnotationController documentNavModel](self, "documentNavModel"), "contentNodeForGUID:", [*(*(&v12 + 1) + 8 * v9) annotationContentNodeID]));
          [v5 setObject:v10 forKey:{-[THCachedAnnotation annotationUuid](v10, "annotationUuid")}];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    objc_sync_enter(self);
    [(NSMutableDictionary *)self->mCachedAnnotations setObject:v5 forKey:@"THMacAnnotationAllBookmarks"];
    objc_sync_exit(self);
  }

  return v5;
}

- (id)p_bookmarksWithMOC:(id)a3
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->mAEAnnotationManagedObjectIDs objectForKey:@"THMacAnnotationAllBookmarks"];
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = [(THAnnotationController *)self p_annotationsForFetchRequest:[(THAnnotationController *)self p_allBookmarksFetchRequest] moc:a3 migrateIfNecessary:1];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [v5 setObject:objc_msgSend(*(*(&v11 + 1) + 8 * v9) forKey:{"objectID"), objc_msgSend(*(*(&v11 + 1) + 8 * v9), "annotationUuid")}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)self->mAEAnnotationManagedObjectIDs setObject:v5 forKey:@"THMacAnnotationAllBookmarks"];
  }

  objc_sync_exit(self);
  return [(THAnnotationController *)self p_annotationsForManagedObjectIDs:v5 moc:a3];
}

- (id)p_annotationForCachedAnnotation:(id)a3 moc:(id)a4
{
  v5 = [(THAnnotationController *)self p_annotationsForContentNode:[(THAnnotationController *)self p_contentNodeForCachedAnnotation:?] moc:a4];
  v6 = [a3 annotationUuid];

  return [v5 objectForKey:v6];
}

- (id)p_contentNodeForCachedAnnotation:(id)a3
{
  objc_opt_class();
  result = [TSUDynamicCast() contentNode];
  if (!result)
  {
    v6 = [(THAnnotationController *)self documentNavModel];
    v7 = [a3 annotationContentNodeID];

    return [(THDocumentNavigationModel *)v6 contentNodeForGUID:v7];
  }

  return result;
}

- (id)p_extendExistingAnnotationForRange:(_NSRange)a3 storage:(id)a4 contentNode:(id)a5 style:(int)a6 moc:(id)a7
{
  length = a3.length;
  location = a3.location;
  objc_sync_enter(self);
  v13 = [a5 annotationIDForInfo:a4];
  v14 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  v31 = a7;
  v15 = [-[THAnnotationController p_annotationsForContentNode:moc:](self p_annotationsForContentNode:a5 moc:{a7), "allValues"}];
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v16)
  {
    v17 = *v41;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        if ([objc_msgSend(v19 "plStorageUUID")])
        {
          v46.location = [v19 annotationStorageRange];
          v48.location = location;
          v48.length = length;
          if (NSIntersectionRange(v46, v48).length)
          {
            [v14 addObject:v19];
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v16);
  }

  v20 = [THAnnotationCache annotationsOrderedForVisualStacking:v14];

  if (a6 != 6 || (v21 = [v20 lastObject]) == 0)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = [v20 reverseObjectEnumerator];
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (!v23)
    {
LABEL_31:
      v26 = 0;
      goto LABEL_32;
    }

    v24 = *v37;
LABEL_15:
    v25 = 0;
    while (1)
    {
      if (*v37 != v24)
      {
        objc_enumerationMutation(v22);
      }

      v21 = *(*(&v36 + 1) + 8 * v25);
      if (([v21 annotationIsUnderline] & 1) == 0)
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
        v26 = 0;
        if (v23)
        {
          goto LABEL_15;
        }

        goto LABEL_32;
      }
    }

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  v49.location = [v21 annotationStorageRange];
  v49.length = v27;
  v47.location = location;
  v47.length = length;
  v28 = NSUnionRange(v47, v49);
  if ([v21 annotationStyle] == a6 || (v26 = 0, a6 != 6) && (location == v28.location ? (v29 = length == v28.length) : (v29 = 0), v29))
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_99688;
    v33[3] = &unk_45CAD0;
    v34 = v28;
    v35 = a6;
    [(THAnnotationController *)self p_performUndoableAction:[(THAnnotationController *)self p_actionForUpdatingAnnotation:v21 withBlock:v33] moc:v31];
    v26 = v21;
  }

LABEL_32:
  objc_sync_exit(self);
  return v26;
}

- (id)addAnnotationForStorage:(id)a3 range:(_NSRange)a4 contentNode:(id)a5 style:(int)a6 undoContext:(id)a7
{
  length = a4.length;
  location = a4.location;
  if (![(THAnnotationController *)self canModifyAnnotations])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_9423C;
  v23 = sub_9424C;
  v24 = 0;
  mAnnotationProvider = self->mAnnotationProvider;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_9986C;
  v17[3] = &unk_45CB20;
  v17[4] = a7;
  v17[5] = a5;
  v17[9] = location;
  v17[10] = length;
  v17[6] = a3;
  v17[7] = self;
  v18 = a6;
  v17[8] = &v19;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v17];
  v15 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v15;
}

- (void)destroyAnnotations:(id)a3 undoContext:(id)a4
{
  v7 = [a3 count];
  if (v7)
  {
    v8 = v7;
    if (![(THAnnotationController *)self canModifyAnnotations])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v9 = [a3 objectAtIndex:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(a3);
          }

          if ([*(*(&v24 + 1) + 8 * i) annotationNote])
          {
            if (v12)
            {
              v12 = 2;
              goto LABEL_17;
            }

            v12 = 1;
          }
        }

        v11 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_17:
    v15 = [NSMutableDictionary dictionaryWithDictionary:a4];
    v16 = [(THDocumentRoot *)[(THAnnotationController *)self documentRoot] modelStorageAnchorForAnnotation:v9];
    if (v16)
    {
      [(NSMutableDictionary *)v15 setObject:v16 forKey:@"THAnnotationStorageAnchorUndoContextKey"];
    }

    v17 = THBundle();
    v18 = @"Remove Highlights";
    if (v8 == &dword_0 + 1)
    {
      v18 = @"Remove Highlight";
      v19 = @"Remove Highlight and Notes";
    }

    else
    {
      v19 = @"Remove Highlights and Notes";
    }

    v20 = @"Remove Highlights and Note";
    if (v8 == &dword_0 + 1)
    {
      v20 = @"Remove Highlight and Note";
    }

    if (v12 == 1)
    {
      v19 = v20;
    }

    if (v12)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    -[THAnnotationController p_openUndoGroupWithContext:actionName:](self, "p_openUndoGroupWithContext:actionName:", v15, [v17 localizedStringForKey:v21 value:&stru_471858 table:0]);
    mAnnotationProvider = self->mAnnotationProvider;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_99CF8;
    v23[3] = &unk_45C780;
    v23[4] = a3;
    v23[5] = self;
    [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v23];
    [(THAnnotationController *)self p_closeUndoGroup];
  }
}

- (void)destroyAnnotation:(id)a3 undoContext:(id)a4
{
  if (a3)
  {
    v6 = [NSArray arrayWithObject:?];

    [(THAnnotationController *)self destroyAnnotations:v6 undoContext:a4];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }
}

- (id)modifyAnnotation:(id)a3 undoContext:(id)a4 undoActionName:(id)a5 withBlock:(id)a6
{
  if (![(THAnnotationController *)self canModifyAnnotations])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([a3 annotationType] != 2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v11 = [NSMutableDictionary dictionaryWithDictionary:a4];
  v12 = [(THDocumentRoot *)[(THAnnotationController *)self documentRoot] modelStorageAnchorForAnnotation:a3];
  if (v12)
  {
    [(NSMutableDictionary *)v11 setObject:v12 forKey:@"THAnnotationStorageAnchorUndoContextKey"];
  }

  [(THAnnotationController *)self p_openUndoGroupWithContext:v11 actionName:a5];
  v13 = [(THAnnotationController *)self p_contentNodeForCachedAnnotation:a3];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_9423C;
  v22 = sub_9424C;
  v23 = 0;
  mAnnotationProvider = self->mAnnotationProvider;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_9A18C;
  v17[3] = &unk_45CB70;
  v17[4] = self;
  v17[5] = a3;
  v17[6] = v13;
  v17[7] = a6;
  v17[8] = &v18;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v17];
  [(THAnnotationController *)self p_closeUndoGroup];
  v15 = v19[5];
  _Block_object_dispose(&v18, 8);
  return v15;
}

- (id)modifyAnnotation:(id)a3 withNoteText:(id)a4 undoContext:(id)a5
{
  v7 = a3;
  v9 = [a3 annotationNote];
  v10 = [v9 length];
  v11 = [a4 length];
  if (v10 | v11)
  {
    v12 = v11;
    if (([a4 isEqualToString:v9] & 1) == 0)
    {
      if (v12)
      {
        v13 = THBundle();
        if (v10)
        {
          v14 = @"Edit Note";
        }

        else
        {
          v14 = @"Add Note";
        }
      }

      else
      {
        v13 = THBundle();
        v14 = @"Remove Note";
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_9A480;
      v16[3] = &unk_45CB98;
      v16[4] = a4;
      return -[THAnnotationController modifyAnnotation:undoContext:undoActionName:withBlock:](self, "modifyAnnotation:undoContext:undoActionName:withBlock:", v7, a5, [v13 localizedStringForKey:v14 value:&stru_471858 table:0], v16);
    }
  }

  return v7;
}

- (id)modifyAnnotation:(id)a3 withStyle:(int)a4 undoContext:(id)a5
{
  v7 = a3;
  if ([a3 annotationStyle] != a4)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_9A55C;
    v10[3] = &unk_45CBB8;
    v11 = a4;
    return -[THAnnotationController modifyAnnotation:undoContext:undoActionName:withBlock:](self, "modifyAnnotation:undoContext:undoActionName:withBlock:", v7, a5, [THBundle() localizedStringForKey:@"Edit Highlight" value:&stru_471858 table:0], v10);
  }

  return v7;
}

- (id)cachedAnnotationsForContentNode:(id)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_9423C;
  v17 = sub_9424C;
  v18 = 0;
  v5 = [(THAnnotationController *)self p_keyForContentNode:?];
  objc_sync_enter(self);
  v6 = [(NSMutableDictionary *)self->mAnnotationCache objectForKey:v5];
  v14[5] = v6;
  objc_sync_exit(self);
  if (!v14[5])
  {
    mAnnotationProvider = self->mAnnotationProvider;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_9A730;
    v12[3] = &unk_45CBE0;
    v12[5] = a3;
    v12[6] = &v13;
    v12[4] = self;
    [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v12];
    if (v14[5])
    {
      objc_sync_enter(self);
      [(NSMutableDictionary *)self->mAnnotationCache setObject:v14[5] forKey:v5];
      objc_sync_exit(self);
    }

    else
    {
      v8 = _AEBookPluginsAnnotationsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Dropping annotation cache result because annotation provider was nil.", v11, 2u);
      }
    }
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v9;
}

- (unint64_t)nonOrphanedAnnotationCount
{
  v2 = [(THAnnotationController *)self cachedAnnotationsForFetchRequest:[(THAnnotationController *)self annotationRequestForNonOrphanedNotes] migrateIfNecessary:0];

  return [v2 count];
}

- (id)modifiedAnnotation:(id)a3 withChapterTitle:(id)a4 physicalPageNumber:(id)a5
{
  objc_opt_class();
  v7 = TSUDynamicCast();

  return [v7 annotationWithChapterTitle:a4 physicalPageNumber:a5];
}

- (id)temporaryAnnotationForStorage:(id)a3 contentNode:(id)a4 withRange:(_NSRange)a5 style:(int)a6 chapterTitle:(id)a7
{
  v7 = [[THCachedAnnotation alloc] initTemporaryWithStorage:a3 range:a5.location contentNode:a5.length style:a4 chapterTitle:*&a6, a7];

  return v7;
}

- (id)cachedAnnotationForFetchedObject:(id)a3
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v4 = [[THCachedAnnotation alloc] initWithAnnotation:result contentNode:0];

    return v4;
  }

  return result;
}

- (id)cachedAnnotationsForFetchRequest:(id)a3 migrateIfNecessary:(BOOL)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_9423C;
  v13 = sub_9424C;
  v14 = 0;
  mAnnotationProvider = self->mAnnotationProvider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9AA24;
  v7[3] = &unk_45CC08;
  v7[5] = a3;
  v7[6] = &v9;
  v7[4] = self;
  v8 = a4;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v7];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (BOOL)p_annotationsNeedsMigration:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        if ([(THAnnotationController *)self p_cachedAnnotationNeedsMigration:*(*(&v10 + 1) + 8 * v8)])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (id)cachedAnnotationsForAnnotations:(id)a3 withFilter:(id)a4
{
  v4 = a3;
  if (a4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_9AD54;
    v7[3] = &unk_45CC30;
    v7[4] = a4;
    v4 = [a3 tsu_arrayOfObjectsPassingTest:v7];
  }

  return [[THAnnotationCache alloc] initWithAnnotations:v4 contentNode:0 needsMigration:[(THAnnotationController *)self p_annotationsNeedsMigration:v4]];
}

- (id)cachedAnnotationsForAnnotations:(id)a3 filteredWithContentNode:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_9AE40;
  v9[3] = &unk_45CC58;
  v9[4] = [a4 nodeGUID];
  v7 = [a3 tsu_arrayOfObjectsPassingTest:v9];
  return [[THAnnotationCache alloc] initWithAnnotations:v7 contentNode:a4 needsMigration:[(THAnnotationController *)self p_annotationsNeedsMigration:v7]];
}

- (void)registerWithUndoManager:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mUndoManager)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mUndoManager = a3;
}

- (void)unregisterWithUndoManager:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mUndoManager != a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THAnnotationController *)self p_clearUndoStack];

  self->mUndoManager = 0;
}

- (void)registerAnnotationUndoObserver:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(TSUMutablePointerSet *)self->mUndoObservers containsObject:a3])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3)
  {
    mUndoObservers = self->mUndoObservers;
    if (!mUndoObservers)
    {
      mUndoObservers = objc_alloc_init(TSUMutablePointerSet);
      self->mUndoObservers = mUndoObservers;
    }

    [(TSUMutablePointerSet *)mUndoObservers addObject:a3];
  }
}

- (void)unregisterAnnotationUndoObserver:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (([(TSUMutablePointerSet *)self->mUndoObservers containsObject:a3]& 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3)
  {
    [(TSUMutablePointerSet *)self->mUndoObservers removeObject:a3];
    if (![(TSUMutablePointerSet *)self->mUndoObservers count])
    {

      self->mUndoObservers = 0;
    }
  }
}

- (void)p_performUndoableAction:(id)a3 moc:(id)a4
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THAnnotationController *)self p_performAction:a3 undoable:1 moc:a4];
}

- (void)p_performAction:(id)a3 undoable:(BOOL)a4 moc:(id)a5
{
  v6 = a4;
  if ([(THAnnotationController *)self annotationsWriteEnabled]|| self->mIgnoringWritability)
  {
    mCurrentChangeList = self->mCurrentChangeList;
    if (!mCurrentChangeList)
    {
      [(THAnnotationController *)self p_openActionGroup];
    }

    objc_sync_enter(self);
    [a3 commitWithChangeList:self->mCurrentChangeList annotationHost:self moc:a5];
    objc_sync_exit(self);
    if (v6)
    {
      [(THAnnotationUndoGroup *)self->mCurrentUndoGroup addAction:a3];
    }

    if (!mCurrentChangeList)
    {

      [(THAnnotationController *)self p_closeActionGroupWithMoc:a5];
    }
  }
}

- (void)p_openActionGroup
{
  mCurrentChangeGroupDepth = self->mCurrentChangeGroupDepth;
  if (!mCurrentChangeGroupDepth)
  {
    if (self->mCurrentChangeList)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    self->mCurrentChangeList = objc_alloc_init(THAnnotationChangeList);
    mCurrentChangeGroupDepth = self->mCurrentChangeGroupDepth;
  }

  self->mCurrentChangeGroupDepth = mCurrentChangeGroupDepth + 1;
}

- (void)p_closeActionGroupWithMoc:(id)a3
{
  mCurrentChangeGroupDepth = self->mCurrentChangeGroupDepth;
  if (mCurrentChangeGroupDepth)
  {
    v5 = mCurrentChangeGroupDepth - 1;
    self->mCurrentChangeGroupDepth = v5;
    if (!v5)
    {
      if (!self->mCurrentChangeList)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      objc_sync_enter(self);
      [(THAnnotationController *)self p_processChangeList:self->mCurrentChangeList moc:a3];
      objc_sync_exit(self);

      self->mCurrentChangeList = 0;
    }
  }

  else
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[THAnnotationController p_closeActionGroupWithMoc:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THAnnotationController.m"];

    [v7 handleFailureInFunction:v8 file:v9 lineNumber:2683 description:@"imbalanced calls to p_open/closeActionGroup"];
  }
}

- (void)p_beginIgnoringWritability
{
  if (self->mIgnoringWritability)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mIgnoringWritability = 1;
}

- (void)p_endIgnoringWritability
{
  if (!self->mIgnoringWritability)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mIgnoringWritability = 0;
}

- (void)p_openUndoGroupWithContext:(id)a3 actionName:(id)a4
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mCurrentUndoGroup)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = objc_alloc_init(THAnnotationUndoGroup);
  self->mCurrentUndoGroup = v7;
  [(THAnnotationUndoGroup *)v7 setContext:a3];
  if (a4)
  {
    mUndoManager = self->mUndoManager;

    [(NSUndoManager *)mUndoManager setActionName:a4];
  }
}

- (void)p_closeUndoGroup
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  mCurrentUndoGroup = self->mCurrentUndoGroup;
  if (!mCurrentUndoGroup)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mCurrentUndoGroup = self->mCurrentUndoGroup;
  }

  if ([(THAnnotationUndoGroup *)mCurrentUndoGroup hasActions])
  {
    [(NSUndoManager *)self->mUndoManager registerUndoWithTarget:self selector:"p_undoWithUndoGroup:" object:self->mCurrentUndoGroup];
  }

  self->mCurrentUndoGroup = 0;
}

- (void)p_undoWithUndoGroup:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (([a3 hasActions] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  mUndoObservers = self->mUndoObservers;
  v6 = [(TSUMutablePointerSet *)mUndoObservers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(mUndoObservers);
        }

        [*(*(&v19 + 1) + 8 * i) annotationsWillUpdateWithUndoContext:{objc_msgSend(a3, "context")}];
      }

      v6 = [(TSUMutablePointerSet *)mUndoObservers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  objc_sync_enter(self);
  mAnnotationProvider = self->mAnnotationProvider;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_9BD68;
  v18[3] = &unk_45C780;
  v18[4] = a3;
  v18[5] = self;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v18];
  objc_sync_exit(self);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->mUndoObservers;
  v11 = [(TSUMutablePointerSet *)v10 countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v14 + 1) + 8 * j) annotationsDidUpdateWithUndoContext:{objc_msgSend(a3, "context")}];
      }

      v11 = [(TSUMutablePointerSet *)v10 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v11);
  }

  [(NSUndoManager *)self->mUndoManager registerUndoWithTarget:self selector:"p_redoWithUndoGroup:" object:a3];
}

- (void)p_redoWithUndoGroup:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (([a3 hasActions] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  mUndoObservers = self->mUndoObservers;
  v6 = [(TSUMutablePointerSet *)mUndoObservers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(mUndoObservers);
        }

        [*(*(&v19 + 1) + 8 * i) annotationsWillUpdateWithUndoContext:{objc_msgSend(a3, "context")}];
      }

      v6 = [(TSUMutablePointerSet *)mUndoObservers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  objc_sync_enter(self);
  mAnnotationProvider = self->mAnnotationProvider;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_9C0A4;
  v18[3] = &unk_45C780;
  v18[4] = a3;
  v18[5] = self;
  [(AEAnnotationProvider *)mAnnotationProvider performBlockOnUserSideQueueAndWait:v18];
  objc_sync_exit(self);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->mUndoObservers;
  v11 = [(TSUMutablePointerSet *)v10 countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v14 + 1) + 8 * j) annotationsDidUpdateWithUndoContext:{objc_msgSend(a3, "context")}];
      }

      v11 = [(TSUMutablePointerSet *)v10 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v11);
  }

  [(NSUndoManager *)self->mUndoManager registerUndoWithTarget:self selector:"p_undoWithUndoGroup:" object:a3];
}

- (void)p_processChangeList:(id)a3 moc:(id)a4
{
  v4 = a3;
  if (([a3 isEmpty] & 1) == 0)
  {
    v58 = +[NSMutableSet set];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = [v4 changedContentNodeIDs];
    v61 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
    if (v61)
    {
      v68 = 0;
      v56 = 0;
      v59 = *v96;
      v65 = v4;
      do
      {
        for (i = 0; i != v61; i = i + 1)
        {
          if (*v96 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v95 + 1) + 8 * i);
          v8 = objc_autoreleasePoolPush();
          v9 = [(THDocumentNavigationModel *)[(THAnnotationController *)self documentNavModel] contentNodeForGUID:v7];
          v10 = [(THAnnotationController *)self p_keyForContentNode:v9];
          if (v10)
          {
            v11 = v10;
            v67 = v9;
            v62 = v8;
            v63 = i;
            v12 = [(NSMutableDictionary *)self->mAEAnnotationManagedObjectIDs objectForKey:v10];
            v69 = [(NSMutableDictionary *)self->mCachedAnnotations objectForKey:v11];
            v60 = v11;
            v13 = [(NSMutableDictionary *)self->mAnnotationCache objectForKey:v11];
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v64 = v7;
            v66 = [v4 addedAnnotationUUIDsForContentNodeID:v7];
            v14 = [v66 countByEnumeratingWithState:&v91 objects:v104 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v92;
              v17 = v13;
              v18 = v13;
              do
              {
                for (j = 0; j != v15; j = j + 1)
                {
                  if (*v92 != v16)
                  {
                    objc_enumerationMutation(v66);
                  }

                  v20 = *(*(&v91 + 1) + 8 * j);
                  v21 = [(THAnnotationController *)self p_storageAnnotationForUUID:v20 includeDeleted:0 moc:a4];
                  if (v21)
                  {
                    v22 = v21;
                    if (([v21 isPlaceholder] & 1) == 0)
                    {
                      v23 = [[THCachedAnnotation alloc] initWithAnnotation:v22 contentNode:v67];
                      [v12 setObject:objc_msgSend(v22 forKey:{"objectID"), v20}];
                      [v69 setObject:v23 forKey:v20];
                      v18 = [v18 newAnnotationCacheWithUpdatedAnnotation:v23];
                      if ([(THCachedAnnotation *)v23 annotationIsBookmark])
                      {
                        [-[NSMutableDictionary objectForKey:](self->mCachedAnnotations objectForKey:{@"THMacAnnotationAllBookmarks", "setObject:forKey:", v23, v20}];
                        v68 = 1;
                      }
                    }
                  }
                }

                v15 = [v66 countByEnumeratingWithState:&v91 objects:v104 count:16];
              }

              while (v15);
            }

            else
            {
              v17 = v13;
              v18 = v13;
            }

            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v24 = [v65 deletedAnnotationUUIDsForContentNodeID:v64];
            v25 = [v24 countByEnumeratingWithState:&v87 objects:v103 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v88;
              do
              {
                for (k = 0; k != v26; k = k + 1)
                {
                  if (*v88 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v87 + 1) + 8 * k);
                  [v12 removeObjectForKey:v29];
                  [v69 removeObjectForKey:v29];
                  v30 = [v17 annotationWithUUID:v29];
                  if (v30)
                  {
                    v18 = [v18 newAnnotationCacheWithRemovedAnnotation:v30];
                  }

                  if ([v30 annotationIsBookmark])
                  {
                    [-[NSMutableDictionary objectForKey:](self->mCachedAnnotations objectForKey:{@"THMacAnnotationAllBookmarks", "removeObjectForKey:", objc_msgSend(v30, "annotationUuid")}];
                    v68 = 1;
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v87 objects:v103 count:16];
              }

              while (v26);
            }

            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v31 = [v65 changedAnnotationUUIDsForContentNodeID:v64];
            v32 = [v31 countByEnumeratingWithState:&v83 objects:v102 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v84;
              do
              {
                for (m = 0; m != v33; m = m + 1)
                {
                  if (*v84 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = *(*(&v83 + 1) + 8 * m);
                  v37 = [(THAnnotationController *)self p_storageAnnotationForUUID:v36 includeDeleted:0 moc:a4];
                  if (v37)
                  {
                    v38 = v37;
                    if (([v37 isPlaceholder] & 1) == 0)
                    {
                      v39 = [[THCachedAnnotation alloc] initWithAnnotation:v38 contentNode:v67];
                      [v69 setObject:v39 forKey:v36];
                      v18 = [v18 newAnnotationCacheWithUpdatedAnnotation:v39];
                      if ([(THCachedAnnotation *)v39 annotationIsBookmark])
                      {
                        [-[NSMutableDictionary objectForKey:](self->mCachedAnnotations objectForKey:{@"THMacAnnotationAllBookmarks", "setObject:forKey:", v39, v36}];
                        v68 = 1;
                      }
                    }
                  }

                  else
                  {
                    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
                  }
                }

                v33 = [v31 countByEnumeratingWithState:&v83 objects:v102 count:16];
              }

              while (v33);
            }

            if (v18)
            {
              [(NSMutableDictionary *)self->mAnnotationCache setObject:v18 forKey:v60];
            }

            v8 = v62;
            i = v63;
            if (v67)
            {
              [v58 addObject:?];
            }

            else
            {
              v56 = 1;
            }

            v4 = v65;
          }

          else
          {
            [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
          }

          objc_autoreleasePoolPop(v8);
        }

        v61 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
      }

      while (v61);
      if (v68)
      {
        [(NSMutableDictionary *)self->mAnnotationCache removeObjectForKey:@"THMacAnnotationAllBookmarks"];
      }
    }

    else
    {
      v56 = 0;
    }

    [(THAnnotationController *)self p_commitChangesWithMoc:a4];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v40 = [v58 countByEnumeratingWithState:&v79 objects:v101 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v80;
      do
      {
        for (n = 0; n != v41; n = n + 1)
        {
          if (*v80 != v42)
          {
            objc_enumerationMutation(v58);
          }

          v44 = *(*(&v79 + 1) + 8 * n);
          v45 = [(THAnnotationController *)self p_keyForContentNode:v44];
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v46 = [(TSURetainedPointerKeyDictionary *)self->mObservers objectForKey:v45];
          v47 = [v46 countByEnumeratingWithState:&v75 objects:v100 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v76;
            do
            {
              for (ii = 0; ii != v48; ii = ii + 1)
              {
                if (*v76 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                [*(*(&v75 + 1) + 8 * ii) annotationsUpdatedForContentNode:v44];
              }

              v48 = [v46 countByEnumeratingWithState:&v75 objects:v100 count:16];
            }

            while (v48);
          }
        }

        v41 = [v58 countByEnumeratingWithState:&v79 objects:v101 count:16];
      }

      while (v41);
    }

    if (v56)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v51 = [(TSURetainedPointerKeyDictionary *)self->mObservers objectForKey:@"THMacAnnotationLostOrphans"];
      v52 = [v51 countByEnumeratingWithState:&v71 objects:v99 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v72;
        do
        {
          for (jj = 0; jj != v53; jj = jj + 1)
          {
            if (*v72 != v54)
            {
              objc_enumerationMutation(v51);
            }

            [*(*(&v71 + 1) + 8 * jj) annotationsUpdatedForContentNode:0];
          }

          v53 = [v51 countByEnumeratingWithState:&v71 objects:v99 count:16];
        }

        while (v53);
      }
    }
  }
}

- (id)p_actionForInsertingAnnotationWithType:(int)a3 style:(int)a4 absolutePageIndex:(unint64_t)a5 range:(_NSRange)a6 storage:(id)a7 contentNode:(id)a8 updateBlock:(id)a9
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_9C9F0;
  v16[3] = &unk_45CC80;
  v18 = a4;
  v19 = a3;
  v16[4] = a8;
  v16[5] = a7;
  v17 = a6;
  v16[6] = a9;
  v16[7] = a5;
  v11 = [THInsertAnnotationAction alloc];
  v12 = kAEAnnotationVersion_4;
  v13 = [(THBookVersion *)[(THDocumentProperties *)[(THDocumentRoot *)[(THAnnotationController *)self documentRoot] properties] bookVersion] versionString];
  v14 = [(THAnnotationController *)self annotationID];
  return [(THInsertAnnotationAction *)v11 initWithVersion:v12 bookVersion:v13 assetID:v14 creatorID:kAEAnnotationCreatorIdentifier_iBooks_textbooks contentNode:a8 storage:a7 updateBlock:v16];
}

- (id)p_actionForUpdatingAnnotation:(id)a3 withContentNode:(id)a4 block:(id)a5
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_9CC38;
  v9[3] = &unk_45CB48;
  v9[4] = a5;
  return [[THUpdateAnnotationAction alloc] initWithAnnotation:a3 contentNode:a4 updateBlock:v9];
}

- (id)p_actionForUpdatingAnnotation:(id)a3 withBlock:(id)a4
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = -[THDocumentNavigationModel contentNodeForGUID:](-[THAnnotationController documentNavModel](self, "documentNavModel"), "contentNodeForGUID:", [a3 annotationContentNodeID]);

  return [(THAnnotationController *)self p_actionForUpdatingAnnotation:a3 withContentNode:v7 block:a4];
}

- (id)p_actionForDeletingCachedAnnotation:(id)a3 moc:(id)a4
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = [(THAnnotationController *)self p_annotationForCachedAnnotation:a3 moc:a4];

  return [(THAnnotationController *)self p_actionForDeletingAEAnnotation:v7];
}

- (id)p_actionForDeletingAEAnnotation:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v4 = _AEBookPluginsAnnotationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = [a3 annotationAssetID];
    v8 = 2112;
    v9 = [a3 annotationUuid];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "delete bliss annotation: assetID: %@, uuid: %@", buf, 0x16u);
  }

  return [[THDeleteAnnotationAction alloc] initWithAnnotation:a3];
}

- (void)p_clearUndoStack
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  mUndoManager = self->mUndoManager;

  [(NSUndoManager *)mUndoManager removeAllActionsWithTarget:self];
}

@end