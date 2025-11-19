@interface GKHybridStrategist
- (BOOL)validateGameModel:(id)a3;
- (BOOL)validateRandomSource;
- (GKGameModel)gameModel;
- (GKHybridStrategist)init;
- (GKRandom)randomSource;
- (id)bestMoveForActivePlayer;
- (unint64_t)budget;
- (unint64_t)explorationParameter;
- (unint64_t)maxLookAheadDepth;
- (void)dealloc;
- (void)setBudget:(unint64_t)a3;
- (void)setExplorationParameter:(unint64_t)a3;
- (void)setGameModel:(id)a3;
- (void)setMaxLookAheadDepth:(unint64_t)a3;
- (void)setRandomSource:(id)a3;
@end

@implementation GKHybridStrategist

- (GKGameModel)gameModel
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    v4 = hybridStrategist[7];
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
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    v10 = v4;
    if (v4)
    {
      v4 = [(GKHybridStrategist *)self validateGameModel:v4];
      v5 = v10;
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = self->_hybridStrategist;
      v8 = v10;
      v9 = v7[7];
      v7[7] = v8;
    }

    else
    {
      v9 = hybridStrategist[7];
      hybridStrategist[7] = 0;
    }

    v5 = v10;
  }

LABEL_7:

  MEMORY[0x2821F96F8](v4, v5);
}

- (GKRandom)randomSource
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    v4 = hybridStrategist[8];
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
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    v7 = v5;
    objc_storeStrong(hybridStrategist + 8, a3);
    v5 = v7;
  }
}

- (unint64_t)budget
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    return hybridStrategist[9];
  }

  else
  {
    return 0;
  }
}

- (void)setBudget:(unint64_t)a3
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    hybridStrategist[9] = a3;
  }
}

- (unint64_t)explorationParameter
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    return hybridStrategist[10];
  }

  else
  {
    return 0;
  }
}

- (void)setExplorationParameter:(unint64_t)a3
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    hybridStrategist[10] = a3;
  }
}

- (unint64_t)maxLookAheadDepth
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    return hybridStrategist[11];
  }

  else
  {
    return 0;
  }
}

- (void)setMaxLookAheadDepth:(unint64_t)a3
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    hybridStrategist[11] = a3;
  }
}

- (GKHybridStrategist)init
{
  v3.receiver = self;
  v3.super_class = GKHybridStrategist;
  if ([(GKHybridStrategist *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  hybridStrategist = self->_hybridStrategist;
  if (hybridStrategist)
  {
    GKCHybridStrategist::~GKCHybridStrategist(hybridStrategist);
    MEMORY[0x23EE6C500]();
  }

  v4.receiver = self;
  v4.super_class = GKHybridStrategist;
  [(GKHybridStrategist *)&v4 dealloc];
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

- (BOOL)validateRandomSource
{
  v2 = [(GKHybridStrategist *)self randomSource];

  if (!v2)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"No random source set for GKMonteCarloStrategist random source must be set before attempting to find a move" userInfo:0];;
    objc_exception_throw(v4);
  }

  return 1;
}

- (id)bestMoveForActivePlayer
{
  if (self->_hybridStrategist)
  {
    v3 = [(GKHybridStrategist *)self gameModel];
    if ([(GKHybridStrategist *)self validateGameModel:v3])
    {
      v4 = [(GKHybridStrategist *)self validateRandomSource];

      if (v4)
      {
        GKCHybridStrategist::bestMoveForActivePlayer(self->_hybridStrategist);
      }
    }

    else
    {
    }
  }

  return 0;
}

@end