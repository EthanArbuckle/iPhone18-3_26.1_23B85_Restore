@interface PFCloudKitMetadataValueTransformer
+ (NSArray)allowedTopLevelClasses;
@end

@implementation PFCloudKitMetadataValueTransformer

+ (NSArray)allowedTopLevelClasses
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___PFCloudKitMetadataValueTransformer;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSendSuper2(&v14, sel_allowedTopLevelClasses)}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  getCloudKitCKRecordClass[0]();
  v15[0] = objc_opt_class();
  getCloudKitCKShareClass[0]();
  v15[1] = objc_opt_class();
  getCloudKitCKRecordIDClass[0]();
  v15[2] = objc_opt_class();
  getCloudKitCKRecordZoneIDClass[0]();
  v15[3] = objc_opt_class();
  getCloudKitCKServerChangeTokenClass[0]();
  v15[4] = objc_opt_class();
  getCloudKitCKNotificationInfoClass[0]();
  v15[5] = objc_opt_class();
  v15[6] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:7];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  result = v2;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end