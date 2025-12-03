@interface NotesAppRemovalService
- (id)deleteAppUserDefaults;
- (id)deleteSharedUserDefaults;
- (void)removeAppWithReply:(id)reply;
@end

@implementation NotesAppRemovalService

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  v4 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100002304();
  }

  v5 = +[ICAuthenticationState sharedState];
  [v5 removeAllMainKeysFromKeychain];

  v6 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100002338();
  }

  selfCopy = self;

  v7 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000236C();
  }

  v8 = +[ACAccountStore defaultStore];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  accounts = [v8 accounts];
  v10 = [accounts countByEnumeratingWithState:&v128 objects:v139 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v129;
    v13 = ACAccountDataclassNotes;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v129 != v12)
        {
          objc_enumerationMutation(accounts);
        }

        displayAccount = [*(*(&v128 + 1) + 8 * i) displayAccount];
        if ([displayAccount isEnabledForDataclass:v13])
        {
          [displayAccount setEnabled:0 forDataclass:v13];
          [v8 saveAccount:displayAccount withCompletionHandler:0];
        }
      }

      v11 = [accounts countByEnumeratingWithState:&v128 objects:v139 count:16];
    }

    while (v11);
  }

  v16 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_1000023A0();
  }

  v108 = +[NSFileManager defaultManager];
  v17 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1000023D4();
  }

  v18 = +[ICNoteContext sharedContext];
  [v18 destroyPersistentStore];

  v19 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100002408();
  }

  v103 = v8;

  v20 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10000243C();
  }

  v21 = +[ICPaths applicationDocumentsURL];
  v22 = +[ICPaths persistentStoreURL];
  lastPathComponent = [v22 lastPathComponent];

  context = objc_autoreleasePoolPush();
  v127 = 0;
  v105 = v21;
  v24 = [v108 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:4 error:&v127];
  v25 = v127;
  if (v25)
  {
    v26 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100002470();
    }
  }

  v106 = v25;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v27 = v24;
  v28 = [v27 countByEnumeratingWithState:&v123 objects:v138 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v124;
    do
    {
      v31 = 0;
      do
      {
        if (*v124 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v123 + 1) + 8 * v31);
        v33 = objc_autoreleasePoolPush();
        lastPathComponent2 = [v32 lastPathComponent];
        if (([lastPathComponent2 hasPrefix:lastPathComponent]& 1) != 0)
        {
          goto LABEL_34;
        }

        lastPathComponent3 = [v32 lastPathComponent];
        v36 = [lastPathComponent3 isEqualToString:@"tmp"];

        if ((v36 & 1) == 0)
        {
          v122 = 0;
          [v108 removeItemAtURL:v32 error:&v122];
          lastPathComponent2 = v122;
          if ([lastPathComponent2 code]== 4)
          {
            goto LABEL_34;
          }

          if (lastPathComponent2)
          {
            v37 = os_log_create("com.apple.notes", "Application");
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v135 = v32;
              v136 = 2112;
              v137 = lastPathComponent2;
              _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "couldn't remove file at URL: %@, error: %@", buf, 0x16u);
            }

            lastPathComponent2 = lastPathComponent2;
            v106 = lastPathComponent2;
LABEL_34:
          }
        }

        objc_autoreleasePoolPop(v33);
        v31 = v31 + 1;
      }

      while (v29 != v31);
      v38 = [v27 countByEnumeratingWithState:&v123 objects:v138 count:16];
      v29 = v38;
    }

    while (v38);
  }

  objc_autoreleasePoolPop(context);
  v39 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    sub_1000024D8();
  }

  v40 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    sub_10000250C();
  }

  +[NoteContext removeSqliteAndIdxFiles];
  v41 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    sub_100002540();
  }

  v42 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_100002574();
  }

  v43 = CPSharedResourcesDirectory();
  v44 = NoteContextPersistentStorePath();
  lastPathComponent4 = [v44 lastPathComponent];

  v97 = objc_autoreleasePoolPush();
  contexta = v43;
  v95 = [v43 stringByAppendingString:@"/Library/Notes/"];
  [NSURL fileURLWithPath:?];
  v93 = v121 = v106;
  v45 = [v108 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
  v46 = v106;

  if (v46)
  {
    v47 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000025A8();
    }
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v48 = v45;
  v49 = [v48 countByEnumeratingWithState:&v117 objects:v133 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v118;
    do
    {
      v52 = 0;
      do
      {
        if (*v118 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v117 + 1) + 8 * v52);
        v54 = objc_autoreleasePoolPush();
        lastPathComponent5 = [v53 lastPathComponent];
        v56 = [lastPathComponent5 hasPrefix:lastPathComponent4];

        if ((v56 & 1) == 0)
        {
          v116 = 0;
          [v108 removeItemAtURL:v53 error:&v116];
          v57 = v116;
          if ([v57 code]!= 4)
          {
            if (!v57)
            {
              goto LABEL_68;
            }

            v58 = os_log_create("com.apple.notes", "Application");
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v135 = v53;
              v136 = 2112;
              v137 = v57;
              _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "couldn't remove file at URL: %@, error: %@", buf, 0x16u);
            }

            v59 = v57;
            v46 = v59;
          }
        }

LABEL_68:
        objc_autoreleasePoolPop(v54);
        v52 = v52 + 1;
      }

      while (v50 != v52);
      v50 = [v48 countByEnumeratingWithState:&v117 objects:v133 count:16];
    }

    while (v50);
  }

  objc_autoreleasePoolPop(v97);
  v60 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    sub_100002610();
  }

  v61 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    sub_100002644();
  }

  deleteAppUserDefaults = [(NotesAppRemovalService *)selfCopy deleteAppUserDefaults];
  if (deleteAppUserDefaults)
  {
    v63 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_100002678();
    }

    if (!v46)
    {
      v46 = deleteAppUserDefaults;
    }
  }

  v64 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    sub_1000026E0();
  }

  v65 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    sub_100002714();
  }

  deleteSharedUserDefaults = [(NotesAppRemovalService *)selfCopy deleteSharedUserDefaults];

  if (deleteSharedUserDefaults)
  {
    v67 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_100002748();
    }

    if (!v46)
    {
      v46 = deleteSharedUserDefaults;
    }
  }

  v68 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    sub_1000027B0();
  }

  v69 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    sub_1000027E4();
  }

  v70 = [v105 URLByAppendingPathComponent:@"tmp" isDirectory:1];
  v115 = 0;
  [v108 removeItemAtURL:v70 error:&v115];
  v71 = v115;
  if ([v71 code]== 4)
  {
    v72 = v71;
    v71 = 0;
  }

  else
  {
    if (!v71)
    {
      goto LABEL_99;
    }

    v72 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v135 = v70;
      v136 = 2112;
      v137 = v71;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "couldn't remove file at URL: %@, error: %@", buf, 0x16u);
    }
  }

LABEL_99:
  v73 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    sub_100002818();
  }

  v96 = v71;
  v98 = v70;

  v74 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
  {
    sub_10000284C();
  }

  v75 = +[ICPaths importDocumentsURL];
  v92 = objc_autoreleasePoolPush();
  v94 = v75;
  v114 = v46;
  v76 = [v108 contentsOfDirectoryAtURL:v75 includingPropertiesForKeys:0 options:4 error:&v114];
  v77 = v114;

  if (v77)
  {
    v78 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      sub_100002470();
    }
  }

  v102 = deleteSharedUserDefaults;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v79 = v76;
  v80 = [v79 countByEnumeratingWithState:&v110 objects:v132 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v111;
    do
    {
      v83 = 0;
      do
      {
        if (*v111 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(*(&v110 + 1) + 8 * v83);
        v85 = objc_autoreleasePoolPush();
        v109 = 0;
        [v108 removeItemAtURL:v84 error:&v109];
        v86 = v109;
        if ([v86 code]!= 4)
        {
          if (!v86)
          {
            goto LABEL_118;
          }

          v87 = os_log_create("com.apple.notes", "Application");
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v135 = v84;
            v136 = 2112;
            v137 = v86;
            _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "couldn't remove file at URL: %@, error: %@", buf, 0x16u);
          }

          v88 = v86;
          v77 = v88;
        }

LABEL_118:
        objc_autoreleasePoolPop(v85);
        v83 = v83 + 1;
      }

      while (v81 != v83);
      v81 = [v79 countByEnumeratingWithState:&v110 objects:v132 count:16];
    }

    while (v81);
  }

  objc_autoreleasePoolPop(v92);
  v89 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    sub_100002880();
  }

  v90 = os_log_create("com.apple.notes", "Application");
  v91 = v90;
  if (v77)
  {
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      sub_1000028B4();
    }
  }

  else if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
  {
    sub_10000291C();
  }

  replyCopy[2](replyCopy, v77);
}

- (id)deleteAppUserDefaults
{
  v2 = [NSUserDefaults alloc];
  v3 = ICNotesAppBundleIdentifier();
  v4 = [v2 initWithSuiteName:v3];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  dictionaryRepresentation = [v4 dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        if (*(*(&v22 + 1) + 8 * i))
        {
          [v4 removeObjectForKey:?];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v8);
  }

  if ([v4 synchronize])
  {
    v11 = +[ICAppGroupDefaults sharedAppGroupDefaults];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    dictionaryRepresentation2 = [v11 dictionaryRepresentation];
    allKeys2 = [dictionaryRepresentation2 allKeys];

    v14 = [allKeys2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(allKeys2);
          }

          if (*(*(&v18 + 1) + 8 * j))
          {
            [v11 removeObjectForKey:?];
          }
        }

        v14 = [allKeys2 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v27[0] = NSLocalizedDescriptionKey;
    v27[1] = @"BundleId";
    v28[0] = @"Unable to synchronize app NSUserDefaults for AppRemoval.";
    v11 = ICNotesAppBundleIdentifier();
    v28[1] = v11;
    allKeys2 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v14 = [NSError errorWithDomain:@"com.apple.mobilenotes.appremoval.errorDomain" code:-1 userInfo:allKeys2];
  }

  return v14;
}

- (id)deleteSharedUserDefaults
{
  v2 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dictionaryRepresentation = [v2 dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        if (*(*(&v13 + 1) + 8 * i))
        {
          [v2 removeObjectForKey:?];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  if ([v2 synchronize])
  {
    v9 = 0;
  }

  else
  {
    v17[0] = NSLocalizedDescriptionKey;
    v17[1] = @"BundleId";
    v18[0] = @"Unable to synchronize shared NSUserDefaults for AppRemoval.";
    v10 = ICNotesAppBundleIdentifier();
    v18[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v9 = [NSError errorWithDomain:@"com.apple.mobilenotes.appremoval.errorDomain" code:-1 userInfo:v11];
  }

  return v9;
}

@end