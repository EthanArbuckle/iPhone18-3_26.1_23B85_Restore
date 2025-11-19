@interface THWControlLayout
- (THWControlLayout)initWithTag:(unint64_t)a3 index:(unint64_t)a4;
- (id)computeLayoutGeometry;
- (void)dealloc;
- (void)invalidateControl;
- (void)validate;
@end

@implementation THWControlLayout

- (THWControlLayout)initWithTag:(unint64_t)a3 index:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = THWControlLayout;
  result = [(THWControlLayout *)&v7 initWithInfo:0];
  if (result)
  {
    result->_invalidControlFlag = 1;
    result->_tag = a3;
    result->_index = a4;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = THWControlLayout;
  [(THWControlLayout *)&v2 dealloc];
}

- (void)validate
{
  [(THWControlLayout *)self invalidateFrame];
  v3.receiver = self;
  v3.super_class = THWControlLayout;
  [(THWControlLayout *)&v3 validate];
  self->_invalidControlFlag = 0;
}

- (id)computeLayoutGeometry
{
  v3 = [(THWControlLayout *)self i_layoutGeometryProvider];

  return [v3 layoutGeometryForLayout:self];
}

- (void)invalidateControl
{
  if (!self->_invalidControlFlag)
  {
    self->_invalidControlFlag = 1;
    [(THWControlLayout *)self invalidate];
  }
}

@end