@interface CurrentLocationPersistenceService
- (_TtC5Books33CurrentLocationPersistenceService)init;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
@end

@implementation CurrentLocationPersistenceService

- (_TtC5Books33CurrentLocationPersistenceService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v12 - 8);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v27[-v16];
  v18 = a3;
  swift_unknownObjectRetain();
  v19 = self;
  v20 = a5;
  v21 = a7;
  sub_1007A3504();
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_100796E14();

    v22 = sub_100796E74();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v23 = sub_100796E74();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  }

  if (v21)
  {
    sub_100796E14();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_100796E74();
  (*(*(v25 - 8) + 56))(v14, v24, 1, v25);
  CurrentLocationPersistenceService.controller(_:didChange:at:for:newIndexPath:)(v18, v27, v26, a6);

  sub_100007840(v14, &qword_100AECD00);
  sub_100007840(v17, &qword_100AECD00);
  sub_1000074E0(v27);
}

@end