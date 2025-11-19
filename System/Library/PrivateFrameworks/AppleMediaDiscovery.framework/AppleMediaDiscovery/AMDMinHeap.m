@interface AMDMinHeap
- (AMDMinHeap)initWithCapacity:(unint64_t)a3 comparator:(id)a4;
- (BOOL)add:(id)a3;
- (id)poll;
- (id)topN;
- (void)bubbleUp;
- (void)pushDown;
- (void)swap:(unint64_t)a3 with:(unint64_t)a4;
@end

@implementation AMDMinHeap

- (AMDMinHeap)initWithCapacity:(unint64_t)a3 comparator:(id)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(AMDMinHeap *)v13 setCapacity:v11];
  [(AMDMinHeap *)v13 setComparator:location];
  [(AMDMinHeap *)v13 setPosition:1];
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [v5 initWithCapacity:{-[AMDMinHeap capacity](v13, "capacity") + 1}];
  [(AMDMinHeap *)v13 setObjects:?];
  MEMORY[0x277D82BD8](v6);
  v8 = [(AMDMinHeap *)v13 objects];
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
  [(NSMutableArray *)v8 addObject:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (BOOL)add:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [(AMDMinHeap *)v14 position];
  if (v12 != [(AMDMinHeap *)v14 capacity]+ 1)
  {
    v4 = [(AMDMinHeap *)v14 objects];
    [(NSMutableArray *)v4 addObject:location[0]];
    MEMORY[0x277D82BD8](v4);
    [(AMDMinHeap *)v14 setPosition:[(AMDMinHeap *)v14 position]+ 1];
    [(AMDMinHeap *)v14 bubbleUp];
    goto LABEL_6;
  }

  v10 = [(AMDMinHeap *)v14 comparator];
  v7 = location[0];
  v9 = [(AMDMinHeap *)v14 objects];
  v8 = [(NSMutableArray *)v9 objectAtIndexedSubscript:1];
  v11 = v10[2](v10, v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  if (v11 == 1)
  {
    v5 = location[0];
    v6 = [(AMDMinHeap *)v14 objects];
    [(NSMutableArray *)v6 setObject:v5 atIndexedSubscript:1];
    MEMORY[0x277D82BD8](v6);
    [(AMDMinHeap *)v14 pushDown];
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
  v9 = self;
  v8[1] = a2;
  if ([(AMDMinHeap *)self isEmpty])
  {
    v10 = 0;
  }

  else
  {
    v7 = [(AMDMinHeap *)v9 objects];
    v8[0] = [(NSMutableArray *)v7 objectAtIndexedSubscript:1];
    MEMORY[0x277D82BD8](v7);
    if ([(AMDMinHeap *)v9 size]<= 1)
    {
      [(AMDMinHeap *)v9 setPosition:[(AMDMinHeap *)v9 position]- 1];
    }

    else
    {
      v6 = [(AMDMinHeap *)v9 objects];
      v5 = [(NSMutableArray *)v6 objectAtIndexedSubscript:[(AMDMinHeap *)v9 position]- 1];
      v4 = [(AMDMinHeap *)v9 objects];
      [(NSMutableArray *)v4 setObject:v5 atIndexedSubscript:1];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      [(AMDMinHeap *)v9 setPosition:[(AMDMinHeap *)v9 position]- 1];
      [(AMDMinHeap *)v9 pushDown];
    }

    v10 = MEMORY[0x277D82BE0](v8[0]);
    objc_storeStrong(v8, 0);
  }

  v2 = v10;

  return v2;
}

- (id)topN
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[AMDMinHeap size](self, "size")}];
  do
  {
    if ([(AMDMinHeap *)v8 isEmpty])
    {
      break;
    }

    location = [(AMDMinHeap *)v8 poll];
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
  v3 = [v7[0] reverseObjectEnumerator];
  v4 = [v3 allObjects];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v7, 0);

  return v4;
}

- (void)bubbleUp
{
  for (i = [(AMDMinHeap *)self position]- 1; i > 1; i /= 2uLL)
  {
    v6 = [(AMDMinHeap *)self comparator];
    v5 = [(AMDMinHeap *)self objects];
    v4 = [(NSMutableArray *)v5 objectAtIndexedSubscript:i];
    v3 = [(AMDMinHeap *)self objects];
    v2 = [(NSMutableArray *)v3 objectAtIndexedSubscript:i / 2];
    v7 = v6[2](v6, v4);
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
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
      v18 = [(AMDMinHeap *)self comparator];
      v17 = 1;
      v16 = [(AMDMinHeap *)self objects];
      v15 = 1;
      v14 = [(NSMutableArray *)v16 objectAtIndexedSubscript:v20];
      v13 = 1;
      v12 = [(AMDMinHeap *)self objects];
      v11 = 1;
      v10 = [(NSMutableArray *)v12 objectAtIndexedSubscript:2 * i];
      v9 = 1;
      v8 = v18[2](v18, v14) == -1;
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](v18);
    }

    v19 = v8 ? 2 * i + 1 : 2 * i;
    v6 = [(AMDMinHeap *)self comparator];
    v5 = [(AMDMinHeap *)self objects];
    v4 = [(NSMutableArray *)v5 objectAtIndexedSubscript:v19];
    v3 = [(AMDMinHeap *)self objects];
    v2 = [(NSMutableArray *)v3 objectAtIndexedSubscript:i];
    v7 = v6[2](v6, v4);
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    if (v7 != -1)
    {
      break;
    }

    [(AMDMinHeap *)self swap:v19 with:i];
  }
}

- (void)swap:(unint64_t)a3 with:(unint64_t)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v4 = [(AMDMinHeap *)self objects];
  v10 = [(NSMutableArray *)v4 objectAtIndexedSubscript:v12];
  MEMORY[0x277D82BD8](v4);
  v7 = [(AMDMinHeap *)v14 objects];
  v6 = [(NSMutableArray *)v7 objectAtIndexedSubscript:v11];
  v5 = [(AMDMinHeap *)v14 objects];
  [(NSMutableArray *)v5 setObject:v6 atIndexedSubscript:v12];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v8 = v10;
  v9 = [(AMDMinHeap *)v14 objects];
  [(NSMutableArray *)v9 setObject:v8 atIndexedSubscript:v11];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
}

@end