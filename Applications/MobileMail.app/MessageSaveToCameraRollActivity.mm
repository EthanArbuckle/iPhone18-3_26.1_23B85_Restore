@interface MessageSaveToCameraRollActivity
- (ContentRepresentationHandlingDelegate)delegate;
- (MessageSaveToCameraRollActivity)init;
- (MessageSaveToCameraRollActivity)initWithAttachmentHandlingDelegate:(id)delegate context:(int64_t)context;
- (void)_prepareWithActivityItems:(id)items;
@end

@implementation MessageSaveToCameraRollActivity

- (MessageSaveToCameraRollActivity)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MessageSaveToCameraRollActivity.m" lineNumber:25 description:@"Invalid initializer. Use the designated one instead."];

  return 0;
}

- (MessageSaveToCameraRollActivity)initWithAttachmentHandlingDelegate:(id)delegate context:(int64_t)context
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = MessageSaveToCameraRollActivity;
  v7 = [(MessageSaveToCameraRollActivity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MessageSaveToCameraRollActivity *)v7 setDelegate:delegateCopy];
    [(MessageSaveToCameraRollActivity *)v8 setContext:context];
  }

  return v8;
}

- (void)_prepareWithActivityItems:(id)items
{
  itemsCopy = items;
  v3 = [itemsCopy mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = itemsCopy;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v16 = 0;
          v10 = MFCameraRollSaveAssetWithURL();
          v11 = 0;
          if (v10)
          {
            [v3 removeObject:v9];
          }

          else
          {
            path = [v9 path];
            NSLog(@"failed to ingest %@ (%@)", path, v11);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v15.receiver = self;
  v15.super_class = MessageSaveToCameraRollActivity;
  [(MessageSaveToCameraRollActivity *)&v15 prepareWithActivityItems:v3];
}

- (ContentRepresentationHandlingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end