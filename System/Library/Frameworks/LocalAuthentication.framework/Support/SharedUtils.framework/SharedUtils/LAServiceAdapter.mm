@interface LAServiceAdapter
- (LAServiceAdapter)initWithExportedInterface:(id)interface exportedObject:(id)object queue:(id)queue;
@end

@implementation LAServiceAdapter

- (LAServiceAdapter)initWithExportedInterface:(id)interface exportedObject:(id)object queue:(id)queue
{
  interfaceCopy = interface;
  objectCopy = object;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = LAServiceAdapter;
  v12 = [(LABaseService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_exportedInterface, interface);
    objc_storeStrong(&v13->_exportedObject, object);
    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

@end