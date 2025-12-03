@interface FMCellMapPrediction
- (FMCellMapPrediction)initWithNeighborCells:(id)cells currentCell:(id)cell;
@end

@implementation FMCellMapPrediction

- (FMCellMapPrediction)initWithNeighborCells:(id)cells currentCell:(id)cell
{
  cellsCopy = cells;
  cellCopy = cell;
  v13.receiver = self;
  v13.super_class = FMCellMapPrediction;
  v8 = [(FMCellMapPrediction *)&v13 init];
  neighborCells = v8->_neighborCells;
  v8->_neighborCells = cellsCopy;
  v10 = cellsCopy;

  currentCell = v8->_currentCell;
  v8->_currentCell = cellCopy;

  return v8;
}

@end