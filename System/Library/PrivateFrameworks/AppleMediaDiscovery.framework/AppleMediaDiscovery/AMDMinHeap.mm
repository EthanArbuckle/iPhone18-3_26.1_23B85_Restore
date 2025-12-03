@interface AMDMinHeap
- (AMDMinHeap)initWithCapacity:(unint64_t)capacity comparator:(id)comparator;
- (BOOL)add:(id)add;
- (id)poll;
- (id)topN;
- (void)bubbleUp;
- (void)pushDown;
- (void)swap:(unint64_t)swap with:(unint64_t)with;
@end

@implementation AMDMinHeap

- (AMDMinHeap)initWithCapacity:(unint64_t)capacity comparator:(id)comparator
{
  selfCopy = self;
  v12 = a2;
  capacityCopy = capacity;
  location = 0;
  objc_storeStrong(&location, comparator);
  [(AMDMinHeap *)selfCopy setCapacity:capacityCopy];
  [(AMDMinHeap *)selfCopy setComparator:location];
  [(AMDMinHeap *)selfCopy setPosition:1];
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [v5 initWithCapacity:{-[AMDMinHeap capacity](selfCopy, "capacity") + 1}];
  [(AMDMinHeap *)selfCopy setObjects:?];
  MEMORY[0x277D82BD8](v6);
  objects = [(AMDMinHeap *)selfCopy objects];
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
  [(NSMutableArray *)objects addObject:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](objects);
  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (BOOL)add:(id)add
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, add);
  position = [(AMDMinHeap *)selfCopy position];
  if (position != [(AMDMinHeap *)selfCopy capacity]+ 1)
  {
    objects = [(AMDMinHeap *)selfCopy objects];
    [(NSMutableArray *)objects addObject:location[0]];
    MEMORY[0x277D82BD8](objects);
    [(AMDMinHeap *)selfCopy setPosition:[(AMDMinHeap *)selfCopy position]+ 1];
    [(AMDMinHeap *)selfCopy bubbleUp];
    goto LABEL_6;
  }

  comparator = [(AMDMinHeap *)selfCopy comparator];
  v7 = location[0];
  objects2 = [(AMDMinHeap *)selfCopy objects];
  v8 = [(NSMutableArray *)objects2 objectAtIndexedSubscript:1];
  v11 = comparator[2](comparator, v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](objects2);
  MEMORY[0x277D82BD8](comparator);
  if (v11 == 1)
  {
    v5 = location[0];
    objects3 = [(AMDMinHeap *)selfCopy objects];
    [(NSMutableArray *)objects3 setObject:v5 atIndexedSubscript:1];
    MEMORY[0x277D82BD8](objects3);
    [(AMDMinHeap *)selfCopy pushDown];
LABEL_6:
    v15 = 1;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (id)poll
{
  selfCopy = self;
  v8[1] = a2;
  if ([(AMDMinHeap *)self isEmpty])
  {
    v10 = 0;
  }

  else
  {
    objects = [(AMDMinHeap *)selfCopy objects];
    v8[0] = [(NSMutableArray *)objects objectAtIndexedSubscript:1];
    MEMORY[0x277D82BD8](objects);
    if ([(AMDMinHeap *)selfCopy size]<= 1)
    {
      [(AMDMinHeap *)selfCopy setPosition:[(AMDMinHeap *)selfCopy position]- 1];
    }

    else
    {
      objects2 = [(AMDMinHeap *)selfCopy objects];
      v5 = [(NSMutableArray *)objects2 objectAtIndexedSubscript:[(AMDMinHeap *)selfCopy position]- 1];
      objects3 = [(AMDMinHeap *)selfCopy objects];
      [(NSMutableArray *)objects3 setObject:v5 atIndexedSubscript:1];
      MEMORY[0x277D82BD8](objects3);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](objects2);
      [(AMDMinHeap *)selfCopy setPosition:[(AMDMinHeap *)selfCopy position]- 1];
      [(AMDMinHeap *)selfCopy pushDown];
    }

    v10 = MEMORY[0x277D82BE0](v8[0]);
    objc_storeStrong(v8, 0);
  }

  v2 = v10;

  return v2;
}

- (id)topN
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[AMDMinHeap size](self, "size")}];
  do
  {
    if ([(AMDMinHeap *)selfCopy isEmpty])
    {
      break;
    }

    location = [(AMDMinHeap *)selfCopy poll];
    if (location)
    {
      [v7[0] addObject:location];
      v5 = 0;
    }

    else
    {
      v5 = 3;
    }

    objc_storeStrong(&location, 0);
  }

  while (!v5);
  reverseObjectEnumerator = [v7[0] reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  MEMORY[0x277D82BD8](reverseObjectEnumerator);
  objc_storeStrong(v7, 0);

  return allObjects;
}

- (void)bubbleUp
{
  for (i = [(AMDMinHeap *)self position]- 1; i > 1; i /= 2uLL)
  {
    comparator = [(AMDMinHeap *)self comparator];
    objects = [(AMDMinHeap *)self objects];
    v4 = [(NSMutableArray *)objects objectAtIndexedSubscript:i];
    objects2 = [(AMDMinHeap *)self objects];
    v2 = [(NSMutableArray *)objects2 objectAtIndexedSubscript:i / 2];
    v7 = comparator[2](comparator, v4);
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](objects2);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](objects);
    MEMORY[0x277D82BD8](comparator);
    if (v7 != -1)
    {
      break;
    }

    [(AMDMinHeap *)self swap:i with:i / 2];
  }
}

- (void)pushDown
{
  for (i = 1; i < [(AMDMinHeap *)self position]; i = v19)
  {
    v20 = 2 * i + 1;
    if (2 * i >= [(AMDMinHeap *)self position])
    {
      break;
    }

    v17 = 0;
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    if (v20 < [(AMDMinHeap *)self position])
    {
      comparator = [(AMDMinHeap *)self comparator];
      v17 = 1;
      objects = [(AMDMinHeap *)self objects];
      v15 = 1;
      v14 = [(NSMutableArray *)objects objectAtIndexedSubscript:v20];
      v13 = 1;
      objects2 = [(AMDMinHeap *)self objects];
      v11 = 1;
      v10 = [(NSMutableArray *)objects2 objectAtIndexedSubscript:2 * i];
      v9 = 1;
      v8 = comparator[2](comparator, v14) == -1;
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](objects2);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](objects);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](comparator);
    }

    v19 = v8 ? 2 * i + 1 : 2 * i;
    comparator2 = [(AMDMinHeap *)self comparator];
    objects3 = [(AMDMinHeap *)self objects];
    v4 = [(NSMutableArray *)objects3 objectAtIndexedSubscript:v19];
    objects4 = [(AMDMinHeap *)self objects];
    v2 = [(NSMutableArray *)objects4 objectAtIndexedSubscript:i];
    v7 = comparator2[2](comparator2, v4);
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](objects4);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](objects3);
    MEMORY[0x277D82BD8](comparator2);
    if (v7 != -1)
    {
      break;
    }

    [(AMDMinHeap *)self swap:v19 with:i];
  }
}

- (void)swap:(unint64_t)swap with:(unint64_t)with
{
  selfCopy = self;
  v13 = a2;
  swapCopy = swap;
  withCopy = with;
  objects = [(AMDMinHeap *)self objects];
  v10 = [(NSMutableArray *)objects objectAtIndexedSubscript:swapCopy];
  MEMORY[0x277D82BD8](objects);
  objects2 = [(AMDMinHeap *)selfCopy objects];
  v6 = [(NSMutableArray *)objects2 objectAtIndexedSubscript:withCopy];
  objects3 = [(AMDMinHeap *)selfCopy objects];
  [(NSMutableArray *)objects3 setObject:v6 atIndexedSubscript:swapCopy];
  MEMORY[0x277D82BD8](objects3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](objects2);
  v8 = v10;
  objects4 = [(AMDMinHeap *)selfCopy objects];
  [(NSMutableArray *)objects4 setObject:v8 atIndexedSubscript:withCopy];
  MEMORY[0x277D82BD8](objects4);
  objc_storeStrong(&v10, 0);
}

@end