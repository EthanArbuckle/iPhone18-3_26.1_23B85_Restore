@interface _GCDevicePhysicalInputView
+ (id)withParameters:(id)a3;
+ (id)withTemplate:(id)a3 context:(id)a4;
- (BOOL)allowsWeakReference;
- (BOOL)retainWeakReference;
- (_GCDevicePhysicalInputView)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputView)initWithTemplate:(id)a3 context:(id)a4;
- (_GCDevicePhysicalInputView)retain;
- (uint64_t)_objectValueForSlot:(uint64_t)result;
- (uint64_t)_primitiveValueForSlot:(uint64_t)result;
- (uint64_t)_setObjectValue:(uint64_t)a3 forSlot:(uint64_t)a4 policy:;
- (uint64_t)_setPrimitiveValue:(uint64_t)a3 forSlot:;
- (uint64_t)_testAndSetObjectValue:(uint64_t)a3 forSlot:(uint64_t)a4 policy:;
- (uint64_t)_testAndSetPrimitiveValue:(uint64_t)a3 forSlot:;
- (uint64_t)dataSource;
- (uint64_t)isSnapshot;
- (uint64_t)physicalInput;
- (unint64_t)retainCount;
- (void)_didChangeValueForKey:(void *)a1;
- (void)_willChangeValueForKey:(void *)a1;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)dealloc;
- (void)release;
- (void)view:(id)a3 setObjectValue:(id)a4 forSlot:(unint64_t *)a5 policy:(unint64_t)a6;
@end

@implementation _GCDevicePhysicalInputView

+ (id)withTemplate:(id)a3 context:(id)a4
{
  v6 = [a1 alloc];

  return [v6 initWithTemplate:a3 context:a4];
}

+ (id)withParameters:(id)a3
{
  v4 = [a1 alloc];

  return [v4 initWithParameters:a3];
}

- (_GCDevicePhysicalInputView)initWithTemplate:(id)a3 context:(id)a4
{
  if (!a4)
  {
    [_GCDevicePhysicalInputView initWithTemplate:a2 context:self];
  }

  v11.receiver = self;
  v11.super_class = _GCDevicePhysicalInputView;
  v7 = [(_GCDevicePhysicalInputView *)&v11 init];
  v8 = [a4 viewDataSource:v7];
  v7->_dataSource = v8;
  if (!v8)
  {
    [_GCDevicePhysicalInputView initWithTemplate:a2 context:v7];
  }

  v9 = [a4 implementation];
  if (v9)
  {
    v7->_isPartOfPhysicalInput = 1;
    v7->_isSnapshot = [v9 isSnapshot];
  }

  return v7;
}

- (_GCDevicePhysicalInputView)initWithParameters:(id)a3
{
  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputView;
  result = [(_GCDevicePhysicalInputView *)&v4 init];
  result->_dataSource = result;
  return result;
}

- (void)dealloc
{
  self->_dataSource = 0;
  v2.receiver = self;
  v2.super_class = _GCDevicePhysicalInputView;
  [(_GCDevicePhysicalInputView *)&v2 dealloc];
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  atomic_store(1u, &self->_isObserved);
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputView;
  [(_GCDevicePhysicalInputView *)&v6 addObserver:a3 forKeyPath:a4 options:a5 context:a6];
}

- (_GCDevicePhysicalInputView)retain
{
  v2 = self;
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v4 = dataSource == self;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = _GCDevicePhysicalInputView;
    return [(_GCDevicePhysicalInputView *)&v7 retain];
  }

  else
  {
    v5 = dataSource;
  }

  return v2;
}

- (void)release
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v5 = dataSource == self;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _GCDevicePhysicalInputView;
    [(_GCDevicePhysicalInputView *)&v6 release];
  }

  else
  {
  }
}

- (unint64_t)retainCount
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v5 = dataSource == self;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = v2;
    v10 = v3;
    v8.receiver = self;
    v8.super_class = _GCDevicePhysicalInputView;
    return [(_GCDevicePhysicalInputView *)&v8 retainCount];
  }

  else
  {
    v7 = self->_dataSource;

    return [(_GCDevicePhysicalInputViewDataSource *)v7 retainCount];
  }
}

- (BOOL)retainWeakReference
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v5 = dataSource == self;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = v2;
    v10 = v3;
    v8.receiver = self;
    v8.super_class = _GCDevicePhysicalInputView;
    return [(_GCDevicePhysicalInputView *)&v8 retainWeakReference];
  }

  else
  {
    v7 = self->_dataSource;

    return [(_GCDevicePhysicalInputViewDataSource *)v7 retainWeakReference];
  }
}

- (BOOL)allowsWeakReference
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v5 = dataSource == self;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputView;
  return [(_GCDevicePhysicalInputView *)&v7 allowsWeakReference];
}

- (void)view:(id)a3 setObjectValue:(id)a4 forSlot:(unint64_t *)a5 policy:(unint64_t)a6
{
  if (*a5)
  {
    objc_setAssociatedObject(a3, *a5, 0, 0x301);
    *a5 = 0;
  }

  if (a6 == 3)
  {
    a4 = [a4 copy];
    v10 = a3;
    v11 = a4;
    v12 = a4;
    v13 = 1;
  }

  else
  {
    if (a6 != 771)
    {
      objc_setAssociatedObject(a3, a4, a4, a6);
      goto LABEL_9;
    }

    a4 = [a4 copy];
    v10 = a3;
    v11 = a4;
    v12 = a4;
    v13 = 769;
  }

  objc_setAssociatedObject(v10, v11, v12, v13);

LABEL_9:
  *a5 = a4;
}

- (uint64_t)physicalInput
{
  if (result)
  {
    if (*(result + 16) == 1)
    {
      return *(result + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)isSnapshot
{
  if (a1)
  {
    v1 = *(a1 + 17);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)_primitiveValueForSlot:(uint64_t)result
{
  if (result)
  {
    return [*(result + 8) view:result primitiveValueForSlot:a2];
  }

  return result;
}

- (uint64_t)_setPrimitiveValue:(uint64_t)a3 forSlot:
{
  if (result)
  {
    return [*(result + 8) view:result setPrimitiveValue:a2 forSlot:a3];
  }

  return result;
}

- (uint64_t)_testAndSetPrimitiveValue:(uint64_t)a3 forSlot:
{
  if (result)
  {
    return [*(result + 8) view:result testAndSetPrimitiveValue:a2 forSlot:a3];
  }

  return result;
}

- (uint64_t)_objectValueForSlot:(uint64_t)result
{
  if (result)
  {
    return [*(result + 8) view:result objectValueForSlot:a2];
  }

  return result;
}

- (uint64_t)_setObjectValue:(uint64_t)a3 forSlot:(uint64_t)a4 policy:
{
  if (result)
  {
    return [*(result + 8) view:result setObjectValue:a2 forSlot:a3 policy:a4];
  }

  return result;
}

- (uint64_t)_testAndSetObjectValue:(uint64_t)a3 forSlot:(uint64_t)a4 policy:
{
  if (result)
  {
    return [*(result + 8) view:result testAndSetObjectValue:a2 forSlot:a3 policy:a4];
  }

  return result;
}

- (void)_willChangeValueForKey:(void *)a1
{
  if (a1)
  {
    v2 = atomic_load(a1 + 18);
    if (v2)
    {
      return [a1 willChangeValueForKey:a2];
    }
  }

  return a1;
}

- (void)_didChangeValueForKey:(void *)a1
{
  if (a1)
  {
    v2 = atomic_load(a1 + 18);
    if (v2)
    {
      return [a1 didChangeValueForKey:a2];
    }
  }

  return a1;
}

- (uint64_t)dataSource
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end