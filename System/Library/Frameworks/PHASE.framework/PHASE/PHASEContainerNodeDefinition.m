@interface PHASEContainerNodeDefinition
+ (PHASEContainerNodeDefinition)new;
- (PHASEContainerNodeDefinition)init;
- (PHASEContainerNodeDefinition)initWithIdentifier:(NSString *)identifier;
- (void)addSubtree:(PHASESoundEventNodeDefinition *)subtree;
@end

@implementation PHASEContainerNodeDefinition

- (PHASEContainerNodeDefinition)initWithIdentifier:(NSString *)identifier
{
  v4 = identifier;
  v11.receiver = self;
  v11.super_class = PHASEContainerNodeDefinition;
  v5 = [(PHASEDefinition *)&v11 initInternal];
  v6 = v5;
  if (v5)
  {
    [(PHASEDefinition *)v5 setIdentifier:v4];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subtrees = v6->_subtrees;
    v6->_subtrees = v7;

    v9 = v6;
  }

  return v6;
}

- (PHASEContainerNodeDefinition)init
{
  v2 = [(PHASEContainerNodeDefinition *)self initWithIdentifier:&stru_284D3D208];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (PHASEContainerNodeDefinition)new
{
  v2 = [PHASEContainerNodeDefinition alloc];

  return [(PHASEContainerNodeDefinition *)v2 initWithIdentifier:&stru_284D3D208];
}

- (void)addSubtree:(PHASESoundEventNodeDefinition *)subtree
{
  v4 = subtree;
  v5 = v4;
  if (v4)
  {
    [(NSMutableArray *)self->_subtrees addObject:v4];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot add a nil subtree to a PHASEContainerNodeDefinition"];
  }
}

@end