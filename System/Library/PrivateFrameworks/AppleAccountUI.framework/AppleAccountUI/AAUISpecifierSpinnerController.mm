@interface AAUISpecifierSpinnerController
- (AAUISpecifierSpinnerController)initWithSpecifier:(id)a3;
@end

@implementation AAUISpecifierSpinnerController

- (AAUISpecifierSpinnerController)initWithSpecifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUISpecifierSpinnerController;
  v6 = [(AAUISpecifierSpinnerController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specifier, a3);
  }

  return v7;
}

@end