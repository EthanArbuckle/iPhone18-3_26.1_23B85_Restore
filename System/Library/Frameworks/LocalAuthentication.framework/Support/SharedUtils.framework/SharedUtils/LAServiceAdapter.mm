@interface LAServiceAdapter
- (LAServiceAdapter)initWithExportedInterface:(id)a3 exportedObject:(id)a4 queue:(id)a5;
@end

@implementation LAServiceAdapter

- (LAServiceAdapter)initWithExportedInterface:(id)a3 exportedObject:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LAServiceAdapter;
  v12 = [(LABaseService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_exportedInterface, a3);
    objc_storeStrong(&v13->_exportedObject, a4);
    objc_storeStrong(&v13->_queue, a5);
  }

  return v13;
}

@end