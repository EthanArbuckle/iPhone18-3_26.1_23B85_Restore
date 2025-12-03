@interface _GCPhysicalInputFilteredElementCollection
- (id)_filteredElements;
- (id)elementAtIndex:(unint64_t)index;
- (id)elementEnumerator;
- (id)elementForAlias:(id)alias;
- (id)initWithCollection:(void *)collection filter:;
- (unint64_t)count;
@end

@implementation _GCPhysicalInputFilteredElementCollection

- (id)_filteredElements
{
  v5 = self[3];
  self[3] = a2;

  objc_sync_exit(self);

  return a2;
}

- (unint64_t)count
{
  _filteredElements = [(_GCPhysicalInputFilteredElementCollection *)self _filteredElements];

  return [_filteredElements count];
}

- (id)elementAtIndex:(unint64_t)index
{
  _filteredElements = [(_GCPhysicalInputFilteredElementCollection *)self _filteredElements];

  return [_filteredElements objectAtIndex:index];
}

- (id)elementForAlias:(id)alias
{
  v4 = [(GCPhysicalInputElementCollection *)self->_backingCollection elementForAlias:alias];
  v5 = v4;
  if (self->_filter && ![v4 conformsToProtocol:?])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)elementEnumerator
{
  _filteredElements = [(_GCPhysicalInputFilteredElementCollection *)self _filteredElements];

  return [_filteredElements objectEnumerator];
}

- (id)initWithCollection:(void *)collection filter:
{
  if (self)
  {
    if (!obj)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithCollection_filter_ object:self file:@"GCPhysicalInputElement.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %s", "collection != nil"}];
    }

    objc_storeStrong(self + 1, obj);
    objc_storeStrong(self + 2, collection);
    selfCopy = self;
  }

  return self;
}

@end