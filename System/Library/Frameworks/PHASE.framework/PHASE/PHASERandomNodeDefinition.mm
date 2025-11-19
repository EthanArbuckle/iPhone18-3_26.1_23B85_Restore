@interface PHASERandomNodeDefinition
- (PHASERandomNodeDefinition)init;
- (PHASERandomNodeDefinition)initWithIdentifier:(NSString *)identifier;
- (id)children;
- (void)addSubtree:(PHASESoundEventNodeDefinition *)subtree weight:(NSNumber *)weight;
@end

@implementation PHASERandomNodeDefinition

- (PHASERandomNodeDefinition)initWithIdentifier:(NSString *)identifier
{
  v4 = identifier;
  v5 = [(PHASERandomNodeDefinition *)self init];
  v6 = v5;
  if (v5)
  {
    [(PHASEDefinition *)v5 setIdentifier:v4];
    v7 = v6;
  }

  return v6;
}

- (PHASERandomNodeDefinition)init
{
  v7.receiver = self;
  v7.super_class = PHASERandomNodeDefinition;
  v2 = [(PHASEDefinition *)&v7 initInternal];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subtrees = v2->_subtrees;
    v2->_subtrees = v3;

    v2->_uniqueSelectionQueueLength = 0;
    v5 = v2;
  }

  return v2;
}

- (void)addSubtree:(PHASESoundEventNodeDefinition *)subtree weight:(NSNumber *)weight
{
  v15 = subtree;
  v7 = weight;
  if (v15)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      [(NSNumber *)v7 doubleValue];
      v12 = PHASEGetPropertyBounded<double>(v9, v10, v11, 1.0, 10000.0);

      v13 = objc_alloc_init(RandomSubtree);
      [(RandomSubtree *)v13 setSubtree:v15];
      [(RandomSubtree *)v13 setWeight:v12];
      [(NSMutableArray *)self->_subtrees addObject:v13];

      goto LABEL_7;
    }

    v14 = @"Cannot add a subTree to a PHASERandomNodeDefinition with a nil weight";
  }

  else
  {
    v14 = @"Cannot add a nil subTree to a PHASERandomNodeDefinition";
  }

  [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:v14];
LABEL_7:
}

- (id)children
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_subtrees;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) subtree];
        [v3 addObject:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

@end