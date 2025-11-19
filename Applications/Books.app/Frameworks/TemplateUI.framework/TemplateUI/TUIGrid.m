@interface TUIGrid
- (TUIGrid)initWithInsets:(UIEdgeInsets)a3 columns:(unint64_t)a4 spacing:(double)a5;
- (double)_heightForRows:(_NSRange)a3;
- (double)_horzOffsetForIndex:(unint64_t)a3;
- (double)_lengthForColumns:(_NSRange)a3;
- (double)_vertOffsetForIndex:(unint64_t)a3;
- (id)newGridCoordWithColumns:(_NSRange)a3 rows:(_NSRange)a4;
@end

@implementation TUIGrid

- (TUIGrid)initWithInsets:(UIEdgeInsets)a3 columns:(unint64_t)a4 spacing:(double)a5
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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
    result->_columns = a4;
    result->_spacing = a5;
  }

  return result;
}

- (id)newGridCoordWithColumns:(_NSRange)a3 rows:(_NSRange)a4
{
  if (a4.location == 0x7FFFFFFFFFFFFFFFLL || a4.location + a4.length > 3 || a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > ((2 * self->_columns) | 1))
  {
    return 0;
  }

  v10 = a4.length;
  v11 = a4.location;
  v12 = [TUIGridCoord alloc];

  return [(TUIGridCoord *)v12 initWithGrid:self columns:location rows:length, v11, v10];
}

- (double)_horzOffsetForIndex:(unint64_t)a3
{
  result = self->_width;
  if (!a3)
  {
    return 0.0;
  }

  columns = self->_columns;
  if (2 * columns + 2 > a3)
  {
    left = self->_insets.left;
    spacing = self->_spacing;
    v7 = fmax((result - left - self->_insets.right + spacing) / columns - spacing, 1.0);
    v8 = left + (spacing + v7) * ((a3 - 1) >> 1);
    if (a3)
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

- (double)_vertOffsetForIndex:(unint64_t)a3
{
  result = self->_height;
  if (!a3)
  {
    return 0.0;
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
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

- (double)_lengthForColumns:(_NSRange)a3
{
  location = a3.location;
  [(TUIGrid *)self _horzOffsetForIndex:a3.location + a3.length];
  v6 = v5;
  [(TUIGrid *)self _horzOffsetForIndex:location];
  return v6 - v7;
}

- (double)_heightForRows:(_NSRange)a3
{
  location = a3.location;
  [(TUIGrid *)self _vertOffsetForIndex:a3.location + a3.length];
  v6 = v5;
  [(TUIGrid *)self _vertOffsetForIndex:location];
  return v6 - v7;
}

@end