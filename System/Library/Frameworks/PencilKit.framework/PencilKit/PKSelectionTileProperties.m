@interface PKSelectionTileProperties
- (BOOL)isEqual:(id)a3;
- (CGRect)frame;
- (PKSelectionTileProperties)initWithFrame:(CGRect)a3 strokes:(id)a4;
- (id)description;
@end

@implementation PKSelectionTileProperties

- (PKSelectionTileProperties)initWithFrame:(CGRect)a3 strokes:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = PKSelectionTileProperties;
  v10 = [(PKSelectionTileProperties *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_frame.origin.x = x;
    v10->_frame.origin.y = y;
    v10->_frame.size.width = width;
    v10->_frame.size.height = height;
    v12 = [v9 copy];
    strokes = v11->_strokes;
    v11->_strokes = v12;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (CGRectEqualToRect(self->_frame, v5->_frame))
      {
        v6 = [(NSArray *)self->_strokes isEqual:v5->_strokes];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PKSelectionTileProperties;
  v3 = [(PKSelectionTileProperties *)&v8 description];
  [(PKSelectionTileProperties *)self frame];
  v4 = NSStringFromCGRect(v10);
  v5 = [(PKSelectionTileProperties *)self strokes];
  v6 = [v3 stringByAppendingFormat:@" %@, numStrokes: %lu", v4, objc_msgSend(v5, "count")];

  return v6;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end