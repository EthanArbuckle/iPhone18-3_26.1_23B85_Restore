@interface AAUIOBInheritanceShareDataViewModel
- (AAUIOBInheritanceShareDataViewModel)initWithBeneficiaryName:(id)a3;
@end

@implementation AAUIOBInheritanceShareDataViewModel

- (AAUIOBInheritanceShareDataViewModel)initWithBeneficiaryName:(id)a3
{
  v4.receiver = self;
  v4.super_class = AAUIOBInheritanceShareDataViewModel;
  result = [(AAOBInheritanceShareDataModel *)&v4 initWithBeneficiaryName:a3];
  if (result)
  {
    result->_contentViewLayout = 2;
  }

  return result;
}

@end