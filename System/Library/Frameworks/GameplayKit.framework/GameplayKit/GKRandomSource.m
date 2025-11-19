@interface GKRandomSource
+ (GKRandomSource)sharedRandom;
- (GKRandomSource)init;
- (GKRandomSource)initWithCoder:(NSCoder *)aDecoder;
- (NSArray)arrayByShufflingObjectsInArray:(NSArray *)array;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation GKRandomSource

- (GKRandomSource)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = objc_alloc_init(GKARC4RandomSource);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = GKRandomSource;
    v4 = [(GKRandomSource *)&v7 init];
    self = &v4->super;
  }

  p_super = &v4->super;

  return p_super;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();

  return objc_opt_new();
}

- (GKRandomSource)initWithCoder:(NSCoder *)aDecoder
{
  v4.receiver = self;
  v4.super_class = GKRandomSource;
  return [(GKRandomSource *)&v4 init];
}

+ (GKRandomSource)sharedRandom
{
  if (qword_27DF48768 == -1)
  {
    v3 = _MergedGlobals;
  }

  else
  {
    +[GKRandomSource sharedRandom];
    v3 = _MergedGlobals;
  }

  return v3;
}

uint64_t __30__GKRandomSource_sharedRandom__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals;
  _MergedGlobals = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (NSArray)arrayByShufflingObjectsInArray:(NSArray *)array
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = array;
  if ([(NSArray *)v4 count]> 1)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](v4, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v4;
    v7 = v4;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v22;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          while (1)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v16 = *(*(&v21 + 1) + 8 * v12);
            v10 = v13 + 1;
            v17 = [(GKRandomSource *)self nextIntWithUpperBound:(v13 + 1)];
            if (v17 == v13)
            {
              break;
            }

            v14 = v17;
            v15 = [v6 objectAtIndex:v17];
            [v6 addObject:v15];

            [v6 setObject:v16 atIndexedSubscript:v14];
            ++v12;
            v13 = v10;
            if (v9 == v12)
            {
              goto LABEL_5;
            }
          }

          [v6 addObject:v16];
          ++v12;
          ++v13;
        }

        while (v9 != v12);
LABEL_5:
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v6];
    v4 = v20;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

@end