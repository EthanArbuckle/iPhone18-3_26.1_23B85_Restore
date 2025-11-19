@interface ICDeleteDecision
+ (BOOL)didShowMoveToRecentlyDeletedFolderAlert;
+ (BOOL)isHTMLFolder:(id)a3;
+ (BOOL)isHTMLNote:(id)a3;
+ (id)decisionObjectsForFolder:(id)a3;
+ (void)setDidShowMoveToRecentlyDeletedFolderAlert:(BOOL)a3;
- (ICDeleteDecision)initWithSourceObjects:(id)a3 options:(unint64_t)a4;
- (id)description;
- (void)makeDecisionForDeletingHTMLSourceObjects;
- (void)makeDecisionForDeletingModernSourceObjects;
- (void)setDecisionWithType:(unint64_t)a3 additionalStep:(unint64_t)a4 guiltyObjects:(id)a5;
@end

@implementation ICDeleteDecision

- (ICDeleteDecision)initWithSourceObjects:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v24.receiver = self;
  v24.super_class = ICDeleteDecision;
  v7 = [(ICDeleteDecision *)&v24 init];
  v8 = v7;
  if (v7)
  {
    v7->_allowsRecentlyDeletedFolderAlert = (v4 & 1) == 0;
    v7->_alwaysConfirmDeletion = (v4 & 2) != 0;
    v9 = [v6 ic_compactMap:&stru_100648C48];
    modernNotes = v8->_modernNotes;
    v8->_modernNotes = v9;

    v11 = [v6 ic_compactMap:&stru_100648C68];
    modernFolders = v8->_modernFolders;
    v8->_modernFolders = v11;

    v13 = +[NSMutableArray array];
    [v13 addObjectsFromArray:v8->_modernNotes];
    [v13 addObjectsFromArray:v8->_modernFolders];
    v14 = [v13 copy];
    modernSourceObjects = v8->_modernSourceObjects;
    v8->_modernSourceObjects = v14;

    v16 = [v6 ic_compactMap:&stru_100648C88];
    htmlNotes = v8->_htmlNotes;
    v8->_htmlNotes = v16;

    v18 = [v6 ic_compactMap:&stru_100648CA8];
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
  v4 = [(ICDeleteDecision *)self type];
  v5 = @"ICDeleteDecisionTypeAllow";
  if (v4 == 1)
  {
    v5 = @"ICDeleteDecisionTypeAllowWithAdditionalStep";
  }

  if (v4 == 2)
  {
    v5 = @"ICDeleteDecisionTypePrevent";
  }

  v6 = v5;
  v7 = sub_1000CC62C([(ICDeleteDecision *)self additionalStep]);
  v8 = [(ICDeleteDecision *)self guiltyObjects];
  v9 = [NSString stringWithFormat:@"%@: type = %@, additionalStep = %@, guiltyObjects = %@", v3, v6, v7, v8];

  return v9;
}

+ (id)decisionObjectsForFolder:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [v4 isSharedViaICloud];
  [v5 addObject:v4];
  if ((v6 & 1) == 0)
  {
    v7 = [v4 visibleNotes];
    [v5 addObjectsFromArray:v7];

    v8 = [v4 visibleNoteContainerChildrenUnsorted];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [a1 decisionObjectsForFolder:*(*(&v16 + 1) + 8 * i)];
          [v5 addObjectsFromArray:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (void)setDidShowMoveToRecentlyDeletedFolderAlert:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:v3 forKey:@"didShowMoveToRecentyDeletedFolderAlert"];
}

+ (BOOL)isHTMLNote:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isHTMLFolder:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)makeDecisionForDeletingModernSourceObjects
{
  if ([(ICDeleteDecision *)self shouldContinueDecisionMaking])
  {
    v3 = [NSMutableSet alloc];
    v4 = [(ICDeleteDecision *)self modernSourceObjects];
    v5 = [v3 initWithArray:v4];

    v6 = [(ICDeleteDecision *)self modernSourceObjects];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1000CD18C;
    v59[3] = &unk_100648CD0;
    v7 = v5;
    v60 = v7;
    [v6 enumerateObjectsUsingBlock:v59];

    if ([v7 count])
    {
      +[NSMutableSet set];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000CD210;
      v58 = v57[3] = &unk_100648CF8;
      v8 = v58;
      [v7 enumerateObjectsUsingBlock:v57];
      [v7 minusSet:v8];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000CD288;
      v55[3] = &unk_100648CF8;
      v56 = v7;
      [v8 enumerateObjectsUsingBlock:v55];
    }

    else
    {
      v8 = [(ICDeleteDecision *)self modernSourceObjects];
      [(ICDeleteDecision *)self setDecisionWithType:2 guiltyObjects:v8];
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
      v24 = [v23 allObjects];
      [(ICDeleteDecision *)self setDecisionWithType:2 guiltyObjects:v24];
LABEL_11:

      goto LABEL_12;
    }

    if ([v20 count])
    {
      v24 = [v20 allObjects];
      v25 = self;
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
        v24 = [v41 allObjects];
        v25 = self;
        v26 = 1;
      }

      else if ([v39 count])
      {
        v24 = [v41 allObjects];
        v25 = self;
        v26 = 2;
      }

      else if ([v37 count])
      {
        v24 = [v37 allObjects];
        v25 = self;
        v26 = 3;
      }

      else if ([v16 count])
      {
        v24 = [v16 allObjects];
        v25 = self;
        v26 = 4;
      }

      else if ([v18 count])
      {
        v24 = [v18 allObjects];
        v25 = self;
        v26 = 5;
      }

      else if ([v19 count])
      {
        v24 = [v19 allObjects];
        v25 = self;
        v26 = 6;
      }

      else
      {
        if ([v21 count])
        {
          v27 = [v21 ic_containsObjectPassingTest:&stru_100648D60];
          v28 = [v21 allObjects];
          v29 = self;
          v30 = v28;
          if (v27)
          {
            [(ICDeleteDecision *)v29 setDecisionWithType:2 guiltyObjects:v28];
          }

          else
          {
            [(ICDeleteDecision *)v29 setDecisionWithType:1 additionalStep:7 guiltyObjects:v28];
          }

          goto LABEL_12;
        }

        if ([v35 count])
        {
          v24 = [v36 allObjects];
          v25 = self;
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

              v32 = self;
            }

            else
            {
              if (+[ICDeleteDecision didShowMoveToRecentlyDeletedFolderAlert]|| ![(ICDeleteDecision *)self allowsRecentlyDeletedFolderAlert])
              {
                [(ICDeleteDecision *)self setDecisionWithType:0 guiltyObjects:&__NSArray0__struct, v33];
                goto LABEL_12;
              }

              v32 = self;
              v31 = 11;
            }

            [(ICDeleteDecision *)v32 setDecisionWithType:1 additionalStep:v31 guiltyObjects:&__NSArray0__struct, v33];
LABEL_12:

            return;
          }

          v24 = [v36 allObjects];
          v25 = self;
          v26 = 13;
        }
      }
    }

    [(ICDeleteDecision *)v25 setDecisionWithType:1 additionalStep:v26 guiltyObjects:v24, v33];
    goto LABEL_11;
  }
}

- (void)makeDecisionForDeletingHTMLSourceObjects
{
  if ([(ICDeleteDecision *)self shouldContinueDecisionMaking])
  {
    v3 = [NSMutableSet alloc];
    v4 = [(ICDeleteDecision *)self htmlSourceObjects];
    v5 = [v3 initWithArray:v4];

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v6 = [(ICDeleteDecision *)self htmlSourceObjects];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000CD750;
    v14 = &unk_100648D88;
    v16 = &v17;
    v7 = v5;
    v15 = v7;
    [v6 enumerateObjectsUsingBlock:&v11];

    if ([v7 count])
    {
      if (*(v18 + 24) != 1)
      {
LABEL_10:

        _Block_object_dispose(&v17, 8);
        return;
      }

      v8 = [v7 count];
      v9 = [v7 allObjects];
      if (v8 > 1)
      {
        v10 = 8;
      }

      else
      {
        v10 = 9;
      }

      [(ICDeleteDecision *)self setDecisionWithType:1 additionalStep:v10 guiltyObjects:v9];
    }

    else
    {
      v9 = [v7 allObjects];
      [(ICDeleteDecision *)self setDecisionWithType:2 guiltyObjects:v9];
    }

    goto LABEL_10;
  }
}

- (void)setDecisionWithType:(unint64_t)a3 additionalStep:(unint64_t)a4 guiltyObjects:(id)a5
{
  v9 = a5;
  if (self->_type < a3)
  {
    self->_type = a3;
    self->_additionalStep = a4;
    v10 = v9;
    objc_storeStrong(&self->_guiltyObjects, a5);
    v9 = v10;
  }
}

@end