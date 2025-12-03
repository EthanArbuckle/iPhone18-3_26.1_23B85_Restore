@interface RCUIActivity
- (NSArray)recordingUUIDs;
- (RCUIActivity)initWithShareableCompositions:(id)compositions;
@end

@implementation RCUIActivity

- (RCUIActivity)initWithShareableCompositions:(id)compositions
{
  compositionsCopy = compositions;
  v8.receiver = self;
  v8.super_class = RCUIActivity;
  v5 = [(RCUIActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(RCUIActivity *)v5 setShareableCompositions:compositionsCopy];
  }

  return v6;
}

- (NSArray)recordingUUIDs
{
  recordingUUIDs = self->_recordingUUIDs;
  if (!recordingUUIDs)
  {
    v4 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    shareableCompositions = [(RCUIActivity *)self shareableCompositions];
    v6 = [shareableCompositions countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(shareableCompositions);
          }

          recordingUUID = [*(*(&v14 + 1) + 8 * v9) recordingUUID];
          [v4 addObject:recordingUUID];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [shareableCompositions countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
    v12 = self->_recordingUUIDs;
    self->_recordingUUIDs = v11;

    recordingUUIDs = self->_recordingUUIDs;
  }

  return recordingUUIDs;
}

@end