@interface PFCloudKitErrorLogEntry
- (PFCloudKitErrorLogEntry)initWithError:(id)error annotation:(id)annotation;
- (void)dealloc;
@end

@implementation PFCloudKitErrorLogEntry

- (PFCloudKitErrorLogEntry)initWithError:(id)error annotation:(id)annotation
{
  v6 = [(PFCloudKitErrorLogEntry *)self init];
  if (v6)
  {
    v6->_annotation = annotation;
    v6->_error = error;
  }

  return v6;
}

- (void)dealloc
{
  self->_annotation = 0;

  self->_error = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitErrorLogEntry;
  [(PFCloudKitErrorLogEntry *)&v3 dealloc];
}

@end