@interface MessageSaveToCameraRollActivity
- (ContentRepresentationHandlingDelegate)delegate;
- (MessageSaveToCameraRollActivity)init;
- (MessageSaveToCameraRollActivity)initWithAttachmentHandlingDelegate:(id)a3 context:(int64_t)a4;
- (void)_prepareWithActivityItems:(id)a3;
@end

@implementation MessageSaveToCameraRollActivity

- (MessageSaveToCameraRollActivity)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MessageSaveToCameraRollActivity.m" lineNumber:25 description:@"Invalid initializer. Use the designated one instead."];

  return 0;
}

- (MessageSaveToCameraRollActivity)initWithAttachmentHandlingDelegate:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MessageSaveToCameraRollActivity;
  v7 = [(MessageSaveToCameraRollActivity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MessageSaveToCameraRollActivity *)v7 setDelegate:v6];
    [(MessageSaveToCameraRollActivity *)v8 setContext:a4];
  }

  return v8;
}

- (void)_prepareWithActivityItems:(id)a3
{
  v13 = a3;
  v3 = [v13 mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v13;
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
            v12 = [v9 path];
            NSLog(@"failed to ingest %@ (%@)", v12, v11);
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