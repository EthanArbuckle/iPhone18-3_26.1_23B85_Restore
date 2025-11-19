@interface FMSectionPlatterSwitchAndButtonGroupView
- (_TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView)initWithFrame:(CGRect)a3;
- (void)handleActionWithSender:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMSectionPlatterSwitchAndButtonGroupView

- (void)handleActionWithSender:(id)a3
{
  v5 = self + OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMSectionPlatterSwitchAndButtonGroupView();
  v4 = a3;
  v5 = v9.receiver;
  [(FMSectionPlatterSwitchAndButtonGroupView *)&v9 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_contentView];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v7 = [v5 traitCollection];
  v8 = sub_100356E0C(v7);

  [v6 setBackgroundColor:v8];
}

- (_TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end