@interface ErrorPresenter
- (_TtC11AppStoreKit14ErrorPresenter)init;
- (void)airplaneModeInquiryDidObserveChange:(id)change;
- (void)dealloc;
@end

@implementation ErrorPresenter

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkObservation;
  swift_beginAccess();
  if (*(v4 + 3))
  {
    sub_1E1300B24(v4, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v7 = *(v6 + 8);
    selfCopy = self;
    v7(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    selfCopy2 = self;
  }

  v13.receiver = self;
  v13.super_class = ObjectType;
  [(ErrorPresenter *)&v13 dealloc];
}

- (void)airplaneModeInquiryDidObserveChange:(id)change
{
  selfCopy = self;
  ErrorPresenter.update()();
}

- (_TtC11AppStoreKit14ErrorPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end