@interface FMCellMapPrediction
- (FMCellMapPrediction)initWithNeighborCells:(id)a3 currentCell:(id)a4;
@end

@implementation FMCellMapPrediction

- (FMCellMapPrediction)initWithNeighborCells:(id)a3 currentCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = FMCellMapPrediction;
  v8 = [(FMCellMapPrediction *)&v13 init];
  neighborCells = v8->_neighborCells;
  v8->_neighborCells = v6;
  v10 = v6;

  currentCell = v8->_currentCell;
  v8->_currentCell = v7;

  return v8;
}

@end