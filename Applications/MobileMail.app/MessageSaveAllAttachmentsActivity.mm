@interface MessageSaveAllAttachmentsActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation MessageSaveAllAttachmentsActivity

- (id)activityTitle
{
  delegate = [(MessageSaveToCameraRollActivity *)self delegate];
  localizedTitleForSaveAllAttachmentsAction = [delegate localizedTitleForSaveAllAttachmentsAction];

  return localizedTitleForSaveAllAttachmentsAction;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  selfCopy = self;
  delegate = [(MessageSaveToCameraRollActivity *)self delegate];
  LOBYTE(selfCopy) = [delegate canSaveAllAttachmentsInContext:{-[MessageSaveToCameraRollActivity context](selfCopy, "context")}];

  return selfCopy;
}

- (void)prepareWithActivityItems:(id)items
{
  delegate = [(MessageSaveToCameraRollActivity *)self delegate];
  allMediaAttachmentFutures = [delegate allMediaAttachmentFutures];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = allMediaAttachmentFutures;
  v6 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = +[EFScheduler mainThreadScheduler];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10019CE38;
        v12[3] = &unk_100653008;
        v12[4] = self;
        [v9 onScheduler:v10 addSuccessBlock:v12];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

@end