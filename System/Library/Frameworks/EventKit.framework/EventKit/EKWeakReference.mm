@interface EKWeakReference
- (EKWeakReference)initWithValue:(id)a3;
- (id)value;
@end

@implementation EKWeakReference

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_value);

  return WeakRetained;
}

- (EKWeakReference)initWithValue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EKWeakReference;
  v5 = [(EKWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_value, v4);
  }

  return v6;
}

@end