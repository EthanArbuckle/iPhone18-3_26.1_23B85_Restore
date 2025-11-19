@interface ContaineeState
- (ContaineeState)initWithContainee:(id)a3;
- (void)setLayout:(unint64_t)a3 forStyle:(unint64_t)a4;
@end

@implementation ContaineeState

- (void)setLayout:(unint64_t)a3 forStyle:(unint64_t)a4
{
  self->layoutByStyle[a4] = a3;
  if (a4 == 1)
  {
    self->layoutByStyle[5] = 4 * (a3 == 3);
  }

  else if (a4 == 5)
  {
    v4 = 2;
    if (a3 == 4)
    {
      v4 = 3;
    }

    self->layoutByStyle[1] = v4;
  }
}

- (ContaineeState)initWithContainee:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ContaineeState;
  v6 = [(ContaineeState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, a3);
  }

  return v7;
}

@end