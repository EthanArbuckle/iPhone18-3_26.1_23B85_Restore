@interface NSCKRecordMetadataReceiptArchive
- (NSCKRecordMetadataReceiptArchive)initWithCoder:(id)a3;
- (NSCKRecordMetadataReceiptArchive)initWithReceiptsToEncode:(id)a3;
- (void)dealloc;
- (void)enumerateArchivedRecordIDsUsingBlock:(id)a3;
@end

@implementation NSCKRecordMetadataReceiptArchive

- (NSCKRecordMetadataReceiptArchive)initWithReceiptsToEncode:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = NSCKRecordMetadataReceiptArchive;
  v3 = [(NSCKRecordMetadataReceiptArchive *)&v18 init];
  if (v3)
  {
    v3->_zoneIDToArchivedReceipts = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [a3 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(a3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v8 createRecordIDForMovedRecord];
          v10 = -[NSMutableDictionary objectForKey:](v3->_zoneIDToArchivedReceipts, "objectForKey:", [v9 zoneID]);
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
            -[NSMutableDictionary setObject:forKey:](v3->_zoneIDToArchivedReceipts, "setObject:forKey:", v10, [v9 zoneID]);
          }

          v19 = @"movedAt";
          v20 = [v8 movedAt];
          [v10 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", &v20, &v19, 1), objc_msgSend(v9, "recordName")}];
        }

        v5 = [a3 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)dealloc
{
  self->_zoneIDToArchivedReceipts = 0;
  v3.receiver = self;
  v3.super_class = NSCKRecordMetadataReceiptArchive;
  [(NSCKRecordMetadataReceiptArchive *)&v3 dealloc];
}

- (NSCKRecordMetadataReceiptArchive)initWithCoder:(id)a3
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSCKRecordMetadataReceiptArchive;
  v4 = [(NSCKRecordMetadataReceiptArchive *)&v8 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v9[0] = objc_opt_class();
    getCloudKitCKRecordZoneIDClass[0]();
    v9[1] = objc_opt_class();
    v9[2] = objc_opt_class();
    v9[3] = objc_opt_class();
    v4->_zoneIDToArchivedReceipts = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 4)), @"archiveDictionary"}];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)enumerateArchivedRecordIDsUsingBlock:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_zoneIDToArchivedReceipts;
  v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v15 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v4;
        v5 = *(*(&v23 + 1) + 8 * v4);
        v6 = [(NSMutableDictionary *)self->_zoneIDToArchivedReceipts objectForKey:v5];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v19 + 1) + 8 * i);
              v12 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:v11 zoneID:v5];
              (*(a3 + 2))(a3, v12, [objc_msgSend(v6 objectForKey:{v11), "objectForKey:", @"movedAt"}]);
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }

        v4 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end