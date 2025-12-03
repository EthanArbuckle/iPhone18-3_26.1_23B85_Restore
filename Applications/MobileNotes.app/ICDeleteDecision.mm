@interface ICDeleteDecision
+ (BOOL)didShowMoveToRecentlyDeletedFolderAlert;
+ (BOOL)isHTMLFolder:(id)folder;
+ (BOOL)isHTMLNote:(id)note;
+ (id)decisionObjectsForFolder:(id)folder;
+ (void)setDidShowMoveToRecentlyDeletedFolderAlert:(BOOL)alert;
- (ICDeleteDecision)initWithSourceObjects:(id)objects options:(unint64_t)options;
- (id)description;
- (void)makeDecisionForDeletingHTMLSourceObjects;
- (void)makeDecisionForDeletingModernSourceObjects;
- (void)setDecisionWithType:(unint64_t)type additionalStep:(unint64_t)step guiltyObjects:(id)objects;
@end

@implementation ICDeleteDecision

- (ICDeleteDecision)initWithSourceObjects:(id)objects options:(unint64_t)options
{
  optionsCopy = options;
  objectsCopy = objects;
  v24.receiver = self;
  v24.super_class = ICDeleteDecision;
  v7 = [(ICDeleteDecision *)&v24 init];
  v8 = v7;
  if (v7)
  {
    v7->_allowsRecentlyDeletedFolderAlert = (optionsCopy & 1) == 0;
    v7->_alwaysConfirmDeletion = (optionsCopy & 2) != 0;
    v9 = [objectsCopy ic_compactMap:&stru_100648C48];
    modernNotes = v8->_modernNotes;
    v8->_modernNotes = v9;

    v11 = [objectsCopy ic_compactMap:&stru_100648C68];
    modernFolders = v8->_modernFolders;
    v8->_modernFolders = v11;

    v13 = +[NSMutableArray array];
    [v13 addObjectsFromArray:v8->_modernNotes];
    [v13 addObjectsFromArray:v8->_modernFolders];
    v14 = [v13 copy];
    modernSourceObjects = v8->_modernSourceObjects;
    v8->_modernSourceObjects = v14;

    v16 = [objectsCopy ic_compactMap:&stru_100648C88];
    htmlNotes = v8->_htmlNotes;
    v8->_htmlNotes = v16;

    v18 = [objectsCopy ic_compactMap:&stru_100648CA8];
    htmlFolders = v8->_htmlFolders;
    v8->_htmlFolders = v18;

    v20 = +[NSMutableArray array];
    [v20 addObjectsFromArray:v8->_htmlNotes];
    [v20 addObjectsFromArray:v8->_htmlFolders];
    v21 = [v20 copy];
    htmlSourceObjects = v8->_htmlSourceObjects;
    v8->_htmlSourceObjects = v21;

    if ([(NSArray *)v8->_modernSourceObjects count])
    {
      [(ICDeleteDecision *)v8 makeDecisionForDeletingModernSourceObjects];
      if (![(NSArray *)v8->_htmlSourceObjects count])
      {
        goto LABEL_7;
      }
    }

    else if (![(NSArray *)v8->_htmlSourceObjects count])
    {
      [(ICDeleteDecision *)v8 setDecisionWithType:2 guiltyObjects:&__NSArray0__struct];
      goto LABEL_7;
    }

    [(ICDeleteDecision *)v8 makeDecisionForDeletingHTMLSourceObjects];
LABEL_7:
  }

  return v8;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = ICDeleteDecision;
  v3 = [(ICDeleteDecision *)&v11 description];
  type = [(ICDeleteDecision *)self type];
  v5 = @"ICDeleteDecisionTypeAllow";
  if (type == 1)
  {
    v5 = @"ICDeleteDecisionTypeAllowWithAdditionalStep";
  }

  if (type == 2)
  {
    v5 = @"ICDeleteDecisionTypePrevent";
  }

  v6 = v5;
  v7 = sub_1000CC62C([(ICDeleteDecision *)self additionalStep]);
  guiltyObjects = [(ICDeleteDecision *)self guiltyObjects];
  v9 = [NSString stringWithFormat:@"%@: type = %@, additionalStep = %@, guiltyObjects = %@", v3, v6, v7, guiltyObjects];

  return v9;
}

+ (id)decisionObjectsForFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[NSMutableArray array];
  isSharedViaICloud = [folderCopy isSharedViaICloud];
  [v5 addObject:folderCopy];
  if ((isSharedViaICloud & 1) == 0)
  {
    visibleNotes = [folderCopy visibleNotes];
    [v5 addObjectsFromArray:visibleNotes];

    visibleNoteContainerChildrenUnsorted = [folderCopy visibleNoteContainerChildrenUnsorted];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [visibleNoteContainerChildrenUnsorted countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(visibleNoteContainerChildrenUnsorted);
          }

          v13 = [self decisionObjectsForFolder:*(*(&v16 + 1) + 8 * i)];
          [v5 addObjectsFromArray:v13];
        }

        v10 = [visibleNoteContainerChildrenUnsorted countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = [v5 copy];

  return v14;
}

+ (BOOL)didShowMoveToRecentlyDeletedFolderAlert
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"didShowMoveToRecentyDeletedFolderAlert"];

  return v3;
}

+ (void)setDidShowMoveToRecentlyDeletedFolderAlert:(BOOL)alert
{
  alertCopy = alert;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:alertCopy forKey:@"didShowMoveToRecentyDeletedFolderAlert"];
}

+ (BOOL)isHTMLNote:(id)note
{
  noteCopy = note;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isHTMLFolder:(id)folder
{
  folderCopy = folder;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)makeDecisionForDeletingModernSourceObjects
{
  if ([(ICDeleteDecision *)self shouldContinueDecisionMaking])
  {
    v3 = [NSMutableSet alloc];
    modernSourceObjects = [(ICDeleteDecision *)self modernSourceObjects];
    v5 = [v3 initWithArray:modernSourceObjects];

    modernSourceObjects2 = [(ICDeleteDecision *)self modernSourceObjects];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1000CD18C;
    v59[3] = &unk_100648CD0;
    v7 = v5;
    v60 = v7;
    [modernSourceObjects2 enumerateObjectsUsingBlock:v59];

    if ([v7 count])
    {
      +[NSMutableSet set];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000CD210;
      v58 = v57[3] = &unk_100648CF8;
      modernSourceObjects3 = v58;
      [v7 enumerateObjectsUsingBlock:v57];
      [v7 minusSet:modernSourceObjects3];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000CD288;
      v55[3] = &unk_100648CF8;
      v56 = v7;
      [modernSourceObjects3 enumerateObjectsUsingBlock:v55];
    }

    else
    {
      modernSourceObjects3 = [(ICDeleteDecision *)self modernSourceObjects];
      [(ICDeleteDecision *)self setDecisionWithType:2 guiltyObjects:modernSourceObjects3];
    }

    v34 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v40 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v38 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v9 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v10 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v33 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v11 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v12 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v13 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v14 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v15 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000CD324;
    v42[3] = &unk_100648D20;
    v42[4] = self;
    v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v43 = v35;
    v36 = v15;
    v44 = v36;
    v41 = v40;
    v45 = v41;
    v39 = v38;
    v46 = v39;
    v37 = v9;
    v47 = v37;
    v16 = v10;
    v48 = v16;
    v17 = v14;
    v49 = v17;
    v18 = v12;
    v50 = v18;
    v19 = v13;
    v51 = v19;
    v20 = v11;
    v52 = v20;
    v21 = v33;
    v53 = v21;
    v22 = v34;
    v54 = v22;
    [v7 enumerateObjectsUsingBlock:v42];
    if ([v22 count])
    {
      v23 = v22;
LABEL_7:
      allObjects = [v23 allObjects];
      [(ICDeleteDecision *)self setDecisionWithType:2 guiltyObjects:allObjects];
LABEL_11:

      goto LABEL_12;
    }

    if ([v20 count])
    {
      allObjects = [v20 allObjects];
      selfCopy12 = self;
      v26 = 12;
    }

    else
    {
      if ([v17 count])
      {
        v23 = v17;
        goto LABEL_7;
      }

      if ([v41 count])
      {
        allObjects = [v41 allObjects];
        selfCopy12 = self;
        v26 = 1;
      }

      else if ([v39 count])
      {
        allObjects = [v41 allObjects];
        selfCopy12 = self;
        v26 = 2;
      }

      else if ([v37 count])
      {
        allObjects = [v37 allObjects];
        selfCopy12 = self;
        v26 = 3;
      }

      else if ([v16 count])
      {
        allObjects = [v16 allObjects];
        selfCopy12 = self;
        v26 = 4;
      }

      else if ([v18 count])
      {
        allObjects = [v18 allObjects];
        selfCopy12 = self;
        v26 = 5;
      }

      else if ([v19 count])
      {
        allObjects = [v19 allObjects];
        selfCopy12 = self;
        v26 = 6;
      }

      else
      {
        if ([v21 count])
        {
          v27 = [v21 ic_containsObjectPassingTest:&stru_100648D60];
          allObjects2 = [v21 allObjects];
          selfCopy8 = self;
          v30 = allObjects2;
          if (v27)
          {
            [(ICDeleteDecision *)selfCopy8 setDecisionWithType:2 guiltyObjects:allObjects2];
          }

          else
          {
            [(ICDeleteDecision *)selfCopy8 setDecisionWithType:1 additionalStep:7 guiltyObjects:allObjects2];
          }

          goto LABEL_12;
        }

        if ([v35 count])
        {
          allObjects = [v36 allObjects];
          selfCopy12 = self;
          v26 = 10;
        }

        else
        {
          if (![v36 count])
          {
            if ([(ICDeleteDecision *)self alwaysConfirmDeletion])
            {
              if ([v7 count] > 1)
              {
                v31 = 8;
              }

              else
              {
                v31 = 9;
              }

              selfCopy11 = self;
            }

            else
            {
              if (+[ICDeleteDecision didShowMoveToRecentlyDeletedFolderAlert]|| ![(ICDeleteDecision *)self allowsRecentlyDeletedFolderAlert])
              {
                [(ICDeleteDecision *)self setDecisionWithType:0 guiltyObjects:&__NSArray0__struct, v33];
                goto LABEL_12;
              }

              selfCopy11 = self;
              v31 = 11;
            }

            [(ICDeleteDecision *)selfCopy11 setDecisionWithType:1 additionalStep:v31 guiltyObjects:&__NSArray0__struct, v33];
LABEL_12:

            return;
          }

          allObjects = [v36 allObjects];
          selfCopy12 = self;
          v26 = 13;
        }
      }
    }

    [(ICDeleteDecision *)selfCopy12 setDecisionWithType:1 additionalStep:v26 guiltyObjects:allObjects, v33];
    goto LABEL_11;
  }
}

- (void)makeDecisionForDeletingHTMLSourceObjects
{
  if ([(ICDeleteDecision *)self shouldContinueDecisionMaking])
  {
    v3 = [NSMutableSet alloc];
    htmlSourceObjects = [(ICDeleteDecision *)self htmlSourceObjects];
    v5 = [v3 initWithArray:htmlSourceObjects];

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    htmlSourceObjects2 = [(ICDeleteDecision *)self htmlSourceObjects];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000CD750;
    v14 = &unk_100648D88;
    v16 = &v17;
    v7 = v5;
    v15 = v7;
    [htmlSourceObjects2 enumerateObjectsUsingBlock:&v11];

    if ([v7 count])
    {
      if (*(v18 + 24) != 1)
      {
LABEL_10:

        _Block_object_dispose(&v17, 8);
        return;
      }

      v8 = [v7 count];
      allObjects = [v7 allObjects];
      if (v8 > 1)
      {
        v10 = 8;
      }

      else
      {
        v10 = 9;
      }

      [(ICDeleteDecision *)self setDecisionWithType:1 additionalStep:v10 guiltyObjects:allObjects];
    }

    else
    {
      allObjects = [v7 allObjects];
      [(ICDeleteDecision *)self setDecisionWithType:2 guiltyObjects:allObjects];
    }

    goto LABEL_10;
  }
}

- (void)setDecisionWithType:(unint64_t)type additionalStep:(unint64_t)step guiltyObjects:(id)objects
{
  objectsCopy = objects;
  if (self->_type < type)
  {
    self->_type = type;
    self->_additionalStep = step;
    v10 = objectsCopy;
    objc_storeStrong(&self->_guiltyObjects, objects);
    objectsCopy = v10;
  }
}

@end