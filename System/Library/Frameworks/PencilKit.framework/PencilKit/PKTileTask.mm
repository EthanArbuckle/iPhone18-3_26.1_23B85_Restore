@interface PKTileTask
- (PKTileTask)initWithStrokes:(id)strokes additionalStrokes:(id)additionalStrokes intoTile:(id)tile completionBlock:(id)block;
- (id)description;
@end

@implementation PKTileTask

- (PKTileTask)initWithStrokes:(id)strokes additionalStrokes:(id)additionalStrokes intoTile:(id)tile completionBlock:(id)block
{
  tileCopy = tile;
  v25.receiver = self;
  v25.super_class = PKTileTask;
  blockCopy = block;
  additionalStrokesCopy = additionalStrokes;
  strokesCopy = strokes;
  v14 = [(PKTileTask *)&v25 init];
  v15 = [strokesCopy copy];

  renderStrokes = v14->_renderStrokes;
  v14->_renderStrokes = v15;

  v17 = [additionalStrokesCopy copy];
  additionalStrokes = v14->_additionalStrokes;
  v14->_additionalStrokes = v17;

  tile = v14->_tile;
  v14->_tile = tileCopy;
  v20 = tileCopy;

  if (v20)
  {
    v21 = atomic_load(v20 + 2);
  }

  else
  {
    v21 = 0;
  }

  v14->_renderCount = v21;
  v22 = _Block_copy(blockCopy);

  completionBlock = v14->_completionBlock;
  v14->_completionBlock = v22;

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    v6 = self->_tile;
    additionalStrokes = self->_additionalStrokes;
  }

  else
  {
    v6 = 0;
    additionalStrokes = 0;
  }

  v8 = additionalStrokes;
  v9 = [(NSArray *)v8 count];
  if (self)
  {
    renderCount = self->_renderCount;
  }

  else
  {
    renderCount = 0;
  }

  renderCount = [v3 stringWithFormat:@"<%@ %p %@ additionalStrokes:%ld renderCount:%ld>", v5, self, v6, v9, renderCount];

  return renderCount;
}

@end