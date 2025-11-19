@interface PFCloudKitImporterWorkItem
- (PFCloudKitImporterWorkItem)initWithOptions:(id)a3 request:(id)a4;
- (void)dealloc;
- (void)doWorkForStore:(id)a3 inMonitor:(id)a4 completion:(id)a5;
@end

@implementation PFCloudKitImporterWorkItem

- (PFCloudKitImporterWorkItem)initWithOptions:(id)a3 request:(id)a4
{
  v8.receiver = self;
  v8.super_class = PFCloudKitImporterWorkItem;
  v6 = [(PFCloudKitImporterWorkItem *)&v8 init];
  if (v6)
  {
    v6->_options = a3;
    v6->_request = a4;
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

- (void)doWorkForStore:(id)a3 inMonitor:(id)a4 completion:(id)a5
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end