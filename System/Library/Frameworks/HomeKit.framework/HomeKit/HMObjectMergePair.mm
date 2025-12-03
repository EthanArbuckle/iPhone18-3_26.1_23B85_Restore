@interface HMObjectMergePair
- (HMObjectMergePair)initWithOldObject:(id)object updatedObject:(id)updatedObject;
@end

@implementation HMObjectMergePair

- (HMObjectMergePair)initWithOldObject:(id)object updatedObject:(id)updatedObject
{
  objectCopy = object;
  updatedObjectCopy = updatedObject;
  if (!objectCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = updatedObjectCopy;
  if (!updatedObjectCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return [(HMObjectMergeCollection *)v13 initWithCurrentObjects:v14 newObjects:v15, v16];
  }

  v17.receiver = self;
  v17.super_class = HMObjectMergePair;
  v10 = [(HMObjectMergePair *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_oldObject, object);
    objc_storeStrong(&v11->_updatedObject, updatedObject);
  }

  return v11;
}

@end