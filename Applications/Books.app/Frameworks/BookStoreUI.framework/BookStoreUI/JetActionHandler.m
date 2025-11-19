@interface JetActionHandler
- (_TtC11BookStoreUI16JetActionHandler)init;
- (void)performRawActionModel:(NSDictionary *)a3 withParentTracker:(_TtC13BookAnalytics9BATracker *)a4 shouldReportFigaro:(BOOL)a5 sourceViewController:(UIViewController *)a6 completion:(id)a7;
@end

@implementation JetActionHandler

- (void)performRawActionModel:(NSDictionary *)a3 withParentTracker:(_TtC13BookAnalytics9BATracker *)a4 shouldReportFigaro:(BOOL)a5 sourceViewController:(UIViewController *)a6 completion:(id)a7
{
  v13 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
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
  v21 = a3;
  v22 = a4;
  v23 = a6;
  v24 = self;
  sub_1CDB58(0, 0, v15, &unk_2E47F0, v20);
}

- (_TtC11BookStoreUI16JetActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end