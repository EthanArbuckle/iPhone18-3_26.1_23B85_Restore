@interface SCNActionSequence
+ (id)sequenceWithActions:(id)actions;
- (BOOL)isCustom;
- (SCNActionSequence)init;
- (SCNActionSequence)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNActionSequence

- (SCNActionSequence)init
{
  v3.receiver = self;
  v3.super_class = SCNActionSequence;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionSequence)initWithCoder:(id)coder
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = SCNActionSequence;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionSequence;
  [(SCNAction *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNActionSequence;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedLong:", *(self->_mycaction + 21)), @"_mycaction->_animIndex"}];
  [coder encodeObject:self->_actions forKey:@"_actions"];
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

+ (id)sequenceWithActions:(id)actions
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (actions && [actions count])
  {
    objc_opt_class();
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(actions, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [actions countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(actions);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v4 addObject:{+[SCNActionGroup groupWithActions:](SCNActionGroup, "groupWithActions:", v9)}];
          }

          else
          {
            v10 = [v9 copy];
            [v4 addObject:v10];
          }
        }

        v6 = [actions countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v6);
    }

    v11 = objc_alloc_init(SCNActionSequence);
    v12 = [v4 copy];
    v11->_actions = v12;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      v16 = 0.0;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v24 + 1) + 8 * j);
          mycaction = v11->_mycaction;
          caction = [v18 caction];
          std::vector<Statement *>::push_back[abi:nn200100](mycaction + 144, &caction);
          [v18 duration];
          v16 = v16 + v20;
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 0.0;
    }

    [(SCNAction *)v11 setDuration:v16];
  }

  else
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SCNActionSequence sequenceWithActions:v21];
    }

    v34[0] = [SCNAction waitForDuration:0.0];
    return +[SCNActionSequence sequenceWithActions:](SCNActionSequence, "sequenceWithActions:", [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1]);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SCNActionSequence sequenceWithActions:self->_actions];
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
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_actions, "count")}];
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

        [v3 insertObject:objc_msgSend(*(*(&v10 + 1) + 8 * v8++) atIndex:{"reversedAction"), 0}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)actions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [SCNActionSequence sequenceWithActions:v3];
}

@end