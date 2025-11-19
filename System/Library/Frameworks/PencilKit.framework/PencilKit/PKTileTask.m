@interface PKTileTask
- (PKTileTask)initWithStrokes:(id)a3 additionalStrokes:(id)a4 intoTile:(id)a5 completionBlock:(id)a6;
- (id)description;
@end

@implementation PKTileTask

- (PKTileTask)initWithStrokes:(id)a3 additionalStrokes:(id)a4 intoTile:(id)a5 completionBlock:(id)a6
{
  v10 = a5;
  v25.receiver = self;
  v25.super_class = PKTileTask;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(PKTileTask *)&v25 init];
  v15 = [v13 copy];

  renderStrokes = v14->_renderStrokes;
  v14->_renderStrokes = v15;

  v17 = [v12 copy];
  additionalStrokes = v14->_additionalStrokes;
  v14->_additionalStrokes = v17;

  tile = v14->_tile;
  v14->_tile = v10;
  v20 = v10;

  if (v20)
  {
    v21 = atomic_load(v20 + 2);
  }

  else
  {
    v21 = 0;
  }

  v14->_renderCount = v21;
  v22 = _Block_copy(v11);

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

  v11 = [v3 stringWithFormat:@"<%@ %p %@ additionalStrokes:%ld renderCount:%ld>", v5, self, v6, v9, renderCount];

  return v11;
}

@end