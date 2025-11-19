@interface SearchSelectionAction
- (SearchSelectionAction)initWithSelectedIndex:(unint64_t)a3;
@end

@implementation SearchSelectionAction

- (SearchSelectionAction)initWithSelectedIndex:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SearchSelectionAction;
  result = [(SearchSelectionAction *)&v5 init];
  if (result)
  {
    result->_selectedIndex = a3;
  }

  return result;
}

@end