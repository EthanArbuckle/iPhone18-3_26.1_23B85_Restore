@interface ICImportNoteProcessor
- (ICImportNoteProcessor)init;
- (ICImportNoteProcessorDelegate)delegate;
- (ICNAEventReporter)eventReporter;
- (NSArray)allowedContentTypes;
- (NSArray)errorFileURLs;
- (id)getTypeIdentifierForFileURL:(id)a3;
- (id)newFolderWithTitle:(id)a3 parentFolder:(id)a4 forAccount:(id)a5;
- (id)parserForFileURL:(id)a3;
- (void)addURLs:(id)a3 toImportFolder:(id)a4 shouldPreserveFolders:(BOOL)a5;
- (void)cancelProcess;
- (void)processURLs:(id)a3 shouldPreserveFolders:(BOOL)a4 account:(id)a5;
- (void)setupFileParsers;
- (void)traverseImportFolder:(id)a3 forAccount:(id)a4 shouldImportNotes:(BOOL)a5 completionBlock:(id)a6;
- (void)updateImportProgress;
@end

@implementation ICImportNoteProcessor

- (ICImportNoteProcessor)init
{
  v5.receiver = self;
  v5.super_class = ICImportNoteProcessor;
  v2 = [(ICImportNoteProcessor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICImportNoteProcessor *)v2 setupFileParsers];
  }

  return v3;
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = [v3 initWithSubTrackerName:kICNASubtrackerNameImportNoteProcessor];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v4;
  }

  v6 = self->_eventReporter;

  return v6;
}

- (NSArray)errorFileURLs
{
  v2 = [(ICImportNoteProcessor *)self currentErrorFileURLs];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)allowedContentTypes
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(ICImportNoteProcessor *)self importNoteFileParsers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007B258;
  v8[3] = &unk_100646F10;
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = [v5 copy];

  return v6;
}

- (void)processURLs:(id)a3 shouldPreserveFolders:(BOOL)a4 account:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(ICImportNoteProcessor *)self state])
  {
    v10 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cannot start import process because it is currently in progress.", buf, 2u);
    }

LABEL_11:

    goto LABEL_16;
  }

  if (!v9)
  {
    [ICAssert handleFailedAssertWithCondition:"inAccount" functionName:"[ICImportNoteProcessor processURLs:shouldPreserveFolders:account:]" simulateCrash:1 showAlert:0 format:@"Account must not be nil"];
    v10 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1004D9B04(v10);
    }

    goto LABEL_11;
  }

  [(ICImportNoteProcessor *)self setTotalNoteImported:0];
  [(ICImportNoteProcessor *)self setTotalNoteFound:0];
  [(ICImportNoteProcessor *)self setCurrentURL:0];
  [(ICImportNoteProcessor *)self setShouldCancelImportProcess:0];
  v11 = objc_alloc_init(NSMutableArray);
  [(ICImportNoteProcessor *)self setCurrentErrorFileURLs:v11];

  v12 = +[ICNoteContext sharedContext];
  v13 = [v12 workerManagedObjectContext];
  [(ICImportNoteProcessor *)self setManagedObjectContext:v13];

  v14 = [(ICImportNoteProcessor *)self managedObjectContext];
  [v14 setIc_debugName:@"importNoteProcessor"];

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = sub_10007B698;
  v37 = sub_10007B6A8;
  v38 = 0;
  v15 = [(ICImportNoteProcessor *)self managedObjectContext];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10007B6B0;
  v29[3] = &unk_100645A40;
  v32 = buf;
  v30 = v9;
  v31 = self;
  [v15 performBlockAndWait:v29];

  if (*(v34 + 5))
  {
    [(ICImportNoteProcessor *)self setState:1];
    v16 = [(ICImportNoteProcessor *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(ICImportNoteProcessor *)self delegate];
      [v18 importStartedForNoteProcessor:self];
    }

    objc_initWeak(&location, self);
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007B748;
    block[3] = &unk_100646F60;
    objc_copyWeak(&v26, &location);
    v20 = v8;
    v27 = a4;
    v23 = v20;
    v24 = self;
    v25 = buf;
    dispatch_async(v19, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v21 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1004D9AC0(v21);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
}

- (void)cancelProcess
{
  if ([(ICImportNoteProcessor *)self state])
  {
    [(ICImportNoteProcessor *)self setShouldCancelImportProcess:1];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(ICImportNoteProcessor *)self importNoteFileParsers];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * i) cancelParsing];
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D9BD8(v3);
    }
  }
}

- (void)setupFileParsers
{
  v3 = objc_alloc_init(ICEvernoteFileParser);
  v7 = v3;
  v4 = objc_alloc_init(_TtC11MobileNotes29ICArchiveImportNoteFileParser);
  v8 = v4;
  v5 = objc_alloc_init(ICImportNoteGeneralFileParser);
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:3];
  [(ICImportNoteProcessor *)self setImportNoteFileParsers:v6, v7, v8];
}

- (id)parserForFileURL:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10007B698;
  v19 = sub_10007B6A8;
  v20 = 0;
  [v4 startAccessingSecurityScopedResource];
  v5 = [(ICImportNoteProcessor *)self importNoteFileParsers];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10007BFB0;
  v12 = &unk_100646F88;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:&v9];

  [v6 stopAccessingSecurityScopedResource];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (void)addURLs:(id)a3 toImportFolder:(id)a4 shouldPreserveFolders:(BOOL)a5
{
  v38 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NSMutableArray);
  v37 = v7;
  v10 = [[NSMutableArray alloc] initWithArray:v7];
  v39 = v8;
  if (![(ICImportNoteProcessor *)self shouldCancelImportProcess])
  {
    v12 = NSURLIsDirectoryKey;
    *&v11 = 138412290;
    v36 = v11;
    while (1)
    {
      if (![v10 count] && !objc_msgSend(v9, "count"))
      {
        goto LABEL_2;
      }

      if (![v10 count])
      {
        v13 = [v9 firstObject];

        [v9 removeObjectAtIndex:0];
        v14 = [v13 url];
        [v14 startAccessingSecurityScopedResource];

        v15 = +[NSFileManager defaultManager];
        v16 = [v13 url];
        v46[0] = NSURLNameKey;
        v46[1] = v12;
        v46[2] = NSURLTypeIdentifierKey;
        v17 = [NSArray arrayWithObjects:v46 count:3];
        v18 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:v17 options:4 error:0];

        v19 = [v13 url];
        [v19 stopAccessingSecurityScopedResource];

        if (v18)
        {
          [v10 addObjectsFromArray:v18];
        }

        v8 = v13;
      }

      if ([v10 count] && !-[ICImportNoteProcessor shouldCancelImportProcess](self, "shouldCancelImportProcess"))
      {
        break;
      }

LABEL_30:
      if ([(ICImportNoteProcessor *)self shouldCancelImportProcess])
      {
        goto LABEL_2;
      }
    }

    v20 = [v10 firstObject];
    [v20 startAccessingSecurityScopedResource];
    [v10 removeObjectAtIndex:0];
    v43 = 0;
    [v20 getResourceValue:&v43 forKey:v12 error:0];
    v21 = v43;
    v22 = [(ICImportNoteProcessor *)self getTypeIdentifierForFileURL:v20];
    v42 = 0;
    [v20 getResourceValue:&v42 forKey:NSURLIsPackageKey error:0];
    v41 = v42;
    [v20 stopAccessingSecurityScopedResource];
    if (v22)
    {
      v23 = [UTType typeWithIdentifier:v22];
      v40 = [v23 conformsToType:UTTypeRTFD];

      [UTType importedTypeWithIdentifier:v22];
      v24 = self;
      v25 = v21;
      v26 = v8;
      v28 = v27 = v9;
      v29 = [UTType importedTypeWithIdentifier:@"com.apple.stickies.appexport"];
      v30 = [v28 conformsToType:v29];

      v9 = v27;
      v8 = v26;
      v21 = v25;
      self = v24;
      if (([v21 BOOLValue] & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v30)
      {
LABEL_19:
        if ((v40 & 1) == 0)
        {
          v31 = objc_alloc_init(ICImportFolder);
          [(ICImportFolder *)v31 setUrl:v20];
          if (v38)
          {
            v32 = [v8 subFolders];
            [v32 addObject:v31];
          }

          [v9 addObject:v31];
LABEL_29:

          v12 = NSURLIsDirectoryKey;
          goto LABEL_30;
        }

LABEL_23:
        v33 = [(ICImportNoteProcessor *)self parserForFileURL:v20];

        if (v33)
        {
          v34 = v39;
          if (v38)
          {
            v34 = v8;
          }

          v31 = v34;
          v35 = [(ICImportFolder *)v31 fileURLs];
          [v35 addObject:v20];
        }

        else
        {
          v31 = os_log_create("com.apple.notes", "Import");
          if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_DEBUG))
          {
            *buf = v36;
            v45 = v20;
            _os_log_debug_impl(&_mh_execute_header, &v31->super, OS_LOG_TYPE_DEBUG, "Cannot process file to import to notes: %@", buf, 0xCu);
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (([v21 BOOLValue] & 1) == 0)
      {
        goto LABEL_23;
      }

      v40 = 0;
    }

    if ([v41 BOOLValue])
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_2:
}

- (id)getTypeIdentifierForFileURL:(id)a3
{
  v3 = a3;
  [v3 startAccessingSecurityScopedResource];
  v10 = 0;
  v9 = 0;
  v4 = [v3 getResourceValue:&v10 forKey:NSURLTypeIdentifierKey error:&v9];
  v5 = v10;
  v6 = v9;
  if ((v4 & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004D9C1C(v6);
    }
  }

  [v3 stopAccessingSecurityScopedResource];

  return v5;
}

- (void)traverseImportFolder:(id)a3 forAccount:(id)a4 shouldImportNotes:(BOOL)a5 completionBlock:(id)a6
{
  v58 = a5;
  v9 = a3;
  v56 = a4;
  v10 = a6;
  v53 = v9;
  if ([(ICImportNoteProcessor *)self shouldCancelImportProcess])
  {
    if (v10)
    {
      v10[2](v10);
    }

    goto LABEL_62;
  }

  v52 = v10;
  val = self;
  [(ICImportNoteProcessor *)self updateImportProgress];
  v11 = [[NSMutableArray alloc] initWithObjects:{v9, 0}];
  v54 = v11;
LABEL_5:
  v55 = [v11 firstObject];
  [v54 removeObjectAtIndex:0];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = [v55 fileURLs];
  v60 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
  if (!v60)
  {
LABEL_36:

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v38 = [v55 subFolders];
    v39 = [v38 countByEnumeratingWithState:&v62 objects:v98 count:16];
    if (!v39)
    {
      goto LABEL_50;
    }

    v40 = *v63;
LABEL_38:
    v41 = 0;
    while (1)
    {
      if (*v63 != v40)
      {
        objc_enumerationMutation(v38);
      }

      v42 = *(*(&v62 + 1) + 8 * v41);
      if ([(ICImportNoteProcessor *)val shouldCancelImportProcess])
      {
        if (v52)
        {
          (v52[2])();
        }

        goto LABEL_60;
      }

      v43 = [v42 fileURLs];
      if ([v43 count])
      {
        break;
      }

      v44 = [v42 subFolders];
      v45 = [v44 count] == 0;

      if (!v45)
      {
        goto LABEL_45;
      }

LABEL_48:
      if (v39 == ++v41)
      {
        v39 = [v38 countByEnumeratingWithState:&v62 objects:v98 count:16];
        if (v39)
        {
          goto LABEL_38;
        }

LABEL_50:

        v50 = [v54 count];
        v11 = v54;
        if (!v50 || (v51 = [(ICImportNoteProcessor *)val shouldCancelImportProcess], v11 = v54, v51))
        {
          if (v52)
          {
            (v52[2])();
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_5;
      }
    }

LABEL_45:
    if (v58)
    {
      v46 = [v42 url];
      v47 = [v46 lastPathComponent];

      v48 = [v55 folder];
      v49 = [(ICImportNoteProcessor *)val newFolderWithTitle:v47 parentFolder:v48 forAccount:v56];

      [v42 setFolder:v49];
    }

    [v54 addObject:v42];
    goto LABEL_48;
  }

  v59 = *v95;
LABEL_7:
  v12 = 0;
  while (1)
  {
    if (*v95 != v59)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v94 + 1) + 8 * v12);
    v14 = objc_autoreleasePoolPush();
    if ([(ICImportNoteProcessor *)val shouldCancelImportProcess])
    {
      break;
    }

    [(ICImportNoteProcessor *)val setCurrentURL:v13];
    v15 = [(ICImportNoteProcessor *)val parserForFileURL:v13];
    if (v15)
    {
      v16 = +[ICPaths importDocumentsURL];
      v17 = [v16 URLByAppendingPathComponent:@"tmp" isDirectory:1];
      v18 = [v17 URLByAppendingPathComponent:@"FilesToImport" isDirectory:1];

      v19 = +[NSFileManager defaultManager];
      v93 = 0;
      LOBYTE(v16) = [v19 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v93];
      v20 = v93;

      if ((v16 & 1) == 0)
      {
        v21 = os_log_create("com.apple.notes", "Import");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v20;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error creating temporary directory for files to import: %@", &buf, 0xCu);
        }
      }

      v22 = [v13 lastPathComponent];
      v23 = [v18 URLByAppendingPathComponent:v22 isDirectory:0];

      [v13 startAccessingSecurityScopedResource];
      v24 = +[NSFileManager defaultManager];
      v92 = v20;
      [v24 copyItemAtURL:v13 toURL:v23 error:&v92];
      v25 = v92;

      [v13 stopAccessingSecurityScopedResource];
      if (v25)
      {
        v26 = os_log_create("com.apple.notes", "Import");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1004D9CC4(v103, v25);
        }
      }

      v27 = v23;
      if (v58)
      {
        objc_initWeak(&location, val);
        v28 = dispatch_semaphore_create(0);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v101 = 0x2020000000;
        objc_opt_class();
        v102 = objc_opt_isKindOfClass() & 1;
        v84 = 0;
        v85 = &v84;
        v86 = 0x2020000000;
        v87 = 0;
        v80 = 0;
        v81 = &v80;
        v82 = 0x2020000000;
        v83 = 1;
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_10007D140;
        v76[3] = &unk_100647000;
        v77 = v55;
        v29 = v56;
        v78 = v29;
        objc_copyWeak(&v79, &location);
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_10007D438;
        v74[3] = &unk_100647050;
        objc_copyWeak(&v75, &location);
        v74[4] = &buf;
        v74[5] = &v84;
        v74[6] = &v80;
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_10007D704;
        v69[3] = &unk_100647078;
        objc_copyWeak(&v73, &location);
        v30 = v27;
        v70 = v30;
        p_buf = &buf;
        v72 = &v80;
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_10007D774;
        v67[3] = &unk_100645E30;
        v31 = v28;
        v68 = v31;
        [v15 parseFileURL:v30 newNoteBlock:v76 updatedNoteBlock:v74 errorBlock:v69 completionBlock:v67];
        dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
        if (*(*(&buf + 1) + 24) == 1)
        {
          v32 = [(ICImportNoteProcessor *)val eventReporter];
          [v32 submitEverNoteImportEventWithCount:v85[3] isSuccessful:*(v81 + 24) intoAccount:v29];
        }

        objc_destroyWeak(&v73);
        objc_destroyWeak(&v75);
        objc_destroyWeak(&v79);

        _Block_object_dispose(&v80, 8);
        _Block_object_dispose(&v84, 8);
        _Block_object_dispose(&buf, 8);

        objc_destroyWeak(&location);
      }

      else
      {
        v33 = dispatch_semaphore_create(0);
        objc_initWeak(&buf, val);
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_10007D0E0;
        v89[3] = &unk_100646FB0;
        objc_copyWeak(&v91, &buf);
        v34 = v33;
        v90 = v34;
        [v15 totalNotesFoundAtFileURL:v27 completionBlock:v89];
        dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
        [(ICImportNoteProcessor *)val updateImportProgress];

        objc_destroyWeak(&v91);
        objc_destroyWeak(&buf);
      }

      if (v27)
      {
        v35 = +[NSFileManager defaultManager];
        v66 = 0;
        [v35 removeItemAtURL:v27 error:&v66];
        v36 = v66;

        if (v36)
        {
          v37 = os_log_create("com.apple.notes", "Import");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1004D9D20(v99, v36);
          }
        }
      }
    }

    else
    {
      v18 = os_log_create("com.apple.notes", "Import");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "We must have a parser for url: %@", &buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v14);
    if (v60 == ++v12)
    {
      v60 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
      if (v60)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }
  }

  if (v52)
  {
    (v52[2])();
  }

  objc_autoreleasePoolPop(v14);

LABEL_60:
  v11 = v54;
LABEL_61:

  v10 = v52;
LABEL_62:
}

- (id)newFolderWithTitle:(id)a3 parentFolder:(id)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10007B698;
  v26 = sub_10007B6A8;
  v27 = 0;
  v11 = [(ICImportNoteProcessor *)self managedObjectContext];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007D900;
  v17[3] = &unk_1006470A0;
  v12 = v9;
  v18 = v12;
  v21 = &v22;
  v13 = v10;
  v19 = v13;
  v14 = v8;
  v20 = v14;
  [v11 performBlockAndWait:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (void)updateImportProgress
{
  v3 = [(ICImportNoteProcessor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICImportNoteProcessor *)self delegate];
    [v5 progressUpdatedForImportNoteProcessor:self];
  }
}

- (ICImportNoteProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end