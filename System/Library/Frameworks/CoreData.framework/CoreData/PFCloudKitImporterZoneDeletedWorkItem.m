@interface PFCloudKitImporterZoneDeletedWorkItem
- (PFCloudKitImporterZoneDeletedWorkItem)initWithDeletedRecordZoneID:(id)a3 options:(id)a4 request:(id)a5;
- (id)description;
- (void)dealloc;
- (void)doWorkForStore:(id)a3 inMonitor:(id)a4 completion:(id)a5;
@end

@implementation PFCloudKitImporterZoneDeletedWorkItem

- (PFCloudKitImporterZoneDeletedWorkItem)initWithDeletedRecordZoneID:(id)a3 options:(id)a4 request:(id)a5
{
  v8.receiver = self;
  v8.super_class = PFCloudKitImporterZoneDeletedWorkItem;
  v6 = [(PFCloudKitImporterWorkItem *)&v8 initWithOptions:a4 request:a5];
  if (v6)
  {
    v6->_deletedRecordZoneID = a3;
  }

  return v6;
}

- (void)dealloc
{
  self->_deletedRecordZoneID = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporterZoneDeletedWorkItem;
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

  v8 = [v4 initWithFormat:@"<%@: %p - %@>", v6, self, request];
  [v8 appendFormat:@" { %@ }", self->_deletedRecordZoneID];
  objc_autoreleasePoolPop(v3);

  return v8;
}

- (void)doWorkForStore:(id)a3 inMonitor:(id)a4 completion:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (self)
  {
    options = self->super._options;
    if (options)
    {
      v10 = options->_options;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NSCloudKitMirroringDelegateOptions *)v10 databaseScope];
    if (v11 == 3)
    {
      v12 = 299;
    }

    else
    {
      v12 = 298;
    }

    v13 = self->super._options;
    if (v13 && (v14 = v13->_options) != 0)
    {
      metadataPurger = v14->_metadataPurger;
    }

    else
    {
      metadataPurger = 0;
    }
  }

  else
  {
    v11 = [0 databaseScope];
    metadataPurger = 0;
    if (v11 == 3)
    {
      v12 = 299;
    }

    else
    {
      v12 = 298;
    }
  }

  v28[0] = self->_deletedRecordZoneID;
  v16 = -[PFCloudKitMetadataPurger purgeMetadataFromStore:inMonitor:withOptions:forRecordZones:inDatabaseWithScope:andTransactionAuthor:error:](metadataPurger, a3, a4, v12, [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1], v11, @"NSCloudKitMirroringDelegate.import", &v27);
  v17 = [NSCloudKitMirroringResult alloc];
  request = self->super._request;
  v19 = [a3 identifier];
  if (v16)
  {
    v20 = v17;
    v21 = request;
    v22 = 1;
    v23 = 1;
    v24 = 0;
  }

  else
  {
    v24 = v27;
    v20 = v17;
    v21 = request;
    v22 = 0;
    v23 = 0;
  }

  v25 = [(NSCloudKitMirroringResult *)v20 initWithRequest:v21 storeIdentifier:v19 success:v22 madeChanges:v23 error:v24];
  if (a5)
  {
    (*(a5 + 2))(a5, v25);
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end