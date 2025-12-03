@interface AAUIOBInheritanceShareDataViewModel
- (AAUIOBInheritanceShareDataViewModel)initWithBeneficiaryName:(id)name;
@end

@implementation AAUIOBInheritanceShareDataViewModel

- (AAUIOBInheritanceShareDataViewModel)initWithBeneficiaryName:(id)name
{
  v4.receiver = self;
  v4.super_class = AAUIOBInheritanceShareDataViewModel;
  result = [(AAOBInheritanceShareDataModel *)&v4 initWithBeneficiaryName:name];
  if (result)
  {
    result->_contentViewLayout = 2;
  }

  return result;
}

@end