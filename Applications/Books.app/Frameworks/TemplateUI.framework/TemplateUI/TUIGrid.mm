@interface TUIGrid
- (TUIGrid)initWithInsets:(UIEdgeInsets)insets columns:(unint64_t)columns spacing:(double)spacing;
- (double)_heightForRows:(_NSRange)rows;
- (double)_horzOffsetForIndex:(unint64_t)index;
- (double)_lengthForColumns:(_NSRange)columns;
- (double)_vertOffsetForIndex:(unint64_t)index;
- (id)newGridCoordWithColumns:(_NSRange)columns rows:(_NSRange)rows;
@end

@implementation TUIGrid

- (TUIGrid)initWithInsets:(UIEdgeInsets)insets columns:(unint64_t)columns spacing:(double)spacing
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v12.receiver = self;
  v12.super_class = TUIGrid;
  result = [(TUIGrid *)&v12 init];
  if (result)
  {
    *&result->_width = vdupq_n_s64(0x7FF8000000000000uLL);
    result->_insets.top = top;
    result->_insets.left = left;
    result->_insets.bottom = bottom;
    result->_insets.right = right;
    result->_columns = columns;
    result->_spacing = spacing;
  }

  return result;
}

- (id)newGridCoordWithColumns:(_NSRange)columns rows:(_NSRange)rows
{
  if (rows.location == 0x7FFFFFFFFFFFFFFFLL || rows.location + rows.length > 3 || columns.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  length = columns.length;
  location = columns.location;
  if (columns.location + columns.length > ((2 * self->_columns) | 1))
  {
    return 0;
  }

  v10 = rows.length;
  v11 = rows.location;
  v12 = [TUIGridCoord alloc];

  return [(TUIGridCoord *)v12 initWithGrid:self columns:location rows:length, v11, v10];
}

- (double)_horzOffsetForIndex:(unint64_t)index
{
  result = self->_width;
  if (!index)
  {
    return 0.0;
  }

  columns = self->_columns;
  if (2 * columns + 2 > index)
  {
    left = self->_insets.left;
    spacing = self->_spacing;
    v7 = fmax((result - left - self->_insets.right + spacing) / columns - spacing, 1.0);
    v8 = left + (spacing + v7) * ((index - 1) >> 1);
    if (index)
    {
      return round(v8);
    }

    else
    {
      return round(v7 + v8);
    }
  }

  return result;
}

- (double)_vertOffsetForIndex:(unint64_t)index
{
  result = self->_height;
  if (!index)
  {
    return 0.0;
  }

  if (index <= 2)
  {
    if (index == 1)
    {
      return self->_insets.top;
    }

    else
    {
      return result - self->_insets.bottom;
    }
  }

  return result;
}

- (double)_lengthForColumns:(_NSRange)columns
{
  location = columns.location;
  [(TUIGrid *)self _horzOffsetForIndex:columns.location + columns.length];
  v6 = v5;
  [(TUIGrid *)self _horzOffsetForIndex:location];
  return v6 - v7;
}

- (double)_heightForRows:(_NSRange)rows
{
  location = rows.location;
  [(TUIGrid *)self _vertOffsetForIndex:rows.location + rows.length];
  v6 = v5;
  [(TUIGrid *)self _vertOffsetForIndex:location];
  return v6 - v7;
}

@end