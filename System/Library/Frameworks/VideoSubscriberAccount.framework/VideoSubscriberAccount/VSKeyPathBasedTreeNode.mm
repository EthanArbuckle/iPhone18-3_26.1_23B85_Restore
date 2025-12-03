@interface VSKeyPathBasedTreeNode
- (VSKeyPathBasedTreeNode)init;
- (VSKeyPathBasedTreeNode)initWithRepresentedObject:(id)object;
- (VSKeyPathBasedTreeNode)initWithRepresentedObject:(id)object keyPath:(id)path;
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

- (VSKeyPathBasedTreeNode)initWithRepresentedObject:(id)object
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VSKeyPathBasedTreeNode)initWithRepresentedObject:(id)object keyPath:(id)path
{
  objectCopy = object;
  pathCopy = path;
  v8 = pathCopy;
  if (objectCopy)
  {
    if (pathCopy)
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
  v9 = [(VSTreeNode *)&v21 initWithRepresentedObject:objectCopy];
  if (v9)
  {
    v10 = [v8 copy];
    keyPath = v9->_keyPath;
    v9->_keyPath = v10;

    v12 = [objectCopy valueForKeyPath:v8];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 count];
      if (v14)
      {
        v15 = v14;
        mutableChildNodes = [(VSTreeNode *)v9 mutableChildNodes];
        for (i = 0; i != v15; ++i)
        {
          v18 = [v13 objectAtIndex:i];
          v19 = [[VSKeyPathBasedTreeNode alloc] initWithRepresentedObject:v18 keyPath:v8];
          [mutableChildNodes addObject:v19];
        }
      }
    }
  }

  return v9;
}

@end