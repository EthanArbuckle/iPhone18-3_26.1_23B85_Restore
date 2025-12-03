@interface NIExportedObjectForwarder
- (NIExportedObjectForwarder)initWithExportedObject:(id)object;
- (id)exportedObject;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation NIExportedObjectForwarder

- (NIExportedObjectForwarder)initWithExportedObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    [(NIExportedObjectForwarder *)a2 initWithExportedObject:?];
  }

  v9.receiver = self;
  v9.super_class = NIExportedObjectForwarder;
  v6 = [(NIExportedObjectForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(NIExportedObjectForwarder *)v6 setExportedObject:objectCopy];
    [(NIExportedObjectForwarder *)v7 setExportedObjectClass:objc_opt_class()];
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  exportedObjectClass = [(NIExportedObjectForwarder *)self exportedObjectClass];

  return [(objc_class *)exportedObjectClass instanceMethodSignatureForSelector:selector];
}

- (id)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

- (void)initWithExportedObject:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NIServerConnection.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"object"}];
}

@end