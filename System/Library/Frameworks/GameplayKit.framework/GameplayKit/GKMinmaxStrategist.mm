@interface GKMinmaxStrategist
- (GKGameModel)gameModel;
- (GKMinmaxStrategist)init;
- (GKRandom)randomSource;
- (NSInteger)maxLookAheadDepth;
- (id)bestMoveForActivePlayer;
- (id)bestMoveForPlayer:(id)player;
- (id)randomMoveForPlayer:(id)player fromNumberOfBestMoves:(NSInteger)numMovesToConsider;
- (void)dealloc;
- (void)setGameModel:(id)model;
- (void)setMaxLookAheadDepth:(NSInteger)maxLookAheadDepth;
- (void)setRandomSource:(id)source;
@end

@implementation GKMinmaxStrategist

- (NSInteger)maxLookAheadDepth
{
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    return cppMinmax[12];
  }

  else
  {
    return 0;
  }
}

- (void)setMaxLookAheadDepth:(NSInteger)maxLookAheadDepth
{
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    cppMinmax[12] = maxLookAheadDepth;
  }
}

- (GKGameModel)gameModel
{
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    v4 = cppMinmax[9];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setGameModel:(id)model
{
  modelCopy = model;
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    v7 = modelCopy;
    objc_storeStrong(cppMinmax + 9, model);
    modelCopy = v7;
  }
}

- (GKRandom)randomSource
{
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    v4 = cppMinmax[11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRandomSource:(id)source
{
  sourceCopy = source;
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    v7 = sourceCopy;
    objc_storeStrong(cppMinmax + 11, source);
    sourceCopy = v7;
  }
}

- (GKMinmaxStrategist)init
{
  v3.receiver = self;
  v3.super_class = GKMinmaxStrategist;
  result = [(GKMinmaxStrategist *)&v3 init];
  if (result)
  {
    operator new();
  }

  return result;
}

- (void)dealloc
{
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    GKCMinmaxStrategist::~GKCMinmaxStrategist(cppMinmax);
    MEMORY[0x23EE6C500]();
  }

  v4.receiver = self;
  v4.super_class = GKMinmaxStrategist;
  [(GKMinmaxStrategist *)&v4 dealloc];
}

- (id)bestMoveForActivePlayer
{
  if (!self->_cppMinmax)
  {
    gameModel = 0;
LABEL_7:

    return gameModel;
  }

  gameModel = [(GKMinmaxStrategist *)self gameModel];
  if (!gameModel)
  {
    goto LABEL_7;
  }

  gameModel4 = gameModel;
  gameModel2 = [(GKMinmaxStrategist *)self gameModel];
  activePlayer = [gameModel2 activePlayer];
  if (!activePlayer)
  {
    v10 = 0;
LABEL_11:

    gameModel = v10;

    return gameModel;
  }

  gameModel3 = [(GKMinmaxStrategist *)self gameModel];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    cppMinmax = self->_cppMinmax;
    gameModel4 = [(GKMinmaxStrategist *)self gameModel];
    gameModel2 = [gameModel4 activePlayer];
    v10 = GKCMinmaxStrategist::findBestMoveForPlayer(cppMinmax, gameModel2, 0);
    goto LABEL_11;
  }

  gameModel = 0;

  return gameModel;
}

- (id)bestMoveForPlayer:(id)player
{
  v4 = player;
  if (!self->_cppMinmax)
  {
    goto LABEL_5;
  }

  gameModel = [(GKMinmaxStrategist *)self gameModel];
  if (!gameModel)
  {
    goto LABEL_6;
  }

  gameModel2 = [(GKMinmaxStrategist *)self gameModel];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    gameModel = GKCMinmaxStrategist::findBestMoveForPlayer(self->_cppMinmax, v4, 0);
  }

  else
  {
LABEL_5:
    gameModel = 0;
  }

LABEL_6:

  return gameModel;
}

- (id)randomMoveForPlayer:(id)player fromNumberOfBestMoves:(NSInteger)numMovesToConsider
{
  v6 = player;
  if (self->_cppMinmax && ([(GKMinmaxStrategist *)self gameModel], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && ([(GKMinmaxStrategist *)self gameModel], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    cppMinmax = self->_cppMinmax;
    cppMinmax[13] = numMovesToConsider;
    v11 = GKCMinmaxStrategist::findBestMoveForPlayer(cppMinmax, v6, 1);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end