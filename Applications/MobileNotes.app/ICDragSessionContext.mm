@interface ICDragSessionContext
- (ICDragSessionContext)initWithModernManagedObjectContext:(id)a3 legacyManagedObjectContext:(id)a4;
- (id)addItemIdentifierIfAppropriate:(id)a3 isEditingCollectionView:(BOOL)a4;
- (id)debugDescription;
- (void)updateDropTargetCellsForPinNoteDrop:(BOOL)a3;
@end

@implementation ICDragSessionContext

- (ICDragSessionContext)initWithModernManagedObjectContext:(id)a3 legacyManagedObjectContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ICDragSessionContext;
  v9 = [(ICDragSessionContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modernManagedObjectContext, a3);
    objc_storeStrong(&v10->_legacyManagedObjectContext, a4);
    currentSourceObjectIDs = v10->_currentSourceObjectIDs;
    v10->_currentSourceObjectIDs = &__NSArray0__struct;
  }

  return v10;
}

- (id)addItemIdentifierIfAppropriate:(id)a3 isEditingCollectionView:(BOOL)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v6 = v7;
    if (isKindOfClass)
    {
      v10 = [v7 object];
      v6 = [v10 objectID];
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_38;
  }

  if ([v6 ic_isEntityOfClass:objc_opt_class()])
  {
    if ([(ICDragSessionContext *)self dragSessionType]== 1 || ![(ICDragSessionContext *)self dragSessionType])
    {
      [(ICDragSessionContext *)self setDragSessionType:1];
      v11 = [(ICDragSessionContext *)self modernManagedObjectContext];
      v12 = [v11 objectWithID:v6];

      v13 = v6;
      v14 = [ICAppURLUtilities appURLForNote:v12];
      v15 = v12;
      v16 = [v15 title];
      if ([v15 canBeSharedViaICloud])
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v6)
      {
        goto LABEL_23;
      }

      goto LABEL_46;
    }

LABEL_38:
    v34 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 0;
    v17 = 0;
LABEL_39:
    v33 = 0;
    goto LABEL_40;
  }

  if ([v6 ic_isEntityOfClass:objc_opt_class()])
  {
    if ([(ICDragSessionContext *)self dragSessionType]!= 1 && [(ICDragSessionContext *)self dragSessionType])
    {
      goto LABEL_38;
    }

    [(ICDragSessionContext *)self setDragSessionType:1];
    v18 = [(ICDragSessionContext *)self legacyManagedObjectContext];
    v15 = [v18 objectWithID:v6];

    v19 = v6;
    v20 = [ICAppURLUtilities appURLForHTMLNote:v15];
LABEL_15:
    v14 = v20;
    v16 = [v15 title];
    v17 = 0;
    if (!v6)
    {
      goto LABEL_46;
    }

    goto LABEL_23;
  }

  if ([v6 ic_isEntityOfClass:objc_opt_class()])
  {
    if ([(ICDragSessionContext *)self dragSessionType])
    {
      goto LABEL_38;
    }

    [(ICDragSessionContext *)self setDragSessionType:2];
    v21 = [(ICDragSessionContext *)self modernManagedObjectContext];
    v22 = [v21 objectWithID:v6];

    v23 = v6;
    v14 = [ICAppURLUtilities appURLForFolder:v22];
    v16 = [v22 titleForTableViewCell];
    if ([v22 canBeSharedViaICloud])
    {
      v17 = v22;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (![v6 ic_isEntityOfClass:objc_opt_class()])
    {
      if (![v6 ic_isEntityOfClass:objc_opt_class()] || -[ICDragSessionContext dragSessionType](self, "dragSessionType"))
      {
        goto LABEL_38;
      }

      [(ICDragSessionContext *)self setDragSessionType:3];
      v39 = [(ICDragSessionContext *)self modernManagedObjectContext];
      v15 = [v39 objectWithID:v6];

      v40 = v6;
      v20 = [v15 shareURL];
      goto LABEL_15;
    }

    if ([(ICDragSessionContext *)self dragSessionType])
    {
      goto LABEL_38;
    }

    [(ICDragSessionContext *)self setDragSessionType:2];
    v35 = [(ICDragSessionContext *)self legacyManagedObjectContext];
    v36 = [v35 objectWithID:v6];

    v37 = v6;
    v14 = [ICAppURLUtilities appURLForHTMLFolder:v36];
    v16 = [v36 titleForTableViewCell];

    v17 = 0;
  }

  v15 = 0;
  if (!v6)
  {
LABEL_46:
    v34 = 0;
    goto LABEL_39;
  }

LABEL_23:
  v24 = [(NSArray *)self->_currentSourceObjectIDs arrayByAddingObject:v6];
  currentSourceObjectIDs = self->_currentSourceObjectIDs;
  self->_currentSourceObjectIDs = v24;

  v26 = [v6 URIRepresentation];
  v27 = [NSItemProvider alloc];
  if (v15)
  {
    v28 = [v27 initWithObject:v15];
  }

  else
  {
    v28 = [v27 initWithItem:v26 typeIdentifier:@"com.apple.mobilenotes.managed.object.id.url"];
  }

  v29 = v28;
  [v28 setSuggestedName:v16];
  if (!a4)
  {
    v30 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.notes.open.object"];
    [v30 setTitle:v16];
    v31 = [v14 absoluteString];
    [v30 setTargetContentIdentifier:v31];

    [v30 setUserInfo:&off_10066E380];
    [v29 registerObject:v30 visibility:0];
  }

  if (v29 && [v17 canBeSharedViaICloud] && objc_msgSend(v17, "canCurrentUserShare"))
  {
    v32 = +[ICCollaborationController sharedInstance];
    [v32 registerShareForObject:v17 itemProvider:v29 generateThumbnails:1];
  }

  v33 = [[UIDragItem alloc] initWithItemProvider:v29];
  [v33 setLocalObject:v6];

  v34 = v6;
LABEL_40:

  return v33;
}

- (void)updateDropTargetCellsForPinNoteDrop:(BOOL)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(ICDragSessionContext *)self currentDropTargetCells:0];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v9 = ICDynamicCast();
        [v9 setPinDropTarget:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(ICDragSessionContext *)self dragSessionType]- 1;
  if (v4 > 2)
  {
    v5 = @"ICDragSessionContextTypeUndefined";
  }

  else
  {
    v5 = off_100647358[v4];
  }

  v6 = [(ICDragSessionContext *)self currentSourceObjectIDs];
  v7 = [(ICDragSessionContext *)self currentDropTargetItemIDs];
  v8 = [NSString stringWithFormat:@"<%@: %p> dragSessionType: %@, currentSourceObjectIDs: %@, currentDropTargetItemIDs: %@", v3, self, v5, v6, v7];

  return v8;
}

@end