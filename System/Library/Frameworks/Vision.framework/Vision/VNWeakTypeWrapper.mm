@interface VNWeakTypeWrapper
- (BOOL)isEqual:(id)equal;
- (VNWeakTypeWrapper)initWithObject:(id)object;
- (id)description;
- (id)objectAndReturnError:(id *)error;
@end

@implementation VNWeakTypeWrapper

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VNWeakTypeWrapper;
  v4 = [(VNWeakTypeWrapper *)&v8 description];
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  weakRetained = [v3 initWithFormat:@"%@: %@", v4, WeakRetained];

  return weakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VNWeakTypeWrapper *)equalCopy objectAndReturnError:0];
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

- (id)objectAndReturnError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else if (error)
  {
    *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Weak VNType object wrapper contains nil object"];
  }

  return v5;
}

- (VNWeakTypeWrapper)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = VNWeakTypeWrapper;
  v5 = [(VNWeakTypeWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakObject, objectCopy);
  }

  return v6;
}

@end