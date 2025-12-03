@interface SRSensorReaderClient
- (void)resetDatastoreFiles:(id)files;
@end

@implementation SRSensorReaderClient

- (void)resetDatastoreFiles:(id)files
{
  if (self)
  {
    self = objc_loadWeak(&self->_reader);
  }

  [(SRSensorReaderClient *)self resetDatastoreFiles:files];
}

@end