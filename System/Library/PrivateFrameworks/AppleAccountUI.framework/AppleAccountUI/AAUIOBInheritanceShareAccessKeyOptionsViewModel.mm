@interface AAUIOBInheritanceShareAccessKeyOptionsViewModel
- (AAUIOBInheritanceShareAccessKeyOptionsViewModel)initWithBeneficiaryName:(id)a3 handle:(id)a4;
@end

@implementation AAUIOBInheritanceShareAccessKeyOptionsViewModel

- (AAUIOBInheritanceShareAccessKeyOptionsViewModel)initWithBeneficiaryName:(id)a3 handle:(id)a4
{
  v5.receiver = self;
  v5.super_class = AAUIOBInheritanceShareAccessKeyOptionsViewModel;
  result = [(AAOBInheritanceShareAccessKeyOptionsModel *)&v5 initWithBeneficiaryName:a3 handle:a4];
  if (result)
  {
    result->_contentViewLayout = 2;
    result->_adoptTableViewScrollView = 1;
    result->_tableViewStyle = 2;
  }

  return result;
}

@end