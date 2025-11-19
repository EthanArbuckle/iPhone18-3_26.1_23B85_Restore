@interface NSFetchedResultsController
+ (uint64_t)_CoreDataSectionCachesPath;
+ (uint64_t)_insertIndexForObject:(void *)a3 inArray:(uint64_t)a4 lowIdx:(uint64_t)a5 highIdx:(void *)a6 sortDescriptors:;
+ (void)deleteCacheWithName:(NSString *)name;
- (BOOL)_computeSectionInfo:(id *)a3 error:;
- (BOOL)_updateFetchedObjectsWithInsertChange:(uint64_t)a1;
- (BOOL)performFetch:(NSError *)error;
- (NSArray)fetchedObjects;
- (NSArray)sectionIndexTitles;
- (NSArray)sections;
- (NSFetchedResultsController)initWithFetchRequest:(NSFetchRequest *)fetchRequest managedObjectContext:(NSManagedObjectContext *)context sectionNameKeyPath:(NSString *)sectionNameKeyPath cacheName:(NSString *)name;
- (NSIndexPath)indexPathForObject:(id)object;
- (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex;
- (NSString)sectionIndexTitleForSectionName:(NSString *)sectionName;
- (__CFString)_sectionNameForObject:(__CFString *)result;
- (id)_sectionCachePath;
- (id)delegate;
- (id)objectAtIndexPath:(NSIndexPath *)indexPath;
- (uint64_t)_appendAffectedStoreInfoToData:(void *)a3 adjustedOffset:;
- (uint64_t)_conditionallyDispatchSnapshotToDelegate:(void *)a3 updatesInfo:;
- (uint64_t)_core_managedObjectContextDidChange:(uint64_t)result;
- (uint64_t)_fetchedObjectsArrayOfObjectIDs;
- (uint64_t)_indexPathForIndex:(void *)a1;
- (uint64_t)_keyPathContainsNonPersistedProperties:(void *)a1;
- (uint64_t)_objectInResults:(uint64_t)a1;
- (uint64_t)_preprocessDeletedObjects:(void *)a3 deletesInfo:(void *)a4 sectionsWithDeletes:;
- (uint64_t)_preprocessUpdatedObjects:(void *)a3 insertsInfo:(void *)a4 deletesInfo:(void *)a5 updatesInfo:(void *)a6 sectionsWithDeletes:(void *)a7 newSectionNames:(void *)a8 treatAsRefreshes:;
- (uint64_t)_recursivePerformBlockAndWait:(void *)a3 withContext:;
- (uint64_t)_resolveSectionIndexTitleForSectionName:(uint64_t)a1;
- (uint64_t)_restoreCachedSectionInfo;
- (uint64_t)_updateFetchedObjectsWithDeleteChange:(unint64_t)a1;
- (uint64_t)_updateIndexCacheWithFetchedObjects;
- (unint64_t)_indexOfCachedID:(uint64_t)a1;
- (unint64_t)_indexOfFetchedID:(int)a3 isManagedObjectID:;
- (void)_core_managedObjectContextDidSave:(uint64_t)a1;
- (void)_lowerMoveOperationsToUpdatesForSection:(void *)a3 withInsertedObjects:(void *)a4 deletedObjects:(void *)a5 updatedObjects:;
- (void)_makeMutableFetchedObjects;
- (void)_managedObjectContextDidChange:(id)a3;
- (void)_managedObjectContextDidChangeObjectIDs:(id)a3;
- (void)_managedObjectContextDidMutateObjectIDs:(id)a3;
- (void)_managedObjectContextDidSave:(id)a3;
- (void)_updateSectionOffsetsStartingAtSection:(uint64_t)a1;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation NSFetchedResultsController

- (uint64_t)_restoreCachedSectionInfo
{
  if (result)
  {
    v1 = result;
    result = [(NSFetchedResultsController *)result _sectionCachePath];
    if (result)
    {
      v2 = [result stringByAppendingPathComponent:@"sectionInfo"];
      v3 = [v2 fileSystemRepresentation];
      memset(&v115, 0, sizeof(v115));
      if (stat(v3, &v115))
      {
        return 0;
      }

      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfMappedFile:v2];
      v5 = [v4 length];
      v114 = 0;
      if (v5 < 0x20 || ((v6 = v5, v7 = [v4 bytes], *v7 == 0x3562366135623134) ? (v8 = v7[1] == 0x3463383438653663) : (v8 = 0), v8 ? (v9 = v7[2] == 0x6330383438613236) : (v9 = 0), v9 ? (v10 = v7[3] == 0x3366656163343264) : (v10 = 0), !v10))
      {
LABEL_107:

        unlink(v3);
        return 0;
      }

      v11 = v7;
      v114 += 48;
      v12 = [objc_msgSend(v1 "fetchRequest")];
      v13 = _newReadStringFromBytes(v11, &v114, v6);
      if (!v13 || ([objc_msgSend(v12 "name")] & 1) == 0 || (v13, (v13 = _newReadDataFromBytes(v11, &v114, v6)) == 0) || (objc_msgSend(objc_msgSend(v12, "versionHash"), "isEqualToData:", v13) & 1) == 0)
      {
LABEL_106:

        goto LABEL_107;
      }

      v14 = _newReadStringFromBytes(v11, &v114, v6);
      if (v14)
      {
        v15 = *(v1 + 24);
        if (!v15)
        {
LABEL_24:
          if ([v14 length])
          {
            goto LABEL_25;
          }

LABEL_26:

          v16 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          if (v16 + 4 <= v6)
          {
            v113 = bswap32(*(v11 + v16));
            v114 = v16 + 4;
          }

          else
          {
            v113 = 0;
          }

          if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 0x1000000) == 0 && [objc_msgSend(v1 "fetchedObjects")] != v113)
          {
            goto LABEL_107;
          }

          v17 = [*(v1 + 8) sortDescriptors];
          v18 = v17;
          v19 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          if (v19 + 4 <= v6)
          {
            v20 = *(v11 + v19);
            v21 = bswap32(v20);
            v114 = v19 + 4;
            if (v21 != [v17 count])
            {
              goto LABEL_107;
            }

            if (v20)
            {
              v22 = 0;
              do
              {
                v23 = _newReadStringFromBytes(v11, &v114, v6);
                v24 = [objc_msgSend(objc_msgSend(v18 objectAtIndex:{v22), "key"), "isEqualToString:", v23}];

                if (!v24)
                {
                  goto LABEL_107;
                }
              }

              while (v21 != ++v22);
            }
          }

          else if ([v17 count])
          {
            goto LABEL_107;
          }

          v25 = [*(v1 + 8) affectedStores];
          if (![v25 count])
          {
            v25 = [objc_msgSend(*(v1 + 16) "persistentStoreCoordinator")];
          }

          v26 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          if (v26 + 4 <= v6)
          {
            v27 = *(v11 + v26);
            v28 = bswap32(v27);
            v114 = v26 + 4;
            if (v28 != [v25 count])
            {
              goto LABEL_107;
            }

            if (v27)
            {
              v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:{objc_msgSend(v25, "valueForKey:", @"identifier"}];
              do
              {
                v30 = _newReadStringFromBytes(v11, &v114, v6);
                v31 = [v29 objectForKey:v30];

                if (!v31)
                {
                  goto LABEL_107;
                }

                v32 = stat_path_for_modication_time([v31 URL]);
                v34 = (v114 + 7) & 0xFFFFFFFFFFFFFFF8;
                v35 = v34 + 8;
                if (v34 + 8 <= v6)
                {
                  v36 = bswap64(*(v11 + v34));
                  v114 = v34 + 8;
                  v34 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
                  v35 = v34 + 8;
                }

                else
                {
                  v36 = 0;
                }

                if (v35 <= v6)
                {
                  v37 = bswap64(*(v11 + v34));
                  v114 = v35;
                }

                else
                {
                  v37 = 0;
                }

                if (v36 != v32 || v37 != v33)
                {
                  goto LABEL_107;
                }
              }

              while (--v28);
            }
          }

          else if ([v25 count])
          {
            goto LABEL_107;
          }

          *(v1 + 104) = objc_alloc_init(MEMORY[0x1E695DFA0]);
          *(v1 + 112) = objc_alloc_init(MEMORY[0x1E695DF90]);

          *(v1 + 120) = 0;
          *(v1 + 128) = 0;
          v38 = v114;
          v39 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v40 = v39 + 4;
          if (v39 + 4 <= v6)
          {
            v41 = *(v11 + v39);
            v114 = v40;
            v38 = v40;
            if (v41)
            {
              v42 = bswap32(v41);
              while (1)
              {
                v43 = _newReadStringFromBytes(v11, &v114, v6);
                v44 = _newReadStringFromBytes(v11, &v114, v6);
                v13 = v44;
                v45 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                v46 = v45 + 4;
                if (v45 + 4 <= v6)
                {
                  v47 = bswap32(*(v11 + v45));
                  v114 = v45 + 4;
                  v45 = (v45 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                  v46 = v45 + 4;
                }

                else
                {
                  v47 = 0;
                }

                if (v46 <= v6)
                {
                  v48 = bswap32(*(v11 + v45));
                  v114 = v46;
                }

                else
                {
                  v48 = 0;
                }

                if (!v43 || !v44)
                {
                  break;
                }

                v49 = [[_NSDefaultSectionInfo alloc] initWithController:v1 name:v43 sectionId:0 indexTitle:v44 sectionOffset:v48];
                v50 = v49;
                if (v49)
                {
                  v49[5] = v47;

                  v50[7] = 0;
                }

                [*(v1 + 104) addObject:v50];
                if ((*(v1 + 72) & 8) != 0)
                {
                  [*(v1 + 112) setObject:v50 forKey:{objc_msgSend(v50, "name")}];
                }

                if (!--v42)
                {
                  v38 = v114;
                  goto LABEL_74;
                }
              }

              goto LABEL_106;
            }
          }

LABEL_74:
          v51 = (v38 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v52 = v51 + 4;
          if (v51 + 4 > v6 || (v53 = *(v11 + v51), v114 = v52, !v53) || BYTE3(z9dsptsiQ80etb9782fsrs98bfdle88) != 1)
          {
LABEL_118:

            return 1;
          }

          v111 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          v54 = [MEMORY[0x1E695DF70] array];
          v55 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v56 = v55 + 4;
          if (v55 + 4 <= v6)
          {
            v57 = *(v11 + v55);
            v114 = v56;
            if (v57)
            {
              v58 = bswap32(v57);
              do
              {
                v59 = _newReadStringFromBytes(v11, &v114, v6);
                if (!v59)
                {
                  goto LABEL_119;
                }

                v60 = v59;
                [v54 addObject:v59];
              }

              while (--v58);
            }
          }

          v61 = [MEMORY[0x1E695DF70] array];
          v62 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v63 = v62 + 4;
          if (v62 + 4 <= v6)
          {
            v64 = *(v11 + v62);
            v114 = v63;
            if (v64)
            {
              v65 = bswap32(v64);
              while (1)
              {
                v66 = _newReadStringFromBytes(v11, &v114, v6);
                if (!v66)
                {
                  break;
                }

                v67 = v66;
                [v61 addObject:v66];

                if (!--v65)
                {
                  goto LABEL_87;
                }
              }

LABEL_119:
              [v111 drain];
              goto LABEL_107;
            }
          }

LABEL_87:
          Mutable = CFArrayCreateMutable(0, 0, 0);
          v69 = v114;
          v70 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v71 = v70 + 4;
          if (v70 + 4 <= v6)
          {
            v72 = *(v11 + v70);
            v114 = v71;
            v69 = v71;
            if (v72)
            {
              v73 = bswap32(v72);
              while (1)
              {
                v74 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                v75 = v74 + 4;
                if (v74 + 4 > v6)
                {
                  goto LABEL_110;
                }

                v76 = *(v11 + v74);
                v114 = v75;
                if (!v76)
                {
                  goto LABEL_110;
                }

                CFArrayAppendValue(Mutable, bswap32(v76));
                if (!--v73)
                {
                  v69 = v114;
                  break;
                }
              }
            }
          }

          v77 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
          v78 = v77 + 8;
          if (v77 + 8 > v6 || (v79 = *(v11 + v77), v114 = v78, !v79))
          {
LABEL_110:
            v88 = 0;
            v89 = 0;
            v84 = 0;
            cf = 0;
            goto LABEL_111;
          }

          v80 = bswap64(v79);
          v109 = [MEMORY[0x1E696AD98] numberWithLongLong:v80];
          Count = CFArrayGetCount(Mutable);
          cf = CFArrayCreateMutable(0, 0, 0);
          v110 = v80;
          v82 = v80 >= 0x1000000 || Count >= 0xFF;
          v83 = !v82;
          v108 = v83;
          if (!v82)
          {
            goto LABEL_103;
          }

          v90 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v91 = v90 + 4;
          if (v90 + 4 <= v6)
          {
            v92 = bswap32(*(v11 + v90));
            v114 = v91;
          }

          else
          {
            v92 = 0;
          }

          v102 = v92;
          if (Count >= 0xFF)
          {
            if (v92)
            {
              do
              {
                v104 = (v114 + 1) & 0xFFFFFFFFFFFFFFFELL;
                v105 = v104 + 2;
                if (v104 + 2 <= v6)
                {
                  v106 = bswap32(*(v11 + v104)) >> 16;
                  v114 = v105;
                }

                else
                {
                  v106 = 0;
                }

                if (v106 >= Count)
                {
                  goto LABEL_157;
                }

                CFArrayAppendValue(cf, v106);
              }

              while (--v102);
            }
          }

          else if (v92)
          {
            while (1)
            {
              if (v114 + 1 <= v6)
              {
                v103 = *(v11 + v114++);
              }

              else
              {
                v103 = 0;
              }

              if (v103 >= Count)
              {
                break;
              }

              CFArrayAppendValue(cf, v103);
              if (!--v102)
              {
                goto LABEL_103;
              }
            }

LABEL_157:
            v88 = 0;
            v89 = 0;
            v84 = 0;
            goto LABEL_111;
          }

LABEL_103:
          v84 = CFArrayCreateMutable(0, 0, 0);
          v85 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v86 = v85 + 4;
          if (v85 + 4 <= v6)
          {
            v87 = bswap32(*(v11 + v85));
            v114 = v86;
          }

          else
          {
            v87 = 0;
          }

          v93 = v87;
          if (v110 >= 0xFFFFFFFFLL)
          {
            if (v87)
            {
              do
              {
                v97 = (v114 + 7) & 0xFFFFFFFFFFFFFFF8;
                v98 = v97 + 8;
                if (v97 + 8 > v6)
                {
                  goto LABEL_135;
                }

                v99 = *(v11 + v97);
                v114 = v98;
                if (!v99)
                {
                  goto LABEL_135;
                }

                CFArrayAppendValue(v84, bswap64(v99));
              }

              while (--v93);
            }
          }

          else if (v87)
          {
            while (1)
            {
              v94 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v95 = v94 + 4;
              if (v94 + 4 > v6)
              {
                break;
              }

              v96 = *(v11 + v94);
              v114 = v95;
              if (!v96)
              {
                break;
              }

              CFArrayAppendValue(v84, bswap32(v96));
              if (!--v93)
              {
                goto LABEL_133;
              }
            }

LABEL_135:
            v88 = 0;
            v89 = 0;
            goto LABEL_111;
          }

LABEL_133:
          v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v54, v61, Mutable, v109, 0}];
          if (v108)
          {
            v101 = [MEMORY[0x1E695DEC8] arrayWithObject:v84];
          }

          else
          {
            v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:{cf, v84, 0}];
          }

          v107 = +[_PFRoutines _newObjectIDsArrayWithMapping:andEntries:andCoordinator:](_PFRoutines, v100, v101, [*(v1 + 16) persistentStoreCoordinator]);
          v89 = v107;
          if (v107 && [v107 count] == v113)
          {
            *(v1 + 96) = [[_PFBatchFaultingArray alloc] initWithPFArray:v89 andRequest:*(v1 + 8) andContext:*(v1 + 16)];
            *(v1 + 136) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v89, "count")}];
            *(v1 + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
            *(v1 + 72) = *(v1 + 72) & 0xFFFFFFF9 | 2;
            v88 = 1;
          }

          else
          {
            v88 = 0;
          }

LABEL_111:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v84)
          {
            CFRelease(v84);
          }

          [v111 drain];
          if (!v88)
          {
            goto LABEL_107;
          }

          goto LABEL_118;
        }

        if ([v15 isEqualToString:v14])
        {
          if (*(v1 + 24))
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }
      }

LABEL_25:

      goto LABEL_107;
    }
  }

  return result;
}

- (id)_sectionCachePath
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  result = *(a1 + 64);
  if (!result)
  {
    result = [+[NSFetchedResultsController _CoreDataSectionCachesPath]() stringByAppendingPathComponent:*(a1 + 40)];
    *(a1 + 64) = result;
  }

  return result;
}

- (uint64_t)_updateIndexCacheWithFetchedObjects
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    [*(result + 136) removeAllObjects];
    [v1[18] removeAllObjects];
    if (![v1[1] resultType] || (result = objc_msgSend(v1[1], "resultType"), result == 1))
    {
      v2 = [(NSFetchedResultsController *)v1 _fetchedObjectsArrayOfObjectIDs];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (result)
      {
        v3 = result;
        v4 = 0;
        v5 = *v11;
        do
        {
          v6 = 0;
          do
          {
            if (*v11 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = *(*(&v10 + 1) + 8 * v6);
            v8 = objc_autoreleasePoolPush();
            [v1[17] setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v4++), v7}];
            objc_autoreleasePoolPop(v8);
            ++v6;
          }

          while (v3 != v6);
          result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v3 = result;
        }

        while (result);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_fetchedObjectsArrayOfObjectIDs
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1 || [*(a1 + 8) resultType] == 2 || objc_msgSend(*(a1 + 8), "resultType") == 4)
  {
    v2 = 0;
LABEL_5:
    v3 = *MEMORY[0x1E69E9840];
    return v2;
  }

  v5 = *(a1 + 96);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 96), "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(a1 + 96);
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v2 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "objectID")}];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 96);
  v7 = *MEMORY[0x1E69E9840];

  return [v6 arrayFromObjectIDs];
}

- (id)delegate
{
  delegate = self->_delegate;
  if (delegate)
  {
    return objc_loadWeak(delegate + 1);
  }

  else
  {
    return 0;
  }
}

- (NSArray)fetchedObjects
{
  fetchedObjects = self->_fetchedObjects;
  if ((*&self->_flags & 4) != 0)
  {
    v4 = [fetchedObjects copy];
  }

  else
  {
    v4 = fetchedObjects;
  }

  return v4;
}

+ (uint64_t)_CoreDataSectionCachesPath
{
  objc_opt_self();
  result = _CoreDataSectionCachesPath__cachesPath;
  if (!_CoreDataSectionCachesPath__cachesPath)
  {
    v1 = objc_opt_class();
    objc_sync_enter(v1);
    v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    if ([(NSArray *)v2 count])
    {
      v3 = [(NSArray *)v2 objectAtIndex:0];
    }

    else
    {
      v3 = NSTemporaryDirectory();
    }

    v4 = v3;
    v5 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    if ([v5 length])
    {
      v4 = [(NSString *)v4 stringByAppendingPathComponent:v5];
    }

    v6 = [[(NSString *)v4 stringByAppendingPathComponent:@".CoreDataCaches"] stringByAppendingPathComponent:@"SectionInfoCaches"];
    if (!_CoreDataSectionCachesPath__cachesPath)
    {
      _CoreDataSectionCachesPath__cachesPath = v6;
    }

    objc_sync_exit(v1);
    return _CoreDataSectionCachesPath__cachesPath;
  }

  return result;
}

- (NSArray)sections
{
  v2 = [(NSMutableOrderedSet *)self->_sections copy];
  v3 = [v2 array];

  return v3;
}

- (NSFetchedResultsController)initWithFetchRequest:(NSFetchRequest *)fetchRequest managedObjectContext:(NSManagedObjectContext *)context sectionNameKeyPath:(NSString *)sectionNameKeyPath cacheName:(NSString *)name
{
  v44 = *MEMORY[0x1E69E9840];
  if (!fetchRequest || !context)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"An instance of %@ requires a non-nil fetchRequest and managedObjectContext", objc_opt_class()];
    goto LABEL_40;
  }

  if (![(NSFetchRequest *)fetchRequest sortDescriptors])
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"An instance of %@ requires a fetch request with sort descriptors", objc_opt_class()];
LABEL_40:
    v36 = v35;

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v36 userInfo:0]);
  }

  v42.receiver = self;
  v42.super_class = NSFetchedResultsController;
  v11 = [(NSFetchedResultsController *)&v42 init];
  if (v11)
  {
    v11->_fetchRequest = fetchRequest;
    v11->_managedObjectContext = context;
    v12 = [(NSString *)sectionNameKeyPath copy];
    v11->_sectionNameKeyPath = v12;
    v11->_flags = (*&v11->_flags & 0xFFFFFFF7 | (8 * (v12 != 0)));
    v13 = [(NSFetchRequest *)v11->_fetchRequest predicate];
    v11->_originalPredicate = v13;
    if (v13)
    {
      v11->_remappedPredicate = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:v13, v11->_managedObjectContext];
    }

    v11->_cacheName = [(NSString *)name copy];
    v14 = [(NSFetchRequest *)v11->_fetchRequest sortDescriptors];
    [(NSFetchRequest *)v11->_fetchRequest _resolveEntityWithContext:context];
    v15 = [(NSFetchRequest *)v11->_fetchRequest entity];
    v11->_flags = (*&v11->_flags & 0xFFFFDFFF | (([(NSFetchRequest *)v11->_fetchRequest resultType]== 2) << 13));
    v37 = context;
    if ([(NSDictionary *)[(NSEntityDescription *)v15 subentitiesByName] count])
    {
      if ([(NSFetchRequest *)v11->_fetchRequest includesSubentities])
      {
        v16 = 32;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v11->_flags = (*&v11->_flags & 0xFFFFFFDF | v16);
    v11->_sortKeys = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = [(NSArray *)v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = [*(*(&v38 + 1) + 8 * i) key];
          v22 = [MEMORY[0x1E695DF70] array];
          for (j = v21; ; v21 = j)
          {
            [j rangeOfString:@"."];
            if (!v24)
            {
              break;
            }

            [v22 insertObject:objc_msgSend(v21 atIndex:{"pathExtension"), 0}];
            j = [v21 stringByDeletingPathExtension];
          }

          [v11->_sortKeys addObject:v21];
          [v22 insertObject:v21 atIndex:0];
          if ((*(&v11->_flags + 1) & 0x20) == 0)
          {
            if ([(NSFetchedResultsController *)v11 _keyPathContainsNonPersistedProperties:v22])
            {
              v25 = 0x2000;
            }

            else
            {
              v25 = 0;
            }

            v11->_flags = (*&v11->_flags & 0xFFFFDFFF | v25);
          }
        }

        v18 = [(NSArray *)v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v18);
    }

    if ((*&v11->_flags & 8) != 0)
    {
      v11->_sectionNameKey = v11->_sectionNameKeyPath;
      v26 = [MEMORY[0x1E695DF70] array];
      [(NSString *)v11->_sectionNameKey rangeOfString:@"."];
      if (v27)
      {
        do
        {
          [v26 insertObject:-[NSString pathExtension](v11->_sectionNameKey atIndex:{"pathExtension"), 0}];
          v28 = [(NSString *)v11->_sectionNameKey stringByDeletingPathExtension];
          v11->_sectionNameKey = v28;
          [(NSString *)v28 rangeOfString:@"."];
        }

        while (v29);
      }

      v30 = v11->_sectionNameKey;
      [v26 insertObject:v11->_sectionNameKey atIndex:0];
      if ((*(&v11->_flags + 1) & 0x20) == 0)
      {
        if ([(NSFetchedResultsController *)v11 _keyPathContainsNonPersistedProperties:v26])
        {
          v31 = 0x2000;
        }

        else
        {
          v31 = 0;
        }

        v11->_flags = (*&v11->_flags & 0xFFFFDFFF | v31);
      }
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    if (v11->_cacheName)
    {
      v32 = [(NSManagedObjectContext *)v37 persistentStoreCoordinator];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v11;
}

- (uint64_t)_keyPathContainsNonPersistedProperties:(void *)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(objc_msgSend(a1 "fetchRequest")];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [a2 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = [v3 objectForKey:*(*(&v15 + 1) + 8 * i)];
        if (!v8 || (v9 = v8, ([v8 isTransient] & 1) != 0))
        {
LABEL_28:
          result = 1;
          goto LABEL_30;
        }

        v10 = [v9 _propertyType];
        if ([v9 _isAttribute])
        {
          v11 = [v9 attributeType];
          if (v11 == 1800 || v11 == 0)
          {
            v19 = 1;
            if (!v11)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v3 = 0;
            if (!v11)
            {
              goto LABEL_29;
            }
          }

          if (v11 == 1800)
          {
LABEL_29:
            result = v19;
            goto LABEL_30;
          }
        }

        else if ([v9 _isRelationship])
        {
          v3 = [objc_msgSend(v9 "destinationEntity")];
        }

        else
        {
          if (v10)
          {
            v13 = v10 == 3;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            goto LABEL_28;
          }

          v3 = 0;
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v15 objects:v20 count:16];
      result = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = NSFetchedResultsController;
  [(NSFetchedResultsController *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v5 = self->_delegate;
  if (!v5)
  {
LABEL_7:
    if (!delegate)
    {
      return;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = 2048;
    }

    else
    {
      v8 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFF7FF | v8);
    v9 = BYTE3(z9dsptsiQ80etb9782fsrs98bfdle88);
    if ((objc_opt_respondsToSelector() & 1) != 0 && (NSClassFromString(@"NSDiffableDataSourceSnapshot") || NSClassFromString(@"_PFDiffableDataSourceSnapshot")))
    {
      v10 = 256;
LABEL_15:
      *&self->_flags |= v10;
LABEL_16:
      if ([(NSFetchRequest *)self->_fetchRequest resultType]== 2)
      {
        if (BYTE4(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
        {
          v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ does not support both change tracking and fetch request's with NSDictionaryResultType", objc_opt_class()), 0}];
          objc_exception_throw(v11);
        }
      }

      else
      {
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        v16 = [(NSFetchedResultsController *)self managedObjectContext];
        if (v16)
        {
          atomic_store(1u, &v16->_generatedMutatedIDsNotification);
        }
      }

LABEL_57:
      self->_delegate = [[_PFWeakReference alloc] initWithObject:delegate];
      return;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && !self->_sectionNameKeyPath)
    {
      managedObjectContext = self->_managedObjectContext;
      if (managedObjectContext)
      {
        atomic_store(1u, &managedObjectContext->_generatedMutatedIDsNotification);
      }

      v10 = 64;
      goto LABEL_15;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_40:
      v19 = objc_opt_respondsToSelector() & 1;
      if (v19)
      {
        v20 = 128;
      }

      else
      {
        v20 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFF7F | v20);
      v21 = objc_opt_respondsToSelector();
      if (v21)
      {
        v22 = 512;
      }

      else
      {
        v22 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFDFF | v22);
      v23 = objc_opt_respondsToSelector();
      if (v23)
      {
        v24 = 1024;
      }

      else
      {
        v24 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFBFF | v24);
      v25 = objc_opt_respondsToSelector();
      if (v25)
      {
        v26 = 4096;
      }

      else
      {
        v26 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFEFFF | v26);
      if (!v19 && v9 && (v21 & 1) == 0 && (v23 & 1) == 0 && (v25 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_16;
    }

    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v29 = 0;
          v14 = "CoreData: error: Difference delegate method is not supported when fetched results controller is configured with a sectionNameKeyPath\n";
          v15 = &v29;
LABEL_60:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v14, v15, 2u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v14 = "CoreData: warning: Difference delegate method is not supported when fetched results controller is configured with a sectionNameKeyPath\n";
          v15 = buf;
          goto LABEL_60;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    _NSCoreDataLog_console(v18, "Difference delegate method is not supported when fetched results controller is configured with a sectionNameKeyPath");
    objc_autoreleasePoolPop(v12);
    goto LABEL_40;
  }

  WeakRetained = objc_loadWeakRetained(v5 + 1);
  if (WeakRetained)
  {
    v7 = WeakRetained == delegate;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v27 = WeakRetained;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    *&self->_flags &= 0xFFFFE03F;
    self->_delegate = 0;

    goto LABEL_7;
  }
}

- (unint64_t)_indexOfCachedID:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v3 = [*(a1 + 136) objectForKey:a2];
  if (v3)
  {
    v4 = [v3 integerValue];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = *(a1 + 144);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v7)
      {
        goto LABEL_16;
      }

      v8 = v7;
      v9 = *v15;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (!v11)
        {
          goto LABEL_13;
        }

        if (v5 >= *(v11 + 8))
        {
          break;
        }

LABEL_14:
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (!v8)
          {
            goto LABEL_16;
          }

          goto LABEL_7;
        }
      }

      v11 = *(v11 + 24);
LABEL_13:
      v5 += v11;
      goto LABEL_14;
    }
  }

  v5 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)_indexOfFetchedID:(int)a3 isManagedObjectID:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if ([*(result + 8) resultType] == 1)
  {
    goto LABEL_3;
  }

  if ([*(v5 + 8) resultType] != 2)
  {
    if ([*(v5 + 8) resultType])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Result type of fetched object is not an NSManagedObjectIDResultType userInfo:{NSDictionaryResultType or NSManagedObjectResultType.", 0}]);
    }

    if ((a3 & 1) == 0)
    {
      a2 = [a2 objectID];
    }

LABEL_3:
    v6 = *(v5 + 96);
    if ((objc_opt_respondsToSelector() & 1) != 0 && a3)
    {
      v7 = *(v5 + 96);

      return [v7 indexOfManagedObjectForObjectID:a2];
    }

    else
    {

      return [(NSFetchedResultsController *)v5 _indexOfCachedID:a2];
    }
  }

  v8 = *(v5 + 96);

  return [v8 indexOfObject:a2];
}

- (BOOL)performFetch:(NSError *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__22;
  v19 = __Block_byref_object_dispose__22;
  v20 = 0;
  v5 = [(NSFetchRequest *)self->_fetchRequest resultType];
  v6 = [(NSFetchRequest *)self->_fetchRequest returnsObjectsAsFaults];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__NSFetchedResultsController_performFetch___block_invoke;
  v12[3] = &unk_1E6EC3478;
  v13 = v5 == 2;
  v12[4] = self;
  v12[5] = &v21;
  v12[6] = &v15;
  v14 = v6;
  [(NSFetchedResultsController *)self _recursivePerformBlockAndWait:v12 withContext:self->_managedObjectContext];
  if (!v16[5])
  {
    v7 = [(NSFetchedResultsController *)self delegate];
    if (v7)
    {
      -[NSFetchedResultsController _conditionallyDispatchSnapshotToDelegate:updatesInfo:](self, v7, [MEMORY[0x1E695DFD8] set]);
    }
  }

  v8 = v16[5];
  if (error)
  {
    v9 = v16[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v10;
}

void __43__NSFetchedResultsController_performFetch___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 96) = 0;

  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 144) = 0;

  *(*(a1 + 32) + 104) = 0;
  *(*(a1 + 32) + 112) = 0;

  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 72) &= ~4u;
  *(*(a1 + 32) + 72) &= ~2u;
  [*(*(a1 + 32) + 8) setReturnsObjectsAsFaults:1];
  if (BYTE3(z9dsptsiQ80etb9782fsrs98bfdle88) == 1 && (*(a1 + 56) & 1) == 0 && (![*(*(a1 + 32) + 16) hasChanges] || (objc_msgSend(*(*(a1 + 32) + 8), "includesPendingChanges") & 1) == 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = [(NSFetchedResultsController *)*(a1 + 32) _restoreCachedSectionInfo];
  }

  v2 = *(a1 + 32);
  if (!*(v2 + 96))
  {
    *(*(a1 + 32) + 96) = [*(v2 + 16) executeFetchRequest:*(v2 + 8) error:*(*(a1 + 48) + 8) + 40];
    if ((*(a1 + 56) & 1) == 0)
    {
      *(*(a1 + 32) + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(*(a1 + 32) + 136) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 96), "count")}];
      [(NSFetchedResultsController *)*(a1 + 32) _updateIndexCacheWithFetchedObjects];
    }

    if (BYTE3(z9dsptsiQ80etb9782fsrs98bfdle88) != 1 || *(a1 + 56) == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = [(NSFetchedResultsController *)*(a1 + 32) _restoreCachedSectionInfo];
    }
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  if (v4)
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if ([*(v3 + 104) count])
      {
        goto LABEL_24;
      }

      v3 = *(a1 + 32);
      v4 = *(v3 + 96);
    }

    *(*(*(a1 + 40) + 8) + 24) = [(NSFetchedResultsController *)v3 _computeSectionInfo:v4 error:(*(*(a1 + 48) + 8) + 40)];
    if (*(*(*(a1 + 40) + 8) + 24) != 1 || (v5 = *(a1 + 32), *(v5 + 40)) && *(v5 + 80) && ((v6 = *(v5 + 16)) == 0 || (*(v6 + 41) & 0x40) == 0) && (*(v5 + 72) |= 1u, [(NSFetchedResultsController *)*(a1 + 32) _core_managedObjectContextDidSave:?], (*(*(*(a1 + 40) + 8) + 24) & 1) == 0))
    {

      *(*(a1 + 32) + 96) = 0;
      *(*(a1 + 32) + 136) = 0;

      *(*(a1 + 32) + 144) = 0;
    }
  }

LABEL_24:
  [*(*(a1 + 32) + 8) setReturnsObjectsAsFaults:*(a1 + 57)];
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = *(a1 + 32);
  if (!*(v8 + 96))
  {

    *(*(a1 + 32) + 104) = 0;
    *(*(a1 + 32) + 112) = 0;

    *(*(a1 + 32) + 120) = 0;
    *(*(a1 + 32) + 128) = 0;
    *(*(a1 + 32) + 72) &= ~4u;
    *(*(a1 + 32) + 72) &= ~2u;
  }
}

- (BOOL)_computeSectionInfo:(id *)a3 error:
{
  v118 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = 0;
    goto LABEL_36;
  }

  v4 = a2;
  v6 = [a2 count];

  *(a1 + 104) = objc_alloc_init(MEMORY[0x1E695DFA0]);
  *(a1 + 112) = objc_alloc_init(MEMORY[0x1E695DF90]);

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v7 = *(a1 + 72);
  v90 = v6;
  if (!v6 && (v7 & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((v7 & 8) == 0)
  {
    v8 = [[_NSDefaultSectionInfo alloc] initWithController:a1 name:0 sectionId:0 indexTitle:0 sectionOffset:0];
    v9 = v8;
    if (v8)
    {
      v8[5] = v90;

      v9[7] = 0;
    }

    [*(a1 + 104) addObject:v9];

    goto LABEL_35;
  }

  if ([*(a1 + 8) includesPendingChanges] && ((objc_msgSend(*(a1 + 16), "hasChanges") & 1) != 0 || objc_msgSend(*(a1 + 16), "parentContext")) || (*(a1 + 73) & 0x20) != 0 || objc_msgSend(*(a1 + 8), "fetchLimit") || objc_msgSend(*(a1 + 8), "fetchOffset"))
  {
    goto LABEL_14;
  }

  v35 = [objc_msgSend(*(a1 + 8) "affectedStores")];
  if (!v35)
  {
    v35 = [objc_msgSend(objc_msgSend(*(a1 + 16) "persistentStoreCoordinator")];
  }

  v36 = v35;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v37 = [v35 countByEnumeratingWithState:&v102 objects:v114 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v103;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v103 != v39)
        {
          objc_enumerationMutation(v35);
        }

        if ([*(*(&v102 + 1) + 8 * i) type] != @"SQLite")
        {
          goto LABEL_14;
        }
      }

      v38 = [v35 countByEnumeratingWithState:&v102 objects:v114 count:16];
    }

    while (v38);
  }

  v87 = v4;
  v85 = a3;
  v41 = [objc_msgSend(a1 "fetchRequest")];
  [v41 setResultType:2];
  [v41 setIncludesPropertyValues:1];
  [v41 setFetchBatchSize:0];
  v42 = [a1 sectionNameKeyPath];
  v43 = objc_alloc_init(NSExpressionDescription);
  -[NSExpressionDescription setExpression:](v43, "setExpression:", [MEMORY[0x1E696ABC8] expressionForFunction:@"count:" arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForFunction:selectorName:arguments:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", NSClassFromString(@"_NSPredicateUtilities")), @"distinct:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForEvaluatedObject"))))}]);
  [(NSPropertyDescription *)v43 setName:@"sectionCount"];
  [(NSExpressionDescription *)v43 setExpressionResultType:200];
  [v41 setPropertiesToFetch:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v42, v43, 0)}];
  [v41 setPropertiesToGroupBy:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v42, 0)}];
  v44 = [v41 sortDescriptors];
  if (![v44 count])
  {
    v51 = 1;
    goto LABEL_69;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v45 = [v44 countByEnumeratingWithState:&v98 objects:v113 count:16];
  if (!v45)
  {
    goto LABEL_64;
  }

  v46 = v45;
  v47 = 0;
  v48 = *v99;
  do
  {
    for (j = 0; j != v46; ++j)
    {
      if (*v99 != v48)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v98 + 1) + 8 * j);
      if ([v42 isEqualToString:{objc_msgSend(v50, "key")}])
      {
        v47 = v50;
      }
    }

    v46 = [v44 countByEnumeratingWithState:&v98 objects:v113 count:16];
  }

  while (v46);
  a3 = v85;
  if (!v47)
  {
LABEL_64:
    v51 = [objc_msgSend(v44 objectAtIndex:{0), "ascending"}];
LABEL_69:
    v47 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v42 ascending:v51];
  }

  [v41 setSortDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v47)}];
  v97 = 0;
  v54 = [objc_msgSend(a1 "managedObjectContext")];
  if (v54)
  {
    v55 = v54;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v56 = [v54 countByEnumeratingWithState:&v93 objects:v106 count:16];
    if (!v56)
    {
LABEL_35:
      v17 = 1;
      goto LABEL_36;
    }

    v57 = v56;
    v58 = 0;
    v91 = *v94;
    obja = v55;
LABEL_73:
    v59 = 0;
    while (1)
    {
      if (*v94 != v91)
      {
        objc_enumerationMutation(obja);
      }

      v60 = *(*(&v93 + 1) + 8 * v59);
      v61 = objc_autoreleasePoolPush();
      v62 = [v60 valueForKeyPath:v42];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a1 + 72) |= 0x10u;
        v63 = [v62 _retainedURIString];
      }

      else
      {
        v63 = [v62 description];
      }

      v64 = v63;
      if (v63)
      {
        goto LABEL_86;
      }

      v65 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v66 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v68 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v66)
        {
          if (v68)
          {
            goto LABEL_93;
          }
        }

        else if (v68)
        {
LABEL_93:
          v75 = *(a1 + 24);
          *buf = 138412290;
          v108 = v75;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (NSFetchedResultsController) A section returned nil value for section name key path '%@'. Objects will be placed in unnamed section\n", buf, 0xCu);
        }
      }

      _NSCoreDataLog_console(1, "(NSFetchedResultsController) A section returned nil value for section name key path '%@'. Objects will be placed in unnamed section", *(a1 + 24));
      objc_autoreleasePoolPop(v65);
      v64 = &stru_1EF3F1768;
LABEL_86:
      v69 = [*(a1 + 112) objectForKey:v64];
      if (v69)
      {
        v70 = v69;
        v71 = [objc_msgSend(v60 valueForKeyPath:{@"sectionCount", "unsignedIntValue"}];
        *(v70 + 40) = [v70 numberOfObjects] + v71;

        *(v70 + 56) = 0;
      }

      else
      {
        v72 = [(NSFetchedResultsController *)a1 _resolveSectionIndexTitleForSectionName:v64];
        v73 = -[_NSDefaultSectionInfo initWithController:name:sectionId:indexTitle:sectionOffset:]([_NSDefaultSectionInfo alloc], a1, v64, [v60 valueForKeyPath:v42], v72, v58);
        v74 = [objc_msgSend(v60 valueForKeyPath:{@"sectionCount", "unsignedIntValue"}];
        v71 = v74;
        if (v73)
        {
          v73[5] = v74;

          v73[7] = 0;
        }

        [*(a1 + 104) addObject:v73];
        [*(a1 + 112) setObject:v73 forKey:v64];
      }

      v58 += v71;
      objc_autoreleasePoolPop(v61);
      if (v57 == ++v59)
      {
        v76 = [obja countByEnumeratingWithState:&v93 objects:v106 count:16];
        v57 = v76;
        if (!v76)
        {
          goto LABEL_35;
        }

        goto LABEL_73;
      }
    }
  }

  v77 = objc_autoreleasePoolPush();
  v4 = v87;
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    v78 = _pflogging_catastrophic_mode;
    v79 = _PFLogGetLogStream(1);
    v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (v78)
    {
      if (v80)
      {
        goto LABEL_103;
      }
    }

    else if (v80)
    {
LABEL_103:
      v82 = v97;
      v83 = [v97 userInfo];
      *buf = 138412802;
      v108 = v41;
      v109 = 2112;
      v110 = v82;
      v111 = 2112;
      v112 = v83;
      _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: error: Fetching ERROR during section computation with request = %@ and error = %@ and userInfo = %@\n", buf, 0x20u);
    }
  }

  _NSCoreDataLog_console(1, "Fetching ERROR during section computation with request = %@ and error = %@ and userInfo = %@", v41, v97, [v97 userInfo]);
  objc_autoreleasePoolPop(v77);
LABEL_14:
  v10 = [MEMORY[0x1E695DFA8] set];
  if ([*(a1 + 8) resultType] != 2)
  {
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __72__NSFetchedResultsController_PrivateMethods___computeSectionInfo_error___block_invoke;
    v92[3] = &unk_1E6EC1C40;
    v92[5] = a1;
    v92[6] = v90;
    v92[4] = v4;
    [(NSFetchedResultsController *)a1 _recursivePerformBlockAndWait:v92 withContext:*(a1 + 16)];
  }

  v11 = [v4 objectAtIndex:0];
  v12 = [(NSFetchedResultsController *)a1 _sectionNameForObject:v11];
  v13 = [(NSFetchedResultsController *)a1 _resolveSectionIndexTitleForSectionName:v12];
  v14 = [_NSDefaultSectionInfo alloc];
  if ([*(a1 + 8) resultType] != 1)
  {
    if ([*(a1 + 8) resultType] == 4)
    {
      v11 = @"Count";
    }

    else
    {
      v11 = [(__CFString *)v11 valueForKeyPath:*(a1 + 24)];
    }
  }

  obj = v13;
  v15 = [(_NSDefaultSectionInfo *)v14 initWithController:a1 name:v12 sectionId:v11 indexTitle:v13 sectionOffset:0];
  [*(a1 + 104) addObject:v15];
  [*(a1 + 112) setObject:v15 forKey:v12];

  if (v90 < 2)
  {
    v16 = 1;
LABEL_33:

    if (v15)
    {
      v15[5] = v16;

      v15[7] = 0;
    }

    goto LABEL_35;
  }

  v86 = v4;
  v84 = a3;
  v17 = 0;
  v16 = 1;
  v18 = 1;
  while (1)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [v86 objectAtIndex:v18];
    v21 = [(NSFetchedResultsController *)a1 _sectionNameForObject:v20];
    if (([(__CFString *)v21 isEqualToString:v12]& 1) == 0)
    {
      break;
    }

LABEL_32:
    ++v16;
    objc_autoreleasePoolPop(v19);
    v17 = ++v18 >= v90;
    if (v90 == v18)
    {
      goto LABEL_33;
    }
  }

  if (![v10 containsObject:v21])
  {
    [v10 addObject:v12];
    if (v15)
    {
      v15[5] = v16;

      v15[7] = 0;
    }

    v12 = v21;
    v22 = [(NSFetchedResultsController *)a1 _resolveSectionIndexTitleForSectionName:v12];
    v23 = [_NSDefaultSectionInfo alloc];
    if ([*(a1 + 8) resultType] == 1)
    {
      v24 = v20;
    }

    else
    {
      v25 = [*(a1 + 8) resultType];
      v24 = @"Count";
      if (v25 != 4)
      {
        v24 = [(__CFString *)v20 valueForKeyPath:*(a1 + 24), @"Count"];
      }
    }

    obj = v22;
    v15 = [(_NSDefaultSectionInfo *)v23 initWithController:a1 name:v12 sectionId:v24 indexTitle:v22 sectionOffset:v18];
    [*(a1 + 104) addObject:v15];
    [*(a1 + 112) setObject:v15 forKey:v12];

    v16 = 0;
    goto LABEL_32;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The fetched object at index %lu has an out of order section name '%@'. Objects must be sorted by section name", v18, v12];
  v29 = v84;
  if (v84)
  {
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    *v84 = [v30 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v28, @"reason"}];
  }

  v31 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v32 = _pflogging_catastrophic_mode;
    v33 = _PFLogGetLogStream(1);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      v29 = v84;
      if (v34)
      {
LABEL_100:
        v81 = objc_opt_class();
        *v114 = 138412546;
        v115 = v81;
        v116 = 2112;
        v117 = v28;
        _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: error: (%@) %@\n", v114, 0x16u);
      }
    }

    else
    {
      v29 = v84;
      if (v34)
      {
        goto LABEL_100;
      }
    }
  }

  v52 = objc_opt_class();
  _NSCoreDataLog_console(1, "(%@) %@", v52, v28);
  objc_autoreleasePoolPop(v31);

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  objc_autoreleasePoolPop(v19);

  if (v29)
  {
    v53 = *v29;
  }

LABEL_36:
  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)_core_managedObjectContextDidSave:(uint64_t)a1
{
  v186 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [objc_msgSend(a2 "userInfo")];
    if ([v4 count])
    {
      v178 = @"updated_objectIDs";
      v179 = v4;
      -[NSFetchedResultsController _core_managedObjectContextDidChange:](a1, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1]);
    }

    if (*(a1 + 40) && *(a1 + 80))
    {
      v5 = [(NSFetchedResultsController *)a1 _sectionCachePath];
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v166 = 0;
      v7 = [v6 fileExistsAtPath:v5];
      v8 = [a2 userInfo];
      v9 = [v5 stringByAppendingPathComponent:@"sectionInfo"];
      memset(&v177, 0, sizeof(v177));
      v10 = stat([v9 fileSystemRepresentation], &v177);
      st_size = v177.st_size;
      v12 = [v9 fileSystemRepresentation];
      if (a2)
      {
        if ([a2 object] == *(a1 + 16))
        {
          if ((*(a1 + 72) & 0x1080) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v13 = [v8 objectForKey:@"managedObjectContext"];
          if (v13 && v13 != *(a1 + 16))
          {
LABEL_10:
            if (v12)
            {
              v14 = open(v12, 1026, 384);
              if ((v14 & 0x80000000) == 0)
              {
                close(v14);
              }
            }

            goto LABEL_139;
          }
        }
      }

      v15 = *(a1 + 72);
      if ((((v15 & 1) == 0) & v7) != 1 || v10 || st_size < 1)
      {
LABEL_36:
        *(a1 + 72) = v15 & 0xFFFFFFFE;
        if (v7 & 1) != 0 || ([v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v166])
        {
          if (v12)
          {
            v36 = open(v12, 1538, 384);
            if ((v36 & 0x80000000) == 0)
            {
              v37 = v36;
              v120 = v12;
              v38 = objc_alloc_init(MEMORY[0x1E696AAC8]);
              v39 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
              [v39 appendBytes:"41b5a6b5c6e848c462a8480cd24caef3" length:32];
              _writeInt64IntoData(v39, 0);
              __buf = 0;
              _writeInt64IntoData(v39, 0);
              _writeStringIntoData([objc_msgSend(*(a1 + 8) "entity")], v39, &v177);
              _writeDataIntoData([objc_msgSend(*(a1 + 8) "entity")], v39);
              _writeStringIntoData(*(a1 + 24), v39, &v177);
              _writeInt32IntoData(v39, [*(a1 + 96) count]);
              v40 = [*(a1 + 8) sortDescriptors];
              _writeInt32IntoData(v39, [v40 count]);
              v164 = 0u;
              v165 = 0u;
              v162 = 0u;
              v163 = 0u;
              v41 = [v40 countByEnumeratingWithState:&v162 objects:v176 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v163;
                do
                {
                  for (i = 0; i != v42; ++i)
                  {
                    if (*v163 != v43)
                    {
                      objc_enumerationMutation(v40);
                    }

                    _writeStringIntoData([*(*(&v162 + 1) + 8 * i) key], v39, &v177);
                  }

                  v42 = [v40 countByEnumeratingWithState:&v162 objects:v176 count:16];
                }

                while (v42);
              }

              v125 = v38;
              [(NSFetchedResultsController *)a1 _appendAffectedStoreInfoToData:v39 adjustedOffset:&__buf];
              _writeInt32IntoData(v39, [*(a1 + 104) count]);
              v160 = 0u;
              v161 = 0u;
              v158 = 0u;
              v159 = 0u;
              v45 = *(a1 + 104);
              v46 = [v45 countByEnumeratingWithState:&v158 objects:v175 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v159;
                do
                {
                  v49 = 0;
                  do
                  {
                    if (*v159 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = *(*(&v158 + 1) + 8 * v49);
                    _writeStringIntoData([v50 name], v39, &v177);
                    _writeStringIntoData([v50 indexTitle], v39, &v177);
                    _writeInt32IntoData(v39, [v50 numberOfObjects]);
                    if (v50)
                    {
                      v51 = v50[8];
                    }

                    else
                    {
                      v51 = 0;
                    }

                    _writeInt32IntoData(v39, v51);
                    ++v49;
                  }

                  while (v47 != v49);
                  v52 = [v45 countByEnumeratingWithState:&v158 objects:v175 count:16];
                  v47 = v52;
                }

                while (v52);
              }

              __offsetb = v9;
              v157 = 0;
              v156 = 0;
              v53 = [(NSFetchedResultsController *)a1 _fetchedObjectsArrayOfObjectIDs];
              if ([_PFRoutines _generateObjectIDMaptableForArray:v53 withMapping:&v157 andEntries:&v156])
              {
                v116 = v37;
                _writeInt32IntoData(v39, 1u);
                v54 = [v157 objectAtIndex:0];
                v55 = [v157 objectAtIndex:1];
                v56 = [v157 objectAtIndex:2];
                loga = [v157 objectAtIndex:3];
                v57 = [v156 objectAtIndex:0];
                v58 = v57;
                if ([v156 count] >= 2)
                {
                  v58 = [v156 objectAtIndex:1];
                }

                _writeInt32IntoData(v39, [v54 count]);
                v154 = 0u;
                v155 = 0u;
                v152 = 0u;
                v153 = 0u;
                v59 = [v54 countByEnumeratingWithState:&v152 objects:v174 count:16];
                if (v59)
                {
                  v60 = v59;
                  v61 = *v153;
                  do
                  {
                    for (j = 0; j != v60; ++j)
                    {
                      if (*v153 != v61)
                      {
                        objc_enumerationMutation(v54);
                      }

                      _writeStringIntoData(*(*(&v152 + 1) + 8 * j), v39, &v177);
                    }

                    v60 = [v54 countByEnumeratingWithState:&v152 objects:v174 count:16];
                  }

                  while (v60);
                }

                _writeInt32IntoData(v39, [v55 count]);
                v150 = 0u;
                v151 = 0u;
                v148 = 0u;
                v149 = 0u;
                v63 = [v55 countByEnumeratingWithState:&v148 objects:v173 count:16];
                v64 = v125;
                if (v63)
                {
                  v65 = v63;
                  v66 = *v149;
                  do
                  {
                    for (k = 0; k != v65; ++k)
                    {
                      if (*v149 != v66)
                      {
                        objc_enumerationMutation(v55);
                      }

                      _writeStringIntoData(*(*(&v148 + 1) + 8 * k), v39, &v177);
                    }

                    v65 = [v55 countByEnumeratingWithState:&v148 objects:v173 count:16];
                  }

                  while (v65);
                }

                _writeInt32IntoData(v39, [v56 count]);
                v146 = 0u;
                v147 = 0u;
                v144 = 0u;
                v145 = 0u;
                v68 = [v56 countByEnumeratingWithState:&v144 objects:v172 count:16];
                if (v68)
                {
                  v69 = v68;
                  v70 = *v145;
                  do
                  {
                    for (m = 0; m != v69; ++m)
                    {
                      if (*v145 != v70)
                      {
                        objc_enumerationMutation(v56);
                      }

                      _writeInt32IntoData(v39, *(*(&v144 + 1) + 8 * m));
                    }

                    v69 = [v56 countByEnumeratingWithState:&v144 objects:v172 count:16];
                  }

                  while (v69);
                }

                _writeInt64IntoData(v39, [loga longLongValue]);
                if ([v156 count] >= 2)
                {
                  _writeInt32IntoData(v39, [v57 count]);
                  if ([v56 count] > 0xFE)
                  {
                    v138 = 0uLL;
                    v139 = 0uLL;
                    v136 = 0uLL;
                    v137 = 0uLL;
                    v89 = [v57 countByEnumeratingWithState:&v136 objects:v170 count:16];
                    if (v89)
                    {
                      v90 = v89;
                      v91 = *v137;
                      do
                      {
                        for (n = 0; n != v90; ++n)
                        {
                          if (*v137 != v91)
                          {
                            objc_enumerationMutation(v57);
                          }

                          _writeInt16IntoData(v39, *(*(&v136 + 1) + 8 * n));
                        }

                        v90 = [v57 countByEnumeratingWithState:&v136 objects:v170 count:16];
                      }

                      while (v90);
                    }
                  }

                  else
                  {
                    v142 = 0uLL;
                    v143 = 0uLL;
                    v140 = 0uLL;
                    v141 = 0uLL;
                    v72 = [v57 countByEnumeratingWithState:&v140 objects:v171 count:16];
                    if (v72)
                    {
                      v73 = v72;
                      v74 = *v141;
                      do
                      {
                        for (ii = 0; ii != v73; ++ii)
                        {
                          if (*v141 != v74)
                          {
                            objc_enumerationMutation(v57);
                          }

                          buf[0] = *(*(&v140 + 1) + 8 * ii);
                          [v39 appendBytes:buf length:1];
                        }

                        v73 = [v57 countByEnumeratingWithState:&v140 objects:v171 count:16];
                      }

                      while (v73);
                    }
                  }
                }

                _writeInt32IntoData(v39, [v58 count]);
                if ([loga longLongValue]> 4294967294)
                {
                  v130 = 0uLL;
                  v131 = 0uLL;
                  v128 = 0uLL;
                  v129 = 0uLL;
                  v97 = [v58 countByEnumeratingWithState:&v128 objects:v168 count:16];
                  v37 = v116;
                  if (v97)
                  {
                    v98 = v97;
                    v99 = *v129;
                    do
                    {
                      for (jj = 0; jj != v98; ++jj)
                      {
                        if (*v129 != v99)
                        {
                          objc_enumerationMutation(v58);
                        }

                        _writeInt64IntoData(v39, *(*(&v128 + 1) + 8 * jj));
                      }

                      v98 = [v58 countByEnumeratingWithState:&v128 objects:v168 count:16];
                    }

                    while (v98);
                  }
                }

                else
                {
                  v134 = 0uLL;
                  v135 = 0uLL;
                  v132 = 0uLL;
                  v133 = 0uLL;
                  v93 = [v58 countByEnumeratingWithState:&v132 objects:v169 count:16];
                  v37 = v116;
                  if (v93)
                  {
                    v94 = v93;
                    v95 = *v133;
                    do
                    {
                      for (kk = 0; kk != v94; ++kk)
                      {
                        if (*v133 != v95)
                        {
                          objc_enumerationMutation(v58);
                        }

                        _writeInt32IntoData(v39, *(*(&v132 + 1) + 8 * kk));
                      }

                      v94 = [v58 countByEnumeratingWithState:&v132 objects:v169 count:16];
                    }

                    while (v94);
                  }
                }
              }

              else
              {
                _writeInt32IntoData(v39, 0);
                v64 = v125;
              }

              v101 = [v39 length];
              v127 = bswap64(v101);
              [v39 replaceBytesInRange:32 withBytes:{8, &v127}];
              v126 = bswap64(__buf);
              [v39 replaceBytesInRange:40 withBytes:{8, &v126}];
              v102 = pwrite(v37, [v39 bytes], v101, 0);
              if (v101 && v102 == v101)
              {
                goto LABEL_137;
              }

              v103 = *__error();
              v104 = objc_autoreleasePoolPush();
              _pflogInitialize(1);
              if (_pflogging_enable_oslog >= 1)
              {
                v105 = _pflogging_catastrophic_mode;
                LogStream = _PFLogGetLogStream(1);
                v107 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
                if (v105)
                {
                  if (v107)
                  {
                    goto LABEL_144;
                  }
                }

                else if (v107)
                {
LABEL_144:
                  v113 = objc_opt_class();
                  *buf = 138412802;
                  v181 = v113;
                  v182 = 2112;
                  v183 = __offsetb;
                  v184 = 1024;
                  v185 = v103;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): error writing section cached info at %@ with error %d\n", buf, 0x1Cu);
                }
              }

              v108 = objc_opt_class();
              _NSCoreDataLog_console(1, " (%@): error writing section cached info at %@ with error %d", v108, __offsetb, v103);
              objc_autoreleasePoolPop(v104);
              ftruncate(v37, 0);
              unlink(v120);
LABEL_137:

              close(v37);
              v22 = v64;
              goto LABEL_138;
            }
          }

          v76 = *__error();
          v77 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog < 1)
          {
            goto LABEL_102;
          }

          v78 = v9;
          v79 = _pflogging_catastrophic_mode;
          v80 = _PFLogGetLogStream(1);
          v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
          if (v79)
          {
            v9 = v78;
            if (v81)
            {
              goto LABEL_140;
            }
          }

          else
          {
            v9 = v78;
            if (v81)
            {
LABEL_140:
              v110 = objc_opt_class();
              v177.st_dev = 138412802;
              *&v177.st_mode = v110;
              WORD2(v177.st_ino) = 2112;
              *(&v177.st_ino + 6) = v78;
              HIWORD(v177.st_gid) = 1024;
              v177.st_rdev = v76;
              _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): couldn't create section info file at %@ : %d\n", &v177, 0x1Cu);
            }
          }

LABEL_102:
          v86 = objc_opt_class();
          _NSCoreDataLog_console(1, " (%@): couldn't create section info file at %@ : %d", v86, v9, v76);
          v87 = v77;
LABEL_105:
          objc_autoreleasePoolPop(v87);
          goto LABEL_139;
        }

        v82 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v83 = _pflogging_catastrophic_mode;
          v84 = _PFLogGetLogStream(1);
          v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
          if (v83)
          {
            if (v85)
            {
              goto LABEL_143;
            }
          }

          else if (v85)
          {
LABEL_143:
            v112 = objc_opt_class();
            v177.st_dev = 138412802;
            *&v177.st_mode = v112;
            WORD2(v177.st_ino) = 2112;
            *(&v177.st_ino + 6) = v5;
            HIWORD(v177.st_gid) = 2112;
            *&v177.st_rdev = v166;
            _os_log_error_impl(&dword_18565F000, v84, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): couldn't create section info cache directory at %@ : %@\n", &v177, 0x20u);
          }
        }

        v88 = objc_opt_class();
        _NSCoreDataLog_console(1, " (%@): couldn't create section info cache directory at %@ : %@", v88, v5, v166);
        v87 = v82;
        goto LABEL_105;
      }

      v16 = [-[NSFetchedResultsController _sectionCachePath](a1) stringByAppendingPathComponent:@"sectionInfo"];
      v17 = [v16 fileSystemRepresentation];
      if (!v17 || (v18 = open(v17, 2), v18 < 0))
      {
LABEL_35:
        v15 = *(a1 + 72);
        goto LABEL_36;
      }

      v19 = v18;
      __buf = 0;
      memset(&v177, 0, sizeof(v177));
      if (fstat(v18, &v177) || v177.st_size < 40)
      {
LABEL_34:
        close(v19);
        goto LABEL_35;
      }

      if (pread(v19, &__buf, 8uLL, 40) == 8)
      {
        __offsetc = bswap64(__buf);
        v124 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        v20 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
        [(NSFetchedResultsController *)a1 _appendAffectedStoreInfoToData:v20 adjustedOffset:0];
        v21 = pwrite(v19, [v20 bytes], objc_msgSend(v20, "length"), __offsetc);
        if (v21 == [v20 length])
        {

          close(v19);
          v22 = v124;
LABEL_138:
          [v22 drain];
          goto LABEL_139;
        }

        __offseta = *__error();
        v29 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_142;
        }

        v119 = v29;
        v30 = v20;
        v31 = v12;
        v32 = v9;
        v33 = _pflogging_catastrophic_mode;
        log = _PFLogGetLogStream(1);
        v34 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
        if (v33)
        {
          v9 = v32;
          v12 = v31;
          v20 = v30;
          v29 = v119;
          if (v34)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v9 = v32;
          v12 = v31;
          v20 = v30;
          v29 = v119;
          if (v34)
          {
LABEL_146:
            v115 = objc_opt_class();
            *buf = 138412802;
            v181 = v115;
            v182 = 2112;
            v183 = v16;
            v184 = 1024;
            v185 = __offseta;
            _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): error writing section cached info at %@ with error %d\n", buf, 0x1Cu);
          }
        }

LABEL_142:
        v111 = objc_opt_class();
        _NSCoreDataLog_console(1, " (%@): error writing section cached info at %@ with error %d", v111, v16, __offseta);
        objc_autoreleasePoolPop(v29);
        ftruncate(v19, 0);

        close(v19);
        [v124 drain];
        goto LABEL_35;
      }

      v23 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v24 = v12;
        v25 = v9;
        v26 = _pflogging_catastrophic_mode;
        v27 = _PFLogGetLogStream(1);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (v26)
        {
          v9 = v25;
          v12 = v24;
          if (v28)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v9 = v25;
          v12 = v24;
          if (v28)
          {
LABEL_145:
            v114 = objc_opt_class();
            *buf = 138412290;
            v181 = v114;
            _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): couldn't read cache file to update store info timestamps\n", buf, 0xCu);
          }
        }
      }

      v35 = objc_opt_class();
      _NSCoreDataLog_console(1, " (%@): couldn't read cache file to update store info timestamps", v35);
      objc_autoreleasePoolPop(v23);
      goto LABEL_34;
    }
  }

LABEL_139:
  v109 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_recursivePerformBlockAndWait:(void *)a3 withContext:
{
  if (result)
  {
    v5 = result;
    v6 = [a3 parentContext];
    if ([a3 concurrencyType])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __72__NSFetchedResultsController__recursivePerformBlockAndWait_withContext___block_invoke;
      v7[3] = &unk_1E6EC34A0;
      v7[4] = v6;
      v7[5] = v5;
      v7[6] = a2;
      return [a3 performBlockAndWait:v7];
    }

    else
    {
      [(NSManagedObjectContext *)a3 lockObjectStore];
      if (v6)
      {
        [NSFetchedResultsController _recursivePerformBlockAndWait:v5 withContext:a2];
      }

      else
      {
        (*(a2 + 16))(a2);
      }

      return [(NSManagedObjectContext *)a3 unlockObjectStore];
    }
  }

  return result;
}

- (uint64_t)_conditionallyDispatchSnapshotToDelegate:(void *)a3 updatesInfo:
{
  v36 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (*(result + 73))
    {
      v4 = NSClassFromString(@"NSDiffableDataSourceSnapshot");
      if (!v4)
      {
        v4 = NSClassFromString(@"_PFDiffableDataSourceSnapshot");
      }

      v5 = objc_alloc_init(v4);
      context = objc_autoreleasePoolPush();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = v3;
      obj = *(v3 + 104);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v30;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v29 + 1) + 8 * i);
            v11 = objc_autoreleasePoolPush();
            v12 = [v10 name];
            if (v12)
            {
              v13 = v12;
            }

            else
            {
              v13 = @"d69e6c783a242772974cfc99189691b88e9d37c3";
            }

            v34 = v13;
            [v5 appendSectionsWithIdentifiers:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v34, 1)}];
            [v5 appendItemsWithIdentifiers:objc_msgSend(objc_msgSend(v10 intoSectionWithIdentifier:{"objects"), "valueForKey:", @"objectID", v13}];
            objc_autoreleasePoolPop(v11);
          }

          v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v7);
      }

      if ([a3 count])
      {
        v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a3, "count")}];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = [a3 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(a3);
              }

              [v14 addObject:{objc_msgSend(objc_msgSend(*(*(&v25 + 1) + 8 * j), "object"), "objectID")}];
            }

            v16 = [a3 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v16);
        }

        [v5 reloadItemsWithIdentifiers:v14];
      }

      objc_autoreleasePoolPop(context);
      [a2 controller:v23 didChangeContentWithSnapshot:v5];

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __72__NSFetchedResultsController__recursivePerformBlockAndWait_withContext___block_invoke(void *a1)
{
  if (a1[4])
  {
    return [NSFetchedResultsController _recursivePerformBlockAndWait:a1[6] withContext:?];
  }

  else
  {
    return (*(a1[6] + 16))();
  }
}

- (id)objectAtIndexPath:(NSIndexPath *)indexPath
{
  v40 = *MEMORY[0x1E69E9840];
  if (!indexPath && (z9dsptsiQ80etb9782fsrs98bfdle88 & 0x100000000) != 0)
  {
    goto LABEL_36;
  }

  v5 = [(NSIndexPath *)indexPath indexAtPosition:0];
  v6 = [(NSIndexPath *)indexPath indexAtPosition:1];
  sections = self->_sections;
  if (sections)
  {
    v8 = [(NSMutableOrderedSet *)sections count];
    if (v5 >= [(NSMutableOrderedSet *)self->_sections count])
    {
      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v10 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v12 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v10)
          {
            if (v12)
            {
              *buf = 134217984;
              v37 = v5;
LABEL_41:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NSFetchedResultsController: no section at index %lu in sections list\n", buf, 0xCu);
            }
          }

          else if (v12)
          {
            *buf = 134217984;
            v37 = v5;
            goto LABEL_41;
          }
        }

        _NSCoreDataLog_console(1, "NSFetchedResultsController: no section at index %lu in sections list", v5);
        objc_autoreleasePoolPop(v9);
        if ((dword_1ED4BEEC0 & 0x1000000) == 0)
        {
          goto LABEL_36;
        }

        v34 = MEMORY[0x1E695DF30];
        v35 = *MEMORY[0x1E695D940];
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no section at index %lu", v5];
        v28 = v34;
        v29 = v35;
LABEL_44:
        objc_exception_throw([v28 exceptionWithName:v29 reason:v30 userInfo:0]);
      }

LABEL_16:
      v17 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_29;
      }

      v18 = _pflogging_catastrophic_mode;
      v19 = _PFLogGetLogStream(1);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        if (!v20)
        {
          goto LABEL_29;
        }

        *buf = 0;
      }

      else
      {
        if (!v20)
        {
          goto LABEL_29;
        }

        *buf = 0;
      }

      _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: NSFetchedResultsController: cannot access fetched objects before -performFetch:\n", buf, 2u);
LABEL_29:
      _NSCoreDataLog_console(1, "NSFetchedResultsController: cannot access fetched objects before -performFetch:");
      objc_autoreleasePoolPop(v17);
      if ((dword_1ED4BEEC0 & 0x1000000) != 0)
      {
        v28 = MEMORY[0x1E695DF30];
        v29 = *MEMORY[0x1E695D940];
        v30 = @"cannot access fetched objects before -performFetch:";
        goto LABEL_44;
      }

      goto LABEL_36;
    }
  }

  else if (v5 >= [0 count])
  {
    goto LABEL_16;
  }

  v13 = [(NSMutableOrderedSet *)self->_sections objectAtIndex:v5];
  if (v6 >= [v13 numberOfObjects])
  {
    v21 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_32;
    }

    v22 = _pflogging_catastrophic_mode;
    v23 = _PFLogGetLogStream(1);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    else if (!v24)
    {
      goto LABEL_32;
    }

    *buf = 134218240;
    v37 = v6;
    v38 = 2048;
    v39 = v5;
    _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: NSFetchedResultsController: no object at index %lu in section at index %lu\n", buf, 0x16u);
LABEL_32:
    _NSCoreDataLog_console(1, "NSFetchedResultsController: no object at index %lu in section at index %lu", v6, v5);
    objc_autoreleasePoolPop(v21);
    if (HIBYTE(dword_1ED4BEEC0) == 1)
    {
      v31 = MEMORY[0x1E695DF30];
      v32 = *MEMORY[0x1E695D940];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no object at index %lu in section at index %lu", v6, v5];
      v28 = v31;
      v29 = v32;
      goto LABEL_44;
    }

LABEL_36:
    v33 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (v13)
  {
    v14 = v13[4];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 + v6;
  if (v14 + v6 >= [self->_fetchedObjects count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [self->_fetchedObjects objectAtIndex:v15];
  }

  v25 = v16;
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (NSIndexPath)indexPathForObject:(id)object
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (object && ((*&self->_flags & 8) != 0 ? (v4 = [(NSMutableDictionary *)self->_sectionsByName objectForKey:[(NSFetchedResultsController *)self _sectionNameForObject:?]]) : (v4 = [(NSMutableOrderedSet *)self->_sections lastObject]), (v5 = v4) != 0 && (v6 = [(NSFetchedResultsController *)*(v4 + 8) _indexOfFetchedID:0 isManagedObjectID:?], v6 != 0x7FFFFFFFFFFFFFFFLL) && (v7 = v6 - *(v5 + 32), v7 != 0x7FFFFFFFFFFFFFFFLL)))
  {
    v10[0] = [(_NSDefaultSectionInfo *)v5 sectionNumber];
    v10[1] = v7;
    result = [MEMORY[0x1E696AC88] indexPathWithIndexes:v10 length:2];
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (__CFString)_sectionNameForObject:(__CFString *)result
{
  if (result)
  {
    v3 = result;
    if ([result->info resultType] == 1)
    {
      v4 = [a2 _retainedURIString];

      return v4;
    }

    else if ([v3->info resultType] == 4)
    {
      return @"Count";
    }

    else
    {
      v5 = [a2 valueForKeyPath:v3->length];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 objectID];
        LODWORD(v3[2].info) |= 0x10u;
        result = [v6 _retainedURIString];
      }

      else
      {
        result = [v5 description];
      }

      if (!result)
      {
        return &stru_1EF3F1768;
      }
    }
  }

  return result;
}

- (NSString)sectionIndexTitleForSectionName:(NSString *)sectionName
{
  if (!sectionName || ![(NSString *)sectionName length])
  {
    return 0;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", -[NSString characterAtIndex:](sectionName, "characterAtIndex:", 0)];

  return [v4 uppercaseString];
}

- (NSArray)sectionIndexTitles
{
  v19 = *MEMORY[0x1E69E9840];
  result = self->_sectionIndexTitles;
  if (!result)
  {
    self->_sectionIndexTitles = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableOrderedSet count](self->_sections, "count")}];
    self->_sectionIndexTitlesSections = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableOrderedSet count](self->_sections, "count")}];
    if ((*&self->_flags & 8) != 0)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      sections = self->_sections;
      v5 = [(NSMutableOrderedSet *)sections countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = *v15;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(sections);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            v11 = [v10 indexTitle];
            if (v11)
            {
              v12 = v11;
              if (([v7 isEqualToString:v11] & 1) == 0)
              {
                [self->_sectionIndexTitles addObject:v12];
                [self->_sectionIndexTitlesSections addObject:v10];
                v7 = v12;
              }
            }
          }

          v6 = [(NSMutableOrderedSet *)sections countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);
      }
    }

    result = self->_sectionIndexTitles;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex
{
  v7 = [(NSFetchedResultsController *)self sectionIndexTitles];
  if ([(NSArray *)v7 count]<= sectionIndex)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid Section Index offset%li", sectionIndex];
    v13 = v10;
    v14 = v11;
    goto LABEL_8;
  }

  if (([-[NSArray objectAtIndex:](v7 objectAtIndex:{sectionIndex), "isEqualToString:", title}] & 1) == 0)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D930];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Index title at %li is not equal to '%@'", sectionIndex, title];
    v13 = v15;
    v14 = v16;
LABEL_8:
    objc_exception_throw([v13 exceptionWithName:v14 reason:v12 userInfo:0]);
  }

  v8 = [self->_sectionIndexTitlesSections objectAtIndex:sectionIndex];

  return [(_NSDefaultSectionInfo *)v8 sectionNumber];
}

+ (void)deleteCacheWithName:(NSString *)name
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[NSFetchedResultsController _CoreDataSectionCachesPath];
  v6 = v5;
  if (name)
  {
    v6 = [v5 stringByAppendingPathComponent:name];
  }

  [v4 removeItemAtPath:v6 error:0];
}

void __72__NSFetchedResultsController_PrivateMethods___computeSectionInfo_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) objectAtIndex:v2];
      if (([v3 isFault] & 1) == 0 && (objc_msgSend(objc_msgSend(v3, "objectID"), "isTemporaryID") & 1) == 0)
      {
        v4 = [v3 _versionReference];
        v5 = [v3 objectID];
        v6 = *(*(a1 + 40) + 16);
        if (v6)
        {
          v7 = *(v6 + 32);
        }

        else
        {
          v7 = 0;
        }

        v8 = [v7 newValuesForObjectWithID:v5 withContext:? error:?];
        if (!v8 || (v9 = v8, v10 = [v8 _versionNumber], v9, v4 != v10))
        {
          if (([v3 hasChanges] & 1) == 0)
          {
            [*(*(a1 + 40) + 16) refreshObject:v3 mergeChanges:0];
          }
        }
      }

      ++v2;
    }

    while (v2 < *(a1 + 48));
  }
}

- (uint64_t)_resolveSectionIndexTitleForSectionName:(uint64_t)a1
{
  if ((*(a1 + 73) & 8) != 0)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((v5 + 8));
    }

    else
    {
      WeakRetained = 0;
    }

    v7 = [WeakRetained controller:a1 sectionIndexTitleForSectionName:a2];

    return v7;
  }

  else
  {

    return [a1 sectionIndexTitleForSectionName:a2];
  }
}

- (void)_makeMutableFetchedObjects
{
  if ((*(a1 + 72) & 4) == 0)
  {
    v2 = *(a1 + 96);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (v3 = *(a1 + 96), objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      *(a1 + 96) = [[_PFMutableProxyArray alloc] initWithPFArray:*(a1 + 96)];
      v4 = *(a1 + 72) | 2;
    }

    else
    {
      *(a1 + 96) = [MEMORY[0x1E695DF70] arrayWithArray:v2];
      v4 = *(a1 + 72) & 0xFFFFFFFD;
    }

    *(a1 + 72) = v4;

    *(a1 + 72) |= 4u;
  }
}

- (uint64_t)_indexPathForIndex:(void *)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a1 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 32);
        }

        else
        {
          v9 = 0;
        }

        if ([*(*(&v12 + 1) + 8 * v7) numberOfObjects] + v9 > a2)
        {
          v16[0] = [(_NSDefaultSectionInfo *)v8 sectionNumber];
          if (v8)
          {
            v10 = *(v8 + 32);
          }

          else
          {
            v10 = 0;
          }

          v16[1] = a2 - v10;
          result = [MEMORY[0x1E696AC88] indexPathWithIndexes:v16 length:2];
          goto LABEL_17;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v12 objects:v17 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_objectInResults:(uint64_t)a1
{
  v3 = *(a1 + 48);
  if ((*(a1 + 72) & 8) == 0 || (result = [(NSFetchedResultsController *)a1 _sectionNameForObject:a2]) != 0)
  {
    if ([a2 isDeleted])
    {
      return 0;
    }

    else if (v3)
    {

      return [v3 evaluateWithObject:a2];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)_updateSectionOffsetsStartingAtSection:(uint64_t)a1
{
  v4 = [*(a1 + 104) count];
  v5 = [(_NSDefaultSectionInfo *)a2 sectionNumber]+ 1;
  if (v5 < v4)
  {
    do
    {
      v6 = [*(a1 + 104) objectAtIndex:v5];
      if (a2)
      {
        v7 = a2[4];
      }

      else
      {
        v7 = 0;
      }

      v8 = [a2 numberOfObjects];
      if (v6)
      {
        *(v6 + 32) = v8 + v7;

        *(v6 + 56) = 0;
      }

      ++v5;
      a2 = v6;
    }

    while (v4 != v5);
  }
}

- (BOOL)_updateFetchedObjectsWithInsertChange:(uint64_t)a1
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [a2 object];
  if ((*(a1 + 72) & 8) == 0)
  {
    v4 = [*(a1 + 104) lastObject];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(NSFetchedResultsController *)a1 _sectionNameForObject:v3];
  if (v5)
  {
    v4 = [*(a1 + 112) objectForKey:v5];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:
  v7 = [v6 numberOfObjects];
  v8 = [*(a1 + 96) count];
  if (v7 > v8)
  {
    goto LABEL_53;
  }

  if (!v6)
  {
    if ((*(a1 + 72) & 8) != 0)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v12 = *(a1 + 104);
      v13 = [v12 countByEnumeratingWithState:&v39 objects:&v43 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v40;
        do
        {
          v16 = 0;
          do
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v39 + 1) + 8 * v16);
            if (v17)
            {
              v18 = *(v17 + 32);
            }

            else
            {
              v18 = 0;
            }

            [v11 addObject:{objc_msgSend(*(a1 + 96), "objectAtIndex:", v18)}];
            ++v16;
          }

          while (v14 != v16);
          v19 = [v12 countByEnumeratingWithState:&v39 objects:&v43 count:16];
          v14 = v19;
        }

        while (v19);
      }

      v20 = +[NSFetchedResultsController _insertIndexForObject:inArray:lowIdx:highIdx:sortDescriptors:](NSFetchedResultsController, v3, v11, 0, [v11 count] - 1, objc_msgSend(objc_msgSend(a1, "fetchRequest"), "sortDescriptors"));

      v21 = [(NSFetchedResultsController *)a1 _sectionNameForObject:v3];
      v22 = v3;
      if ([*(a1 + 8) resultType] != 1)
      {
        if ([*(a1 + 8) resultType] == 4)
        {
          v22 = @"Count";
        }

        else
        {
          v22 = [(__CFString *)v3 valueForKeyPath:*(a1 + 24)];
        }
      }

      v23 = [(NSFetchedResultsController *)a1 _resolveSectionIndexTitleForSectionName:v21];
      if (v20)
      {
        v24 = [*(a1 + 104) objectAtIndex:v20 - 1];
        if (v24)
        {
          v25 = v24[4];
        }

        else
        {
          v25 = 0;
        }

        v26 = [v24 numberOfObjects] + v25;
      }

      else
      {
        v26 = 0;
      }

      v6 = [[_NSDefaultSectionInfo alloc] initWithController:a1 name:v21 sectionId:v22 indexTitle:v23 sectionOffset:v26];
      [*(a1 + 104) insertObject:v6 atIndex:v20];
      [*(a1 + 112) setObject:v6 forKey:{objc_msgSend(v6, "name")}];

      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
    }

    else
    {
      v6 = [[_NSDefaultSectionInfo alloc] initWithController:a1 name:0 sectionId:0 indexTitle:0 sectionOffset:0];
      [*(a1 + 104) addObject:v6];

      if (!*(a1 + 104))
      {
        v6 = 0;
LABEL_11:
        v9 = 0;
        v10 = 1;
        goto LABEL_36;
      }
    }

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v10 = 0;
  v9 = v6[4];
LABEL_36:
  v27 = +[NSFetchedResultsController _insertIndexForObject:inArray:lowIdx:highIdx:sortDescriptors:](NSFetchedResultsController, v3, *(a1 + 96), v9, v9 + [v6 numberOfObjects] - 1, objc_msgSend(objc_msgSend(a1, "fetchRequest"), "sortDescriptors"));
  if (v27 < [*(a1 + 96) count] && objc_msgSend(*(a1 + 96), "objectAtIndex:", v27))
  {
    v28 = [*(a1 + 96) count];
    v29 = [_PFIndexCacheOffset alloc];
    if (v29)
    {
      v43.receiver = v29;
      v43.super_class = _PFIndexCacheOffset;
      v30 = objc_msgSendSuper2(&v43, sel_init);
      v31 = v30;
      if (v30)
      {
        v30[1] = v27;
        v30[2] = v28;
        v30[3] = 1;
      }
    }

    else
    {
      v31 = 0;
    }

    [*(a1 + 144) addObject:v31];
  }

  if ((*(a1 + 72) & 4) == 0)
  {
    [(NSFetchedResultsController *)a1 _makeMutableFetchedObjects];
  }

  if ([*(a1 + 96) count] > v27 && objc_msgSend(*(a1 + 96), "objectAtIndex:", v27))
  {
    v32 = [*(a1 + 96) count];
    v33 = [_PFIndexCacheOffset alloc];
    if (v33)
    {
      v43.receiver = v33;
      v43.super_class = _PFIndexCacheOffset;
      v34 = objc_msgSendSuper2(&v43, sel_init);
      v35 = v34;
      if (v34)
      {
        v34[1] = v27;
        v34[2] = v32;
        v34[3] = 1;
      }
    }

    else
    {
      v35 = 0;
    }

    [*(a1 + 144) addObject:v35];
  }

  [*(a1 + 96) insertObject:v3 atIndex:v27];
  [*(a1 + 136) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v27), -[__CFString objectID](v3, "objectID")}];
  v36 = [v6 numberOfObjects];
  if ((v10 & 1) == 0)
  {
    v6[5] = v36 + 1;

    v6[7] = 0;
  }

  [(NSFetchedResultsController *)a1 _updateSectionOffsetsStartingAtSection:v6];
LABEL_53:
  result = v7 <= v8;
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)_insertIndexForObject:(void *)a3 inArray:(uint64_t)a4 lowIdx:(uint64_t)a5 highIdx:(void *)a6 sortDescriptors:
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a5 >= a4)
  {
    while (2)
    {
      v11 = (a5 + a4) / 2;
      v14 = [a3 objectAtIndex:v11];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = [a6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
LABEL_6:
        v18 = 0;
        while (1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(a6);
          }

          v19 = [*(*(&v20 + 1) + 8 * v18) compareObject:v14 toObject:a2];
          if (v19)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [a6 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v16)
            {
              goto LABEL_6;
            }

            goto LABEL_3;
          }
        }

        if (v19 == 1)
        {
          if (a4 == v11)
          {
            goto LABEL_2;
          }

          a5 = v11 - 1;
        }

        else
        {
          if (a5 == v11)
          {
            v11 = a5 + 1;
            break;
          }

          a4 = v11 + 1;
        }

        if (a4 <= a5)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
LABEL_2:
    v11 = a4;
  }

LABEL_3:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (uint64_t)_preprocessDeletedObjects:(void *)a3 deletesInfo:(void *)a4 sectionsWithDeletes:
{
  v30 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = [a2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          if (_objectIDEntityAffectsResults(v6, v10))
          {
            v11 = [(NSFetchedResultsController *)v6 _indexOfFetchedID:v10 isManagedObjectID:1];
            if (v11 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v12 = v11;
              v13 = [*(v6 + 16) objectWithID:v10];
              v14 = [_PFChangeInfo alloc];
              if (v14)
              {
                v15 = [(_PFChangeInfo *)v14 initWithObject:v13];
                v16 = v15;
                if (v15)
                {
                  *(v15 + 16) = 2;
                }
              }

              else
              {
                v16 = 0;
              }

              v17 = [(NSFetchedResultsController *)*(v6 + 104) _indexPathForIndex:v12];
              if (v17)
              {
                v19 = v17;
                if (v16)
                {
                  objc_setProperty_nonatomic(v16, v18, v17, 24);
                }

                v21 = [*(v6 + 104) objectAtIndex:{objc_msgSend(v19, "indexAtPosition:", 0)}];
                if (v16)
                {
                  objc_setProperty_nonatomic(v16, v20, v21, 40);
                }

                if ((*(v6 + 72) & 8) != 0)
                {
                  v22 = [(_NSDefaultSectionInfo *)v21 sectionNumber];
                  if (v21)
                  {
                    v21[6] = v22;
                  }

                  [a4 setObject:v21 forKey:{objc_msgSend(v21, "name")}];
                }
              }

              [a3 addObject:v16];
            }
          }

          ++v9;
        }

        while (v7 != v9);
        result = [a2 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v7 = result;
      }

      while (result);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_updateFetchedObjectsWithDeleteChange:(unint64_t)a1
{
  v2 = a2;
  v35 = *MEMORY[0x1E69E9840];
  v4 = [a2 object];
  if (v2)
  {
    v2 = *(v2 + 40);
    if (v2)
    {
      v5 = [(NSFetchedResultsController *)*(v2 + 8) _indexOfFetchedID:v4 isManagedObjectID:0];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = *(v2 + 32);
        v7 = v5 - v6;
        if (v5 - v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v18) = 0;
LABEL_23:
          v19 = v6 + v7;
          if ((*(a1 + 72) & 4) == 0)
          {
            [(NSFetchedResultsController *)a1 _makeMutableFetchedObjects];
          }

          v20 = [objc_msgSend(*(a1 + 96) objectAtIndex:{v19), "objectID"}];
          [*(a1 + 96) removeObjectAtIndex:v19];
          [*(a1 + 136) removeObjectForKey:v20];
          if ([*(a1 + 96) count])
          {
            v21 = [*(a1 + 96) count];
            v22 = [_PFIndexCacheOffset alloc];
            if (v22)
            {
              v34.receiver = v22;
              v34.super_class = _PFIndexCacheOffset;
              v23 = objc_msgSendSuper2(&v34, sel_init);
              v24 = v23;
              if (v23)
              {
                v23[1] = v19;
                v23[2] = v21;
                v23[3] = -1;
              }
            }

            else
            {
              v24 = 0;
            }

            [*(a1 + 144) addObject:v24];
          }

          else
          {
            [*(a1 + 144) removeAllObjects];
          }

          v25 = [v2 numberOfObjects];
          if ((v18 & 1) == 0)
          {
            *(v2 + 40) = v25 - 1;

            *(v2 + 56) = 0;
          }

          [(NSFetchedResultsController *)a1 _updateSectionOffsetsStartingAtSection:v2];
          goto LABEL_34;
        }
      }
    }
  }

  v8 = -[NSFetchedResultsController _indexOfFetchedID:isManagedObjectID:](a1, [v4 objectID], 1);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_34:
    if (v2 && ![v2 numberOfObjects] && (*(a1 + 72) & 8) != 0)
    {
      [*(a1 + 104) removeObjectAtIndex:-[_NSDefaultSectionInfo sectionNumber](v2)];
      [*(a1 + 112) removeObjectForKey:{objc_msgSend(v2, "name")}];
      *(v2 + 8) = 0;

      *(v2 + 56) = 0;
      *(a1 + 120) = 0;

      *(a1 + 128) = 0;
    }

    v18 = 1;
    goto LABEL_39;
  }

  v7 = v8;
  v9 = *(a1 + 104);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:&v34 count:16];
  if (!v10)
  {
LABEL_20:
    if (v2)
    {
      LOBYTE(v18) = 0;
      v6 = *(v2 + 32);
    }

    else
    {
LABEL_46:
      v6 = 0;
      LOBYTE(v18) = 1;
    }

    goto LABEL_23;
  }

  v11 = v10;
  v12 = *v31;
LABEL_8:
  v13 = 0;
  while (1)
  {
    if (*v31 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = *(*(&v30 + 1) + 8 * v13);
    v15 = v14 ? *(v14 + 32) : 0;
    if ([*(*(&v30 + 1) + 8 * v13) numberOfObjects] + v15 > v7)
    {
      break;
    }

    if (v11 == ++v13)
    {
      v16 = [v9 countByEnumeratingWithState:&v30 objects:&v34 count:16];
      v11 = v16;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  v17 = [(_NSDefaultSectionInfo *)v14 sectionNumber];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v28 = [*(a1 + 104) objectAtIndex:v17];
  v2 = v28;
  if (!v28)
  {
    v7 = 0;
    goto LABEL_46;
  }

  v29 = [(NSFetchedResultsController *)*(v28 + 8) _indexOfFetchedID:v4 isManagedObjectID:0];
  v18 = 0;
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
    v6 = *(v2 + 32);
    v7 = v29 - v6;
    if (v29 - v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

- (uint64_t)_preprocessUpdatedObjects:(void *)a3 insertsInfo:(void *)a4 deletesInfo:(void *)a5 updatesInfo:(void *)a6 sectionsWithDeletes:(void *)a7 newSectionNames:(void *)a8 treatAsRefreshes:
{
  v66 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v11 = a2;
    v12 = result;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    result = [a2 countByEnumeratingWithState:&v60 objects:v65 count:16];
    v53 = result;
    if (result)
    {
      v13 = *v61;
      v46 = a4;
      v47 = a6;
      v44 = v11;
      v45 = a3;
      v50 = *v61;
      do
      {
        v14 = 0;
        do
        {
          if (*v61 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v60 + 1) + 8 * v14);
          context = objc_autoreleasePoolPush();
          if (_objectIDEntityAffectsResults(v12, v15))
          {
            v16 = [(NSFetchedResultsController *)v12 _indexOfFetchedID:v15 isManagedObjectID:1];
            newValue = v16 == 0x7FFFFFFFFFFFFFFFLL ? 0 : [(NSFetchedResultsController *)*(v12 + 104) _indexPathForIndex:v16];
            v52 = [*(v12 + 16) objectWithID:v15];
            v17 = [(NSFetchedResultsController *)v12 _objectInResults:v52];
            if ((v17 & 1) != 0 || newValue)
            {
              v18 = [[_PFChangeInfo alloc] initWithObject:v52];
              if (v17)
              {
                self = v18;
                if (!newValue)
                {
                  v20 = v18;
                  if (v18)
                  {
                    v18->_changeType = 1;
                  }

                  v25 = a3;
                  if ((*(v12 + 72) & 8) != 0)
                  {
                    v27 = [(NSFetchedResultsController *)v12 _sectionNameForObject:v52];
                    v25 = a3;
                    if (v27)
                    {
                      v28 = [*(v12 + 112) objectForKey:v27];
                      v25 = a3;
                      if (!v28)
                      {
                        [a7 addObject:v27];
                        v25 = a3;
                      }
                    }
                  }

                  goto LABEL_55;
                }

                v20 = v18;
                if (([a3 containsObject:v18] & 1) == 0 && (objc_msgSend(a4, "containsObject:", self) & 1) == 0)
                {
                  if ([a8 containsObject:v15])
                  {
                    v21 = 1;
                    v22 = 1;
                  }

                  else
                  {
                    v29 = [v52 changedValuesForCurrentEvent];
                    v56 = 0u;
                    v57 = 0u;
                    v58 = 0u;
                    v59 = 0u;
                    v30 = [v29 countByEnumeratingWithState:&v56 objects:v64 count:16];
                    if (v30)
                    {
                      v31 = v30;
                      v21 = 0;
                      v22 = 0;
                      v32 = *v57;
                      do
                      {
                        for (i = 0; i != v31; ++i)
                        {
                          if (*v57 != v32)
                          {
                            objc_enumerationMutation(v29);
                          }

                          v34 = *(*(&v56 + 1) + 8 * i);
                          v35 = [*(v12 + 88) containsObject:v34];
                          v22 |= v35;
                          v21 |= [*(v12 + 32) isEqualToString:v34] | v35;
                        }

                        v31 = [v29 countByEnumeratingWithState:&v56 objects:v64 count:16];
                      }

                      while (v31);
                    }

                    else
                    {
                      v21 = 0;
                      v22 = 0;
                    }
                  }

                  v37 = [*(v12 + 104) objectAtIndex:{objc_msgSend(newValue, "indexAtPosition:", 0)}];
                  v20 = self;
                  if (!self)
                  {
                    v25 = a5;
                    a4 = v46;
                    a6 = v47;
                    a3 = v45;
                    goto LABEL_45;
                  }

                  objc_setProperty_nonatomic(self, v36, newValue, 24);
                  objc_setProperty_nonatomic(self, v38, v37, 40);
                  a4 = v46;
                  a6 = v47;
                  a3 = v45;
                  if ((v21 | v22))
                  {
                    self->_changeType = 3;
                    v25 = a5;
LABEL_45:
                    v11 = v44;
                    if (v21)
                    {
                      v25 = a5;
                      if ((*(v12 + 72) & 8) != 0)
                      {
                        v39 = [(NSFetchedResultsController *)v12 _sectionNameForObject:v52];
                        if (!v39)
                        {
                          goto LABEL_50;
                        }

                        v40 = v39;
                        v41 = [*(v12 + 112) objectForKey:v39];
                        if (!v41)
                        {
                          [a7 addObject:v40];
LABEL_50:
                          v41 = 0;
                        }

                        v25 = a5;
                        if (v37)
                        {
                          v25 = a5;
                          if (v37 != v41)
                          {
                            v37[6] = [(_NSDefaultSectionInfo *)v37 sectionNumber];
                            [a6 setObject:v37 forKey:{objc_msgSend(v37, "name")}];
                            v25 = a5;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    self->_changeType = 4;
                    v25 = a5;
                    v11 = v44;
                  }

LABEL_55:
                  [v25 addObject:v20];
                  v13 = v50;
                }

                goto LABEL_57;
              }

              v20 = v18;
              if (v18)
              {
                v18->_changeType = 2;
                objc_setProperty_nonatomic(v18, v19, newValue, 24);
              }

              v24 = [*(v12 + 104) objectAtIndex:{objc_msgSend(newValue, "indexAtPosition:", 0)}];
              if (v20)
              {
                objc_setProperty_nonatomic(v20, v23, v24, 40);
              }

              v25 = a4;
              if ((*(v12 + 72) & 8) != 0)
              {
                v26 = [(_NSDefaultSectionInfo *)v24 sectionNumber];
                if (v24)
                {
                  v24[6] = v26;
                }

                [a6 setObject:v24 forKey:{objc_msgSend(v24, "name")}];
                v25 = a4;
              }

              goto LABEL_55;
            }
          }

LABEL_57:
          objc_autoreleasePoolPop(context);
          ++v14;
        }

        while (v14 != v53);
        result = [v11 countByEnumeratingWithState:&v60 objects:v65 count:16];
        v53 = result;
      }

      while (result);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_lowerMoveOperationsToUpdatesForSection:(void *)a3 withInsertedObjects:(void *)a4 deletedObjects:(void *)a5 updatedObjects:
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    context = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = v9;
    if (a2)
    {
      v10 = [MEMORY[0x1E695DF70] array];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = [a5 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v42;
      do
      {
        v14 = 0;
        do
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(a5);
          }

          v15 = *(*(&v41 + 1) + 8 * v14);
          if (v15)
          {
            if (v15[2] == 4)
            {
              goto LABEL_19;
            }

            v16 = v9;
            if (!a2)
            {
LABEL_18:
              [v16 addObject:v15];
              goto LABEL_19;
            }

            v17 = v15[6];
          }

          else
          {
            v16 = v9;
            if (!a2)
            {
              goto LABEL_18;
            }

            v17 = 0;
          }

          if (v17 == a2)
          {
            [v9 addObject:*(*(&v41 + 1) + 8 * v14)];
          }

          if (v15)
          {
            v18 = v15[5];
          }

          else
          {
            v18 = 0;
          }

          v16 = v10;
          if (v18 == a2)
          {
            goto LABEL_18;
          }

LABEL_19:
          ++v14;
        }

        while (v12 != v14);
        v19 = [a5 countByEnumeratingWithState:&v41 objects:v45 count:16];
        v12 = v19;
      }

      while (v19);
    }

    v20 = [objc_msgSend(a3 "allObjects")];
    [v20 addObjectsFromArray:v9];
    [v20 sortUsingComparator:&__block_literal_global_12];
    v21 = [objc_msgSend(a4 "allObjects")];
    [v21 addObjectsFromArray:v10];
    [v21 sortUsingComparator:&__block_literal_global_213];
    if ([v20 count])
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      do
      {
        if ([v21 count] <= v24)
        {
          break;
        }

        v25 = [v20 objectAtIndex:v22];
        v26 = [v21 objectAtIndex:v24];
        v27 = v26;
        if (!v25 || v25[2] != 1)
        {
          if (v26 && *(v26 + 16) == 2)
          {
            goto LABEL_55;
          }

          v28 = v25 ? v25[4] : 0;
          v29 = [v28 indexAtPosition:1];
          v30 = v27 ? v27[3] : 0;
          v31 = v29 - v22;
          v32 = [v30 indexAtPosition:1] - v24;
          if (v31 >= v32)
          {
            if (v32 < v31)
            {
              goto LABEL_55;
            }

            if (v25 == v27)
            {
              if (v25)
              {
                v25[2] = 4;
              }

              ++v23;
LABEL_55:
              ++v24;
              goto LABEL_56;
            }

            v39 = [v21 indexOfObject:v25];
            v33 = [v20 indexOfObject:v27];
            if (v39 != 0x7FFFFFFFFFFFFFFFLL && v39 >= v24)
            {
              if (v33 == 0x7FFFFFFFFFFFFFFFLL || v33 < v22)
              {
                goto LABEL_55;
              }

              v34 = v33;
              v35 = v25 ? v25[3] : 0;
              if (v31 == [v35 indexAtPosition:1] - v39)
              {
                v36 = v27 ? v27[4] : 0;
                if (v32 != [v36 indexAtPosition:1] - v34)
                {
                  goto LABEL_55;
                }

                v37 = [v21 indexOfObject:v25];
                if ([v20 indexOfObject:v27] > v37)
                {
                  goto LABEL_55;
                }
              }
            }
          }
        }

        ++v23;
LABEL_56:
        v22 = v23;
      }

      while ([v20 count] > v23);
    }

    objc_autoreleasePoolPop(context);
  }

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __136__NSFetchedResultsController_PrivateMethods___lowerMoveOperationsToUpdatesForSection_withInsertedObjects_deletedObjects_updatedObjects___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = 0;
    if (!a3)
    {
      return [v3 compare:a3];
    }

    goto LABEL_3;
  }

  v3 = *(a2 + 32);
  if (a3)
  {
LABEL_3:
    a3 = *(a3 + 32);
  }

  return [v3 compare:a3];
}

uint64_t __136__NSFetchedResultsController_PrivateMethods___lowerMoveOperationsToUpdatesForSection_withInsertedObjects_deletedObjects_updatedObjects___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = 0;
    if (!a3)
    {
      return [v3 compare:a3];
    }

    goto LABEL_3;
  }

  v3 = *(a2 + 24);
  if (a3)
  {
LABEL_3:
    a3 = *(a3 + 24);
  }

  return [v3 compare:a3];
}

- (uint64_t)_core_managedObjectContextDidChange:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v4 = __82__NSFetchedResultsController_PrivateMethods___core_managedObjectContextDidChange___block_invoke;
    v5 = &unk_1E6EC1600;
    v6 = result;
    v7 = a2;
    if ([*(result + 16) concurrencyType])
    {
      return [*(v2 + 16) performBlockAndWait:&v3];
    }

    else
    {
      return v4(&v3);
    }
  }

  return result;
}

char *__82__NSFetchedResultsController_PrivateMethods___core_managedObjectContextDidChange___block_invoke(char *result)
{
  v280 = *MEMORY[0x1E69E9840];
  v1 = *(result + 4);
  if (!*(v1 + 96) || !*(v1 + 104))
  {
    goto LABEL_204;
  }

  v2 = result;
  v3 = [*(result + 5) objectForKey:@"invalidatedAll"];
  v4 = *(v2 + 4);
  v194 = v2;
  if (!v3)
  {
    v10 = v4;
    v186 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v190 = [*(v2 + 4) delegate];
    if (!v190)
    {
      v11 = *(v2 + 4);
      if (v11[10])
      {
        [v11 setDelegate:0];
      }
    }

    v12 = v190;
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v189 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v192 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v187 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v188 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = [*(*(v2 + 4) + 8) predicate];
    v15 = *(*(v2 + 4) + 56);
    if (v14 != v15)
    {
      v16 = v14;

      *(*(v2 + 4) + 56) = v16;
      if (v16)
      {
        v17 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:v16, *(*(v2 + 4) + 16)];
      }

      else
      {
        v17 = 0;
      }

      *(*(v2 + 4) + 48) = v17;
    }

    v193 = v13;
    v34 = *(v2 + 5);
    v185 = @"inserted_objectIDs";
    v35 = [v34 objectForKey:?];
    v36 = *(v2 + 5);
    v184 = @"updated_objectIDs";
    v191 = [objc_msgSend(v36 "objectForKey:"mutableCopy"")];
    v37 = *(v2 + 4);
    if (v37)
    {
      v277 = 0u;
      v276 = 0u;
      v275 = 0u;
      v274 = 0u;
      v38 = [v35 countByEnumeratingWithState:&v274 objects:buf count:16];
      if (v38)
      {
        v39 = *v275;
        do
        {
          v40 = 0;
          do
          {
            if (*v275 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v41 = *(*(&v274 + 1) + 8 * v40);
            v42 = objc_autoreleasePoolPush();
            if (_objectIDEntityAffectsResults(v37, v41))
            {
              if ([(NSFetchedResultsController *)v37 _indexOfFetchedID:v41 isManagedObjectID:1]== 0x7FFFFFFFFFFFFFFFLL)
              {
                v43 = [*(v37 + 16) objectWithID:v41];
                if ([(NSFetchedResultsController *)v37 _objectInResults:v43])
                {
                  v44 = [_PFChangeInfo alloc];
                  if (v44)
                  {
                    v45 = [(_PFChangeInfo *)v44 initWithObject:v43];
                    v46 = v45;
                    if (v45)
                    {
                      *(v45 + 16) = 1;
                    }
                  }

                  else
                  {
                    v46 = 0;
                  }

                  if ((*(v37 + 72) & 8) != 0)
                  {
                    v47 = [(NSFetchedResultsController *)v37 _sectionNameForObject:v43];
                    if (v47)
                    {
                      if (![*(v37 + 112) objectForKey:v47])
                      {
                        [v188 addObject:v47];
                      }
                    }
                  }

                  [v193 addObject:v46];
                }
              }

              else
              {
                [v191 addObject:v41];
              }
            }

            objc_autoreleasePoolPop(v42);
            ++v40;
          }

          while (v38 != v40);
          v48 = [v35 countByEnumeratingWithState:&v274 objects:buf count:16];
          v38 = v48;
        }

        while (v48);
      }
    }

    v49 = v194;
    -[NSFetchedResultsController _preprocessDeletedObjects:deletesInfo:sectionsWithDeletes:](*(v194 + 4), [*(v194 + 5) objectForKey:@"deleted_objectIDs"], v189, v187);
    -[NSFetchedResultsController _preprocessDeletedObjects:deletesInfo:sectionsWithDeletes:](*(v194 + 4), [*(v194 + 5) objectForKey:@"invalidated_objectIDs"], v189, v187);
    v50 = [*(v194 + 5) objectForKey:@"refreshed_objectIDs"];
    v51 = v193;
    [(NSFetchedResultsController *)*(v194 + 4) _preprocessUpdatedObjects:v191 insertsInfo:v193 deletesInfo:v189 updatesInfo:v192 sectionsWithDeletes:v187 newSectionNames:v188 treatAsRefreshes:v50];
    if (v50)
    {
      v52 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v50];
      v53 = [*(v194 + 5) objectForKey:@"deleted_objectIDs"];
      if (v53)
      {
        [v52 minusSet:v53];
      }

      v54 = [*(v194 + 5) objectForKey:v184];
      if (v54)
      {
        [v52 minusSet:v54];
      }

      v55 = [*(v194 + 5) objectForKey:v185];
      if (v55)
      {
        [v52 minusSet:v55];
      }

      [(NSFetchedResultsController *)*(v194 + 4) _preprocessUpdatedObjects:v52 insertsInfo:v193 deletesInfo:v189 updatesInfo:v192 sectionsWithDeletes:v187 newSectionNames:v188 treatAsRefreshes:v50];
    }

    if (![v193 count] && !objc_msgSend(v189, "count") && !objc_msgSend(v192, "count"))
    {
LABEL_203:

      [v186 drain];
      result = *(v194 + 4);
      goto LABEL_204;
    }

    v56 = *(v194 + 4);
    v57 = *(v56 + 72);
    if ((v57 & 0x1000) != 0)
    {
      [v190 controllerWillChangeContent:?];
      v56 = *(v194 + 4);
      v57 = *(v56 + 72);
    }

    *(v56 + 72) = v57 | 1;
    v58 = *(v49 + 4);
    if (*(v58 + 96) && *(v58 + 104))
    {
      v256 = 0u;
      v257 = 0u;
      v258 = 0u;
      v259 = 0u;
      v59 = [v189 countByEnumeratingWithState:&v256 objects:buf count:16];
      if (v59)
      {
        v60 = *v257;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v257 != v60)
            {
              objc_enumerationMutation(v189);
            }

            if (![(NSFetchedResultsController *)v58 _updateFetchedObjectsWithDeleteChange:?])
            {
              goto LABEL_109;
            }
          }

          v59 = [v189 countByEnumeratingWithState:&v256 objects:buf count:16];
        }

        while (v59);
      }

      v255 = 0u;
      v254 = 0u;
      v253 = 0u;
      v252 = 0u;
      v62 = [v192 countByEnumeratingWithState:&v252 objects:&v274 count:16];
      if (v62)
      {
        v63 = *v253;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v253 != v63)
            {
              objc_enumerationMutation(v192);
            }

            v65 = *(*(&v252 + 1) + 8 * j);
            if (v65 && v65[2] == 3 && ![(NSFetchedResultsController *)v58 _updateFetchedObjectsWithDeleteChange:v65])
            {
              goto LABEL_109;
            }
          }

          v62 = [v192 countByEnumeratingWithState:&v252 objects:&v274 count:16];
        }

        while (v62);
      }

      v250 = 0u;
      v251 = 0u;
      v248 = 0u;
      v249 = 0u;
      v66 = [v192 countByEnumeratingWithState:&v248 objects:v273 count:16];
      if (!v66)
      {
        goto LABEL_99;
      }

      v67 = *v249;
      do
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v249 != v67)
          {
            objc_enumerationMutation(v192);
          }

          v69 = *(*(&v248 + 1) + 8 * k);
          v70 = objc_autoreleasePoolPush();
          if (v69 && v69[2] == 3 && ![(NSFetchedResultsController *)v58 _updateFetchedObjectsWithInsertChange:v69])
          {
LABEL_108:
            objc_autoreleasePoolPop(v70);
            goto LABEL_109;
          }

          objc_autoreleasePoolPop(v70);
        }

        v66 = [v192 countByEnumeratingWithState:&v248 objects:v273 count:16];
      }

      while (v66);
LABEL_99:
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v71 = [v193 countByEnumeratingWithState:&v244 objects:v272 count:16];
      if (v71)
      {
        v72 = *v245;
        do
        {
          for (m = 0; m != v71; ++m)
          {
            if (*v245 != v72)
            {
              objc_enumerationMutation(v193);
            }

            v74 = *(*(&v244 + 1) + 8 * m);
            v70 = objc_autoreleasePoolPush();
            if (![(NSFetchedResultsController *)v58 _updateFetchedObjectsWithInsertChange:v74])
            {
              goto LABEL_108;
            }

            objc_autoreleasePoolPop(v70);
          }

          v71 = [v193 countByEnumeratingWithState:&v244 objects:v272 count:16];
        }

        while (v71);
      }

      [(NSFetchedResultsController *)v58 _updateIndexCacheWithFetchedObjects];
LABEL_120:
      if ((*(*(v194 + 4) + 72) & 8) != 0)
      {
        v79 = [MEMORY[0x1E695DFA8] set];
      }

      else
      {
        v79 = 0;
      }

      v84 = objc_autoreleasePoolPush();
      v238 = 0u;
      v239 = 0u;
      v236 = 0u;
      v237 = 0u;
      v85 = [v192 countByEnumeratingWithState:&v236 objects:v270 count:16];
      if (v85)
      {
        v86 = *v237;
        do
        {
          v87 = 0;
          do
          {
            if (*v237 != v86)
            {
              objc_enumerationMutation(v192);
            }

            v88 = *(*(&v236 + 1) + 8 * v87);
            v89 = [*(v194 + 4) indexPathForObject:{objc_msgSend(v88, "object")}];
            if (v88)
            {
              objc_setProperty_nonatomic(v88, v90, v89, 32);
              v91 = *(v194 + 4);
              if ((*(v91 + 72) & 8) == 0)
              {
                goto LABEL_138;
              }

              v92 = v88[4];
            }

            else
            {
              v91 = *(v194 + 4);
              if ((*(v91 + 72) & 8) == 0)
              {
                goto LABEL_138;
              }

              v92 = 0;
            }

            v93 = [*(v91 + 104) objectAtIndex:{objc_msgSend(v92, "indexAtPosition:", 0)}];
            if (!v88 || (objc_setProperty_nonatomic(v88, v94, v93, 48), v88[5] == v88[6]))
            {
              [v79 addObject:?];
            }

LABEL_138:
            ++v87;
          }

          while (v85 != v87);
          v95 = [v192 countByEnumeratingWithState:&v236 objects:v270 count:16];
          v85 = v95;
        }

        while (v95);
      }

      v234 = 0u;
      v235 = 0u;
      v232 = 0u;
      v233 = 0u;
      v96 = [v193 countByEnumeratingWithState:&v232 objects:v269 count:16];
      if (!v96)
      {
        goto LABEL_159;
      }

      v97 = *v233;
LABEL_146:
      v98 = 0;
      while (1)
      {
        if (*v233 != v97)
        {
          objc_enumerationMutation(v193);
        }

        v99 = *(*(&v232 + 1) + 8 * v98);
        v100 = [*(v194 + 4) indexPathForObject:{objc_msgSend(v99, "object")}];
        if (v99)
        {
          objc_setProperty_nonatomic(v99, v101, v100, 32);
          v102 = *(v194 + 4);
          if ((*(v102 + 72) & 8) != 0)
          {
            v103 = v99[4];
            goto LABEL_152;
          }
        }

        else
        {
          v102 = *(v194 + 4);
          if ((*(v102 + 72) & 8) != 0)
          {
            v103 = 0;
LABEL_152:
            v104 = [*(v102 + 104) objectAtIndex:{objc_msgSend(v103, "indexAtPosition:", 0)}];
            if (v99)
            {
              objc_setProperty_nonatomic(v99, v105, v104, 48);
            }
          }
        }

        if (v96 == ++v98)
        {
          v106 = [v193 countByEnumeratingWithState:&v232 objects:v269 count:16];
          v96 = v106;
          if (!v106)
          {
LABEL_159:
            objc_autoreleasePoolPop(v84);
            v51 = v193;
            if (([(NSFetchedResultsController *)*(v194 + 4) _conditionallyDispatchSnapshotToDelegate:v190 updatesInfo:v192]& 1) != 0)
            {
              goto LABEL_203;
            }

            v107 = *(v194 + 4);
            v108 = *(v107 + 72);
            if ((v108 & 0x40) == 0)
            {
              if ((v108 & 8) != 0)
              {
                v218 = 0u;
                v219 = 0u;
                v216 = 0u;
                v217 = 0u;
                v141 = [v79 countByEnumeratingWithState:&v216 objects:v265 count:16];
                if (v141)
                {
                  v142 = *v217;
                  do
                  {
                    for (n = 0; n != v141; ++n)
                    {
                      if (*v217 != v142)
                      {
                        objc_enumerationMutation(v79);
                      }

                      v144 = *(*(&v216 + 1) + 8 * n);
                      v145 = objc_autoreleasePoolPush();
                      v215[0] = MEMORY[0x1E69E9820];
                      v215[1] = 3221225472;
                      v215[2] = __82__NSFetchedResultsController_PrivateMethods___core_managedObjectContextDidChange___block_invoke_219;
                      v215[3] = &unk_1E6EC34E8;
                      v215[4] = v144;
                      v146 = [MEMORY[0x1E696AE18] predicateWithBlock:v215];
                      -[NSFetchedResultsController _lowerMoveOperationsToUpdatesForSection:withInsertedObjects:deletedObjects:updatedObjects:](*(v194 + 4), v144, [v193 filteredSetUsingPredicate:v146], objc_msgSend(v189, "filteredSetUsingPredicate:", v146), objc_msgSend(v192, "filteredSetUsingPredicate:", v146));
                      objc_autoreleasePoolPop(v145);
                    }

                    v141 = [v79 countByEnumeratingWithState:&v216 objects:v265 count:16];
                  }

                  while (v141);
                }
              }

              else
              {
                [(NSFetchedResultsController *)v107 _lowerMoveOperationsToUpdatesForSection:v193 withInsertedObjects:v189 deletedObjects:v192 updatedObjects:?];
              }

              if ((*(*(v194 + 4) + 73) & 2) != 0)
              {
                v213 = 0u;
                v214 = 0u;
                v211 = 0u;
                v212 = 0u;
                v147 = [v189 countByEnumeratingWithState:&v211 objects:v264 count:16];
                if (v147)
                {
                  v148 = *v212;
                  do
                  {
                    v149 = 0;
                    do
                    {
                      if (*v212 != v148)
                      {
                        objc_enumerationMutation(v189);
                      }

                      v150 = *(*(&v211 + 1) + 8 * v149);
                      v151 = [v150 object];
                      if (v150)
                      {
                        v152 = v150[3];
                      }

                      else
                      {
                        v152 = 0;
                      }

                      [v190 controller:*(v194 + 4) didChangeObject:v151 atIndexPath:v152 forChangeType:2 newIndexPath:0];
                      ++v149;
                    }

                    while (v147 != v149);
                    v153 = [v189 countByEnumeratingWithState:&v211 objects:v264 count:16];
                    v147 = v153;
                  }

                  while (v153);
                }
              }

              if ((*(*(v194 + 4) + 73) & 4) != 0)
              {
                v209 = 0u;
                v210 = 0u;
                v207 = 0u;
                v208 = 0u;
                v154 = [v188 countByEnumeratingWithState:&v207 objects:v263 count:16];
                if (v154)
                {
                  v155 = *v208;
                  do
                  {
                    v156 = 0;
                    v157 = v194;
                    do
                    {
                      if (*v208 != v155)
                      {
                        objc_enumerationMutation(v188);
                        v157 = v194;
                      }

                      v158 = [*(*(v157 + 4) + 112) objectForKey:*(*(&v207 + 1) + 8 * v156)];
                      if (v158)
                      {
                        [v190 controller:*(v194 + 4) didChangeSection:v158 atIndex:-[_NSDefaultSectionInfo sectionNumber](v158) forChangeType:1];
                      }

                      ++v156;
                      v157 = v194;
                    }

                    while (v154 != v156);
                    v154 = [v188 countByEnumeratingWithState:&v207 objects:v263 count:16];
                  }

                  while (v154);
                }

                v205 = 0u;
                v206 = 0u;
                v203 = 0u;
                v204 = 0u;
                v159 = [v187 allValues];
                v160 = [v159 countByEnumeratingWithState:&v203 objects:v262 count:16];
                if (v160)
                {
                  v161 = *v204;
                  do
                  {
                    v162 = 0;
                    do
                    {
                      if (*v204 != v161)
                      {
                        objc_enumerationMutation(v159);
                      }

                      v163 = *(*(&v203 + 1) + 8 * v162);
                      if (![*(*(v194 + 4) + 112) objectForKey:{objc_msgSend(v163, "name")}])
                      {
                        if (v163)
                        {
                          v164 = v163[6];
                        }

                        else
                        {
                          v164 = 0;
                        }

                        [v190 controller:*(v194 + 4) didChangeSection:v163 atIndex:v164 forChangeType:2];
                      }

                      ++v162;
                    }

                    while (v160 != v162);
                    v165 = [v159 countByEnumeratingWithState:&v203 objects:v262 count:16];
                    v160 = v165;
                  }

                  while (v165);
                }
              }

              if ((*(*(v194 + 4) + 73) & 2) != 0)
              {
                v201 = 0u;
                v202 = 0u;
                v199 = 0u;
                v200 = 0u;
                v166 = [v193 countByEnumeratingWithState:&v199 objects:v261 count:16];
                if (v166)
                {
                  v167 = *v200;
                  do
                  {
                    v168 = 0;
                    do
                    {
                      if (*v200 != v167)
                      {
                        objc_enumerationMutation(v193);
                      }

                      v169 = *(*(&v199 + 1) + 8 * v168);
                      v170 = [v169 object];
                      if (v169)
                      {
                        v171 = v169[4];
                      }

                      else
                      {
                        v171 = 0;
                      }

                      [v190 controller:*(v194 + 4) didChangeObject:v170 atIndexPath:0 forChangeType:1 newIndexPath:v171];
                      ++v168;
                    }

                    while (v166 != v168);
                    v172 = [v193 countByEnumeratingWithState:&v199 objects:v261 count:16];
                    v166 = v172;
                  }

                  while (v172);
                }

                v197 = 0u;
                v198 = 0u;
                v195 = 0u;
                v196 = 0u;
                v173 = [v192 countByEnumeratingWithState:&v195 objects:v260 count:16];
                if (v173)
                {
                  v174 = *v196;
                  do
                  {
                    v175 = 0;
                    do
                    {
                      if (*v196 != v174)
                      {
                        objc_enumerationMutation(v192);
                      }

                      v176 = *(*(&v195 + 1) + 8 * v175);
                      v177 = [v176 object];
                      if (v176)
                      {
                        v178 = v176[2];
                        v179 = v176[3];
                        v176 = v176[4];
                        if ((dword_1ED4BEEC0 & 0x10000) == 0 && v178 == 3)
                        {
                          v180 = [v179 indexAtPosition:0];
                          if (v180 == [v176 indexAtPosition:0])
                          {
                            v181 = [v179 indexAtPosition:1];
                            if (v181 == [v176 indexAtPosition:1])
                            {
                              v176 = 0;
                              v178 = 4;
                            }

                            else
                            {
                              v178 = 3;
                            }
                          }

                          else
                          {
                            v178 = 3;
                          }
                        }
                      }

                      else
                      {
                        v179 = 0;
                        v178 = 0;
                      }

                      [v190 controller:*(v194 + 4) didChangeObject:v177 atIndexPath:v179 forChangeType:v178 newIndexPath:v176];
                      ++v175;
                    }

                    while (v173 != v175);
                    v182 = [v192 countByEnumeratingWithState:&v195 objects:v260 count:16];
                    v173 = v182;
                  }

                  while (v182);
                }
              }

              v51 = v193;
              if ((*(*(v194 + 4) + 72) & 0x80) != 0)
              {
                [v190 controllerDidChangeContent:?];
              }

              goto LABEL_203;
            }

            v109 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v189, "count") + objc_msgSend(v193, "count") + 2 * objc_msgSend(v192, "count")}];
            v185 = objc_autoreleasePoolPush();
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v110 = [v193 countByEnumeratingWithState:&v228 objects:v268 count:16];
            if (v110)
            {
              v111 = *v229;
              do
              {
                v112 = 0;
                do
                {
                  if (*v229 != v111)
                  {
                    objc_enumerationMutation(v193);
                  }

                  v113 = *(*(&v228 + 1) + 8 * v112);
                  v114 = MEMORY[0x1E696ADD0];
                  v115 = [objc_msgSend(v113 "object")];
                  if (v113)
                  {
                    v116 = v113[4];
                  }

                  else
                  {
                    v116 = 0;
                  }

                  [v109 addObject:{objc_msgSend(v114, "changeWithObject:type:index:", v115, 0, objc_msgSend(v116, "indexAtPosition:", 1))}];
                  ++v112;
                }

                while (v110 != v112);
                v117 = [v193 countByEnumeratingWithState:&v228 objects:v268 count:16];
                v110 = v117;
              }

              while (v117);
            }

            v226 = 0u;
            v227 = 0u;
            v224 = 0u;
            v225 = 0u;
            v118 = [v189 countByEnumeratingWithState:&v224 objects:v267 count:16];
            if (v118)
            {
              v119 = *v225;
              do
              {
                v120 = 0;
                do
                {
                  if (*v225 != v119)
                  {
                    objc_enumerationMutation(v189);
                  }

                  v121 = *(*(&v224 + 1) + 8 * v120);
                  v122 = MEMORY[0x1E696ADD0];
                  v123 = [objc_msgSend(v121 "object")];
                  if (v121)
                  {
                    v124 = v121[3];
                  }

                  else
                  {
                    v124 = 0;
                  }

                  [v109 addObject:{objc_msgSend(v122, "changeWithObject:type:index:", v123, 1, objc_msgSend(v124, "indexAtPosition:", 1))}];
                  ++v120;
                }

                while (v118 != v120);
                v125 = [v189 countByEnumeratingWithState:&v224 objects:v267 count:16];
                v118 = v125;
              }

              while (v125);
            }

            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v126 = [v192 countByEnumeratingWithState:&v220 objects:v266 count:16];
            if (v126)
            {
              v127 = *v221;
              do
              {
                v128 = 0;
                do
                {
                  if (*v221 != v127)
                  {
                    objc_enumerationMutation(v192);
                  }

                  v129 = *(*(&v220 + 1) + 8 * v128);
                  v130 = MEMORY[0x1E696ADD0];
                  v131 = [objc_msgSend(v129 "object")];
                  if (v129)
                  {
                    v132 = [v129[4] indexAtPosition:1];
                    v133 = v129[3];
                  }

                  else
                  {
                    v132 = [0 indexAtPosition:1];
                    v133 = 0;
                  }

                  [v109 addObject:{objc_msgSend(v130, "changeWithObject:type:index:associatedIndex:", v131, 0, v132, objc_msgSend(v133, "indexAtPosition:", 1))}];
                  v134 = MEMORY[0x1E696ADD0];
                  v135 = [objc_msgSend(v129 "object")];
                  if (v129)
                  {
                    v136 = [v129[3] indexAtPosition:1];
                    v137 = v129[4];
                  }

                  else
                  {
                    v136 = [0 indexAtPosition:1];
                    v137 = 0;
                  }

                  [v109 addObject:{objc_msgSend(v134, "changeWithObject:type:index:associatedIndex:", v135, 1, v136, objc_msgSend(v137, "indexAtPosition:", 1))}];
                  ++v128;
                }

                while (v126 != v128);
                v138 = [v192 countByEnumeratingWithState:&v220 objects:v266 count:16];
                v126 = v138;
              }

              while (v138);
            }

            objc_autoreleasePoolPop(v185);
            v139 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v109];
            [v190 controller:*(v194 + 4) didChangeContentWithDifference:v139];

LABEL_202:
            v51 = v193;
            goto LABEL_203;
          }

          goto LABEL_146;
        }
      }
    }

LABEL_109:
    v75 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (NSFetchedResultsController) rebuilding section caches\n", buf, 2u);
        }
      }

      else
      {
        v77 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v77, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (NSFetchedResultsController) rebuilding section caches\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v78 = 1;
    }

    else
    {
      v78 = 4;
    }

    _NSCoreDataLog_console(v78, "(NSFetchedResultsController) rebuilding section caches");
    objc_autoreleasePoolPop(v75);
    *&v274 = 0;
    +[NSFetchedResultsController deleteCacheWithName:](NSFetchedResultsController, "deleteCacheWithName:", [*(v194 + 4) cacheName]);
    if ([*(v194 + 4) performFetch:&v274])
    {
      goto LABEL_120;
    }

    v80 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v81 = _pflogging_catastrophic_mode == 0;
      v82 = _PFLogGetLogStream(1);
      v83 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);
      if (v81)
      {
        if (v83)
        {
          *buf = 138412290;
          v279 = v274;
          goto LABEL_279;
        }
      }

      else if (v83)
      {
        *buf = 138412290;
        v279 = v274;
LABEL_279:
        _os_log_error_impl(&dword_18565F000, v82, OS_LOG_TYPE_ERROR, "CoreData: error: (NSFetchedResultsController) error refetching objects after context update: %@\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, "(NSFetchedResultsController) error refetching objects after context update: %@", v274);
    objc_autoreleasePoolPop(v80);
    goto LABEL_202;
  }

  v5 = v4[12];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(v2 + 4);
  if (isKindOfClass)
  {
    [(_PFBatchFaultingArray *)*(v7 + 96) _turnAllBatchesIntoFaults];
    v8 = *(v2 + 4);
    v9 = *(v8 + 72) | 2;
  }

  else
  {
    v18 = [(NSFetchedResultsController *)v7 _fetchedObjectsArrayOfObjectIDs];
    v19 = [v18 count];
    v20 = v19;
    if (!v19)
    {
      goto LABEL_22;
    }

    v21 = *(*(v2 + 4) + 96);
    MEMORY[0x1EEE9AC00](v19);
    v23 = &v183 - v22;
    if (v20 > 0x200uLL)
    {
      v23 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v183 - v22, 8 * v20);
    }

    v24 = v20 < 0x201uLL;
    [v18 getObjects:v23 range:{0, v20}];
    v25 = [[_PFArray alloc] initWithObjects:v23 count:v20 andFlags:27];
    if (!v24)
    {
      NSZoneFree(0, v23);
    }

    v26 = [_PFBatchFaultingArray alloc];
    v27 = (v194 + 32);
    *(*v27 + 96) = [(_PFBatchFaultingArray *)v26 initWithPFArray:v25 andRequest:*(*(v194 + 4) + 8) andContext:*(*(v194 + 4) + 16)];
    [(NSFetchedResultsController *)*v27 _updateIndexCacheWithFetchedObjects];

    if (![(NSFetchedResultsController *)*v27 _computeSectionInfo:0 error:?])
    {
      v28 = v194 + 32;

      *(*v28 + 104) = 0;
      *(*v28 + 112) = 0;

      *(*v28 + 120) = 0;
      *(*v28 + 128) = 0;
    }

    v2 = v194;
    *(*(v194 + 4) + 72) |= 2u;
    v8 = *(v2 + 4);
    v9 = *(v8 + 72) & 0xFFFFFFFB;
  }

  *(v8 + 72) = v9;
LABEL_22:
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v29 = *(*(v2 + 4) + 104);
  result = [v29 countByEnumeratingWithState:&v240 objects:v271 count:16];
  v30 = result;
  if (result)
  {
    v31 = *v241;
    do
    {
      v32 = 0;
      do
      {
        if (*v241 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v240 + 1) + 8 * v32);
        if (v33)
        {

          *(v33 + 56) = 0;
        }

        v32 = v32 + 1;
      }

      while (v30 != v32);
      result = [v29 countByEnumeratingWithState:&v240 objects:v271 count:16];
      v30 = result;
    }

    while (result);
  }

LABEL_204:
  v140 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __82__NSFetchedResultsController_PrivateMethods___core_managedObjectContextDidChange___block_invoke_219(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if ((v2 - 3) >= 2)
  {
    v6 = v2 == 1;
    v5 = a2 + 6;
    v3 = (a1 + 32);
    if (!v6)
    {
      v5 = a2 + 5;
    }

    return *v5 == *v3;
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  if (a2[5] != v4)
  {
    v5 = a2 + 6;
    return *v5 == *v3;
  }

  return 1;
}

- (void)_managedObjectContextDidChangeObjectIDs:(id)a3
{
  v4 = [a3 userInfo];

  [(NSFetchedResultsController *)self _core_managedObjectContextDidChange:v4];
}

- (void)_managedObjectContextDidMutateObjectIDs:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a3 "userInfo")];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v64;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v64 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v63 + 1) + 8 * i);
        v10 = [(NSFetchedResultsController *)self _indexOfCachedID:v9];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v10;
          v12 = [v4 objectForKey:v9];
          -[NSMutableDictionary setObject:forKey:](self->_indexCache, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11], v12);
          [(NSMutableDictionary *)self->_indexCache removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v6);
  }

  flags = self->_flags;
  if ((*&flags & 0x10) != 0)
  {
    context = objc_autoreleasePoolPush();
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v14 = [v4 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v60;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v60 != v16)
          {
            objc_enumerationMutation(v4);
          }

          v18 = *(*(&v59 + 1) + 8 * j);
          v19 = objc_autoreleasePoolPush();
          sectionsByName = self->_sectionsByName;
          *&self->_flags |= 0x10u;
          v21 = -[NSMutableDictionary objectForKeyedSubscript:](sectionsByName, "objectForKeyedSubscript:", [v18 _retainedURIString]);
          if (v21)
          {
            v22 = v21;
            v23 = [_NSDefaultSectionInfo alloc];
            v24 = [v4 objectForKeyedSubscript:v18];
            *&self->_flags |= 0x10u;
            v25 = -[_NSDefaultSectionInfo initWithController:name:sectionId:indexTitle:sectionOffset:](v23, self, [v24 _retainedURIString], objc_msgSend(v22, "sectionId"), objc_msgSend(v22, "indexTitle"), v22[4]);
            v26 = [v22 numberOfObjects];
            if (v25)
            {
              v25[5] = v26;

              v25[7] = 0;
            }

            [(NSMutableOrderedSet *)self->_sections replaceObjectAtIndex:[(_NSDefaultSectionInfo *)v22 sectionNumber] withObject:v25];
            -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sectionsByName, "setObject:forKeyedSubscript:", v25, [v25 name]);
            -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sectionsByName, "setObject:forKeyedSubscript:", 0, [v22 name]);
            [obj addObject:v25];
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v4 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v15);
    }

    if ([obj count])
    {
      v27 = [(NSFetchedResultsController *)self delegate];
      if (v27)
      {
        v28 = v27;
        v29 = self->_flags;
        if ((*&v29 & 0x1000) != 0)
        {
          [v27 controllerWillChangeContent:self];
          v29 = self->_flags;
        }

        if ((*&v29 & 0x400) != 0)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v30 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v56;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v56 != v32)
                {
                  objc_enumerationMutation(obj);
                }

                [v28 controller:self didChangeSection:*(*(&v55 + 1) + 8 * k) atIndex:-[_NSDefaultSectionInfo sectionNumber](*(*(&v55 + 1) + 8 * k)) forChangeType:4];
              }

              v31 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
            }

            while (v31);
          }
        }

        if ((*&self->_flags & 0x80) != 0)
        {
          [v28 controllerDidChangeContent:self];
        }
      }
    }

    objc_autoreleasePoolPop(contexta);
    flags = self->_flags;
  }

  if ((*&flags & 0x40) != 0)
  {
    v34 = [(NSFetchedResultsController *)self delegate];
    if (v34 || !self->_delegate)
    {
      contextb = v34;
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      obja = objc_autoreleasePoolPush();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v36 = [v4 countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v52;
        do
        {
          for (m = 0; m != v37; ++m)
          {
            if (*v52 != v38)
            {
              objc_enumerationMutation(v4);
            }

            v40 = *(*(&v51 + 1) + 8 * m);
            v41 = [v4 objectForKeyedSubscript:{v40, contextb}];
            v42 = [(NSFetchedResultsController *)self _indexOfCachedID:v41];
            if (v42 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = v42;
              [v35 addObject:{objc_msgSend(MEMORY[0x1E696ADD0], "changeWithObject:type:index:associatedIndex:", v40, 1, v43, v43)}];
              [v35 addObject:{objc_msgSend(MEMORY[0x1E696ADD0], "changeWithObject:type:index:associatedIndex:", v41, 0, v43, v43)}];
            }
          }

          v37 = [v4 countByEnumeratingWithState:&v51 objects:v67 count:16];
        }

        while (v37);
      }

      objc_autoreleasePoolPop(obja);
      if ([v35 count])
      {
        v44 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v35];
        [contextb controller:self didChangeContentWithDifference:v44];
      }
    }

    else
    {
      [(NSFetchedResultsController *)self setDelegate:0];
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)_managedObjectContextDidChange:(id)a3
{
  if (![objc_msgSend(a3 "userInfo")])
  {
    v5 = [a3 userInfo];

    [(NSFetchedResultsController *)self _core_managedObjectContextDidChange:v5];
  }
}

- (uint64_t)_appendAffectedStoreInfoToData:(void *)a3 adjustedOffset:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 8) affectedStores];
  if (![v6 count])
  {
    v6 = [objc_msgSend(*(a1 + 16) "persistentStoreCoordinator")];
  }

  _writeInt32IntoData(a2, [v6 count]);
  if (a3)
  {
    *a3 = [a2 length] - 4;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        _writeStringIntoData([v11 identifier], a2, v21);
        v12 = stat_path_for_modication_time([v11 URL]);
        v14 = v13;
        _writeInt64IntoData(a2, v12);
        _writeInt64IntoData(a2, v14);
        ++v10;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v8 = result;
    }

    while (result);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_managedObjectContextDidSave:(id)a3
{
  if ([(NSManagedObjectContext *)self->_managedObjectContext concurrencyType])
  {
    managedObjectContext = self->_managedObjectContext;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__NSFetchedResultsController_PrivateMethods___managedObjectContextDidSave___block_invoke;
    v6[3] = &unk_1E6EC1600;
    v6[4] = self;
    v6[5] = a3;
    [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v6];
  }

  else
  {

    [(NSFetchedResultsController *)self _core_managedObjectContextDidSave:a3];
  }
}

@end