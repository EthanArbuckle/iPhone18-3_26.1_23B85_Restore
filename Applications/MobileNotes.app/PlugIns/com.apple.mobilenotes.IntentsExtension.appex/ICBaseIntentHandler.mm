@interface ICBaseIntentHandler
- (ICBaseIntentHandler)init;
- (id)intentNoteForSearchIndexableNote:(id)note includeContent:(BOOL)content;
- (id)notesWithText:(id)text title:(id)title fromDate:(id)date toDate:(id)toDate dateSearchType:(int64_t)type modernFolderID:(id)d legacyFolderID:(id)iD;
- (id)predicateForSearchFromDate:(id)date toDate:(id)toDate dateSearchType:(int64_t)type;
- (id)searchIndexableNoteForIntentNote:(id)note;
- (id)searchableItemsWithText:(id)text title:(id)title fromDate:(id)date toDate:(id)toDate dateSearchType:(int64_t)type;
- (id)simpleSearchForNotesWithTitle:(id)title fromDate:(id)date toDate:(id)toDate dateSearchType:(int64_t)type modernFolderID:(id)d;
- (void)refreshNotesForCollectionWithId:(id)id andContext:(id)context;
@end

@implementation ICBaseIntentHandler

- (ICBaseIntentHandler)init
{
  v9.receiver = self;
  v9.super_class = ICBaseIntentHandler;
  v2 = [(ICBaseIntentHandler *)&v9 init];
  if (v2)
  {
    v3 = +[NoteContext sharedContext];
    [ICPluginUtilities setupNoteContextWithOptions:66066];
    v4 = [ICUnifiedNoteContext alloc];
    v5 = +[ICNoteContext sharedContext];
    v6 = [v4 initWithModernNoteContext:v5 htmlNoteContext:v3];
    noteContext = v2->_noteContext;
    v2->_noteContext = v6;
  }

  return v2;
}

- (id)searchableItemsWithText:(id)text title:(id)title fromDate:(id)date toDate:(id)toDate dateSearchType:(int64_t)type
{
  textCopy = text;
  titleCopy = title;
  dateCopy = date;
  toDateCopy = toDate;
  v15 = +[NSMutableArray array];
  v16 = +[NSMutableArray array];
  v59 = +[NSMutableArray array];
  v60 = toDateCopy;
  v58 = v16;
  if ([textCopy length])
  {
    v17 = v15;
    v56 = dateCopy;
    v18 = titleCopy;
    v19 = [ICSearchQueryOperation prefixMatchingQueryStringForSearchString:textCopy];
    v20 = textCopy;
    v21 = [ICSpotlightUtilities stringByEscapingSearchString:textCopy];
    v22 = [v21 length];
    v23 = @"cwdt";
    if (!v22)
    {
      v23 = &stru_1000213F0;
    }

    v24 = MDItemTextContent;
    v25 = v23;
    v26 = [NSString stringWithFormat:@"%@=%@*%@", v24, v21, v25];
    v62[0] = v26;
    v27 = [NSString stringWithFormat:@"%@=%@*%@", MDItemAuthors, v21, v25];
    v62[1] = v27;
    v28 = [NSString stringWithFormat:@"%@=%@*%@", @"_ICItemDisplayName", v21, v25];

    v62[2] = v28;
    v29 = [NSArray arrayWithObjects:v62 count:3];

    if (v19)
    {
      [v17 addObject:v19];
    }

    if (v29)
    {
      [v59 addObjectsFromArray:v29];
    }

    titleCopy = v18;
    textCopy = v20;
    toDateCopy = v60;
    v15 = v17;
    dateCopy = v56;
    v16 = v58;
  }

  if ([titleCopy length])
  {
    v57 = v15;
    v30 = [ICSearchQueryOperation exactMatchingQueryStringForTitleSearchString:titleCopy];
    if (v30)
    {
      [v57 addObject:v30];
    }

    if ([textCopy length])
    {
      v31 = [ICSpotlightUtilities stringByEscapingSearchString:titleCopy];
      v32 = [v31 length];
      v33 = @"cwdt";
      if (!v32)
      {
        v33 = &stru_1000213F0;
      }

      v34 = [NSString stringWithFormat:@"%@=%@%@", @"_ICItemDisplayName", v31, v33];
      v61 = v34;
      v35 = [NSArray arrayWithObjects:&v61 count:1];

      if (v35)
      {
        [v59 addObjectsFromArray:v35];
      }
    }

    v15 = v57;
    v16 = v58;
    toDateCopy = v60;
  }

  if (type)
  {
    if (type == 3)
    {
      goto LABEL_30;
    }

    if (type != 2)
    {
      goto LABEL_38;
    }
  }

  if (dateCopy && toDateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v37 = v36;
    [toDateCopy timeIntervalSinceReferenceDate];
    [NSString stringWithFormat:@"((contentModificationDate >= %f) && (contentModificationDate <= %f))", v37, v38];
  }

  else if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    [NSString stringWithFormat:@"(contentModificationDate >= %f)", v39, v55];
  }

  else
  {
    if (!toDateCopy)
    {
      goto LABEL_29;
    }

    [toDateCopy timeIntervalSinceReferenceDate];
    [NSString stringWithFormat:@"(contentModificationDate <= %f)", v40, v55];
  }
  v41 = ;
  [v16 addObject:v41];

  toDateCopy = v60;
LABEL_29:
  if (type)
  {
    goto LABEL_38;
  }

LABEL_30:
  if (dateCopy && toDateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v43 = v42;
    [toDateCopy timeIntervalSinceReferenceDate];
    [NSString stringWithFormat:@"((contentCreationDate >= %f) && (contentCreationDate <= %f))", v43, v44];
  }

  else if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    [NSString stringWithFormat:@"(contentCreationDate >= %f)", v45, v55];
  }

  else
  {
    if (!toDateCopy)
    {
      goto LABEL_38;
    }

    [toDateCopy timeIntervalSinceReferenceDate];
    [NSString stringWithFormat:@"(contentCreationDate <= %f)", v46, v55];
  }
  v47 = ;
  [v16 addObject:v47];

LABEL_38:
  if ([v16 count] < 2)
  {
    if ([v16 count] != 1)
    {
      goto LABEL_45;
    }

    firstObject = [v16 firstObject];
    [v15 addObject:firstObject];
  }

  else
  {
    v48 = [v16 componentsJoinedByString:@" || "];
    firstObject = [NSString stringWithFormat:@"(%@)", v48];

    if (firstObject)
    {
      [v15 addObject:firstObject];
    }
  }

LABEL_45:
  if ([v15 count])
  {
    [v15 componentsJoinedByString:@" && "];
  }

  else
  {
    [NSString stringWithFormat:@"(contentType == %@)", @"com.apple.notes.spotlightrecord"];
  }
  v50 = ;
  v51 = [ICSearchQueryOperation newOperationQueueWithName:@"com.apple.notes.find"];
  v52 = [[ICSearchQueryOperation alloc] initWithQueryString:v50 rankingQueries:v59];
  [v51 addOperation:v52];
  [v51 waitUntilAllOperationsAreFinished];
  results = [v52 results];

  return results;
}

- (id)predicateForSearchFromDate:(id)date toDate:(id)toDate dateSearchType:(int64_t)type
{
  dateCopy = date;
  toDateCopy = toDate;
  v9 = +[NSMutableArray array];
  if (type)
  {
    if (type == 3)
    {
      goto LABEL_14;
    }

    if (type != 2)
    {
      goto LABEL_23;
    }
  }

  if (dateCopy && toDateCopy)
  {
    dateCopy = [NSPredicate predicateWithFormat:@"modificationDate >= %@", dateCopy];
    toDateCopy = [NSPredicate predicateWithFormat:@"modificationDate <= %@", toDateCopy];
    v22[0] = dateCopy;
    v22[1] = toDateCopy;
    v12 = [NSArray arrayWithObjects:v22 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    [v9 addObject:v13];
  }

  else
  {
    if (dateCopy)
    {
      [NSPredicate predicateWithFormat:@"modificationDate >= %@", dateCopy];
    }

    else
    {
      if (!toDateCopy)
      {
        goto LABEL_13;
      }

      [NSPredicate predicateWithFormat:@"modificationDate <= %@", toDateCopy];
    }
    dateCopy = ;
    [v9 addObject:dateCopy];
  }

LABEL_13:
  if (type)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (dateCopy && toDateCopy)
  {
    dateCopy2 = [NSPredicate predicateWithFormat:@"creationDate >= %@", dateCopy];
    toDateCopy2 = [NSPredicate predicateWithFormat:@"creationDate <= %@", toDateCopy];
    v21[0] = dateCopy2;
    v21[1] = toDateCopy2;
    v16 = [NSArray arrayWithObjects:v21 count:2];
    v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];
    [v9 addObject:v17];
  }

  else
  {
    if (dateCopy)
    {
      [NSPredicate predicateWithFormat:@"creationDate >= %@", dateCopy];
    }

    else
    {
      if (!toDateCopy)
      {
        goto LABEL_23;
      }

      [NSPredicate predicateWithFormat:@"creationDate <= %@", toDateCopy];
    }
    dateCopy2 = ;
    [v9 addObject:dateCopy2];
  }

LABEL_23:
  if ([v9 count] >= 2)
  {
    firstObject = [NSCompoundPredicate orPredicateWithSubpredicates:v9];
LABEL_27:
    v19 = firstObject;
    goto LABEL_29;
  }

  if ([v9 count] == 1)
  {
    firstObject = [v9 firstObject];
    goto LABEL_27;
  }

  v19 = 0;
LABEL_29:

  return v19;
}

- (id)simpleSearchForNotesWithTitle:(id)title fromDate:(id)date toDate:(id)toDate dateSearchType:(int64_t)type modernFolderID:(id)d
{
  titleCopy = title;
  dateCopy = date;
  toDateCopy = toDate;
  dCopy = d;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_1000100D0;
  v41[4] = sub_1000100E0;
  v42 = 0;
  noteContext = [(ICBaseIntentHandler *)self noteContext];
  modernManagedObjectContext = [noteContext modernManagedObjectContext];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000100D0;
  v39 = sub_1000100E0;
  v40 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000100E8;
  v25[3] = &unk_100020E00;
  v18 = titleCopy;
  v26 = v18;
  selfCopy = self;
  v19 = dateCopy;
  v28 = v19;
  v20 = toDateCopy;
  v29 = v20;
  typeCopy = type;
  v21 = dCopy;
  v30 = v21;
  v22 = modernManagedObjectContext;
  v31 = v22;
  v32 = &v35;
  v33 = v41;
  [v22 performBlockAndWait:v25];
  v23 = v36[5];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v41, 8);

  return v23;
}

- (id)notesWithText:(id)text title:(id)title fromDate:(id)date toDate:(id)toDate dateSearchType:(int64_t)type modernFolderID:(id)d legacyFolderID:(id)iD
{
  textCopy = text;
  titleCopy = title;
  dateCopy = date;
  toDateCopy = toDate;
  dCopy = d;
  iDCopy = iD;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_1000100D0;
  v66 = sub_1000100E0;
  v67 = +[NSMutableArray array];
  v34 = [(ICBaseIntentHandler *)self predicateForSearchFromDate:dateCopy toDate:toDateCopy dateSearchType:type];
  noteContext = [(ICBaseIntentHandler *)self noteContext];
  modernManagedObjectContext = [noteContext modernManagedObjectContext];

  noteContext2 = [(ICBaseIntentHandler *)self noteContext];
  htmlManagedObjectContext = [noteContext2 htmlManagedObjectContext];

  v20 = +[NSCharacterSet whitespaceCharacterSet];
  v21 = [textCopy stringByTrimmingCharactersInSet:v20];
  v22 = "@<ICFolderObject>16@0:8" + 13;
  if ([v21 length])
  {

LABEL_4:
    v26 = [(ICBaseIntentHandler *)self searchableItemsWithText:textCopy title:titleCopy fromDate:dateCopy toDate:toDateCopy dateSearchType:type];
    v27 = +[ICSearchIndexer sharedIndexer];
    v68[0] = htmlManagedObjectContext;
    v68[1] = modernManagedObjectContext;
    v28 = [NSArray arrayWithObjects:v68 count:2];
    v29 = [v27 objectsForSearchableItems:v26 inContexts:v28];

    v56 = _NSConcreteStackBlock;
    v57 = *(v22 + 41);
    v58 = sub_100010908;
    v59 = &unk_100020E28;
    v60 = v29;
    v61 = &v62;
    performBlockOnMainThreadAndWait();

    goto LABEL_5;
  }

  v23 = +[NSCharacterSet whitespaceCharacterSet];
  v24 = [titleCopy stringByTrimmingCharactersInSet:v23];
  v25 = [v24 length] == 0;

  v22 = "ject>16@0:8";
  if (!v25)
  {
    goto LABEL_4;
  }

  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_1000100D0;
  v54[4] = sub_1000100E0;
  v55 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100010A90;
  v48[3] = &unk_100020E50;
  v49 = dCopy;
  v50 = modernManagedObjectContext;
  v32 = v34;
  v51 = v32;
  v52 = v54;
  v53 = &v62;
  [v50 performBlockAndWait:v48];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100010CC0;
  v43[3] = &unk_100020E78;
  v44 = v32;
  v45 = htmlManagedObjectContext;
  v46 = v54;
  v47 = &v62;
  [v45 performBlockAndWait:v43];

  v22 = "@<ICFolderObject>16@0:8" + 13;
  _Block_object_dispose(v54, 8);

LABEL_5:
  v39 = *(v22 + 41);
  v40 = v34;
  v41 = dCopy;
  v42 = iDCopy;
  performBlockOnMainThreadAndWait();
  v30 = v63[5];

  _Block_object_dispose(&v62, 8);

  return v30;
}

- (id)intentNoteForSearchIndexableNote:(id)note includeContent:(BOOL)content
{
  noteCopy = note;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000100D0;
  v22 = sub_1000100E0;
  v23 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_1000100D0;
  v16[4] = sub_1000100E0;
  v17 = &__NSArray0__struct;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = noteCopy;
    managedObjectContext = [v6 managedObjectContext];
    v8 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000114E4;
    v14[3] = &unk_100020EA0;
    contentCopy = content;
    v14[4] = v6;
    v14[5] = v16;
    v14[6] = &v18;
    v14[7] = 252;
    [managedObjectContext performBlockAndWait:v14];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = noteCopy;
    managedObjectContext = [v9 managedObjectContext];
    v8 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000117AC;
    v12[3] = &unk_100020EA0;
    contentCopy2 = content;
    v12[4] = v9;
    v12[5] = v16;
    v12[6] = &v18;
    v12[7] = 252;
    [managedObjectContext performBlockAndWait:v12];
  }

LABEL_6:
  v10 = v19[5];
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(&v18, 8);

  return v10;
}

- (id)searchIndexableNoteForIntentNote:(id)note
{
  identifier = [note identifier];
  if (identifier)
  {
    v5 = [NSURL URLWithString:identifier];
    noteContext = [(ICBaseIntentHandler *)self noteContext];
    modernManagedObjectContext = [noteContext modernManagedObjectContext];
    noteContext2 = [(ICBaseIntentHandler *)self noteContext];
    htmlManagedObjectContext = [noteContext2 htmlManagedObjectContext];
    v10 = [NotesAssistantUtilities searchIndexableNoteForObject:v5 modernNoteContext:modernManagedObjectContext htmlNoteContext:htmlManagedObjectContext];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)refreshNotesForCollectionWithId:(id)id andContext:(id)context
{
  idCopy = id;
  contextCopy = context;
  if (!idCopy)
  {
    [ICAssert handleFailedAssertWithCondition:"((void*)0) != collectionId" functionName:"[ICBaseIntentHandler refreshNotesForCollectionWithId:andContext:]" simulateCrash:1 showAlert:0 format:@"Should not pass nil collection ID into refreshNotesForCollectionWithId:."];
  }

  v7 = [contextCopy collectionForObjectID:idCopy];
  basicAccountIdentifier = [v7 basicAccountIdentifier];
  if (([basicAccountIdentifier isEqualToString:kLocalAccountIdentifier] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = +[DADConnection sharedConnection];
      v10 = [v9 updateContentsOfAllFoldersForAccountID:basicAccountIdentifier andDataclass:32 isUserRequested:1];

      v11 = os_log_create("com.apple.notes", "Intents");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = basicAccountIdentifier;
        v21 = 1024;
        LODWORD(v22) = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Result of updating all folders for account ID %@: %d", &v19, 0x12u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v7;
        v13 = +[DADConnection sharedConnection];
        externalIdentifier = [v12 externalIdentifier];
        v25 = externalIdentifier;
        v15 = [NSArray arrayWithObjects:&v25 count:1];
        v16 = [v13 updateContentsOfFoldersWithKeys:v15 forAccountID:basicAccountIdentifier andDataclass:32 isUserRequested:1];

        v17 = os_log_create("com.apple.notes", "Intents");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          externalIdentifier2 = [v12 externalIdentifier];
          v19 = 138412802;
          v20 = externalIdentifier2;
          v21 = 2112;
          v22 = basicAccountIdentifier;
          v23 = 1024;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Result of updating folder with identifier %@ for account ID %@: %d", &v19, 0x1Cu);
        }
      }
    }
  }
}

@end