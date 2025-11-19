@interface _GCDevicePhysicalInputChangedElementsEnumerator
- (_GCDevicePhysicalInputChangedElementsEnumerator)retain;
- (id)nextObject;
- (uint64_t)implementation;
- (void)release;
@end

@implementation _GCDevicePhysicalInputChangedElementsEnumerator

- (id)nextObject
{
  do
  {
    currentIndex = self->_currentIndex;
    if (currentIndex >= [-[_GCDevicePhysicalInputBase elements](self->_implementation) count])
    {
      return 0;
    }

    v4 = self->_currentIndex;
    self->_currentIndex = v4 + 1;
  }

  while (![(_GCDevicePhysicalInputTransaction *)self->_implementation updateContextForElementAtIndex:v4 size:0 onlyIfChanged:1]);
  v5 = [(_GCDevicePhysicalInputBase *)self->_implementation elements];

  return [v5 objectAtIndexedSubscript:v4];
}

- (uint64_t)implementation
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (_GCDevicePhysicalInputChangedElementsEnumerator)retain
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
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputChangedElementsEnumerator;
  return [(_GCDevicePhysicalInputChangedElementsEnumerator *)&v6 retain];
}

- (void)release
{
  if (self)
  {
    implementation = self->_implementation;
  }

  else
  {
    implementation = 0;
  }

  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputChangedElementsEnumerator;
  [(_GCDevicePhysicalInputChangedElementsEnumerator *)&v4 release];
}

@end