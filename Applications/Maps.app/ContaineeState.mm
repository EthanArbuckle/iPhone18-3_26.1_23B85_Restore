@interface ContaineeState
- (ContaineeState)initWithContainee:(id)containee;
- (void)setLayout:(unint64_t)layout forStyle:(unint64_t)style;
@end

@implementation ContaineeState

- (void)setLayout:(unint64_t)layout forStyle:(unint64_t)style
{
  self->layoutByStyle[style] = layout;
  if (style == 1)
  {
    self->layoutByStyle[5] = 4 * (layout == 3);
  }

  else if (style == 5)
  {
    v4 = 2;
    if (layout == 4)
    {
      v4 = 3;
    }

    self->layoutByStyle[1] = v4;
  }
}

- (ContaineeState)initWithContainee:(id)containee
{
  containeeCopy = containee;
  v9.receiver = self;
  v9.super_class = ContaineeState;
  v6 = [(ContaineeState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, containee);
  }

  return v7;
}

@end