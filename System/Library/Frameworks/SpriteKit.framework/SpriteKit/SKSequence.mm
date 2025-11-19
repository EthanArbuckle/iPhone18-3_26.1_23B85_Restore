@interface SKSequence
+ (id)sequenceWithActions:(id)a3;
- (SKSequence)init;
- (SKSequence)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKSequence

- (SKSequence)init
{
  v3.receiver = self;
  v3.super_class = SKSequence;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKSequence)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKSequence;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKSequence;
  [(SKAction *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(self->_mycaction + 17)];
  [v4 encodeObject:v5 forKey:@"_mycaction->_animIndex"];

  [v4 encodeObject:self->_actions forKey:@"_actions"];
}

+ (id)sequenceWithActions:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    objc_opt_class();
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v11 = [SKGroup groupWithActions:v10];
          }

          else
          {
            v11 = [v10 copy];
          }

          [v5 addObject:v11];
        }

        v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }

    v12 = objc_alloc_init(SKSequence);
    v13 = [v5 copy];
    actions = v12->_actions;
    v12->_actions = v13;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v12->_actions;
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
          SKCSequence::addCAction(v12->_mycaction, [v20 caction]);
          [v20 duration];
          v18 = v18 + v21;
        }

        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    [(SKAction *)v12 setDuration:v18];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SKSequence sequenceWithActions:self->_actions];
  [(SKAction *)self speed];
  [v4 setSpeed:?];
  [v4 setTimingMode:{-[SKAction timingMode](self, "timingMode")}];
  v5 = [(SKAction *)self timingFunction];
  [v4 setTimingFunction:v5];

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

        v8 = [*(*(&v11 + 1) + 8 * i) reversedAction];
        [v3 insertObject:v8 atIndex:0];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [SKSequence sequenceWithActions:v3];

  return v9;
}

@end