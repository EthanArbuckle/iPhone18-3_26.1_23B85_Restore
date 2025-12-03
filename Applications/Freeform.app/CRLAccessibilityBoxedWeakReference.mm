@interface CRLAccessibilityBoxedWeakReference
- (CRLAccessibilityBoxedWeakReference)initWithObject:(id)object;
- (id)reference;
@end

@implementation CRLAccessibilityBoxedWeakReference

- (CRLAccessibilityBoxedWeakReference)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = CRLAccessibilityBoxedWeakReference;
  v5 = [(CRLAccessibilityBoxedWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_reference, objectCopy);
  }

  return v6;
}

- (id)reference
{
  WeakRetained = objc_loadWeakRetained(&self->_reference);

  return WeakRetained;
}

@end