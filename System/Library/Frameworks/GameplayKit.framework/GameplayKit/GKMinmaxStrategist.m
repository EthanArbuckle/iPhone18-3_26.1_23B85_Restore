@interface GKMinmaxStrategist
- (GKGameModel)gameModel;
- (GKMinmaxStrategist)init;
- (GKRandom)randomSource;
- (NSInteger)maxLookAheadDepth;
- (id)bestMoveForActivePlayer;
- (id)bestMoveForPlayer:(id)player;
- (id)randomMoveForPlayer:(id)player fromNumberOfBestMoves:(NSInteger)numMovesToConsider;
- (void)dealloc;
- (void)setGameModel:(id)a3;
- (void)setMaxLookAheadDepth:(NSInteger)maxLookAheadDepth;
- (void)setRandomSource:(id)a3;
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

- (void)setGameModel:(id)a3
{
  v5 = a3;
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    v7 = v5;
    objc_storeStrong(cppMinmax + 9, a3);
    v5 = v7;
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

- (void)setRandomSource:(id)a3
{
  v5 = a3;
  cppMinmax = self->_cppMinmax;
  if (cppMinmax)
  {
    v7 = v5;
    objc_storeStrong(cppMinmax + 11, a3);
    v5 = v7;
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
    v3 = 0;
LABEL_7:

    return v3;
  }

  v3 = [(GKMinmaxStrategist *)self gameModel];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [(GKMinmaxStrategist *)self gameModel];
  v6 = [v5 activePlayer];
  if (!v6)
  {
    v10 = 0;
LABEL_11:

    v3 = v10;

    return v3;
  }

  v7 = [(GKMinmaxStrategist *)self gameModel];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    cppMinmax = self->_cppMinmax;
    v4 = [(GKMinmaxStrategist *)self gameModel];
    v5 = [v4 activePlayer];
    v10 = GKCMinmaxStrategist::findBestMoveForPlayer(cppMinmax, v5, 0);
    goto LABEL_11;
  }

  v3 = 0;

  return v3;
}

- (id)bestMoveForPlayer:(id)player
{
  v4 = player;
  if (!self->_cppMinmax)
  {
    goto LABEL_5;
  }

  v5 = [(GKMinmaxStrategist *)self gameModel];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [(GKMinmaxStrategist *)self gameModel];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = GKCMinmaxStrategist::findBestMoveForPlayer(self->_cppMinmax, v4, 0);
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_6:

  return v5;
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