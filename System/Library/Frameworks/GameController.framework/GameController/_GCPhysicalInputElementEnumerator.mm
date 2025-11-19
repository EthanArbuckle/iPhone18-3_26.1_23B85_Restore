@interface _GCPhysicalInputElementEnumerator
- (id)initWithCollection:(void *)a1;
- (id)nextObject;
@end

@implementation _GCPhysicalInputElementEnumerator

- (id)nextObject
{
  collection = self->_collection;
  if (collection && (currentIndex = self->_currentIndex, currentIndex < [(GCPhysicalInputElementCollection *)self->_collection count]))
  {
    ++self->_currentIndex;
    v5 = [(GCPhysicalInputElementCollection *)collection elementAtIndex:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initWithCollection:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = _GCPhysicalInputElementEnumerator;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 1, a2);
    v4[2] = 0;
  }

  return v4;
}

@end