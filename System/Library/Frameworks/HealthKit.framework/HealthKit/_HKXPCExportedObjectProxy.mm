@interface _HKXPCExportedObjectProxy
- (id)methodSignatureForSelector:(SEL)selector;
- (id)weakExportedObject;
- (void)forwardInvocation:(id)invocation;
- (void)setWeakExportedObject:(id)object;
@end

@implementation _HKXPCExportedObjectProxy

- (void)setWeakExportedObject:(id)object
{
  objectCopy = object;
  objc_storeWeak(&self->_weakExportedObject, objectCopy);
  v5 = objc_opt_class();

  [(_HKXPCExportedObjectProxy *)self setWeakExportedObjectClass:v5];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  weakExportedObject = [(_HKXPCExportedObjectProxy *)self weakExportedObject];
  v6 = [weakExportedObject methodSignatureForSelector:selector];

  if (!v6)
  {
    v6 = [(objc_class *)[(_HKXPCExportedObjectProxy *)self weakExportedObjectClass] instanceMethodSignatureForSelector:selector];
  }

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  weakExportedObject = [(_HKXPCExportedObjectProxy *)self weakExportedObject];
  if (weakExportedObject)
  {
    [invocationCopy invokeWithTarget:weakExportedObject];
  }
}

- (id)weakExportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakExportedObject);

  return WeakRetained;
}

@end