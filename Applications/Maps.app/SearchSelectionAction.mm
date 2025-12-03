@interface SearchSelectionAction
- (SearchSelectionAction)initWithSelectedIndex:(unint64_t)index;
@end

@implementation SearchSelectionAction

- (SearchSelectionAction)initWithSelectedIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = SearchSelectionAction;
  result = [(SearchSelectionAction *)&v5 init];
  if (result)
  {
    result->_selectedIndex = index;
  }

  return result;
}

@end