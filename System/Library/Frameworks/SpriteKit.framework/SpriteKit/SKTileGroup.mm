@interface SKTileGroup
+ (SKTileGroup)tileGroupWithRules:(NSArray *)rules;
+ (SKTileGroup)tileGroupWithTileDefinition:(SKTileDefinition *)tileDefinition;
- (BOOL)isEqualToNode:(id)a3;
- (SKTileGroup)initWithCoder:(id)a3;
- (SKTileGroup)initWithRules:(NSArray *)rules;
- (SKTileGroup)initWithTileDefinition:(SKTileDefinition *)tileDefinition;
- (SKTileSet)parentSet;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)findTileDefinitionIDsForAdjacencyData:(unint64_t)a3 tileSetType:(unint64_t)a4;
- (unint64_t)findTileDefinitionIndexForAdjacencyData:(unint64_t)a3 tileSetType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setRuleParentPointers;
- (void)setRules:(NSArray *)rules;
@end

@implementation SKTileGroup

- (void)setRules:(NSArray *)rules
{
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:rules];
  v5 = self->_rules;
  self->_rules = v4;

  [(SKTileGroup *)self setRuleParentPointers];
}

- (void)setRuleParentPointers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_rules;
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
          [v8 setParentGroup:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (SKTileGroup)initWithCoder:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SKTileGroup;
  v5 = [(SKTileGroup *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_rules"];
    rules = v5->_rules;
    v5->_rules = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    [(SKTileGroup *)v5 setName:v11];

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    [(SKTileGroup *)v5 setRuleParentPointers];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rules = self->_rules;
  v6 = a3;
  [v6 encodeObject:rules forKey:@"_rules"];
  v5 = [(SKTileGroup *)self name];
  [v6 encodeObject:v5 forKey:@"_name"];

  [v6 encodeInteger:self->_type forKey:@"_type"];
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    v7 = [(SKTileGroup *)self name];
    if (v7)
    {
    }

    else
    {
      v9 = [v6 name];

      if (!v9)
      {
LABEL_7:
        if (![(NSMutableArray *)self->_rules count])
        {
LABEL_12:
          type = self->_type;
          v8 = type == [v6 type];
LABEL_14:

          goto LABEL_15;
        }

        v13 = 0;
        while ([v6[1] count] > v13)
        {
          v14 = [(NSMutableArray *)self->_rules objectAtIndexedSubscript:v13];
          v15 = [v6[1] objectAtIndexedSubscript:v13];
          v16 = [v14 isEqualToNode:v15];

          if ((v16 & 1) == 0)
          {
            break;
          }

          if ([(NSMutableArray *)self->_rules count]<= ++v13)
          {
            goto LABEL_12;
          }
        }

LABEL_13:
        v8 = 0;
        goto LABEL_14;
      }
    }

    v10 = [(SKTileGroup *)self name];
    v11 = [v6 name];
    v12 = [v10 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKTileGroup *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(SKTileGroup *)self rules];
    [v4 setRules:v5];

    v6 = [(SKTileGroup *)self name];
    [v4 setName:v6];

    [v4 setType:{-[SKTileGroup type](self, "type")}];
  }

  return v4;
}

- (SKTileGroup)initWithTileDefinition:(SKTileDefinition *)tileDefinition
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = tileDefinition;
  v11.receiver = self;
  v11.super_class = SKTileGroup;
  v5 = [(SKTileGroup *)&v11 init];
  if (v5)
  {
    v12[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [SKTileGroupRule tileGroupRuleWithAdjacency:255 tileDefinitions:v6];

    v8 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
    rules = v5->_rules;
    v5->_rules = v8;

    [(SKTileGroup *)v5 setName:0];
    [(SKTileGroup *)v5 setType:0];
    [(SKTileGroup *)v5 setRuleParentPointers];
  }

  return v5;
}

- (SKTileGroup)initWithRules:(NSArray *)rules
{
  v4 = rules;
  v8.receiver = self;
  v8.super_class = SKTileGroup;
  v5 = [(SKTileGroup *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKTileGroup *)v5 setRules:v4];
    [(SKTileGroup *)v6 setName:0];
    [(SKTileGroup *)v6 setType:0];
  }

  return v6;
}

+ (SKTileGroup)tileGroupWithTileDefinition:(SKTileDefinition *)tileDefinition
{
  v3 = tileDefinition;
  v4 = [[SKTileGroup alloc] initWithTileDefinition:v3];

  return v4;
}

+ (SKTileGroup)tileGroupWithRules:(NSArray *)rules
{
  v3 = rules;
  v4 = [[SKTileGroup alloc] initWithRules:v3];

  return v4;
}

- (unint64_t)findTileDefinitionIndexForAdjacencyData:(unint64_t)a3 tileSetType:(unint64_t)a4
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_rules count])
  {
    if (a4 > 1)
    {
      v27 = 0uLL;
      v28 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v7 = self->_rules;
      v18 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
LABEL_23:
        v21 = 0;
        while (1)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * v21);
          if ([v12 adjacency] == a3)
          {
            goto LABEL_31;
          }

          if (v19 == ++v21)
          {
            v19 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
            v17 = -1;
            if (v19)
            {
              goto LABEL_23;
            }

            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      v31 = 0uLL;
      v32 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v7 = self->_rules;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
LABEL_5:
        v11 = 0;
        while (1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          if ((([v12 adjacency] ^ a3) & 0x55) == 0)
          {
            v13 = [v12 adjacency];
            if ((a3 & 2) != 0 || (v13 & 2) == 0)
            {
              v14 = [v12 adjacency];
              if ((a3 & 8) != 0 || (v14 & 8) == 0)
              {
                v15 = [v12 adjacency];
                if ((a3 & 0x20) != 0 || (v15 & 0x20) == 0)
                {
                  v16 = [v12 adjacency];
                  if ((a3 & 0x80) != 0 || (v16 & 0x80) == 0)
                  {
                    break;
                  }
                }
              }
            }
          }

          if (v9 == ++v11)
          {
            v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v9)
            {
              goto LABEL_5;
            }

            goto LABEL_30;
          }
        }

LABEL_31:
        v22 = [v12 tileDefinitionIDs];
        v23 = [v22 firstObject];
        v17 = [v23 integerValue];

        goto LABEL_32;
      }
    }

LABEL_30:
    v17 = -1;
LABEL_32:

    return v17;
  }

  return -1;
}

- (id)findTileDefinitionIDsForAdjacencyData:(unint64_t)a3 tileSetType:(unint64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  if (![(NSMutableArray *)self->_rules count])
  {
    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_33;
  }

  if (a4 > 1)
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v7 = self->_rules;
    v18 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      v11 = MEMORY[0x277CBEBF8];
LABEL_23:
      v21 = 0;
      while (1)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * v21);
        if ([v13 adjacency] == a3)
        {
          goto LABEL_30;
        }

        if (v19 == ++v21)
        {
          v19 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v19)
          {
            goto LABEL_23;
          }

          goto LABEL_32;
        }
      }
    }

LABEL_31:
    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_32;
  }

  v29 = 0uLL;
  v30 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v7 = self->_rules;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8;
  v10 = *v28;
  v11 = MEMORY[0x277CBEBF8];
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v28 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v13 = *(*(&v27 + 1) + 8 * v12);
    if ((([v13 adjacency] ^ a3) & 0x55) == 0)
    {
      v14 = [v13 adjacency];
      if ((a3 & 2) != 0 || (v14 & 2) == 0)
      {
        v15 = [v13 adjacency];
        if ((a3 & 8) != 0 || (v15 & 8) == 0)
        {
          v16 = [v13 adjacency];
          if ((a3 & 0x20) != 0 || (v16 & 0x20) == 0)
          {
            v17 = [v13 adjacency];
            if ((a3 & 0x80) != 0 || (v17 & 0x80) == 0)
            {
              break;
            }
          }
        }
      }
    }

    if (v9 == ++v12)
    {
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }
  }

LABEL_30:
  v11 = [v13 tileDefinitionIDs];
LABEL_32:

LABEL_33:

  return v11;
}

- (SKTileSet)parentSet
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSet);

  return WeakRetained;
}

@end