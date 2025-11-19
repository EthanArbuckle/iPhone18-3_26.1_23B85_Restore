@interface VSKeyPathBasedTreeNode
- (VSKeyPathBasedTreeNode)init;
- (VSKeyPathBasedTreeNode)initWithRepresentedObject:(id)a3;
- (VSKeyPathBasedTreeNode)initWithRepresentedObject:(id)a3 keyPath:(id)a4;
@end

@implementation VSKeyPathBasedTreeNode

- (VSKeyPathBasedTreeNode)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSKeyPathBasedTreeNode)initWithRepresentedObject:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VSKeyPathBasedTreeNode)initWithRepresentedObject:(id)a3 keyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The modelObject parameter must not be nil."];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPath parameter must not be nil."];
LABEL_3:
  v21.receiver = self;
  v21.super_class = VSKeyPathBasedTreeNode;
  v9 = [(VSTreeNode *)&v21 initWithRepresentedObject:v6];
  if (v9)
  {
    v10 = [v8 copy];
    keyPath = v9->_keyPath;
    v9->_keyPath = v10;

    v12 = [v6 valueForKeyPath:v8];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 count];
      if (v14)
      {
        v15 = v14;
        v16 = [(VSTreeNode *)v9 mutableChildNodes];
        for (i = 0; i != v15; ++i)
        {
          v18 = [v13 objectAtIndex:i];
          v19 = [[VSKeyPathBasedTreeNode alloc] initWithRepresentedObject:v18 keyPath:v8];
          [v16 addObject:v19];
        }
      }
    }
  }

  return v9;
}

@end