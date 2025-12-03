@interface AlertClient
- (void)dismissAlertWithActivityIdentifier:(id)identifier;
- (void)presentAlertWithActivityIdentifier:(id)identifier payload:(id)payload options:(id)options completion:(id)completion;
@end

@implementation AlertClient

- (void)presentAlertWithActivityIdentifier:(id)identifier payload:(id)payload options:(id)options completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_1A2D08444();
  v12 = v11;
  payloadCopy = payload;
  optionsCopy = options;
  selfCopy = self;
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

- (void)dismissAlertWithActivityIdentifier:(id)identifier
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
    selfCopy = self;
    v10(v4, v6, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

@end