@interface PHASESwitchNodeDefinition
- (PHASESwitchNodeDefinition)init;
- (PHASESwitchNodeDefinition)initWithSwitchMetaParameterDefinition:(PHASEStringMetaParameterDefinition *)switchMetaParameterDefinition;
- (PHASESwitchNodeDefinition)initWithSwitchMetaParameterDefinition:(PHASEStringMetaParameterDefinition *)switchMetaParameterDefinition identifier:(NSString *)identifier;
- (id)children;
- (void)addSubtree:(PHASESoundEventNodeDefinition *)subtree switchValue:(NSString *)switchValue;
@end

@implementation PHASESwitchNodeDefinition

- (PHASESwitchNodeDefinition)init
{
  [(PHASESwitchNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESwitchNodeDefinition)initWithSwitchMetaParameterDefinition:(PHASEStringMetaParameterDefinition *)switchMetaParameterDefinition identifier:(NSString *)identifier
{
  v6 = switchMetaParameterDefinition;
  v7 = identifier;
  v8 = [(PHASESwitchNodeDefinition *)self initWithSwitchMetaParameterDefinition:v6];
  v9 = v8;
  if (v8)
  {
    [(PHASEDefinition *)v8 setIdentifier:v7];
    v10 = v9;
  }

  return v9;
}

- (PHASESwitchNodeDefinition)initWithSwitchMetaParameterDefinition:(PHASEStringMetaParameterDefinition *)switchMetaParameterDefinition
{
  v5 = switchMetaParameterDefinition;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot create a PHASESwitchNodeDefinition with a nil switchMetaParameterDefinition"];
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = PHASESwitchNodeDefinition;
  v6 = [(PHASEDefinition *)&v11 initInternal];
  if (!v6)
  {
    self = 0;
    goto LABEL_6;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = *(v6 + 3);
  *(v6 + 3) = v7;

  objc_storeStrong(v6 + 2, switchMetaParameterDefinition);
  self = v6;
  v9 = self;
LABEL_7:

  return v9;
}

- (void)addSubtree:(PHASESoundEventNodeDefinition *)subtree switchValue:(NSString *)switchValue
{
  v8 = subtree;
  v6 = switchValue;
  v7 = objc_alloc_init(SwitchSubtree);
  [(SwitchSubtree *)v7 setSwitchValue:v6];
  [(SwitchSubtree *)v7 setSubtree:v8];
  [(NSMutableArray *)self->_subtrees addObject:v7];
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