@interface COSFollowUpDetailViewController
- (id)specifiers;
@end

@implementation COSFollowUpDetailViewController

- (id)specifiers
{
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v18 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v4 = objc_alloc_init(NSMutableArray);
    v25 = 0;
    v17 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.Bridge"];
    v5 = [v17 pendingFollowUpItems:&v25];
    v16 = v25;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          title = [v10 title];
          v12 = [PSSpecifier preferenceSpecifierNamed:title target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0, v16];

          [v12 setProperty:v10 forKey:@"FollowUpItemKey"];
          [v4 addObject:v12];
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v13 = *&selfCopy->BPSListController_opaque[v18];
    *&selfCopy->BPSListController_opaque[v18] = v4;
    v14 = v4;

    v3 = *&selfCopy->BPSListController_opaque[v18];
  }

  return v3;
}

@end