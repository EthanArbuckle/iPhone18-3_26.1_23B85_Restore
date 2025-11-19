@interface TeachableMomentConfiguration
- (TeachableMomentConfiguration)initWithTitle:(id)a3 buttonTitle:(id)a4 userDefaultSaveKey:(id)a5 illustrationViewController:(id)a6;
@end

@implementation TeachableMomentConfiguration

- (TeachableMomentConfiguration)initWithTitle:(id)a3 buttonTitle:(id)a4 userDefaultSaveKey:(id)a5 illustrationViewController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TeachableMomentConfiguration;
  v15 = [(TeachableMomentConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_buttonTitle, a4);
    objc_storeStrong(&v16->_userDefaultSaveKey, a5);
    objc_storeStrong(&v16->_illustrationViewController, a6);
  }

  return v16;
}

@end