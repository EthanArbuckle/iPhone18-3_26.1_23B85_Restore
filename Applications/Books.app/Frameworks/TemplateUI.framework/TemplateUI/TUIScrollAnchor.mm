@interface TUIScrollAnchor
- (TUIScrollAnchor)initWithAnchor:(id)anchor relativeDistance:(double)distance;
- (id)description;
@end

@implementation TUIScrollAnchor

- (TUIScrollAnchor)initWithAnchor:(id)anchor relativeDistance:(double)distance
{
  anchorCopy = anchor;
  v11.receiver = self;
  v11.super_class = TUIScrollAnchor;
  v7 = [(TUIScrollAnchor *)&v11 init];
  if (v7)
  {
    v8 = [anchorCopy copy];
    anchor = v7->_anchor;
    v7->_anchor = v8;

    v7->_relativeDistance = distance;
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ anchor=%@ relativeDistance=%f>", v4, self->_anchor, *&self->_relativeDistance];

  return v5;
}

@end