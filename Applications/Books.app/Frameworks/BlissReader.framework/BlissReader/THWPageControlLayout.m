@interface THWPageControlLayout
- (THWPageControlLayout)initWithTag:(unint64_t)a3 index:(unint64_t)a4;
- (void)setCurrentPage:(unint64_t)a3;
- (void)setNumberOfPages:(unint64_t)a3;
@end

@implementation THWPageControlLayout

- (THWPageControlLayout)initWithTag:(unint64_t)a3 index:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = THWPageControlLayout;
  result = [(THWControlLayout *)&v5 initWithTag:a3 index:a4];
  if (result)
  {
    result->_currentPage = 0x7FFFFFFFFFFFFFFFLL;
    result->_spacing = 10.0;
  }

  return result;
}

- (void)setCurrentPage:(unint64_t)a3
{
  if (self->_currentPage != a3 && (a3 != 0x7FFFFFFFFFFFFFFFLL || self->_allowNoCurrentPage))
  {
    self->_currentPage = a3;
    [(THWControlLayout *)self invalidateControl];
  }
}

- (void)setNumberOfPages:(unint64_t)a3
{
  if (self->_numberOfPages != a3)
  {
    self->_numberOfPages = a3;
    [(THWControlLayout *)self invalidateControl];
  }
}

@end