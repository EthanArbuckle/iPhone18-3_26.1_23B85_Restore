@interface _TUISmartGridDebugLayerConfiguration
- (CGSize)size;
- (_TUISmartGridDebugLayerConfiguration)initWithSize:(CGSize)a3 columnSystem:(const ColumnSystem *)a4;
- (id).cxx_construct;
- (void)configureLayer:(id)a3;
@end

@implementation _TUISmartGridDebugLayerConfiguration

- (_TUISmartGridDebugLayerConfiguration)initWithSize:(CGSize)a3 columnSystem:(const ColumnSystem *)a4
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = _TUISmartGridDebugLayerConfiguration;
  result = [(_TUISmartGridDebugLayerConfiguration *)&v14 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    v8 = *&a4->_containerWidth;
    v9 = *&a4->_rows;
    v10 = *&a4->_insets.left;
    *&result->_columnSystem._insets.right = *&a4->_insets.right;
    *&result->_columnSystem._insets.left = v10;
    *&result->_columnSystem._rows = v9;
    *&result->_columnSystem._containerWidth = v8;
    v11 = *&a4->_specifiedColumnSpacing;
    v12 = *&a4->_computedColumnSpacing;
    v13 = *&a4->_layoutDirection;
    result->_columnSystem._columnsPerPage = a4->_columnsPerPage;
    *&result->_columnSystem._layoutDirection = v13;
    *&result->_columnSystem._computedColumnSpacing = v12;
    *&result->_columnSystem._specifiedColumnSpacing = v11;
  }

  return result;
}

- (void)configureLayer:(id)a3
{
  v14 = a3;
  v4 = +[UIColor redColor];
  v5 = [v4 colorWithAlphaComponent:0.1];

  v6 = +[UIColor redColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  [v14 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
  v8 = objc_opt_new();
  if (self->_columnSystem._columns)
  {
    v9 = 0;
    do
    {
      sub_67BF8(&self->_columnSystem, v9, 1uLL, 1);
      v11 = v10;
      v12 = sub_61938(&self->_columnSystem, v9, 1uLL);
      v13 = +[CALayer layer];
      [v13 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];
      [v13 setFrame:{v11, 0.0, v11 + v12 - v11, self->_size.height}];
      [v8 addObject:v13];

      ++v9;
    }

    while (v9 < self->_columnSystem._columns);
  }

  [v14 setSublayers:v8];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  v2 = *&UIEdgeInsetsZero.bottom;
  *(self + 2) = *&UIEdgeInsetsZero.top;
  *(self + 3) = v2;
  *(self + 15) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

@end