@interface BKContextMenuProvider
- (BKContextMenuProvider)init;
- (id)analyticsAssetPropertyProviderForDataModel:(id)a3;
- (id)menuElementsForViewController:(id)a3 dataModel:(id)a4;
- (void)menuElementsWithDataModel:(BSUIContextActionDataModel *)a3 viewController:(UIViewController *)a4 completion:(id)a5;
- (void)performRemoveWithDataModel:(id)a3 forViewController:(id)a4 completion:(id)a5;
- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)a3 forViewController:(UIViewController *)a4 completion:(id)a5;
@end

@implementation BKContextMenuProvider

- (id)menuElementsForViewController:(id)a3 dataModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003CDEBC(v7, v6);

  sub_10000A7C4(0, &qword_100AD8170);
  v9.super.isa = sub_1007A25D4().super.isa;

  return v9.super.isa;
}

- (id)analyticsAssetPropertyProviderForDataModel:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s5Books19ContextMenuProviderC022analyticsAssetPropertyD03forSo07BAAssetgD0_pSg11BookStoreUI0B15ActionDataModelC_tF_0(v4);

  return v6;
}

- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)a3 forViewController:(UIViewController *)a4 completion:(id)a5
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100822028;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100822030;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10069E794(0, 0, v11, &unk_100822038, v16);
}

- (void)performRemoveWithDataModel:(id)a3 forViewController:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_10021C1E0;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a4;
  v12 = self;
  ContextMenuProvider.performRemove(with:for:on:)(v10, v11, v8, v9);
  sub_100007020(v8);
}

- (BKContextMenuProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)menuElementsWithDataModel:(BSUIContextActionDataModel *)a3 viewController:(UIViewController *)a4 completion:(id)a5
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100822018;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10081C0F0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10069E794(0, 0, v11, &unk_1008344D0, v16);
}

@end