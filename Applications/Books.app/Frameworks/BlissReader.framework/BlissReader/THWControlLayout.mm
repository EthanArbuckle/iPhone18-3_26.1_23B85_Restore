@interface THWControlLayout
- (THWControlLayout)initWithTag:(unint64_t)tag index:(unint64_t)index;
- (id)computeLayoutGeometry;
- (void)dealloc;
- (void)invalidateControl;
- (void)validate;
@end

@implementation THWControlLayout

- (THWControlLayout)initWithTag:(unint64_t)tag index:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = THWControlLayout;
  result = [(THWControlLayout *)&v7 initWithInfo:0];
  if (result)
  {
    result->_invalidControlFlag = 1;
    result->_tag = tag;
    result->_index = index;
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
  i_layoutGeometryProvider = [(THWControlLayout *)self i_layoutGeometryProvider];

  return [i_layoutGeometryProvider layoutGeometryForLayout:self];
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