@interface _GCDevicePhysicalInputElementsCollection
- (_GCDevicePhysicalInputElementsCollection)retain;
- (id)elementAtIndex:(unint64_t)a3;
- (id)elementForAlias:(id)a3;
- (uint64_t)implementation;
- (unint64_t)count;
- (unint64_t)retainCount;
- (void)release;
@end

@implementation _GCDevicePhysicalInputElementsCollection

- (uint64_t)implementation
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (_GCDevicePhysicalInputElementsCollection)retain
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

  return [(_GCDevicePhysicalInputElementsCollection *)self retainCount];
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

- (id)elementAtIndex:(unint64_t)a3
{
  if (self)
  {
    self = self->_implementation;
  }

  return [(_GCDevicePhysicalInputBase *)self _elementAtIndex:a3];
}

- (id)elementForAlias:(id)a3
{
  if (self)
  {
    self = self->_implementation;
  }

  return [(_GCDevicePhysicalInputBase *)self _elementForAlias:a3];
}

@end