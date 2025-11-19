@interface GKBehavior
+ (GKBehavior)behaviorWithGoal:(GKGoal *)goal weight:(float)weight;
+ (GKBehavior)behaviorWithGoals:(NSArray *)goals;
+ (GKBehavior)behaviorWithGoals:(NSArray *)goals andWeights:(NSArray *)weights;
+ (GKBehavior)behaviorWithWeightedGoals:(NSDictionary *)weightedGoals;
- (GKBehavior)init;
- (GKBehavior)initWithGoal:(id)a3 weight:(float)a4;
- (GKBehavior)initWithGoals:(id)a3;
- (GKBehavior)initWithGoals:(id)a3 andWeights:(id)a4;
- (GKBehavior)initWithWeightedGoals:(id)a3;
- (NSNumber)objectForKeyedSubscript:(GKGoal *)goal;
- (__n128)getTotalForce:(uint64_t)a3 agent:(void *)a4;
- (float)weightForGoal:(GKGoal *)goal;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)removeAllGoals;
- (void)removeGoal:(GKGoal *)goal;
- (void)setObject:(NSNumber *)weight forKeyedSubscript:(GKGoal *)goal;
- (void)setWeight:(float)weight forGoal:(GKGoal *)goal;
@end

@implementation GKBehavior

- (__n128)getTotalForce:(uint64_t)a3 agent:(void *)a4
{
  v6 = a4;
  if ([a1 goalCount] < 1)
  {
    v13 = 0u;
  }

  else
  {
    v7 = 0;
    [a1[1] objectAtIndex:{0, 0, 0}];
    while (1)
      v8 = {;
      v9 = [a1[2] objectAtIndex:v7];
      [v9 floatValue];
      v14 = v10;

      if (v8)
      {
        [v8 getForce:v6 agent:a2];
        v13 = vmlaq_n_f32(v13, v11, v14);
      }

      if ([a1 goalCount] <= ++v7)
      {
        break;
      }

      [a1[1] objectAtIndex:{v7, *&v13}];
    }
  }

  return v13;
}

- (GKBehavior)init
{
  v8.receiver = self;
  v8.super_class = GKBehavior;
  v2 = [(GKBehavior *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    goals = v2->_goals;
    v2->_goals = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    weights = v2->_weights;
    v2->_weights = v5;
  }

  return v2;
}

+ (GKBehavior)behaviorWithGoal:(GKGoal *)goal weight:(float)weight
{
  v5 = goal;
  v6 = [GKBehavior alloc];
  *&v7 = weight;
  v8 = [(GKBehavior *)v6 initWithGoal:v5 weight:v7];

  return v8;
}

- (GKBehavior)initWithGoal:(id)a3 weight:(float)a4
{
  v6 = a3;
  v7 = [(GKBehavior *)self init];
  v9 = v7;
  if (v7)
  {
    *&v8 = a4;
    [(GKBehavior *)v7 setWeight:v6 forGoal:v8];
  }

  return v9;
}

+ (GKBehavior)behaviorWithGoals:(NSArray *)goals
{
  v4 = goals;
  v5 = [[a1 alloc] initWithGoals:v4];

  return v5;
}

- (GKBehavior)initWithGoals:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKBehavior *)self init];
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          LODWORD(v8) = 1.0;
          [(GKBehavior *)v5 setWeight:*(*(&v14 + 1) + 8 * v11++) forGoal:v8, v14];
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (GKBehavior)behaviorWithGoals:(NSArray *)goals andWeights:(NSArray *)weights
{
  v6 = weights;
  v7 = goals;
  v8 = [[a1 alloc] initWithGoals:v7 andWeights:v6];

  return v8;
}

- (GKBehavior)initWithGoals:(id)a3 andWeights:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKBehavior *)self init];
  if (v8 && [v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:v9];
      [v10 floatValue];
      v12 = v11;
      v13 = [v6 objectAtIndexedSubscript:v9];
      LODWORD(v14) = v12;
      [(GKBehavior *)v8 setWeight:v13 forGoal:v14];

      ++v9;
    }

    while ([v6 count] > v9);
  }

  return v8;
}

+ (GKBehavior)behaviorWithWeightedGoals:(NSDictionary *)weightedGoals
{
  v4 = weightedGoals;
  v5 = [[a1 alloc] initWithWeightedGoals:v4];

  return v5;
}

- (GKBehavior)initWithWeightedGoals:(id)a3
{
  v4 = a3;
  v5 = [(GKBehavior *)self init];
  if (v5)
  {
    v6 = [v4 allKeys];
    v7 = [v4 allValues];
    if ([v6 count])
    {
      v8 = 0;
      do
      {
        v9 = [v7 objectAtIndexedSubscript:v8];
        [v9 floatValue];
        v11 = v10;
        v12 = [v6 objectAtIndexedSubscript:v8];
        LODWORD(v13) = v11;
        [(GKBehavior *)v5 setWeight:v12 forGoal:v13];

        ++v8;
      }

      while ([v6 count] > v8);
    }
  }

  return v5;
}

- (float)weightForGoal:(GKGoal *)goal
{
  v4 = [(NSMutableArray *)self->_goals indexOfObject:goal];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  v6 = [(NSMutableArray *)self->_weights objectAtIndexedSubscript:v4];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (void)removeGoal:(GKGoal *)goal
{
  v4 = [(NSMutableArray *)self->_goals indexOfObject:goal];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMutableArray *)self->_goals removeObjectAtIndex:v4];
    weights = self->_weights;

    [(NSMutableArray *)weights removeObjectAtIndex:v5];
  }
}

- (void)removeAllGoals
{
  [(NSMutableArray *)self->_goals removeAllObjects];
  weights = self->_weights;

  [(NSMutableArray *)weights removeAllObjects];
}

- (void)setObject:(NSNumber *)weight forKeyedSubscript:(GKGoal *)goal
{
  v6 = goal;
  [(NSNumber *)weight floatValue];
  [(GKBehavior *)self setWeight:v6 forGoal:?];
}

- (void)setWeight:(float)weight forGoal:(GKGoal *)goal
{
  v12 = goal;
  v6 = [(NSMutableArray *)self->_goals indexOfObject:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_goals addObject:v12];
    weights = self->_weights;
    *&v9 = weight;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [(NSMutableArray *)weights addObject:v10];
  }

  else
  {
    v11 = v6;
    *&v7 = weight;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [(NSMutableArray *)self->_weights setObject:v10 atIndexedSubscript:v11];
  }
}

- (NSNumber)objectForKeyedSubscript:(GKGoal *)goal
{
  v4 = [(NSMutableArray *)self->_goals indexOfObject:goal];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_weights objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (id)copy
{
  v3 = MEMORY[0x23EE6C350](self, a2);

  return [(GKBehavior *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GKBehavior);
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_goals];
  goals = v4->_goals;
  v4->_goals = v5;

  v7 = [MEMORY[0x277CBEB18] arrayWithArray:self->_weights];
  weights = v4->_weights;
  v4->_weights = v7;

  return v4;
}

@end