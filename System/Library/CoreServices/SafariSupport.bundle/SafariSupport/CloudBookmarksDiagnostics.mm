@interface CloudBookmarksDiagnostics
- (CloudBookmarksDiagnostics)initWithBookmarkStore:(id)a3;
- (id)_changesDictionaryFromDatabase:(void *)a3;
- (id)_identifierForSensitiveString:(id)a3;
- (id)_jsonRepresentationForBookmarkFolderWithLocalID:(id)a3 inDatabase:(void *)a4 foundBookmarksToParents:(id)a5 jsonRepresentationsByLocalIDs:(id)a6;
- (id)_localBookmarksDictionaryFromDatabase:(void *)a3;
- (id)_stringForBookmarkType:(int64_t)a3;
- (id)_stringForFolderType:(int64_t)a3;
- (id)_stringForRemoteMigrationState:(int64_t)a3;
- (void)_collectDiagnosticsDataWithRemoteMigrationInfo:(id)a3 remoteMigrationInfoError:(id)a4 completionHandler:(id)a5;
- (void)collectDiagnosticsDataWithCompletionHandler:(id)a3;
@end

@implementation CloudBookmarksDiagnostics

- (CloudBookmarksDiagnostics)initWithBookmarkStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CloudBookmarksDiagnostics;
  v6 = [(CloudBookmarksDiagnostics *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookmarkStore, a3);
    v8 = +[CloudBookmarkDatabaseAccessProvider bookmarkDatabaseAccessor];
    databaseAccessor = v7->_databaseAccessor;
    v7->_databaseAccessor = v8;

    v10 = v7;
  }

  return v7;
}

- (void)collectDiagnosticsDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  bookmarkStore = self->_bookmarkStore;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077AE8;
  v7[3] = &unk_100134F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CloudBookmarkStore *)bookmarkStore fetchRemoteMigrationInfoInOperationGroup:0 withCompletionHandler:v7];
}

- (void)_collectDiagnosticsDataWithRemoteMigrationInfo:(id)a3 remoteMigrationInfoError:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableDictionary dictionary];
  sensitiveStringIdentifiers = self->_sensitiveStringIdentifiers;
  self->_sensitiveStringIdentifiers = v11;

  v13 = +[NSMutableDictionary dictionary];
  v14 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyDeviceIdentifier];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"(null)";
  }

  [v13 setObject:v16 forKeyedSubscript:@"deviceIdentifier"];

  v17 = [(WBSBookmarkDBAccess *)self->_databaseAccessor createDatabase];
  if (v17)
  {
    v18 = v17;
    [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:v17];
    [(WBSBookmarkDBAccess *)self->_databaseAccessor localCloudKitMigrationState:v18];
    v19 = stringFromLocalMigrationState();
    [v13 setObject:v19 forKeyedSubscript:@"localMigrationState"];

    v20 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyAccountHashWithDatabase:v18];
    v21 = [NSNumber numberWithInt:v20 != 0];
    [v13 setObject:v21 forKeyedSubscript:@"hasAccountHash"];

    v22 = [(CloudBookmarksDiagnostics *)self _changesDictionaryFromDatabase:v18];
    [v13 setObject:v22 forKeyedSubscript:@"changes"];

    v23 = [(CloudBookmarksDiagnostics *)self _localBookmarksDictionaryFromDatabase:v18];
    [v13 setObject:v23 forKeyedSubscript:@"localBookmarks"];

    [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:v18 shouldSave:0];
    CFRelease(v18);
  }

  if (v9)
  {
    v24 = sub_1000D2238();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10007967C(v9, v24);
    }

    v37[0] = @"domain";
    v25 = [v9 domain];
    v38[0] = v25;
    v37[1] = @"code";
    v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 code]);
    v38[1] = v26;
    v37[2] = @"description";
    v27 = [v9 localizedDescription];
    v38[2] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
    [v13 setObject:v28 forKeyedSubscript:@"remoteMigrationStateError"];
  }

  else
  {
    v29 = -[CloudBookmarksDiagnostics _stringForRemoteMigrationState:](self, "_stringForRemoteMigrationState:", [v8 migrationState]);
    [v13 setObject:v29 forKeyedSubscript:@"remoteMigrationState"];

    v30 = [v8 migratorDeviceIdentifier];
    v25 = v30;
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = &stru_100137BA8;
    }

    [v13 setObject:v31 forKeyedSubscript:@"migratorDeviceIdentifier"];
  }

  v32 = self->_sensitiveStringIdentifiers;
  self->_sensitiveStringIdentifiers = 0;

  v36 = 0;
  v33 = [NSJSONSerialization dataWithJSONObject:v13 options:1 error:&v36];
  v34 = v36;
  if (v33)
  {
    v10[2](v10, v33);
  }

  else
  {
    v35 = sub_1000D2238();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1000796F4(v34, v35);
    }

    v10[2](v10, 0);
  }
}

- (id)_stringForRemoteMigrationState:(int64_t)a3
{
  if ((a3 + 1) > 3)
  {
    return @"AwaitingMigration";
  }

  else
  {
    return *(&off_100135030 + a3 + 1);
  }
}

- (id)_changesDictionaryFromDatabase:(void *)a3
{
  v3 = self;
  cf = 0;
  v4 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyChangesWithDatabase:a3 changeToken:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  v5 = [v4 count];
  if (v5 > 1000)
  {
    v54 = 0;
  }

  else
  {
    v54 = [NSMutableArray arrayWithCapacity:v5];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v4;
  v64 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (!v64)
  {
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v7 = 0;
    goto LABEL_51;
  }

  v56 = 0;
  v57 = 0;
  v55 = 0;
  v7 = 0;
  v63 = *v66;
  *&v6 = 138477827;
  v51 = v6;
  v52 = v3;
  v53 = v5;
  do
  {
    for (i = 0; i != v64; i = i + 1)
    {
      if (*v66 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v65 + 1) + 8 * i);
      v10 = [(WBSBookmarkDBAccess *)v3->_databaseAccessor changeTypeForChange:v9, v51];
      v11 = v10;
      if (v10 == 2)
      {
        ++v55;
        v12 = @"Delete";
      }

      else if (v10 == 1)
      {
        v13 = [(WBSBookmarkDBAccess *)v3->_databaseAccessor changeIsDAVMoveChange:v9];
        if (v13)
        {
          v12 = @"Move";
        }

        else
        {
          v12 = @"Modify";
        }

        if (v13)
        {
          v14 = v56 + 1;
        }

        else
        {
          v14 = v56;
        }

        v15 = v57;
        if (!v13)
        {
          v15 = v57 + 1;
        }

        v56 = v14;
        v57 = v15;
      }

      else
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = @"Add";
        }

        if (!v10)
        {
          ++v7;
        }
      }

      v16 = [(WBSBookmarkDBAccess *)v3->_databaseAccessor itemTypeForChange:v9];
      if (v16)
      {
        if (v16 == 1)
        {
          v17 = @"Folder";
          v18 = @"TitleAndIdentityHash";
        }

        else
        {
          v19 = sub_1000D2238();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            databaseAccessor = v3->_databaseAccessor;
            v41 = v19;
            v42 = [(WBSBookmarkDBAccess *)databaseAccessor copyServerIdWithChange:v9];
            *buf = v51;
            v75 = v42;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Change for item with server ID %{private}@ is neither bookmark nor folder.", buf, 0xCu);
          }

          v18 = 0;
          v17 = &stru_100137BA8;
        }
      }

      else
      {
        v17 = @"Bookmark";
        v18 = @"TitleURLAndIdentityHash";
      }

      if (v5 <= 1000)
      {
        v20 = [(WBSBookmarkDBAccess *)v3->_databaseAccessor copyServerIdWithChange:v9];
        v21 = v3->_databaseAccessor;
        if (v11 == 2)
        {
          v62 = v7;
          v22 = [(WBSBookmarkDBAccess *)v21 copyDeletedBookmarkSyncDataWithChange:v9];
          v23 = 0;
          goto LABEL_41;
        }

        v24 = [(WBSBookmarkDBAccess *)v21 copyChangedItemWithChange:v9];
        v25 = v20;
        if (v24)
        {
          v26 = v24;
          v62 = v7;
          v27 = v25;
          v23 = [(WBSBookmarkDBAccess *)v3->_databaseAccessor copyModifiedAttributesWithChange:v9];
          v22 = [(WBSBookmarkDBAccess *)v3->_databaseAccessor copySyncDataWithItem:v26];
          CFRelease(v26);
          v20 = v27;
LABEL_41:
          v59 = v23;
          v60 = v20;
          v61 = v22;
          v28 = [WBBookmarkSyncData syncDataWithContentsOfData:v22];
          v72[0] = @"changeType";
          v72[1] = @"itemType";
          v73[0] = v12;
          v73[1] = v17;
          v29 = &stru_100137BA8;
          if (v20)
          {
            v29 = v20;
          }

          v73[2] = v29;
          v72[2] = @"serverID";
          v72[3] = @"modifiedAttributes";
          v30 = [v23 allKeys];
          v31 = v30;
          v32 = &__NSArray0__struct;
          if (v30)
          {
            v32 = v30;
          }

          v73[3] = v32;
          v72[4] = @"hasSyncData";
          v33 = [NSNumber numberWithBool:v28 != 0];
          v73[4] = v33;
          v72[5] = @"hasCKRecord";
          v34 = [v28 record];
          v35 = [NSNumber numberWithBool:v34 != 0];
          v73[5] = v35;
          v72[6] = @"hasPosition";
          v36 = [v28 position];
          v37 = [NSNumber numberWithBool:v36 != 0];
          v73[6] = v37;
          v72[7] = @"hasTitleGeneration";
          v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v28 hasGenerationForKey:v18]);
          v73[7] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:8];
          [v54 addObject:v39];

          v25 = v60;
          v3 = v52;
          v5 = v53;
          v7 = v62;
        }

        continue;
      }
    }

    v64 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
  }

  while (v64);
LABEL_51:

  v43 = +[NSMutableDictionary dictionary];
  v70[0] = @"count";
  v44 = [NSNumber numberWithInteger:v5];
  v71[0] = v44;
  v70[1] = @"addCount";
  v45 = [NSNumber numberWithInteger:v7];
  v71[1] = v45;
  v70[2] = @"deleteCount";
  v46 = [NSNumber numberWithInteger:v55];
  v71[2] = v46;
  v70[3] = @"moveCount";
  v47 = [NSNumber numberWithInteger:v56];
  v71[3] = v47;
  v70[4] = @"modifyCount";
  v48 = [NSNumber numberWithInteger:v57];
  v71[4] = v48;
  v49 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:5];
  [v43 setObject:v49 forKeyedSubscript:@"summary"];

  if (v5 <= 1000)
  {
    [v43 setObject:v54 forKeyedSubscript:@"details"];
  }

  return v43;
}

- (id)_localBookmarksDictionaryFromDatabase:(void *)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableDictionary dictionary];
  v7 = [(CloudBookmarksDiagnostics *)self _jsonRepresentationForBookmarkFolderWithLocalID:0 inDatabase:a3 foundBookmarksToParents:v6 jsonRepresentationsByLocalIDs:v5];
  v8 = [v7 mutableCopy];

  v9 = [v8 objectForKeyedSubscript:@"summary"];
  v10 = [v9 objectForKeyedSubscript:@"count"];
  v11 = [v10 integerValue];

  if (v11 >= 1001)
  {
    [v8 setObject:0 forKeyedSubscript:@"details"];
    v12 = [v8 objectForKeyedSubscript:@"foldersOfInterest"];
    v13 = [v12 safari_mapAndFilterKeysAndObjectsUsingBlock:&stru_100134FC0];
    [v8 setObject:v13 forKeyedSubscript:@"foldersOfInterest"];
  }

  v14 = [(WBSBookmarkDBAccess *)self->_databaseAccessor localIDsOfInterestForDiagnosticsWithDatabase:a3];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100078974;
  v19[3] = &unk_100135010;
  v22 = v11 > 1000;
  v20 = v5;
  v21 = v8;
  v15 = v8;
  v16 = v5;
  [v14 enumerateKeysAndObjectsUsingBlock:v19];
  v17 = [v15 copy];

  return v17;
}

- (id)_jsonRepresentationForBookmarkFolderWithLocalID:(id)a3 inDatabase:(void *)a4 foundBookmarksToParents:(id)a5 jsonRepresentationsByLocalIDs:(id)a6
{
  v10 = a3;
  v11 = a5;
  v88 = a6;
  v12 = +[NSMutableDictionary dictionary];
  v13 = +[NSMutableDictionary dictionary];
  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = +[NSNull null];
  }

  v15 = v14;
  v85 = v12;
  v93 = +[NSMutableArray array];
  v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyLocalIDsInFolderWithLocalID:v10 database:a4];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v16;
  v94 = [obj countByEnumeratingWithState:&v105 objects:v111 count:16];
  v86 = v10;
  v87 = v13;
  if (!v94)
  {
    v97 = 0;
    v103 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_54;
  }

  v96 = a4;
  v97 = 0;
  v103 = 0;
  v17 = 0;
  v18 = 0;
  v90 = *v106;
  v91 = v15;
  v92 = v11;
  do
  {
    v19 = 0;
    do
    {
      if (*v106 != v90)
      {
        objc_enumerationMutation(obj);
      }

      v102 = v19;
      v95 = *(*(&v105 + 1) + 8 * v19);
      v20 = [WBSBookmarkDBAccess copyItemWithLocalID:"copyItemWithLocalID:database:" database:?];
      v21 = [(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:v20];
      v22 = v21;
      v23 = @"TitleURLAndIdentityHash";
      if (v21)
      {
        v23 = 0;
      }

      v24 = @"Bookmark";
      if (v21)
      {
        v24 = 0;
        v25 = v18;
      }

      else
      {
        v25 = v18 + 1;
      }

      if (v21 == 1)
      {
        v26 = @"TitleAndIdentityHash";
      }

      else
      {
        v26 = v23;
      }

      if (v21 == 1)
      {
        v27 = @"Folder";
      }

      else
      {
        v27 = v24;
      }

      if (v21 == 1)
      {
        ++v17;
      }

      v104 = v17;
      if (v21 != 1)
      {
        v18 = v25;
      }

      v98 = v18;
      v28 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:@"Title" item:v20];
      v29 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithItem:v20];
      v30 = +[NSMutableDictionary dictionary];
      v100 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copySyncDataWithItem:v20];
      v31 = [WBBookmarkSyncData syncDataWithContentsOfData:?];
      [v30 setObject:v27 forKeyedSubscript:@"itemType"];
      v32 = [(CloudBookmarksDiagnostics *)self _identifierForSensitiveString:v28];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = &stru_100137BA8;
      }

      [v30 setObject:v34 forKeyedSubscript:@"title"];

      v101 = v29;
      if (v29)
      {
        v35 = v29;
      }

      else
      {
        v35 = &stru_100137BA8;
      }

      [v30 setObject:v35 forKeyedSubscript:@"serverID"];
      v36 = [NSNumber numberWithBool:v31 != 0];
      [v30 setObject:v36 forKeyedSubscript:@"hasSyncData"];

      v37 = [v31 record];
      v38 = [NSNumber numberWithBool:v37 != 0];
      [v30 setObject:v38 forKeyedSubscript:@"hasCKRecord"];

      v39 = [v31 position];
      v40 = [NSNumber numberWithBool:v39 != 0];
      [v30 setObject:v40 forKeyedSubscript:@"hasPosition"];

      v99 = v31;
      v41 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v31 hasGenerationForKey:v26]);
      [v30 setObject:v41 forKeyedSubscript:@"hasTitleGeneration"];

      databaseAccessor = self->_databaseAccessor;
      if (v22 != 1)
      {
        v50 = [(WBSBookmarkDBAccess *)databaseAccessor copyValueForKey:@"URL" item:v20];
        v65 = [NSString stringWithFormat:@"%@|%@", v28, v50];

        v66 = [v50 absoluteString];
        v67 = [(CloudBookmarksDiagnostics *)self _identifierForSensitiveString:v66];
        v68 = v67;
        if (v67)
        {
          v69 = v67;
        }

        else
        {
          v69 = &stru_100137BA8;
        }

        [v30 setObject:v69 forKeyedSubscript:@"url"];

        v63 = [(CloudBookmarksDiagnostics *)self _stringForBookmarkType:[(WBSBookmarkDBAccess *)self->_databaseAccessor bookmarkTypeWithBookmark:v20]];
        [v30 setObject:v63 forKeyedSubscript:@"bookmarkType"];
        v11 = v92;
        v18 = v98;
        goto LABEL_43;
      }

      v43 = [(WBSBookmarkDBAccess *)databaseAccessor copyValueForKey:@"IsSelectedFavoritesFolder" item:v20];
      v44 = v43;
      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = &__kCFBooleanFalse;
      }

      [v30 setObject:v45 forKeyedSubscript:@"isFavorites"];

      v46 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:@"IsTabGroup" item:v20];
      v47 = v46;
      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = &__kCFBooleanFalse;
      }

      [v30 setObject:v48 forKeyedSubscript:@"isTabGroup"];

      v49 = [(CloudBookmarksDiagnostics *)self _stringForFolderType:[(WBSBookmarkDBAccess *)self->_databaseAccessor folderTypeWithFolder:v20]];
      [v30 setObject:v49 forKeyedSubscript:@"folderType"];

      v11 = v92;
      v50 = [(CloudBookmarksDiagnostics *)self _jsonRepresentationForBookmarkFolderWithLocalID:v95 inDatabase:v96 foundBookmarksToParents:v92 jsonRepresentationsByLocalIDs:v88];
      v51 = [v50 copy];
      [v88 setObject:v51 forKeyedSubscript:v95];

      v52 = [v50 objectForKeyedSubscript:@"summary"];
      v53 = [v52 objectForKeyedSubscript:@"foldersCount"];
      v104 += [v53 integerValue];

      v54 = [v50 objectForKeyedSubscript:@"summary"];
      v55 = [v54 objectForKeyedSubscript:@"bookmarksCount"];
      v18 = &v98[[v55 integerValue]];

      v56 = [v50 objectForKeyedSubscript:@"summary"];
      v57 = [v56 objectForKeyedSubscript:@"duplicatesCount"];
      v103 += [v57 integerValue];

      v58 = [v50 objectForKeyedSubscript:@"summary"];
      v59 = [v58 objectForKeyedSubscript:@"duplicatesWithSameParentCount"];
      v97 += [v59 integerValue];

      v60 = [v50 objectForKeyedSubscript:@"details"];
      [v30 setObject:v60 forKeyedSubscript:@"children"];

      v61 = [(WBSBookmarkDBAccess *)self->_databaseAccessor folderTypeWithFolder:v20]- 1;
      if (v61 <= 2)
      {
        v62 = *(&off_100135050 + v61);
        v63 = [v50 mutableCopy];
        [v63 setObject:0 forKeyedSubscript:@"details"];
        v64 = [v63 copy];
        [v87 setObject:v64 forKeyedSubscript:v62];

        v65 = v28;
LABEL_43:

        goto LABEL_45;
      }

      v65 = v28;
LABEL_45:

      v70 = [v11 objectForKeyedSubscript:v65];
      v71 = v70;
      v15 = v91;
      if (v70)
      {
        ++v103;
        if ([v70 containsObject:v91])
        {
          ++v97;
        }

        else
        {
          [v71 addObject:v91];
        }
      }

      else
      {
        v72 = [NSMutableSet setWithObject:v91];
        [v11 setObject:v72 forKeyedSubscript:v65];
      }

      [v93 addObject:v30];
      CFRelease(v20);

      v19 = v102 + 1;
      v17 = v104;
    }

    while (v94 != (v102 + 1));
    v94 = [obj countByEnumeratingWithState:&v105 objects:v111 count:16];
  }

  while (v94);
LABEL_54:

  v109[0] = @"count";
  v73 = [NSNumber numberWithInteger:&v18[v17]];
  v74 = v18;
  v75 = v73;
  v110[0] = v73;
  v109[1] = @"bookmarksCount";
  v76 = [NSNumber numberWithUnsignedInteger:v74];
  v110[1] = v76;
  v109[2] = @"foldersCount";
  v77 = [NSNumber numberWithUnsignedInteger:v17];
  v110[2] = v77;
  v109[3] = @"duplicatesCount";
  v78 = [NSNumber numberWithUnsignedInteger:v103];
  v110[3] = v78;
  v109[4] = @"duplicatesWithSameParentCount";
  v79 = [NSNumber numberWithUnsignedInteger:v97];
  v110[4] = v79;
  v80 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:5];
  [v85 setObject:v80 forKeyedSubscript:@"summary"];

  v81 = [v93 copy];
  [v85 setObject:v81 forKeyedSubscript:@"details"];

  if ([v87 count])
  {
    v82 = [v87 copy];
    [v85 setObject:v82 forKeyedSubscript:@"foldersOfInterest"];
  }

  v83 = [v85 copy];

  return v83;
}

- (id)_stringForFolderType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"Regular";
  }

  else
  {
    return *(&off_100135068 + a3 - 1);
  }
}

- (id)_stringForBookmarkType:(int64_t)a3
{
  v3 = @"Regular";
  if (a3 == 1)
  {
    v3 = @"ReadingList";
  }

  if (a3 == 2)
  {
    return @"TabGroupFavorites";
  }

  else
  {
    return v3;
  }
}

- (id)_identifierForSensitiveString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_sensitiveStringIdentifiers objectForKeyedSubscript:v4];
    if (!v5)
    {
      v6 = +[NSUUID UUID];
      v5 = [v6 UUIDString];

      [(NSMutableDictionary *)self->_sensitiveStringIdentifiers setObject:v5 forKeyedSubscript:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end