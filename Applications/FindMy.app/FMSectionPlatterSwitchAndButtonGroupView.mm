@interface FMSectionPlatterSwitchAndButtonGroupView
- (_TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView)initWithFrame:(CGRect)frame;
- (void)handleActionWithSender:(id)sender;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMSectionPlatterSwitchAndButtonGroupView

- (void)handleActionWithSender:(id)sender
{
  v5 = self + OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    senderCopy = sender;
    selfCopy = self;
    v8(senderCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMSectionPlatterSwitchAndButtonGroupView();
  changeCopy = change;
  v5 = v9.receiver;
  [(FMSectionPlatterSwitchAndButtonGroupView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_contentView];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  traitCollection = [v5 traitCollection];
  v8 = sub_100356E0C(traitCollection);

  [v6 setBackgroundColor:v8];
}

- (_TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end