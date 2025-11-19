@interface AAUIOBInheritanceIntroViewModel
- (AAUIOBInheritanceIntroViewModel)init;
@end

@implementation AAUIOBInheritanceIntroViewModel

- (AAUIOBInheritanceIntroViewModel)init
{
  v6.receiver = self;
  v6.super_class = AAUIOBInheritanceIntroViewModel;
  v2 = [(AAUIOBInheritanceIntroViewModel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    image = v2->_image;
    v2->_image = 0;

    v3->_contentViewLayout = 2;
  }

  return v3;
}

@end