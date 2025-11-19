@interface AAUIFamilyAgeRangeController
- (AAUIFamilyAgeRangeController)init;
@end

@implementation AAUIFamilyAgeRangeController

- (AAUIFamilyAgeRangeController)init
{
  v8.receiver = self;
  v8.super_class = AAUIFamilyAgeRangeController;
  v2 = [(AAUIFamilyAgeRangeController *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getFAAgeRangeViewControllerProviderClass_softClass;
    v13 = getFAAgeRangeViewControllerProviderClass_softClass;
    if (!getFAAgeRangeViewControllerProviderClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getFAAgeRangeViewControllerProviderClass_block_invoke;
      v9[3] = &unk_1E820BE08;
      v9[4] = &v10;
      __getFAAgeRangeViewControllerProviderClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    ageRangeViewControllerProvider = v2->_ageRangeViewControllerProvider;
    v2->_ageRangeViewControllerProvider = v5;
  }

  return v2;
}

@end