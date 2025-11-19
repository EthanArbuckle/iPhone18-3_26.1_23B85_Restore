@interface MessageSaveAllAttachmentsActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation MessageSaveAllAttachmentsActivity

- (id)activityTitle
{
  v2 = [(MessageSaveToCameraRollActivity *)self delegate];
  v3 = [v2 localizedTitleForSaveAllAttachmentsAction];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = self;
  v4 = [(MessageSaveToCameraRollActivity *)self delegate];
  LOBYTE(v3) = [v4 canSaveAllAttachmentsInContext:{-[MessageSaveToCameraRollActivity context](v3, "context")}];

  return v3;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = [(MessageSaveToCameraRollActivity *)self delegate];
  v5 = [v4 allMediaAttachmentFutures];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = v5;
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