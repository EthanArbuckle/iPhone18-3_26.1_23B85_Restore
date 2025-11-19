@interface AAUIOBAddTrustedContactsViewModel
- (AAUIOBAddTrustedContactsViewModel)init;
@end

@implementation AAUIOBAddTrustedContactsViewModel

- (AAUIOBAddTrustedContactsViewModel)init
{
  v3.receiver = self;
  v3.super_class = AAUIOBAddTrustedContactsViewModel;
  result = [(AAOBAddTrustedContactsModel *)&v3 init];
  if (result)
  {
    result->_contentViewLayout = 2;
    result->_adoptTableViewScrollView = 1;
    result->_tableViewStyle = 2;
  }

  return result;
}

@end