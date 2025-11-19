@interface BSUICardAuxiliaryNavigationBarManager
- (BSUICardAuxiliaryNavigationBarManager)init;
- (id)viewControllerIfAvailable;
- (void)createViewControllerForFeedViewController:(BSUIFeedViewController *)a3 shouldReportFigaro:(BOOL)a4 completionHandler:(id)a5;
- (void)viewControllerWhenAvailable:(id)a3;
@end

@implementation BSUICardAuxiliaryNavigationBarManager

- (BSUICardAuxiliaryNavigationBarManager)init
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___BSUICardAuxiliaryNavigationBarManager_pendingClosures) = _swiftEmptyArrayStorage;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CardAuxiliaryNavigationBarManager();
  return [(BSUICardAuxiliaryNavigationBarManager *)&v4 init];
}

- (void)createViewControllerForFeedViewController:(BSUIFeedViewController *)a3 shouldReportFigaro:(BOOL)a4 completionHandler:(id)a5
{
  v9 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_2C5C58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2FBBC0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2ED3D0;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1CDB58(0, 0, v11, &unk_2E47F0, v16);
}

- (void)viewControllerWhenAvailable:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_298B78(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)viewControllerIfAvailable
{
  v2 = self;
  v3 = sub_294A8C();

  return v3;
}

@end