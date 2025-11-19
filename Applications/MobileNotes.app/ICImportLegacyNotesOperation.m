@interface ICImportLegacyNotesOperation
- (ICImportLegacyNotesOperation)init;
- (ICImportLegacyNotesOperation)initWithLegacyNotes:(id)a3 destinationFolder:(id)a4 deleteLegacyNotesAfterImport:(BOOL)a5;
- (id)description;
- (id)ensureLegacyNoteIsValid:(id)a3;
- (id)legacyManagedObjectContext;
- (void)cancelIfNecessary;
- (void)main;
@end

@implementation ICImportLegacyNotesOperation

- (ICImportLegacyNotesOperation)init
{
  [(ICImportLegacyNotesOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICImportLegacyNotesOperation)initWithLegacyNotes:(id)a3 destinationFolder:(id)a4 deleteLegacyNotesAfterImport:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = ICImportLegacyNotesOperation;
  v10 = [(ICImportLegacyNotesOperation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(ICImportLegacyNotesOperation *)v10 setDestinationFolder:v9];
    v12 = [NSArray arrayWithArray:v8];
    [(ICImportLegacyNotesOperation *)v11 setLegacyNotes:v12];

    [(ICImportLegacyNotesOperation *)v11 setDeleteLegacyNotesAfterImport:v5];
  }

  return v11;
}

- (void)main
{
  v3 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E15D8(self, v3);
  }

  [(ICImportLegacyNotesOperation *)self cancelIfNecessary];
  if (([(ICImportLegacyNotesOperation *)self isCancelled]& 1) == 0)
  {
    v13 = +[ICNoteContext sharedContext];
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = sub_10013D500;
    v38[4] = sub_10013D510;
    v39 = 0;
    v4 = [(ICImportLegacyNotesOperation *)self destinationFolder];
    v5 = [v4 managedObjectContext];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10013D518;
    v37[3] = &unk_1006463C8;
    v37[4] = self;
    v37[5] = v38;
    [v5 performBlockAndWait:v37];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = [(ICImportLegacyNotesOperation *)self legacyNotes];
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v7)
    {
      v8 = *v34;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v33 + 1) + 8 * v9);
          [(ICImportLegacyNotesOperation *)self cancelIfNecessary];
          if (([(ICImportLegacyNotesOperation *)self isCancelled]& 1) != 0)
          {

            goto LABEL_18;
          }

          v27 = 0;
          v28 = &v27;
          v29 = 0x3032000000;
          v30 = sub_10013D500;
          v31 = sub_10013D510;
          v32 = v10;
          v21 = _NSConcreteStackBlock;
          v22 = 3221225472;
          v23 = sub_10013D580;
          v24 = &unk_1006463C8;
          v25 = self;
          v26 = &v27;
          performBlockOnMainThreadAndWait();
          _Block_object_dispose(&v27, 8);

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_10013D500;
    v31 = sub_10013D510;
    v32 = 0;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10013D860;
    v19 = &unk_100646A18;
    v20 = &v27;
    performBlockOnMainThreadAndWait();
    if (v28[5])
    {
      v11 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1004E1650(&v28, v11);
      }
    }

    v12 = [v13 managedObjectContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013D8DC;
    v14[3] = &unk_100645E30;
    v15 = v13;
    [v12 performBlockAndWait:v14];

    _Block_object_dispose(&v27, 8);
LABEL_18:
    _Block_object_dispose(v38, 8);
  }
}

- (void)cancelIfNecessary
{
  v3 = [(ICImportLegacyNotesOperation *)self destinationFolder];

  if (v3)
  {
    v4 = [(ICImportLegacyNotesOperation *)self destinationFolder];
    v5 = [v4 managedObjectContext];

    if (v5)
    {
      v6 = [(ICImportLegacyNotesOperation *)self destinationFolder];
      v7 = [v6 managedObjectContext];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10013DAA0;
      v10[3] = &unk_100645E30;
      v10[4] = self;
      [v7 performBlockAndWait:v10];

      return;
    }

    v8 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = self;
      v9 = "Cancelling import operation because folder lost its managed object context: %@";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = self;
      v9 = "Cancelling import operation because folder doesn't exist: %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
    }
  }

  [(ICImportLegacyNotesOperation *)self cancel];
}

- (id)ensureLegacyNoteIsValid:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_10013D500;
    v12 = sub_10013D510;
    v13 = 0;
    v7 = v3;
    performBlockOnMainThreadAndWait();
    v5 = v9[5];

    _Block_object_dispose(&v8, 8);
  }

  return v5;
}

- (id)legacyManagedObjectContext
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10013D500;
  v8 = sub_10013D510;
  v9 = 0;
  performBlockOnMainThreadAndWait();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)description
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10013D500;
  v16 = sub_10013D510;
  v17 = 0;
  v3 = [(ICImportLegacyNotesOperation *)self destinationFolder];
  v4 = [v3 managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013E0BC;
  v11[3] = &unk_1006463C8;
  v11[4] = self;
  v11[5] = &v12;
  [v4 performBlockAndWait:v11];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(ICImportLegacyNotesOperation *)self legacyNotes];
  v8 = [v7 count];
  v9 = [NSString stringWithFormat:@"<%@: %p legacyNoteCount=%d destionationFolder=%@>", v6, self, v8, v13[5]];;

  _Block_object_dispose(&v12, 8);

  return v9;
}

@end