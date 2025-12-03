@interface SKGroup
+ (id)groupWithActions:(id)actions;
- (BOOL)finished;
- (SKGroup)init;
- (SKGroup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKGroup

- (SKGroup)init
{
  v3.receiver = self;
  v3.super_class = SKGroup;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKGroup)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKGroup;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = SKGroup;
  [(SKAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_actions forKey:@"_actions"];
}

+ (id)groupWithActions:(id)actions
{
  v33 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v4 = actionsCopy;
  if (actionsCopy && [actionsCopy count])
  {
    v5 = objc_alloc_init(SKGroup);
    objc_opt_class();
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v12 = [SKSequence sequenceWithActions:v11];
          }

          else
          {
            v12 = [v11 copy];
          }

          [v6 addObject:v12];
        }

        v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    v13 = [v6 copy];
    actions = v5->_actions;
    v5->_actions = v13;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v5->_actions;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = *v24;
      v18 = 0.0;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          SKCGroup::addCAction(v5->_mycaction, [v20 caction]);
          [v20 duration];
          if (v18 < v21)
          {
            v18 = v21;
          }
        }

        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    [(SKAction *)v5 setDuration:v18];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SKGroup groupWithActions:self->_actions];
  [v4 setTimingMode:{-[SKAction timingMode](self, "timingMode")}];
  timingFunction = [(SKAction *)self timingFunction];
  [v4 setTimingFunction:timingFunction];

  return v4;
}

- (id)reversedAction
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_actions, "count")}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_actions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        reversedAction = [*(*(&v11 + 1) + 8 * i) reversedAction];
        [v3 addObject:reversedAction];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [SKGroup groupWithActions:v3];

  return v9;
}

- (BOOL)finished
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_actions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v5 |= [*(*(&v10 + 1) + 8 * v7++) finished] ^ 1;
      }

      while (v4 != v7);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
    v8 = v5 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  [(SKAction *)self setFinished:v8 & 1];
  return v8 & 1;
}

@end