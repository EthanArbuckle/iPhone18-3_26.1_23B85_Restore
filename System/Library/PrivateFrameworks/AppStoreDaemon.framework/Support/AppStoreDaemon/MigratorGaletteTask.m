@interface MigratorGaletteTask
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorGaletteTask

- (id)copyConfiguration
{
  v2 = [MigratorConfiguration alloc];

  return sub_1002C0A10(v2, @"Galette");
}

- (void)main
{
  v2 = sub_1001C0DF0();
  v3 = sub_1001C0EC4(v2);
  v4 = sub_100201D44(v3, @"pending_galette_confirmation");

  if ((v4 & 1) == 0)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_1003C4F24;
    v12 = sub_1003C4F34;
    v13 = objc_opt_new();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003C4F3C;
    v7[3] = &unk_100527448;
    v7[4] = &v8;
    sub_1003D31A8(ApplicationProxy, 0, v7);
    if ([v9[5] count])
    {
      [GaletteAppDeleteAlertManager handleInstalledAppsWithBundleIDs:v9[5]];
      v5 = +[GaletteStore shared];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1003C4FE4;
      v6[3] = &unk_100527470;
      v6[4] = &v8;
      [v5 modifyUsingTransaction:v6];
    }

    else
    {
      v5 = +[GaletteStore shared];
      [v5 readUsingSession:&stru_1005274B0];
    }

    _Block_object_dispose(&v8, 8);
  }
}

@end