@interface _GCDevicePhysicalInputElementsArray
- (_GCDevicePhysicalInputElementsArray)retain;
- (id)objectAtIndex:(unint64_t)index;
- (uint64_t)implementation;
- (unint64_t)count;
- (unint64_t)retainCount;
- (void)release;
@end

@implementation _GCDevicePhysicalInputElementsArray

- (uint64_t)implementation
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (_GCDevicePhysicalInputElementsArray)retain
{
  if (self)
  {
    implementation = self->_implementation;
  }

  else
  {
    implementation = 0;
  }

  v4 = implementation;
  return self;
}

- (void)release
{
  if (self)
  {
    self = self->_implementation;
  }
}

- (unint64_t)retainCount
{
  if (self)
  {
    self = self->_implementation;
  }

  return [(_GCDevicePhysicalInputElementsArray *)self retainCount];
}

- (unint64_t)count
{
  if (self)
  {
    v2 = *(self + 8);
    if (v2)
    {
      return *(v2 + 24);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (id)objectAtIndex:(unint64_t)index
{
  if (self)
  {
    self = self->_implementation;
  }

  return [(_GCDevicePhysicalInputBase *)self _elementAtIndex:index];
}

@end