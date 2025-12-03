@interface _NSFaultingMutableArray
- (_NSFaultingMutableArray)initWithSource:(id)source forRelationship:(id)relationship asFault:(BOOL)fault;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionWithLocale:(id)locale;
- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent;
- (id)indexesOfObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)indexesOfObjectsWithOptions:(unint64_t)options passingTest:(id)test;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectEnumerator;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObjectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (unint64_t)indexOfObjectWithOptions:(unint64_t)options passingTest:(id)test;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)enumerateObjectsAtIndexes:(id)indexes options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)setValue:(id)value forKey:(id)key;
- (void)willRead;
@end

@implementation _NSFaultingMutableArray

- (_NSFaultingMutableArray)initWithSource:(id)source forRelationship:(id)relationship asFault:(BOOL)fault
{
  faultCopy = fault;
  v12.receiver = self;
  v12.super_class = _NSFaultingMutableArray;
  v8 = [(_NSFaultingMutableArray *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_source = source;
    v8->_relationship = relationship;
    if (faultCopy)
    {
      v10 = 0;
      v9->_flags = 1;
    }

    else
    {
      v8->_flags = 0;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v9->_realArray = v10;
  }

  return v9;
}

- (void)dealloc
{
  self->_realArray = 0;
  self->_source = 0;
  self->_relationship = 0;

  _PFDeallocateObject(self);
}

- (void)willRead
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {
    managedObjectContext = [(NSManagedObject *)self->_source managedObjectContext];
    source = self->_source;
    if (source)
    {
      v5 = _insertion_fault_handler;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(NSFaultHandler *)v5 retainedFulfillAggregateFaultForObject:self->_relationship andRelationship:managedObjectContext withContext:?];
    self->_realArray = v6;
    if (!v6)
    {
      self->_realArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    *&self->_flags &= ~1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  flags = self->_flags;
  v5 = [_NSFaultingMutableArray alloc];
  source = self->_source;
  relationship = self->_relationship;
  if (*&flags)
  {

    return [(_NSFaultingMutableArray *)v5 initWithSource:source forRelationship:relationship asFault:1];
  }

  else
  {
    v8 = [(_NSFaultingMutableArray *)v5 initWithSource:source forRelationship:relationship asFault:0];
    [v8[2] setArray:self->_realArray];
    return v8;
  }
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  source = self->_source;
  if (*&self->_flags)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship fault for %@ on %p", self->_relationship, source, v9];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship objects for %@ on %p: %@", self->_relationship, source, -[NSMutableArray description](self->_realArray, "description")];
  }

  v6 = v5;
  v7 = v5;
  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)descriptionWithLocale:(id)locale
{
  v5 = objc_autoreleasePoolPush();
  source = self->_source;
  if (*&self->_flags)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship fault for %@ on %p", self->_relationship, source, v11];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship objects for %@ on %p: %@", self->_relationship, source, -[NSMutableArray descriptionWithLocale:](self->_realArray, "descriptionWithLocale:", locale)];
  }

  v8 = v7;
  v9 = v7;
  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent
{
  v7 = objc_autoreleasePoolPush();
  source = self->_source;
  if (*&self->_flags)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship fault for %@ on %p", self->_relationship, source, v13];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship objects for %@ on %p: %@", self->_relationship, source, -[NSMutableArray descriptionWithLocale:indent:](self->_realArray, "descriptionWithLocale:indent:", locale, indent)];
  }

  v10 = v9;
  v11 = v9;
  objc_autoreleasePoolPop(v7);

  return v10;
}

- (unint64_t)count
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray count];
}

- (id)objectAtIndex:(unint64_t)index
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray objectAtIndex:index];
}

- (void)addObject:(id)object
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray addObject:object];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray countByEnumeratingWithState:state objects:objects count:count];
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray enumerateObjectsWithOptions:options usingBlock:block];
}

- (void)enumerateObjectsAtIndexes:(id)indexes options:(unint64_t)options usingBlock:(id)block
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray enumerateObjectsAtIndexes:indexes options:options usingBlock:block];
}

- (unint64_t)indexOfObjectWithOptions:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray indexOfObjectWithOptions:options passingTest:test];
}

- (unint64_t)indexOfObjectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray indexOfObjectAtIndexes:indexes options:options passingTest:test];
}

- (id)indexesOfObjectsWithOptions:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray indexesOfObjectsWithOptions:options passingTest:test];
}

- (id)indexesOfObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray indexesOfObjectsAtIndexes:indexes options:options passingTest:test];
}

- (id)objectEnumerator
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray objectEnumerator];
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray insertObject:object atIndex:index];
}

- (void)removeLastObject
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray removeLastObject];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray removeObjectAtIndex:index];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray replaceObjectAtIndex:index withObject:object];
}

- (void)getObjects:(id *)objects
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray getObjects:objects];
}

- (void)setValue:(id)value forKey:(id)key
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray setValue:value forKey:key];
}

- (id)valueForKey:(id)key
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray valueForKey:key];
}

- (id)valueForKeyPath:(id)path
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray valueForKeyPath:path];
}

@end