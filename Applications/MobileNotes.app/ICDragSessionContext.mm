@interface ICDragSessionContext
- (ICDragSessionContext)initWithModernManagedObjectContext:(id)context legacyManagedObjectContext:(id)objectContext;
- (id)addItemIdentifierIfAppropriate:(id)appropriate isEditingCollectionView:(BOOL)view;
- (id)debugDescription;
- (void)updateDropTargetCellsForPinNoteDrop:(BOOL)drop;
@end

@implementation ICDragSessionContext

- (ICDragSessionContext)initWithModernManagedObjectContext:(id)context legacyManagedObjectContext:(id)objectContext
{
  contextCopy = context;
  objectContextCopy = objectContext;
  v13.receiver = self;
  v13.super_class = ICDragSessionContext;
  v9 = [(ICDragSessionContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modernManagedObjectContext, context);
    objc_storeStrong(&v10->_legacyManagedObjectContext, objectContext);
    currentSourceObjectIDs = v10->_currentSourceObjectIDs;
    v10->_currentSourceObjectIDs = &__NSArray0__struct;
  }

  return v10;
}

- (id)addItemIdentifierIfAppropriate:(id)appropriate isEditingCollectionView:(BOOL)view
{
  appropriateCopy = appropriate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = appropriateCopy;
    object = [v7 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    appropriateCopy = v7;
    if (isKindOfClass)
    {
      object2 = [v7 object];
      appropriateCopy = [object2 objectID];
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_38;
  }

  if ([appropriateCopy ic_isEntityOfClass:objc_opt_class()])
  {
    if ([(ICDragSessionContext *)self dragSessionType]== 1 || ![(ICDragSessionContext *)self dragSessionType])
    {
      [(ICDragSessionContext *)self setDragSessionType:1];
      modernManagedObjectContext = [(ICDragSessionContext *)self modernManagedObjectContext];
      v12 = [modernManagedObjectContext objectWithID:appropriateCopy];

      v13 = appropriateCopy;
      v14 = [ICAppURLUtilities appURLForNote:v12];
      v15 = v12;
      title = [v15 title];
      if ([v15 canBeSharedViaICloud])
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (appropriateCopy)
      {
        goto LABEL_23;
      }

      goto LABEL_46;
    }

LABEL_38:
    v34 = 0;
    v14 = 0;
    title = 0;
    v15 = 0;
    v17 = 0;
LABEL_39:
    v33 = 0;
    goto LABEL_40;
  }

  if ([appropriateCopy ic_isEntityOfClass:objc_opt_class()])
  {
    if ([(ICDragSessionContext *)self dragSessionType]!= 1 && [(ICDragSessionContext *)self dragSessionType])
    {
      goto LABEL_38;
    }

    [(ICDragSessionContext *)self setDragSessionType:1];
    legacyManagedObjectContext = [(ICDragSessionContext *)self legacyManagedObjectContext];
    v15 = [legacyManagedObjectContext objectWithID:appropriateCopy];

    v19 = appropriateCopy;
    shareURL = [ICAppURLUtilities appURLForHTMLNote:v15];
LABEL_15:
    v14 = shareURL;
    title = [v15 title];
    v17 = 0;
    if (!appropriateCopy)
    {
      goto LABEL_46;
    }

    goto LABEL_23;
  }

  if ([appropriateCopy ic_isEntityOfClass:objc_opt_class()])
  {
    if ([(ICDragSessionContext *)self dragSessionType])
    {
      goto LABEL_38;
    }

    [(ICDragSessionContext *)self setDragSessionType:2];
    modernManagedObjectContext2 = [(ICDragSessionContext *)self modernManagedObjectContext];
    v22 = [modernManagedObjectContext2 objectWithID:appropriateCopy];

    v23 = appropriateCopy;
    v14 = [ICAppURLUtilities appURLForFolder:v22];
    title = [v22 titleForTableViewCell];
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
    if (![appropriateCopy ic_isEntityOfClass:objc_opt_class()])
    {
      if (![appropriateCopy ic_isEntityOfClass:objc_opt_class()] || -[ICDragSessionContext dragSessionType](self, "dragSessionType"))
      {
        goto LABEL_38;
      }

      [(ICDragSessionContext *)self setDragSessionType:3];
      modernManagedObjectContext3 = [(ICDragSessionContext *)self modernManagedObjectContext];
      v15 = [modernManagedObjectContext3 objectWithID:appropriateCopy];

      v40 = appropriateCopy;
      shareURL = [v15 shareURL];
      goto LABEL_15;
    }

    if ([(ICDragSessionContext *)self dragSessionType])
    {
      goto LABEL_38;
    }

    [(ICDragSessionContext *)self setDragSessionType:2];
    legacyManagedObjectContext2 = [(ICDragSessionContext *)self legacyManagedObjectContext];
    v36 = [legacyManagedObjectContext2 objectWithID:appropriateCopy];

    v37 = appropriateCopy;
    v14 = [ICAppURLUtilities appURLForHTMLFolder:v36];
    title = [v36 titleForTableViewCell];

    v17 = 0;
  }

  v15 = 0;
  if (!appropriateCopy)
  {
LABEL_46:
    v34 = 0;
    goto LABEL_39;
  }

LABEL_23:
  v24 = [(NSArray *)self->_currentSourceObjectIDs arrayByAddingObject:appropriateCopy];
  currentSourceObjectIDs = self->_currentSourceObjectIDs;
  self->_currentSourceObjectIDs = v24;

  uRIRepresentation = [appropriateCopy URIRepresentation];
  v27 = [NSItemProvider alloc];
  if (v15)
  {
    v28 = [v27 initWithObject:v15];
  }

  else
  {
    v28 = [v27 initWithItem:uRIRepresentation typeIdentifier:@"com.apple.mobilenotes.managed.object.id.url"];
  }

  v29 = v28;
  [v28 setSuggestedName:title];
  if (!view)
  {
    v30 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.notes.open.object"];
    [v30 setTitle:title];
    absoluteString = [v14 absoluteString];
    [v30 setTargetContentIdentifier:absoluteString];

    [v30 setUserInfo:&off_10066E380];
    [v29 registerObject:v30 visibility:0];
  }

  if (v29 && [v17 canBeSharedViaICloud] && objc_msgSend(v17, "canCurrentUserShare"))
  {
    v32 = +[ICCollaborationController sharedInstance];
    [v32 registerShareForObject:v17 itemProvider:v29 generateThumbnails:1];
  }

  v33 = [[UIDragItem alloc] initWithItemProvider:v29];
  [v33 setLocalObject:appropriateCopy];

  v34 = appropriateCopy;
LABEL_40:

  return v33;
}

- (void)updateDropTargetCellsForPinNoteDrop:(BOOL)drop
{
  dropCopy = drop;
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
        [v9 setPinDropTarget:dropCopy];

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

  currentSourceObjectIDs = [(ICDragSessionContext *)self currentSourceObjectIDs];
  currentDropTargetItemIDs = [(ICDragSessionContext *)self currentDropTargetItemIDs];
  v8 = [NSString stringWithFormat:@"<%@: %p> dragSessionType: %@, currentSourceObjectIDs: %@, currentDropTargetItemIDs: %@", v3, self, v5, currentSourceObjectIDs, currentDropTargetItemIDs];

  return v8;
}

@end