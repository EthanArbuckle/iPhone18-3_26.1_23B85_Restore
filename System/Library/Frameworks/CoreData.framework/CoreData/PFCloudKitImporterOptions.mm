@interface PFCloudKitImporterOptions
- (PFCloudKitImporterOptions)initWithOptions:(id)options monitor:(id)monitor assetStorageURL:(id)l workQueue:(id)queue andDatabase:(id)database;
- (id)copy;
- (void)dealloc;
@end

@implementation PFCloudKitImporterOptions

- (PFCloudKitImporterOptions)initWithOptions:(id)options monitor:(id)monitor assetStorageURL:(id)l workQueue:(id)queue andDatabase:(id)database
{
  v15.receiver = self;
  v15.super_class = PFCloudKitImporterOptions;
  v12 = [(PFCloudKitImporterOptions *)&v15 init];
  if (v12)
  {
    v12->_options = [options copy];
    v12->_database = database;
    v12->_monitor = monitor;
    v12->_workQueue = queue;
    v12->_assetStorageURL = l;
    workQueue = v12->_workQueue;
    if (workQueue)
    {
      dispatch_retain(workQueue);
    }
  }

  return v12;
}

- (void)dealloc
{
  workQueue = self->_workQueue;
  if (workQueue)
  {
    dispatch_release(workQueue);
  }

  v4.receiver = self;
  v4.super_class = PFCloudKitImporterOptions;
  [(PFCloudKitImporterOptions *)&v4 dealloc];
}

- (id)copy
{
  v3 = [PFCloudKitImporterOptions alloc];
  workQueue = self->_workQueue;
  assetStorageURL = self->_assetStorageURL;
  monitor = self->_monitor;
  options = self->_options;
  database = self->_database;

  return [(PFCloudKitImporterOptions *)v3 initWithOptions:options monitor:monitor assetStorageURL:assetStorageURL workQueue:workQueue andDatabase:database];
}

@end