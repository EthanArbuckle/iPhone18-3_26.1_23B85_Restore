@interface AudioAccommodationsTransparencyChooserViewController
- (id)specifiers;
@end

@implementation AudioAccommodationsTransparencyChooserViewController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_97E4;
    v12[3] = &unk_48AF8;
    v8 = v5;
    v13 = v8;
    [userInfo enumerateKeysAndObjectsUsingBlock:v12];
    v9 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v8;
    v10 = v8;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

@end