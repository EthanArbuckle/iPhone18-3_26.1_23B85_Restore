@interface Singleton
+ (_TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton)shared;
+ (_TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton)shared;
+ (_TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton)shared;
+ (_TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton)shared;
- (_TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton)init;
- (id)listenForActivityPresentationWithActivityIdentifier:(id)a3 presenterBundleIdentifier:(id)a4 handler:(id)a5;
- (id)listenForActivityProminenceWithActivityIdentifier:(id)a3 handler:(id)a4;
- (id)listenForActivityQoSWithActivityIdentifier:(id)a3 handler:(id)a4;
- (void)activitiesChanged:(id)a3 completion:(id)a4;
- (void)activityDidExceedReducedPushBudgetForIdentifier:(id)a3;
- (void)activityDidUnsubscribeForIdentifier:(id)a3;
- (void)activityPresentationsDidChange:(id)a3 completion:(id)a4;
- (void)activityProminenceDidChange:(id)a3 completion:(id)a4;
- (void)activityQoSDidChange:(id)a3 completion:(id)a4;
@end

@implementation Singleton

- (_TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton)init
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  (*(v7 + 104))(&v13 - v5, *MEMORY[0x1E69CA970]);
  v8 = objc_allocWithZone(type metadata accessor for Singleton());
  v9 = sub_1A2C57D70(v6);
  swift_getObjectType();
  v10 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v11 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v9;
}

- (void)activitiesChanged:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  v9 = sub_1A2D07F44();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v13 = sub_1A2D07F24();
  sub_1A2C756B4(v13, &v16);

  v14 = v16;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2C80998;
  *(v15 + 24) = v12;
  v16 = v14;

  sub_1A2C62964(&v16, 1, sub_1A2C80968, v15);

  sub_1A2C55840(v9, v11);
}

- (id)listenForActivityProminenceWithActivityIdentifier:(id)a3 handler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1A2D08444();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  type metadata accessor for RetryingCancellable();
  v10 = swift_allocObject();
  v11 = self;

  v12 = sub_1A2C88734(0, 1, v10, v11, v6, v8, sub_1A2C95754, v9);
  v13 = type metadata accessor for CancellableAssertion();
  v14 = objc_allocWithZone(v13);
  v21 = v12;
  v15 = sub_1A2D080E4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1A2C8BAD0(&qword_1EB09ED18, type metadata accessor for RetryingCancellable);

  *&v14[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v20.receiver = v14;
  v20.super_class = v13;
  v18 = [(Singleton *)&v20 init];

  return v18;
}

- (void)activityProminenceDidChange:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_1A2D07F44();
  v10 = v9;

  _Block_copy(v6);
  sub_1A2C94F6C(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1A2C55840(v8, v10);
}

+ (_TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton)shared
{
  if (qword_1ED709C30 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED709C40;

  return v3;
}

+ (_TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton)shared
{
  if (qword_1EB09ECD8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB09ECE8;

  return v3;
}

- (id)listenForActivityPresentationWithActivityIdentifier:(id)a3 presenterBundleIdentifier:(id)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1A2D08444();
  v9 = v8;
  v10 = sub_1A2D08444();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = self;
  v15 = sub_1A2CA4AB4(v7, v9, v10, v12, sub_1A2C83438, v13);

  return v15;
}

- (void)activityPresentationsDidChange:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_1A2D07F44();
  v10 = v9;

  _Block_copy(v6);
  sub_1A2CA57BC(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1A2C55840(v8, v10);
}

+ (_TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton)shared
{
  if (qword_1EB09ECB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB09ECC8;

  return v3;
}

- (void)activityDidExceedReducedPushBudgetForIdentifier:(id)a3
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = self;
  sub_1A2CBC1AC(v4, v6);
}

- (void)activityDidUnsubscribeForIdentifier:(id)a3
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = self;
  v8 = sub_1A2CBC01C();
  if (*v9)
  {
    sub_1A2CBB62C(v4, v6);
  }

  (v8)(&v10, 0);
}

+ (_TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton)shared
{
  if (qword_1EB09F748 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB0A1AE8;

  return v3;
}

- (id)listenForActivityQoSWithActivityIdentifier:(id)a3 handler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1A2D08444();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  v11 = sub_1A2CF9000(v6, v8, sub_1A2C83438, v9);

  return v11;
}

- (void)activityQoSDidChange:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_1A2D07F44();
  v10 = v9;

  _Block_copy(v6);
  sub_1A2CFA304(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1A2C55840(v8, v10);
}

@end