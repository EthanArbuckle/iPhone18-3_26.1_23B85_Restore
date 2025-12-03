@interface FMPlatterButtonGroupView
- (_TtC6FindMy24FMPlatterButtonGroupView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMPlatterButtonGroupView

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMPlatterButtonGroupView();
  changeCopy = change;
  v5 = v9.receiver;
  [(FMPlatterButtonGroupView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentView];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  traitCollection = [v5 traitCollection];
  v8 = sub_100356E0C(traitCollection);

  [v6 setBackgroundColor:v8];
}

- (_TtC6FindMy24FMPlatterButtonGroupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end