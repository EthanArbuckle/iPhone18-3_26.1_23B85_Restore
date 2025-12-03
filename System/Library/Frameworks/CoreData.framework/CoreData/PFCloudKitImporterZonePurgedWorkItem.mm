@interface PFCloudKitImporterZonePurgedWorkItem
- (PFCloudKitImporterZonePurgedWorkItem)initWithPurgedRecordZoneID:(id)d options:(id)options request:(id)request;
- (id)description;
- (void)dealloc;
- (void)doWorkForStore:(id)store inMonitor:(id)monitor completion:(id)completion;
@end

@implementation PFCloudKitImporterZonePurgedWorkItem

- (PFCloudKitImporterZonePurgedWorkItem)initWithPurgedRecordZoneID:(id)d options:(id)options request:(id)request
{
  v8.receiver = self;
  v8.super_class = PFCloudKitImporterZonePurgedWorkItem;
  v6 = [(PFCloudKitImporterWorkItem *)&v8 initWithOptions:options request:request];
  if (v6)
  {
    v6->_purgedRecordZoneID = d;
  }

  return v6;
}

- (void)dealloc
{
  self->_purgedRecordZoneID = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporterZonePurgedWorkItem;
  [(PFCloudKitImporterWorkItem *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (self)
  {
    request = self->super._request;
  }

  else
  {
    request = 0;
  }

  request = [v4 initWithFormat:@"<%@: %p - %@>", v6, self, request];
  [request appendFormat:@" { %@ }", self->_purgedRecordZoneID];
  objc_autoreleasePoolPop(v3);

  return request;
}

- (void)doWorkForStore:(id)store inMonitor:(id)monitor completion:(id)completion
{
  v37[1] = *MEMORY[0x1E69E9840];
  v32 = 0;
  mirroringDelegate = [store mirroringDelegate];
  v10 = objc_alloc(MEMORY[0x1E696AD80]);
  v36 = @"NSCloudKitMirroringDelegateResetSyncReasonKey";
  v37[0] = &unk_1EF435D70;
  v11 = [v10 initWithName:@"NSCloudKitMirroringDelegateWillResetSyncNotificationName" object:mirroringDelegate userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v37, &v36, 1)}];
  [mirroringDelegate logResetSyncNotification:v11];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  if (self && (options = self->super._options) != 0 && (v13 = options->_options) != 0)
  {
    metadataPurger = v13->_metadataPurger;
  }

  else
  {
    metadataPurger = 0;
  }

  purgedRecordZoneID = self->_purgedRecordZoneID;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&purgedRecordZoneID count:1];
  v16 = self->super._options;
  if (v16)
  {
    v17 = v16->_options;
  }

  else
  {
    v17 = 0;
  }

  if ([(PFCloudKitMetadataPurger *)metadataPurger purgeMetadataFromStore:store inMonitor:monitor withOptions:9 forRecordZones:v15 inDatabaseWithScope:[(NSCloudKitMirroringDelegateOptions *)v17 databaseScope] andTransactionAuthor:@"NSCloudKitMirroringDelegate.reset" error:&v32])
  {
    v18 = objc_alloc(MEMORY[0x1E696AD80]);
    v33 = @"NSCloudKitMirroringDelegateResetSyncReasonKey";
    v34 = &unk_1EF435D70;
    v19 = [v18 initWithName:@"NSCloudKitMirroringDelegateDidResetSyncNotificationName" object:mirroringDelegate userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}];
    [mirroringDelegate logResetSyncNotification:v19];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    v20 = [NSCloudKitMirroringResult alloc];
    request = self->super._request;
    identifier = [store identifier];
    v23 = v20;
    v24 = request;
    v25 = 1;
    v26 = 1;
    v27 = 0;
  }

  else
  {
    v28 = [NSCloudKitMirroringResult alloc];
    v29 = self->super._request;
    identifier = [store identifier];
    v27 = v32;
    v23 = v28;
    v24 = v29;
    v25 = 0;
    v26 = 0;
  }

  v30 = [(NSCloudKitMirroringResult *)v23 initWithRequest:v24 storeIdentifier:identifier success:v25 madeChanges:v26 error:v27];
  if (completion)
  {
    (*(completion + 2))(completion, v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

@end