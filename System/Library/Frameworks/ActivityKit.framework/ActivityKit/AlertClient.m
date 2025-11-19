@interface AlertClient
- (void)dismissAlertWithActivityIdentifier:(id)a3;
- (void)presentAlertWithActivityIdentifier:(id)a3 payload:(id)a4 options:(id)a5 completion:(id)a6;
@end

@implementation AlertClient

- (void)presentAlertWithActivityIdentifier:(id)a3 payload:(id)a4 options:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_1A2D08444();
  v12 = v11;
  v13 = a4;
  v14 = a5;
  v15 = self;
  v16 = sub_1A2D07F44();
  v18 = v17;

  v19 = sub_1A2D07F44();
  v21 = v20;

  v22 = swift_allocObject();
  *(v22 + 16) = v9;
  AlertClient.presentAlert(withActivityIdentifier:payload:options:completion:)(v10, v12, v16, v18, v19, v21, sub_1A2C80998, v22);

  sub_1A2C55840(v19, v21);
  sub_1A2C55840(v16, v18);
}

- (void)dismissAlertWithActivityIdentifier:(id)a3
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = self + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = self;
    v10(v4, v6, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

@end