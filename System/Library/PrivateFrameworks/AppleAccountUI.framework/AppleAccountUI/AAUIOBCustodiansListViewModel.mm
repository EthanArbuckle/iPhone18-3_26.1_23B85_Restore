@interface AAUIOBCustodiansListViewModel
- (AAUIOBCustodiansListViewModel)initWithContacts:(id)contacts;
@end

@implementation AAUIOBCustodiansListViewModel

- (AAUIOBCustodiansListViewModel)initWithContacts:(id)contacts
{
  v4.receiver = self;
  v4.super_class = AAUIOBCustodiansListViewModel;
  result = [(AAOBCustodiansListViewModel *)&v4 initWithContacts:contacts];
  if (result)
  {
    result->_contentViewLayout = 2;
    result->_adoptTableViewScrollView = 1;
    result->_tableViewStyle = 2;
  }

  return result;
}

@end