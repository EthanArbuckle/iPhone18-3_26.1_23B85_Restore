@interface THWPageControlLayout
- (THWPageControlLayout)initWithTag:(unint64_t)tag index:(unint64_t)index;
- (void)setCurrentPage:(unint64_t)page;
- (void)setNumberOfPages:(unint64_t)pages;
@end

@implementation THWPageControlLayout

- (THWPageControlLayout)initWithTag:(unint64_t)tag index:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = THWPageControlLayout;
  result = [(THWControlLayout *)&v5 initWithTag:tag index:index];
  if (result)
  {
    result->_currentPage = 0x7FFFFFFFFFFFFFFFLL;
    result->_spacing = 10.0;
  }

  return result;
}

- (void)setCurrentPage:(unint64_t)page
{
  if (self->_currentPage != page && (page != 0x7FFFFFFFFFFFFFFFLL || self->_allowNoCurrentPage))
  {
    self->_currentPage = page;
    [(THWControlLayout *)self invalidateControl];
  }
}

- (void)setNumberOfPages:(unint64_t)pages
{
  if (self->_numberOfPages != pages)
  {
    self->_numberOfPages = pages;
    [(THWControlLayout *)self invalidateControl];
  }
}

@end