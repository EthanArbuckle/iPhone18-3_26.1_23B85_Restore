@interface _HKXPCExportedObjectProxy
- (id)methodSignatureForSelector:(SEL)a3;
- (id)weakExportedObject;
- (void)forwardInvocation:(id)a3;
- (void)setWeakExportedObject:(id)a3;
@end

@implementation _HKXPCExportedObjectProxy

- (void)setWeakExportedObject:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_weakExportedObject, v4);
  v5 = objc_opt_class();

  [(_HKXPCExportedObjectProxy *)self setWeakExportedObjectClass:v5];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(_HKXPCExportedObjectProxy *)self weakExportedObject];
  v6 = [v5 methodSignatureForSelector:a3];

  if (!v6)
  {
    v6 = [(objc_class *)[(_HKXPCExportedObjectProxy *)self weakExportedObjectClass] instanceMethodSignatureForSelector:a3];
  }

  return v6;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  v4 = [(_HKXPCExportedObjectProxy *)self weakExportedObject];
  if (v4)
  {
    [v5 invokeWithTarget:v4];
  }
}

- (id)weakExportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakExportedObject);

  return WeakRetained;
}

@end