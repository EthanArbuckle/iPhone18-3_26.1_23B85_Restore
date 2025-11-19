@interface PPXContextMenuProvider
- (_TtC25BooksProductPageExtension22PPXContextMenuProvider)init;
- (id)analyticsAssetPropertyProviderForDataModel:(id)a3;
- (id)menuElementsForViewController:(id)a3 dataModel:(id)a4;
- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)a3 forViewController:(UIViewController *)a4 completion:(id)a5;
@end

@implementation PPXContextMenuProvider

- (id)menuElementsForViewController:(id)a3 dataModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100015BAC(v7, v6);

  sub_10000F0A0(0, &qword_1000386E0, UIMenu_ptr);
  v9.super.isa = sub_10001FECC().super.isa;

  return v9.super.isa;
}

- (id)analyticsAssetPropertyProviderForDataModel:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s25BooksProductPageExtension22PPXContextMenuProviderC022analyticsAssetPropertyG03forSo07BAAssetjG0_pSg11BookStoreUI22ContextActionDataModelC_tF_0(v4);

  return v6;
}

- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)a3 forViewController:(UIViewController *)a4 completion:(id)a5
{
  v9 = sub_100007778(&qword_1000386D8, &qword_100029038);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_10001FF4C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100029048;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100029058;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10001AFAC(0, 0, v12, &unk_100029068, v17);
}

- (_TtC25BooksProductPageExtension22PPXContextMenuProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end