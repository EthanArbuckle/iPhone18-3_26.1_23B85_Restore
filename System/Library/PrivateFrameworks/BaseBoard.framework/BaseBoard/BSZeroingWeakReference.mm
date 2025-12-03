@interface BSZeroingWeakReference
+ (BSZeroingWeakReference)referenceWithObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BSZeroingWeakReference)init;
- (BSZeroingWeakReference)initWithObject:(id)object;
- (id)description;
- (id)object;
@end

@implementation BSZeroingWeakReference

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

+ (BSZeroingWeakReference)referenceWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

- (BSZeroingWeakReference)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = BSZeroingWeakReference;
  v5 = [(BSZeroingWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
    v6->_objectClass = objc_opt_class();
    v6->_objectAddress = objectCopy;
  }

  return v6;
}

- (BSZeroingWeakReference)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSZeroingWeakReference does not support -init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSZeroingWeakReference.m";
    v18 = 1024;
    v19 = 38;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  result = [v4 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

- (id)description
{
  object = [(BSZeroingWeakReference *)self object];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(self->_objectClass);
  if (object)
  {
    [v4 stringWithFormat:@"<%@: %p>", v5, self->_objectAddress];
  }

  else
  {
    [v4 stringWithFormat:@"<%@: %p (deallocated)>", v5, self->_objectAddress];
  }
  v6 = ;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_objectAddress == self->_objectAddress && equalCopy->_objectClass == self->_objectClass)
    {
      object = [(BSZeroingWeakReference *)self object];
      object2 = [(BSZeroingWeakReference *)equalCopy object];
      v5 = object == object2;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end