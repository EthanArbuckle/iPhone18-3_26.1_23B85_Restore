@interface AAUISpecifierSpinnerController
- (AAUISpecifierSpinnerController)initWithSpecifier:(id)specifier;
@end

@implementation AAUISpecifierSpinnerController

- (AAUISpecifierSpinnerController)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = AAUISpecifierSpinnerController;
  v6 = [(AAUISpecifierSpinnerController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specifier, specifier);
  }

  return v7;
}

@end