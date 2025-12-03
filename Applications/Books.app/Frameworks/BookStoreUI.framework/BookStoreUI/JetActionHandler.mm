@interface JetActionHandler
- (_TtC11BookStoreUI16JetActionHandler)init;
- (void)performRawActionModel:(NSDictionary *)model withParentTracker:(_TtC13BookAnalytics9BATracker *)tracker shouldReportFigaro:(BOOL)figaro sourceViewController:(UIViewController *)controller completion:(id)completion;
@end

@implementation JetActionHandler

- (void)performRawActionModel:(NSDictionary *)model withParentTracker:(_TtC13BookAnalytics9BATracker *)tracker shouldReportFigaro:(BOOL)figaro sourceViewController:(UIViewController *)controller completion:(id)completion
{
  v13 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = model;
  *(v17 + 24) = tracker;
  *(v17 + 32) = figaro;
  *(v17 + 40) = controller;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = sub_2C5C58();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2E47E0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_2ED3D0;
  v20[5] = v19;
  modelCopy = model;
  trackerCopy = tracker;
  controllerCopy = controller;
  selfCopy = self;
  sub_1CDB58(0, 0, v15, &unk_2E47F0, v20);
}

- (_TtC11BookStoreUI16JetActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end