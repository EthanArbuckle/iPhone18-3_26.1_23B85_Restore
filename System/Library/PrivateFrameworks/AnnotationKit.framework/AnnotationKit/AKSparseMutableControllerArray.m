@interface AKSparseMutableControllerArray
- (AKSparseMutableControllerArray)initWithCapacity:(unint64_t)a3;
- (BOOL)containsAnyObjects:(id)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (unint64_t)count;
- (void)_backFillUntilCount:(unint64_t)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
@end

@implementation AKSparseMutableControllerArray

- (BOOL)containsAnyObjects:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  backendArray = self->_backendArray;
  v5 = a3;
  v6 = [v3 setWithArray:backendArray];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v5];

  LOBYTE(v5) = [v6 intersectsSet:v7];
  return v5;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_backendArray count]> a3)
  {
    v5 = [(NSMutableArray *)self->_backendArray objectAtIndex:a3];
    v6 = [MEMORY[0x277CBEB68] null];
    v7 = [v5 isEqual:v6];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23F4462B0;
  v11[3] = &unk_278C7BC78;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateIndexesUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

- (AKSparseMutableControllerArray)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = AKSparseMutableControllerArray;
  v4 = [(AKSparseMutableControllerArray *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    backendArray = v4->_backendArray;
    v4->_backendArray = v5;
  }

  return v4;
}

- (void)_backFillUntilCount:(unint64_t)a3
{
  while ([(NSMutableArray *)self->_backendArray count]< a3)
  {
    backendArray = self->_backendArray;
    v6 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)backendArray addObject:v6];
  }
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [(AKSparseMutableControllerArray *)self _backFillUntilCount:a4];
  [(NSMutableArray *)self->_backendArray insertObject:v6 atIndex:a4];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  [(AKSparseMutableControllerArray *)self _backFillUntilCount:a3 + 1];
  [(NSMutableArray *)self->_backendArray setObject:v6 atIndexedSubscript:a3];
}

- (unint64_t)count
{
  v3 = [(NSMutableArray *)self->_backendArray count];
  while (v3-- >= 1)
  {
    v5 = [(NSMutableArray *)self->_backendArray objectAtIndexedSubscript:v3];
    v6 = [MEMORY[0x277CBEB68] null];
    v7 = [v5 isEqual:v6];

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
    v6 = [MEMORY[0x277CBEB68] null];
    v7 = [v5 isEqual:v6];
  }

  while ((v7 & 1) != 0);
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_backendArray count]> a3)
  {
    backendArray = self->_backendArray;

    [(NSMutableArray *)backendArray removeObjectAtIndex:a3];
  }
}

@end