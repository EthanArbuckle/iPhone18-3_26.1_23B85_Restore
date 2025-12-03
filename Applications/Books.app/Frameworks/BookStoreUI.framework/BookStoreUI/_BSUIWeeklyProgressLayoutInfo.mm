@interface _BSUIWeeklyProgressLayoutInfo
- (CGRect)frame;
- (id)description;
- (void)setFrame:(CGRect)frame;
@end

@implementation _BSUIWeeklyProgressLayoutInfo

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [(_BSUIWeeklyProgressLayoutInfo *)self day];
  [v8 setFrame:{x, y, width, height}];

  separator = [(_BSUIWeeklyProgressLayoutInfo *)self separator];
  [separator setFrame:{x, y, width, height}];

  separator2 = [(_BSUIWeeklyProgressLayoutInfo *)self separator];
  [separator2 configureWithType:{-[_BSUIWeeklyProgressLayoutInfo layoutType](self, "layoutType")}];

  self->_frame.origin.x = x;
  self->_frame.origin.y = y;
  self->_frame.size.width = width;
  self->_frame.size.height = height;
}

- (id)description
{
  v3 = [NSNumber numberWithInteger:[(_BSUIWeeklyProgressLayoutInfo *)self layoutType]];
  v4 = [(_BSUIWeeklyProgressLayoutInfo *)self day];
  v5 = v4;
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"    layoutType = %@: data: %@", v3, v4];
  }

  else
  {
    separator = [(_BSUIWeeklyProgressLayoutInfo *)self separator];
    v6 = [NSString stringWithFormat:@"    layoutType = %@: data: %@", v3, separator];
  }

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