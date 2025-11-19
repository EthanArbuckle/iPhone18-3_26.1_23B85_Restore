@interface TUIGridCoord
- (TUIGridCoord)initWithGrid:(id)a3 columns:(_NSRange)a4 rows:(_NSRange)a5;
- (double)height;
- (double)width;
@end

@implementation TUIGridCoord

- (TUIGridCoord)initWithGrid:(id)a3 columns:(_NSRange)a4 rows:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = TUIGridCoord;
  v11 = [(TUIGridCoord *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_grid, v10);
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