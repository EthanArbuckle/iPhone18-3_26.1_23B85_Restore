@interface AKSparseMutableControllerArray
- (AKSparseMutableControllerArray)initWithCapacity:(unint64_t)capacity;
- (BOOL)containsAnyObjects:(id)objects;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (unint64_t)count;
- (void)_backFillUntilCount:(unint64_t)count;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation AKSparseMutableControllerArray

- (BOOL)containsAnyObjects:(id)objects
{
  v3 = MEMORY[0x277CBEB98];
  backendArray = self->_backendArray;
  objectsCopy = objects;
  v6 = [v3 setWithArray:backendArray];
  v7 = [MEMORY[0x277CBEB98] setWithObject:objectsCopy];

  LOBYTE(objectsCopy) = [v6 intersectsSet:v7];
  return objectsCopy;
}

- (id)objectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_backendArray count]> index)
  {
    v5 = [(NSMutableArray *)self->_backendArray objectAtIndex:index];
    null = [MEMORY[0x277CBEB68] null];
    v7 = [v5 isEqual:null];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)objectsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x277CBEB18];
  indexesCopy = indexes;
  array = [v4 array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23F4462B0;
  v11[3] = &unk_278C7BC78;
  v11[4] = self;
  v7 = array;
  v12 = v7;
  [indexesCopy enumerateIndexesUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

- (AKSparseMutableControllerArray)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = AKSparseMutableControllerArray;
  v4 = [(AKSparseMutableControllerArray *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:capacity];
    backendArray = v4->_backendArray;
    v4->_backendArray = v5;
  }

  return v4;
}

- (void)_backFillUntilCount:(unint64_t)count
{
  while ([(NSMutableArray *)self->_backendArray count]< count)
  {
    backendArray = self->_backendArray;
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)backendArray addObject:null];
  }
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  [(AKSparseMutableControllerArray *)self _backFillUntilCount:index];
  [(NSMutableArray *)self->_backendArray insertObject:objectCopy atIndex:index];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  [(AKSparseMutableControllerArray *)self _backFillUntilCount:index + 1];
  [(NSMutableArray *)self->_backendArray setObject:objectCopy atIndexedSubscript:index];
}

- (unint64_t)count
{
  v3 = [(NSMutableArray *)self->_backendArray count];
  while (v3-- >= 1)
  {
    v5 = [(NSMutableArray *)self->_backendArray objectAtIndexedSubscript:v3];
    null = [MEMORY[0x277CBEB68] null];
    v7 = [v5 isEqual:null];

    if ((v7 & 1) == 0)
    {
      return v3 + 1;
    }
  }

  return 0;
}

- (void)removeLastObject
{
  v3 = [(NSMutableArray *)self->_backendArray count];
  do
  {
    if (v3-- < 1)
    {
      break;
    }

    v5 = [(NSMutableArray *)self->_backendArray objectAtIndexedSubscript:v3];
    [(NSMutableArray *)self->_backendArray removeObjectAtIndex:v3];
    null = [MEMORY[0x277CBEB68] null];
    v7 = [v5 isEqual:null];
  }

  while ((v7 & 1) != 0);
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_backendArray count]> index)
  {
    backendArray = self->_backendArray;

    [(NSMutableArray *)backendArray removeObjectAtIndex:index];
  }
}

@end