@interface PFCloudKitErrorLogEntry
- (PFCloudKitErrorLogEntry)initWithError:(id)a3 annotation:(id)a4;
- (void)dealloc;
@end

@implementation PFCloudKitErrorLogEntry

- (PFCloudKitErrorLogEntry)initWithError:(id)a3 annotation:(id)a4
{
  v6 = [(PFCloudKitErrorLogEntry *)self init];
  if (v6)
  {
    v6->_annotation = a4;
    v6->_error = a3;
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