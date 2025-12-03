@interface EKWeakReference
- (EKWeakReference)initWithValue:(id)value;
- (id)value;
@end

@implementation EKWeakReference

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_value);

  return WeakRetained;
}

- (EKWeakReference)initWithValue:(id)value
{
  valueCopy = value;
  v8.receiver = self;
  v8.super_class = EKWeakReference;
  v5 = [(EKWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_value, valueCopy);
  }

  return v6;
}

@end