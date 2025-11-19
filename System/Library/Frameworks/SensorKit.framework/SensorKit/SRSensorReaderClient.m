@interface SRSensorReaderClient
- (void)resetDatastoreFiles:(id)a3;
@end

@implementation SRSensorReaderClient

- (void)resetDatastoreFiles:(id)a3
{
  if (self)
  {
    self = objc_loadWeak(&self->_reader);
  }

  [(SRSensorReaderClient *)self resetDatastoreFiles:a3];
}

@end