@interface GKMonteCarloStrategist
- (BOOL)validateGameModel:(id)a3;
- (GKGameModel)gameModel;
- (GKMonteCarloStrategist)init;
- (GKRandom)randomSource;
- (NSUInteger)budget;
- (NSUInteger)explorationParameter;
- (id)bestMoveForActivePlayer;
- (void)dealloc;
- (void)setBudget:(NSUInteger)budget;
- (void)setExplorationParameter:(NSUInteger)explorationParameter;
- (void)setGameModel:(id)a3;
- (void)setRandomSource:(id)a3;
@end

@implementation GKMonteCarloStrategist

- (GKGameModel)gameModel
{
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {
    v4 = monteCarloStrategist->var0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setGameModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {
    v10 = v4;
    if (v4)
    {
      v4 = [(GKMonteCarloStrategist *)self validateGameModel:v4];
      v5 = v10;
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = self->_monteCarloStrategist;
      v8 = v10;
      var0 = v7->var0;
      v7->var0 = v8;
    }

    else
    {
      var0 = monteCarloStrategist->var0;
      monteCarloStrategist->var0 = 0;
    }

    v5 = v10;
  }

LABEL_7:

  MEMORY[0x2821F96F8](v4, v5);
}

- (GKRandom)randomSource
{
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {
    v4 = monteCarloStrategist->var1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRandomSource:(id)a3
{
  v5 = a3;
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {
    v7 = v5;
    objc_storeStrong(&monteCarloStrategist->var1, a3);
    v5 = v7;
  }
}

- (NSUInteger)budget
{
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {
    return monteCarloStrategist->var2;
  }

  else
  {
    return 0;
  }
}

- (void)setBudget:(NSUInteger)budget
{
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {
    monteCarloStrategist->var2 = budget;
  }
}

- (NSUInteger)explorationParameter
{
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {
    return monteCarloStrategist->var3;
  }

  else
  {
    return 0;
  }
}

- (void)setExplorationParameter:(NSUInteger)explorationParameter
{
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {
    monteCarloStrategist->var3 = explorationParameter;
  }
}

- (GKMonteCarloStrategist)init
{
  v3.receiver = self;
  v3.super_class = GKMonteCarloStrategist;
  if ([(GKMonteCarloStrategist *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  monteCarloStrategist = self->_monteCarloStrategist;
  if (monteCarloStrategist)
  {

    MEMORY[0x23EE6C500](monteCarloStrategist, 0x1080C4018622206);
  }

  v4.receiver = self;
  v4.super_class = GKMonteCarloStrategist;
  [(GKMonteCarloStrategist *)&v4 dealloc];
}

- (BOOL)validateGameModel:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"No game model set for GKMonteCarloStrategist game model must be set before attempting to find a move" userInfo:0];;
    objc_exception_throw(v5);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@ must implement isWinForPlayer to work with GKMonteCarloStrategist", v8];

    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  return 1;
}

- (id)bestMoveForActivePlayer
{
  if (self->_monteCarloStrategist)
  {
    v3 = [(GKMonteCarloStrategist *)self gameModel];
    v4 = [(GKMonteCarloStrategist *)self validateGameModel:v3];

    if (v4)
    {
      v5 = [(GKMonteCarloStrategist *)self randomSource];

      if (!v5)
      {
        v6 = objc_alloc_init(GKARC4RandomSource);
        [(GKMonteCarloStrategist *)self setRandomSource:v6];
      }

      GKCMonteCarloStrategist::bestMoveForActivePlayer(self->_monteCarloStrategist);
    }
  }

  return 0;
}

@end