@interface _GCPhysicalInputFilteredElementCollection
- (id)_filteredElements;
- (id)elementAtIndex:(unint64_t)a3;
- (id)elementEnumerator;
- (id)elementForAlias:(id)a3;
- (id)initWithCollection:(void *)a3 filter:;
- (unint64_t)count;
@end

@implementation _GCPhysicalInputFilteredElementCollection

- (id)_filteredElements
{
  v5 = a1[3];
  a1[3] = a2;

  objc_sync_exit(a1);

  return a2;
}

- (unint64_t)count
{
  v2 = [(_GCPhysicalInputFilteredElementCollection *)self _filteredElements];

  return [v2 count];
}

- (id)elementAtIndex:(unint64_t)a3
{
  v4 = [(_GCPhysicalInputFilteredElementCollection *)self _filteredElements];

  return [v4 objectAtIndex:a3];
}

- (id)elementForAlias:(id)a3
{
  v4 = [(GCPhysicalInputElementCollection *)self->_backingCollection elementForAlias:a3];
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
  v2 = [(_GCPhysicalInputFilteredElementCollection *)self _filteredElements];

  return [v2 objectEnumerator];
}

- (id)initWithCollection:(void *)a3 filter:
{
  if (a1)
  {
    if (!obj)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_initWithCollection_filter_ object:a1 file:@"GCPhysicalInputElement.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %s", "collection != nil"}];
    }

    objc_storeStrong(a1 + 1, obj);
    objc_storeStrong(a1 + 2, a3);
    v6 = a1;
  }

  return a1;
}

@end