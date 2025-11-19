@interface PFCloudKitExporterOptions
- (PFCloudKitExporterOptions)initWithDatabase:(id)a3 options:(id)a4;
- (id)copy;
- (void)dealloc;
@end

@implementation PFCloudKitExporterOptions

- (PFCloudKitExporterOptions)initWithDatabase:(id)a3 options:(id)a4
{
  v8.receiver = self;
  v8.super_class = PFCloudKitExporterOptions;
  v6 = [(PFCloudKitExporterOptions *)&v8 init];
  if (v6)
  {
    *(v6 + 1) = a3;
    *(v6 + 2) = a4;
    *(v6 + 24) = xmmword_18592ED90;
  }

  return v6;
}

- (void)dealloc
{
  self->_database = 0;

  self->_mirroringDelegateOptions = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitExporterOptions;
  [(PFCloudKitExporterOptions *)&v3 dealloc];
}

- (id)copy
{
  result = [[PFCloudKitExporterOptions alloc] initWithDatabase:self->_database options:self->_mirroringDelegateOptions];
  if (result)
  {
    *(result + 4) = self->_perOperationObjectThreshold;
    *(result + 3) = self->_perOperationBytesThreshold;
  }

  return result;
}

@end