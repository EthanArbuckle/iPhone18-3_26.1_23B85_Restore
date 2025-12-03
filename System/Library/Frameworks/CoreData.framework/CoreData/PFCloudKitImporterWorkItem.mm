@interface PFCloudKitImporterWorkItem
- (PFCloudKitImporterWorkItem)initWithOptions:(id)options request:(id)request;
- (void)dealloc;
- (void)doWorkForStore:(id)store inMonitor:(id)monitor completion:(id)completion;
@end

@implementation PFCloudKitImporterWorkItem

- (PFCloudKitImporterWorkItem)initWithOptions:(id)options request:(id)request
{
  v8.receiver = self;
  v8.super_class = PFCloudKitImporterWorkItem;
  v6 = [(PFCloudKitImporterWorkItem *)&v8 init];
  if (v6)
  {
    v6->_options = options;
    v6->_request = request;
  }

  return v6;
}

- (void)dealloc
{
  self->_options = 0;

  self->_request = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporterWorkItem;
  [(PFCloudKitImporterWorkItem *)&v3 dealloc];
}

- (void)doWorkForStore:(id)store inMonitor:(id)monitor completion:(id)completion
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end