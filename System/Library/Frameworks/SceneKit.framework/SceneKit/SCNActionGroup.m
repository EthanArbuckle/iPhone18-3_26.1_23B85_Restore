@interface SCNActionGroup
+ (id)groupWithActions:(id)a3;
- (BOOL)finished;
- (BOOL)isCustom;
- (SCNActionGroup)init;
- (SCNActionGroup)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNActionGroup

- (SCNActionGroup)init
{
  v3.receiver = self;
  v3.super_class = SCNActionGroup;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionGroup)initWithCoder:(id)a3
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = SCNActionGroup;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionGroup;
  [(SCNAction *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNActionGroup;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_actions forKey:@"_actions"];
}

- (BOOL)isCustom
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  actions = self->_actions;
  v3 = [(NSArray *)actions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(actions);
        }

        if ([*(*(&v8 + 1) + 8 * v6) isCustom])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)actions countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

+ (id)groupWithActions:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (a3 && [a3 count])
  {
    v4 = objc_alloc_init(SCNActionGroup);
    objc_opt_class();
    v5 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:{+[SCNActionSequence sequenceWithActions:](SCNActionSequence, "sequenceWithActions:", v9)}];
          }

          else
          {
            v10 = [v9 copy];
            [v5 addObject:v10];
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v6);
    }

    v11 = [v5 copy];
    v4->_actions = v11;
    memset(v14, 0, sizeof(v14));
    if ([(NSArray *)v11 countByEnumeratingWithState:v14 objects:v19 count:16])
    {
      [**(&v14[0] + 1) caction];
      operator new();
    }

    [(SCNAction *)v4 setDuration:0.0];
  }

  else
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SCNActionGroup groupWithActions:v12];
    }

    v21[0] = [SCNAction waitForDuration:0.0];
    return +[SCNActionGroup groupWithActions:](SCNActionGroup, "groupWithActions:", [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1]);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCNActionGroup groupWithActions:self->_actions];
  [(SCNAction *)v4 setTimingMode:[(SCNAction *)self timingMode]];
  [(SCNAction *)v4 setTimingFunction:[(SCNAction *)self timingFunction]];
  [(SCNAction *)self speed];
  [(SCNAction *)v4 setSpeed:?];
  [(SCNAction *)self duration];
  [(SCNAction *)v4 setDuration:?];
  return v4;
}

- (id)reversedAction
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_actions, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  actions = self->_actions;
  v5 = [(NSArray *)actions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(actions);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "reversedAction")}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)actions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [SCNActionGroup groupWithActions:v3];
}

- (BOOL)finished
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  actions = self->_actions;
  v4 = [(NSArray *)actions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(actions);
        }

        v6 |= [*(*(&v11 + 1) + 8 * i) finished] ^ 1;
      }

      v5 = [(NSArray *)actions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
    v9 = v6 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  [(SCNAction *)self setFinished:v9 & 1];
  return v9 & 1;
}

@end