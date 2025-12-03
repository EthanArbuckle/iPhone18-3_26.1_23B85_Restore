@interface _GCDevicePhysicalInputView
+ (id)withParameters:(id)parameters;
+ (id)withTemplate:(id)template context:(id)context;
- (BOOL)allowsWeakReference;
- (BOOL)retainWeakReference;
- (_GCDevicePhysicalInputView)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputView)initWithTemplate:(id)template context:(id)context;
- (_GCDevicePhysicalInputView)retain;
- (uint64_t)_objectValueForSlot:(uint64_t)result;
- (uint64_t)_primitiveValueForSlot:(uint64_t)result;
- (uint64_t)_setObjectValue:(uint64_t)value forSlot:(uint64_t)slot policy:;
- (uint64_t)_setPrimitiveValue:(uint64_t)value forSlot:;
- (uint64_t)_testAndSetObjectValue:(uint64_t)value forSlot:(uint64_t)slot policy:;
- (uint64_t)_testAndSetPrimitiveValue:(uint64_t)value forSlot:;
- (uint64_t)dataSource;
- (uint64_t)isSnapshot;
- (uint64_t)physicalInput;
- (unint64_t)retainCount;
- (void)_didChangeValueForKey:(void *)key;
- (void)_willChangeValueForKey:(void *)key;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)dealloc;
- (void)release;
- (void)view:(id)view setObjectValue:(id)value forSlot:(unint64_t *)slot policy:(unint64_t)policy;
@end

@implementation _GCDevicePhysicalInputView

+ (id)withTemplate:(id)template context:(id)context
{
  v6 = [self alloc];

  return [v6 initWithTemplate:template context:context];
}

+ (id)withParameters:(id)parameters
{
  v4 = [self alloc];

  return [v4 initWithParameters:parameters];
}

- (_GCDevicePhysicalInputView)initWithTemplate:(id)template context:(id)context
{
  if (!context)
  {
    [_GCDevicePhysicalInputView initWithTemplate:a2 context:self];
  }

  v11.receiver = self;
  v11.super_class = _GCDevicePhysicalInputView;
  v7 = [(_GCDevicePhysicalInputView *)&v11 init];
  v8 = [context viewDataSource:v7];
  v7->_dataSource = v8;
  if (!v8)
  {
    [_GCDevicePhysicalInputView initWithTemplate:a2 context:v7];
  }

  implementation = [context implementation];
  if (implementation)
  {
    v7->_isPartOfPhysicalInput = 1;
    v7->_isSnapshot = [implementation isSnapshot];
  }

  return v7;
}

- (_GCDevicePhysicalInputView)initWithParameters:(id)parameters
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

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  atomic_store(1u, &self->_isObserved);
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputView;
  [(_GCDevicePhysicalInputView *)&v6 addObserver:observer forKeyPath:path options:options context:context];
}

- (_GCDevicePhysicalInputView)retain
{
  selfCopy = self;
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

  return selfCopy;
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

- (void)view:(id)view setObjectValue:(id)value forSlot:(unint64_t *)slot policy:(unint64_t)policy
{
  if (*slot)
  {
    objc_setAssociatedObject(view, *slot, 0, 0x301);
    *slot = 0;
  }

  if (policy == 3)
  {
    value = [value copy];
    viewCopy2 = view;
    valueCopy3 = value;
    valueCopy4 = value;
    v13 = 1;
  }

  else
  {
    if (policy != 771)
    {
      objc_setAssociatedObject(view, value, value, policy);
      goto LABEL_9;
    }

    value = [value copy];
    viewCopy2 = view;
    valueCopy3 = value;
    valueCopy4 = value;
    v13 = 769;
  }

  objc_setAssociatedObject(viewCopy2, valueCopy3, valueCopy4, v13);

LABEL_9:
  *slot = value;
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
  if (self)
  {
    v1 = *(self + 17);
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

- (uint64_t)_setPrimitiveValue:(uint64_t)value forSlot:
{
  if (result)
  {
    return [*(result + 8) view:result setPrimitiveValue:a2 forSlot:value];
  }

  return result;
}

- (uint64_t)_testAndSetPrimitiveValue:(uint64_t)value forSlot:
{
  if (result)
  {
    return [*(result + 8) view:result testAndSetPrimitiveValue:a2 forSlot:value];
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

- (uint64_t)_setObjectValue:(uint64_t)value forSlot:(uint64_t)slot policy:
{
  if (result)
  {
    return [*(result + 8) view:result setObjectValue:a2 forSlot:value policy:slot];
  }

  return result;
}

- (uint64_t)_testAndSetObjectValue:(uint64_t)value forSlot:(uint64_t)slot policy:
{
  if (result)
  {
    return [*(result + 8) view:result testAndSetObjectValue:a2 forSlot:value policy:slot];
  }

  return result;
}

- (void)_willChangeValueForKey:(void *)key
{
  if (key)
  {
    v2 = atomic_load(key + 18);
    if (v2)
    {
      return [key willChangeValueForKey:a2];
    }
  }

  return key;
}

- (void)_didChangeValueForKey:(void *)key
{
  if (key)
  {
    v2 = atomic_load(key + 18);
    if (v2)
    {
      return [key didChangeValueForKey:a2];
    }
  }

  return key;
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