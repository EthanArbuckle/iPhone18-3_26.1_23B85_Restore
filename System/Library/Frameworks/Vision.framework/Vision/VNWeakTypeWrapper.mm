@interface VNWeakTypeWrapper
- (BOOL)isEqual:(id)a3;
- (VNWeakTypeWrapper)initWithObject:(id)a3;
- (id)description;
- (id)objectAndReturnError:(id *)a3;
@end

@implementation VNWeakTypeWrapper

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VNWeakTypeWrapper;
  v4 = [(VNWeakTypeWrapper *)&v8 description];
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  v6 = [v3 initWithFormat:@"%@: %@", v4, WeakRetained];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VNWeakTypeWrapper *)v4 objectAndReturnError:0];
      v6 = [(VNWeakTypeWrapper *)self objectAndReturnError:0];
      v7 = VisionCoreEqualOrNilObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)objectAndReturnError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else if (a3)
  {
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:@"Weak VNType object wrapper contains nil object"];
  }

  return v5;
}

- (VNWeakTypeWrapper)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VNWeakTypeWrapper;
  v5 = [(VNWeakTypeWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakObject, v4);
  }

  return v6;
}

@end