@interface SKTileGroupRule
+ (SKTileGroupRule)tileGroupRuleWithAdjacency:(SKTileAdjacencyMask)adjacency tileDefinitions:(NSArray *)tileDefinitions;
- (BOOL)isEqualToNode:(id)a3;
- (SKTileGroup)parentGroup;
- (SKTileGroupRule)initWithAdjacency:(SKTileAdjacencyMask)adjacency tileDefinitions:(NSArray *)tileDefinitions;
- (SKTileGroupRule)initWithCoder:(id)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)calcTileDefinitionIDsWithTileSet:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTileDefinitionIDs:(id)a3;
- (void)setTileDefinitionParentPointers;
- (void)setTileDefinitions:(NSArray *)tileDefinitions;
- (void)setTileDefinitionsFromIDsWithTileSet:(id)a3;
@end

@implementation SKTileGroupRule

- (void)setTileDefinitions:(NSArray *)tileDefinitions
{
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:tileDefinitions];
  v5 = self->_tileDefinitions;
  self->_tileDefinitions = v4;

  [(SKTileGroupRule *)self setTileDefinitionParentPointers];
}

- (void)setTileDefinitionIDs:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:a3];
  tileDefinitionIDs = self->_tileDefinitionIDs;
  self->_tileDefinitionIDs = v4;
}

- (void)setTileDefinitionParentPointers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_tileDefinitions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8)
        {
          [v8 setParentRule:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (SKTileGroupRule)initWithCoder:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SKTileGroupRule;
  v5 = [(SKTileGroupRule *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    [v6 addObjectsFromArray:v7];

    v8 = [v4 allowedClasses];
    [v6 unionSet:v8];

    v9 = [v4 decodeObjectOfClasses:v6 forKey:@"_tileDefinitions"];
    tileDefinitions = v5->_tileDefinitions;
    v5->_tileDefinitions = v9;

    v5->_adjacency = [v4 decodeInt32ForKey:@"_adjacency"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    [(SKTileGroupRule *)v5 setName:v11];

    [(SKTileGroupRule *)v5 setTileDefinitionParentPointers];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  tileDefinitions = self->_tileDefinitions;
  v5 = a3;
  [v5 encodeObject:tileDefinitions forKey:@"_tileDefinitions"];
  [v5 encodeInt32:self->_adjacency forKey:@"_adjacency"];
  v6 = [(SKTileGroupRule *)self name];
  [v5 encodeObject:v6 forKey:@"_name"];
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if ([(NSMutableArray *)self->_tileDefinitions count])
    {
      v7 = 0;
      while ([(NSMutableArray *)v6->_tileDefinitions count]> v7)
      {
        v8 = [(NSMutableArray *)self->_tileDefinitions objectAtIndexedSubscript:v7];
        v9 = [(NSMutableArray *)v6->_tileDefinitions objectAtIndexedSubscript:v7];
        v10 = [v8 isEqualToNode:v9];

        if ((v10 & 1) == 0)
        {
          break;
        }

        if ([(NSMutableArray *)self->_tileDefinitions count]<= ++v7)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_13;
    }

LABEL_7:
    v11 = [(SKTileGroupRule *)self name];
    if (v11)
    {
    }

    else
    {
      v13 = [(SKTileGroupRule *)v6 name];

      if (!v13)
      {
        goto LABEL_12;
      }
    }

    v14 = [(SKTileGroupRule *)self name];
    v15 = [(SKTileGroupRule *)v6 name];
    v16 = [v14 isEqualToString:v15];

    if (!v16)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

LABEL_12:
    v12 = self->_adjacency == v6->_adjacency;
LABEL_14:

    goto LABEL_15;
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKTileGroupRule *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    [v4 setAdjacency:{-[SKTileGroupRule adjacency](self, "adjacency")}];
    v5 = [(SKTileGroupRule *)self tileDefinitions];
    [v4 setTileDefinitions:v5];

    v6 = [(SKTileGroupRule *)self tileDefinitionIDs];
    [v4 setTileDefinitionIDs:v6];
  }

  return v4;
}

- (SKTileGroupRule)initWithAdjacency:(SKTileAdjacencyMask)adjacency tileDefinitions:(NSArray *)tileDefinitions
{
  v4 = adjacency;
  v6 = tileDefinitions;
  v11.receiver = self;
  v11.super_class = SKTileGroupRule;
  v7 = [(SKTileGroupRule *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_adjacency = v4;
    [(SKTileGroupRule *)v7 setTileDefinitions:v6];
    tileDefinitionIDs = v8->_tileDefinitionIDs;
    v8->_tileDefinitionIDs = 0;
  }

  return v8;
}

+ (SKTileGroupRule)tileGroupRuleWithAdjacency:(SKTileAdjacencyMask)adjacency tileDefinitions:(NSArray *)tileDefinitions
{
  v5 = tileDefinitions;
  v6 = [[SKTileGroupRule alloc] initWithAdjacency:adjacency tileDefinitions:v5];

  return v6;
}

- (void)calcTileDefinitionIDsWithTileSet:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    tileDefinitionIDs = self->_tileDefinitionIDs;
    self->_tileDefinitionIDs = v5;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_tileDefinitions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          if (v12)
          {
            v13 = self->_tileDefinitionIDs;
            v14 = MEMORY[0x277CCABB0];
            v15 = [v4 tileDefinitions];
            v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "indexOfObject:", v12)}];
            [(NSMutableArray *)v13 addObject:v16];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }
}

- (void)setTileDefinitionsFromIDsWithTileSet:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    tileDefinitions = self->_tileDefinitions;
    self->_tileDefinitions = v5;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_tileDefinitionIDs;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          if (v12)
          {
            v13 = [v12 unsignedIntegerValue];
            v14 = [v4 tileDefinitions];
            v15 = [v14 count];

            if (v15 > v13)
            {
              v16 = self->_tileDefinitions;
              v17 = [v4 tileDefinitions];
              v18 = [v17 objectAtIndexedSubscript:v13];
              [(NSMutableArray *)v16 addObject:v18];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [(SKTileGroupRule *)self setTileDefinitionParentPointers];
  }
}

- (SKTileGroup)parentGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  return WeakRetained;
}

@end