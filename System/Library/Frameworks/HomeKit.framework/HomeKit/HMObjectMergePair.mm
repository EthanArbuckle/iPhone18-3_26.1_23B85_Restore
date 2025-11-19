@interface HMObjectMergePair
- (HMObjectMergePair)initWithOldObject:(id)a3 updatedObject:(id)a4;
@end

@implementation HMObjectMergePair

- (HMObjectMergePair)initWithOldObject:(id)a3 updatedObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_oldObject, a3);
    objc_storeStrong(&v11->_updatedObject, a4);
  }

  return v11;
}

@end