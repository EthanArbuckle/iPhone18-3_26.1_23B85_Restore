@interface TUIGridCoord
- (TUIGridCoord)initWithGrid:(id)grid columns:(_NSRange)columns rows:(_NSRange)rows;
- (double)height;
- (double)width;
@end

@implementation TUIGridCoord

- (TUIGridCoord)initWithGrid:(id)grid columns:(_NSRange)columns rows:(_NSRange)rows
{
  length = rows.length;
  location = rows.location;
  v7 = columns.length;
  v8 = columns.location;
  gridCopy = grid;
  v14.receiver = self;
  v14.super_class = TUIGridCoord;
  v11 = [(TUIGridCoord *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_grid, gridCopy);
    v12->_columns.location = v8;
    v12->_columns.length = v7;
    v12->_rows.location = location;
    v12->_rows.length = length;
  }

  return v12;
}

- (double)width
{
  WeakRetained = objc_loadWeakRetained(&self->_grid);
  [WeakRetained _lengthForColumns:{self->_columns.location, self->_columns.length}];
  v5 = v4;

  return v5;
}

- (double)height
{
  WeakRetained = objc_loadWeakRetained(&self->_grid);
  [WeakRetained _heightForRows:{self->_rows.location, self->_rows.length}];
  v5 = v4;

  return v5;
}

@end