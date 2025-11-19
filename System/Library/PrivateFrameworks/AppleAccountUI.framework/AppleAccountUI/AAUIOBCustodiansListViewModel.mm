@interface AAUIOBCustodiansListViewModel
- (AAUIOBCustodiansListViewModel)initWithContacts:(id)a3;
@end

@implementation AAUIOBCustodiansListViewModel

- (AAUIOBCustodiansListViewModel)initWithContacts:(id)a3
{
  v4.receiver = self;
  v4.super_class = AAUIOBCustodiansListViewModel;
  result = [(AAOBCustodiansListViewModel *)&v4 initWithContacts:a3];
  if (result)
  {
    result->_contentViewLayout = 2;
    result->_adoptTableViewScrollView = 1;
    result->_tableViewStyle = 2;
  }

  return result;
}

@end