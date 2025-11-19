@interface _NSFaultingMutableArray
- (_NSFaultingMutableArray)initWithSource:(id)a3 forRelationship:(id)a4 asFault:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionWithLocale:(id)a3;
- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4;
- (id)indexesOfObjectsAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (id)indexesOfObjectsWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectEnumerator;
- (id)valueForKey:(id)a3;
- (id)valueForKeyPath:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)indexOfObjectAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (unint64_t)indexOfObjectWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (void)addObject:(id)a3;
- (void)dealloc;
- (void)enumerateObjectsAtIndexes:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)willRead;
@end

@implementation _NSFaultingMutableArray

- (_NSFaultingMutableArray)initWithSource:(id)a3 forRelationship:(id)a4 asFault:(BOOL)a5
{
  v5 = a5;
  v12.receiver = self;
  v12.super_class = _NSFaultingMutableArray;
  v8 = [(_NSFaultingMutableArray *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_source = a3;
    v8->_relationship = a4;
    if (v5)
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
    v3 = [(NSManagedObject *)self->_source managedObjectContext];
    source = self->_source;
    if (source)
    {
      v5 = _insertion_fault_handler;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(NSFaultHandler *)v5 retainedFulfillAggregateFaultForObject:self->_relationship andRelationship:v3 withContext:?];
    self->_realArray = v6;
    if (!v6)
    {
      self->_realArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    *&self->_flags &= ~1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
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

- (id)descriptionWithLocale:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  source = self->_source;
  if (*&self->_flags)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship fault for %@ on %p", self->_relationship, source, v11];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship objects for %@ on %p: %@", self->_relationship, source, -[NSMutableArray descriptionWithLocale:](self->_realArray, "descriptionWithLocale:", a3)];
  }

  v8 = v7;
  v9 = v7;
  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  source = self->_source;
  if (*&self->_flags)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship fault for %@ on %p", self->_relationship, source, v13];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship objects for %@ on %p: %@", self->_relationship, source, -[NSMutableArray descriptionWithLocale:indent:](self->_realArray, "descriptionWithLocale:indent:", a3, a4)];
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

- (id)objectAtIndex:(unint64_t)a3
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray objectAtIndex:a3];
}

- (void)addObject:(id)a3
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray addObject:a3];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray countByEnumeratingWithState:a3 objects:a4 count:a5];
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray enumerateObjectsWithOptions:a3 usingBlock:a4];
}

- (void)enumerateObjectsAtIndexes:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray enumerateObjectsAtIndexes:a3 options:a4 usingBlock:a5];
}

- (unint64_t)indexOfObjectWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray indexOfObjectWithOptions:a3 passingTest:a4];
}

- (unint64_t)indexOfObjectAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray indexOfObjectAtIndexes:a3 options:a4 passingTest:a5];
}

- (id)indexesOfObjectsWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray indexesOfObjectsWithOptions:a3 passingTest:a4];
}

- (id)indexesOfObjectsAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray indexesOfObjectsAtIndexes:a3 options:a4 passingTest:a5];
}

- (id)objectEnumerator
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray objectEnumerator];
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray insertObject:a3 atIndex:a4];
}

- (void)removeLastObject
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray removeLastObject];
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray removeObjectAtIndex:a3];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray replaceObjectAtIndex:a3 withObject:a4];
}

- (void)getObjects:(id *)a3
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray getObjects:a3];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  [(NSMutableArray *)realArray setValue:a3 forKey:a4];
}

- (id)valueForKey:(id)a3
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray valueForKey:a3];
}

- (id)valueForKeyPath:(id)a3
{
  [(_NSFaultingMutableArray *)self willRead];
  realArray = self->_realArray;

  return [(NSMutableArray *)realArray valueForKeyPath:a3];
}

@end