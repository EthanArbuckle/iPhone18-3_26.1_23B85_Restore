@interface BKContextMenuProvider
- (BKContextMenuProvider)init;
- (id)analyticsAssetPropertyProviderForDataModel:(id)model;
- (id)menuElementsForViewController:(id)controller dataModel:(id)model;
- (void)menuElementsWithDataModel:(BSUIContextActionDataModel *)model viewController:(UIViewController *)controller completion:(id)completion;
- (void)performRemoveWithDataModel:(id)model forViewController:(id)controller completion:(id)completion;
- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)model forViewController:(UIViewController *)controller completion:(id)completion;
@end

@implementation BKContextMenuProvider

- (id)menuElementsForViewController:(id)controller dataModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  selfCopy = self;
  sub_1003CDEBC(modelCopy, controllerCopy);

  sub_10000A7C4(0, &qword_100AD8170);
  v9.super.isa = sub_1007A25D4().super.isa;

  return v9.super.isa;
}

- (id)analyticsAssetPropertyProviderForDataModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v6 = _s5Books19ContextMenuProviderC022analyticsAssetPropertyD03forSo07BAAssetgD0_pSg11BookStoreUI0B15ActionDataModelC_tF_0(modelCopy);

  return v6;
}

- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)model forViewController:(UIViewController *)controller completion:(id)completion
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = model;
  v13[3] = controller;
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
  modelCopy = model;
  controllerCopy = controller;
  selfCopy = self;
  sub_10069E794(0, 0, v11, &unk_100822038, v16);
}

- (void)performRemoveWithDataModel:(id)model forViewController:(id)controller completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  modelCopy = model;
  controllerCopy = controller;
  selfCopy = self;
  ContextMenuProvider.performRemove(with:for:on:)(modelCopy, controllerCopy, v8, v9);
  sub_100007020(v8);
}

- (BKContextMenuProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)menuElementsWithDataModel:(BSUIContextActionDataModel *)model viewController:(UIViewController *)controller completion:(id)completion
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = model;
  v13[3] = controller;
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
  modelCopy = model;
  controllerCopy = controller;
  selfCopy = self;
  sub_10069E794(0, 0, v11, &unk_1008344D0, v16);
}

@end