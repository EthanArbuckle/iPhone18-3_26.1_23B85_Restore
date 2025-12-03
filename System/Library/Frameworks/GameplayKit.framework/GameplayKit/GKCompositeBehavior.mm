@interface GKCompositeBehavior
+ (GKCompositeBehavior)behaviorWithBehaviors:(NSArray *)behaviors;
+ (GKCompositeBehavior)behaviorWithBehaviors:(NSArray *)behaviors andWeights:(NSArray *)weights;
- (GKCompositeBehavior)initWithBehaviors:(id)behaviors;
- (GKCompositeBehavior)initWithBehaviors:(id)behaviors andWeights:(id)weights;
- (NSNumber)objectForKeyedSubscript:(GKBehavior *)behavior;
- (__n128)getTotalForce:(uint64_t)force agent:(void *)agent;
- (float)weightForBehavior:(GKBehavior *)behavior;
- (void)removeAllBehaviors;
- (void)removeBehavior:(GKBehavior *)behavior;
- (void)setObject:(NSNumber *)weight forKeyedSubscript:(GKBehavior *)behavior;
- (void)setWeight:(float)weight forBehavior:(GKBehavior *)behavior;
@end

@implementation GKCompositeBehavior

- (__n128)getTotalForce:(uint64_t)force agent:(void *)agent
{
  agentCopy = agent;
  v16.receiver = self;
  v16.super_class = GKCompositeBehavior;
  objc_msgSendSuper2(&v16, sel_getTotalForce_agent_, agentCopy, a2);
  v14 = v7;
  if ([self behaviorCount] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = [self[3] objectAtIndex:{v8, *&v14}];
      v10 = [self[4] objectAtIndex:v8];
      [v10 floatValue];
      v15 = v11;

      if (v9)
      {
        [v9 getTotalForce:agentCopy agent:a2];
        v14 = vmlaq_n_f32(v14, v12, v15);
      }

      ++v8;
    }

    while ([self behaviorCount] > v8);
  }

  return v14;
}

+ (GKCompositeBehavior)behaviorWithBehaviors:(NSArray *)behaviors
{
  v4 = behaviors;
  v5 = [[self alloc] initWithBehaviors:v4];

  return v5;
}

- (GKCompositeBehavior)initWithBehaviors:(id)behaviors
{
  behaviorsCopy = behaviors;
  v15.receiver = self;
  v15.super_class = GKCompositeBehavior;
  v5 = [(GKBehavior *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:behaviorsCopy];
    subBehaviors = v5->_subBehaviors;
    v5->_subBehaviors = v6;

    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v5->_subBehaviors, "count")}];
    subBehaviorWeights = v5->_subBehaviorWeights;
    v5->_subBehaviorWeights = v8;

    if ([(NSMutableArray *)v5->_subBehaviors count])
    {
      v11 = 0;
      do
      {
        v12 = v5->_subBehaviorWeights;
        LODWORD(v10) = 1.0;
        v13 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
        [(NSMutableArray *)v12 addObject:v13];

        ++v11;
      }

      while ([(NSMutableArray *)v5->_subBehaviors count]> v11);
    }
  }

  return v5;
}

+ (GKCompositeBehavior)behaviorWithBehaviors:(NSArray *)behaviors andWeights:(NSArray *)weights
{
  v6 = weights;
  v7 = behaviors;
  v8 = [[self alloc] initWithBehaviors:v7 andWeights:v6];

  return v8;
}

- (GKCompositeBehavior)initWithBehaviors:(id)behaviors andWeights:(id)weights
{
  weightsCopy = weights;
  v7 = [(GKCompositeBehavior *)self initWithBehaviors:behaviors];
  if (v7 && [weightsCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [weightsCopy objectAtIndexedSubscript:v8];
      [(NSMutableArray *)v7->_subBehaviorWeights setObject:v9 atIndexedSubscript:v8];

      ++v8;
    }

    while ([weightsCopy count] > v8);
  }

  return v7;
}

- (void)setWeight:(float)weight forBehavior:(GKBehavior *)behavior
{
  v12 = behavior;
  v6 = [(NSMutableArray *)self->_subBehaviors indexOfObject:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_subBehaviors addObject:v12];
    subBehaviorWeights = self->_subBehaviorWeights;
    *&v9 = weight;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [(NSMutableArray *)subBehaviorWeights addObject:v10];
  }

  else
  {
    v11 = v6;
    *&v7 = weight;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [(NSMutableArray *)self->_subBehaviorWeights setObject:v10 atIndexedSubscript:v11];
  }
}

- (float)weightForBehavior:(GKBehavior *)behavior
{
  v4 = [(NSMutableArray *)self->_subBehaviors indexOfObject:behavior];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  v6 = [(NSMutableArray *)self->_subBehaviorWeights objectAtIndexedSubscript:v4];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (void)removeBehavior:(GKBehavior *)behavior
{
  v4 = [(NSMutableArray *)self->_subBehaviors indexOfObject:behavior];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMutableArray *)self->_subBehaviors removeObjectAtIndex:v4];
    subBehaviorWeights = self->_subBehaviorWeights;

    [(NSMutableArray *)subBehaviorWeights removeObjectAtIndex:v5];
  }
}

- (void)removeAllBehaviors
{
  [(NSMutableArray *)self->_subBehaviors removeAllObjects];
  subBehaviorWeights = self->_subBehaviorWeights;

  [(NSMutableArray *)subBehaviorWeights removeAllObjects];
}

- (void)setObject:(NSNumber *)weight forKeyedSubscript:(GKBehavior *)behavior
{
  v6 = behavior;
  [(NSNumber *)weight floatValue];
  [(GKCompositeBehavior *)self setWeight:v6 forBehavior:?];
}

- (NSNumber)objectForKeyedSubscript:(GKBehavior *)behavior
{
  v4 = [(NSMutableArray *)self->_subBehaviors indexOfObject:behavior];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  }

  else
  {
    v5 = [(NSMutableArray *)self->_subBehaviorWeights objectAtIndexedSubscript:v4];
  }

  return v5;
}

@end