@interface MTResultsChangeGenerator
- (MTResultsChangeGenerator)initWithDelegate:(id)delegate;
- (MTResultsChangeGeneratorDelegate)delegate;
- (id)bestIndexPathForObject:(id)object atIndex:(unint64_t)index fromMap:(id)map autoremove:(BOOL)autoremove;
- (id)box:(id)box;
- (id)closestIndexPathToRow:(unint64_t)row forIndexPaths:(id)paths;
- (id)objectsToIndexPathDictionary:(id)dictionary inSection:(unint64_t)section;
- (void)generateChangesForExistingObjects:(id)objects newObjects:(id)newObjects inSection:(unint64_t)section;
- (void)removeIndexPath:(id)path forObject:(id)object fromMap:(id)map;
@end

@implementation MTResultsChangeGenerator

- (MTResultsChangeGenerator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MTResultsChangeGenerator;
  v5 = [(MTResultsChangeGenerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTResultsChangeGenerator *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (void)generateChangesForExistingObjects:(id)objects newObjects:(id)newObjects inSection:(unint64_t)section
{
  objectsCopy = objects;
  newObjectsCopy = newObjects;
  v10 = newObjectsCopy;
  if (objectsCopy && newObjectsCopy)
  {
    v45 = [(MTResultsChangeGenerator *)self objectsToIndexPathDictionary:objectsCopy inSection:section];
    v41 = [(MTResultsChangeGenerator *)self objectsToIndexPathDictionary:v10 inSection:section];
    v11 = [v41 mutableCopy];
    v42 = v10;
    if ([objectsCopy count])
    {
      v12 = 0;
      do
      {
        v13 = [objectsCopy objectAtIndex:v12];
        v14 = [NSIndexPath indexPathForRow:v12 inSection:section];
        v15 = [(MTResultsChangeGenerator *)self bestIndexPathForObject:v13 atIndex:v12 fromMap:v11 autoremove:0];
        if (v15)
        {
          [(MTResultsChangeGenerator *)self removeIndexPath:v15 forObject:v13 fromMap:v11];
        }

        else
        {
          delegate = [(MTResultsChangeGenerator *)self delegate];
          [delegate generator:self didChangeObject:v13 atIndexPath:v14 forChangeType:2 newIndexPath:0];
        }

        ++v12;
      }

      while (v12 < [objectsCopy count]);
    }

    v43 = objectsCopy;
    sectionCopy = section;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = [v11 allKeys];
    v17 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    v48 = v11;
    if (v17)
    {
      v18 = v17;
      v47 = *v54;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v53 + 1) + 8 * i);
          v21 = [(MTResultsChangeGenerator *)self unbox:v20];
          v22 = [v11 objectForKey:v20];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v23 = [v22 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v50;
            do
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v50 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v49 + 1) + 8 * j);
                delegate2 = [(MTResultsChangeGenerator *)self delegate];
                [delegate2 generator:self didChangeObject:v21 atIndexPath:0 forChangeType:1 newIndexPath:v27];
              }

              v24 = [v22 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v24);
          }

          v11 = v48;
        }

        v18 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v18);
    }

    v10 = v42;
    objectsCopy = v43;
    v29 = sectionCopy;
    v30 = &kPlaylistITunesPlaylistUuid_ptr;
    if ([v42 count])
    {
      v31 = 0;
      do
      {
        v32 = [v42 objectAtIndex:v31];
        v33 = [v30[126] indexPathForRow:v31 inSection:v29];
        v34 = [(MTResultsChangeGenerator *)self bestIndexPathForObject:v32 atIndex:v31 fromMap:v45];
        v35 = v34;
        if (v34)
        {
          v36 = [v34 isEqual:v33];
          delegate3 = [(MTResultsChangeGenerator *)self delegate];
          v38 = delegate3;
          v39 = v36 == 0;
          v29 = sectionCopy;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 4;
          }

          [delegate3 generator:self didChangeObject:v32 atIndexPath:v35 forChangeType:v40 newIndexPath:v33];

          v30 = &kPlaylistITunesPlaylistUuid_ptr;
        }

        ++v31;
      }

      while (v31 < [v42 count]);
    }
  }
}

- (id)objectsToIndexPathDictionary:(id)dictionary inSection:(unint64_t)section
{
  dictionaryCopy = dictionary;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  if ([dictionaryCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [dictionaryCopy objectAtIndex:v8];
      v10 = [(MTResultsChangeGenerator *)self box:v9];
      v11 = [v7 objectForKey:v10];
      if (!v11)
      {
        v11 = objc_alloc_init(NSMutableSet);
        [v7 setObject:v11 forKey:v10];
      }

      v12 = [NSIndexPath indexPathForRow:v8 inSection:section];
      [v11 addObject:v12];

      ++v8;
    }

    while (v8 < [dictionaryCopy count]);
  }

  return v7;
}

- (id)bestIndexPathForObject:(id)object atIndex:(unint64_t)index fromMap:(id)map autoremove:(BOOL)autoremove
{
  autoremoveCopy = autoremove;
  mapCopy = map;
  v11 = [(MTResultsChangeGenerator *)self box:object];
  v12 = [mapCopy objectForKey:v11];
  v13 = v12;
  if (v12 && [v12 count])
  {
    if ([v13 count] == 1)
    {
      anyObject = [v13 anyObject];
      if (autoremoveCopy)
      {
        [mapCopy removeObjectForKey:v11];
      }
    }

    else
    {
      v16 = [(MTResultsChangeGenerator *)self closestIndexPathToRow:index forIndexPaths:v13];
      anyObject = v16;
      if (autoremoveCopy && v16)
      {
        [v13 removeObject:v16];
      }
    }
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (void)removeIndexPath:(id)path forObject:(id)object fromMap:(id)map
{
  if (path && object && map)
  {
    mapCopy = map;
    pathCopy = path;
    v11 = [(MTResultsChangeGenerator *)self box:object];
    v10 = [mapCopy objectForKey:v11];

    [v10 removeObject:pathCopy];
  }
}

- (id)closestIndexPathToRow:(unint64_t)row forIndexPaths:(id)paths
{
  pathsCopy = paths;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    v10 = -1;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 row];
        if (&v13[-row] >= 0)
        {
          v14 = &v13[-row];
        }

        else
        {
          v14 = (row - v13);
        }

        if (!v8 || v14 < v10)
        {
          v15 = v12;

          v10 = v14;
          v8 = v15;
        }
      }

      v7 = [pathsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)box:(id)box
{
  boxCopy = box;
  v4 = [[MTResultsChangeWrapper alloc] initWithObject:boxCopy];

  return v4;
}

- (MTResultsChangeGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end