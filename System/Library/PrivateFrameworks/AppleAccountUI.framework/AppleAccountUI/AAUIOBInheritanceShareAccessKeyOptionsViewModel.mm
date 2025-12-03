@interface AAUIOBInheritanceShareAccessKeyOptionsViewModel
- (AAUIOBInheritanceShareAccessKeyOptionsViewModel)initWithBeneficiaryName:(id)name handle:(id)handle;
@end

@implementation AAUIOBInheritanceShareAccessKeyOptionsViewModel

- (AAUIOBInheritanceShareAccessKeyOptionsViewModel)initWithBeneficiaryName:(id)name handle:(id)handle
{
  v5.receiver = self;
  v5.super_class = AAUIOBInheritanceShareAccessKeyOptionsViewModel;
  result = [(AAOBInheritanceShareAccessKeyOptionsModel *)&v5 initWithBeneficiaryName:name handle:handle];
  if (result)
  {
    result->_contentViewLayout = 2;
    result->_adoptTableViewScrollView = 1;
    result->_tableViewStyle = 2;
  }

  return result;
}

@end