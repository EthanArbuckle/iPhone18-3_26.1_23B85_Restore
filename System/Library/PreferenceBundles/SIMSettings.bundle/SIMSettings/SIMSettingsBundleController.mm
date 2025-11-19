@interface SIMSettingsBundleController
- (id)specifiersWithSpecifier:(id)a3;
@end

@implementation SIMSettingsBundleController

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = a3;
  v26 = +[NSMutableArray array];
  v5 = PSBundlePathKey;
  v35 = PSBundlePathKey;
  v36 = @"SIMPasscodeTelephonySettings";
  v6 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v32 = v6;
  v33 = @"items";
  v7 = [NSArray arrayWithObjects:&v32 count:1];
  v34 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v9 = OBJC_IVAR___PSBundleController__parent;
  v10 = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
  v11 = [v10 bundle];
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[v9]);
  v23 = 0;
  v25 = v4;
  v13 = SpecifiersFromPlist();

  if (v13)
  {
    [v26 addObjectsFromArray:{v13, 0}];
  }

  v30 = v5;
  v31 = @"SIMApplicationsTelephonySettings";
  v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1, v23];

  v27 = v14;
  v28 = @"items";
  v15 = [NSArray arrayWithObjects:&v27 count:1];
  v29 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v17 = objc_loadWeakRetained(&self->PSBundleController_opaque[v9]);
  v18 = [v17 bundle];
  v19 = objc_loadWeakRetained(&self->PSBundleController_opaque[v9]);
  v24 = 0;
  v20 = SpecifiersFromPlist();

  if (v20)
  {
    [v26 addObjectsFromArray:{v20, 0}];
  }

  if ([v26 count])
  {
    v21 = +[PSSpecifier emptyGroupSpecifier];
    [v26 insertObject:v21 atIndex:0];
  }

  return v26;
}

@end