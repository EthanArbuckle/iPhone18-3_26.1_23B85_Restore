@interface PPXContextMenuProvider
- (_TtC25BooksProductPageExtension22PPXContextMenuProvider)init;
- (id)analyticsAssetPropertyProviderForDataModel:(id)model;
- (id)menuElementsForViewController:(id)controller dataModel:(id)model;
- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)model forViewController:(UIViewController *)controller completion:(id)completion;
@end

@implementation PPXContextMenuProvider

- (id)menuElementsForViewController:(id)controller dataModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  selfCopy = self;
  sub_100015BAC(modelCopy, controllerCopy);

  sub_10000F0A0(0, &qword_1000386E0, UIMenu_ptr);
  v9.super.isa = sub_10001FECC().super.isa;

  return v9.super.isa;
}

- (id)analyticsAssetPropertyProviderForDataModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v6 = _s25BooksProductPageExtension22PPXContextMenuProviderC022analyticsAssetPropertyG03forSo07BAAssetjG0_pSg11BookStoreUI22ContextActionDataModelC_tF_0(modelCopy);

  return v6;
}

- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)model forViewController:(UIViewController *)controller completion:(id)completion
{
  v9 = sub_100007778(&qword_1000386D8, &qword_100029038);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = model;
  v14[3] = controller;
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
  modelCopy = model;
  controllerCopy = controller;
  selfCopy = self;
  sub_10001AFAC(0, 0, v12, &unk_100029068, v17);
}

- (_TtC25BooksProductPageExtension22PPXContextMenuProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end