@interface FMPlatterImageAndButtonGroupView
- (_TtC6FindMy32FMPlatterImageAndButtonGroupView)initWithFrame:(CGRect)frame;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMPlatterImageAndButtonGroupView

- (void)setupSubviews
{
  selfCopy = self;
  sub_100455328();
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPlatterImageAndButtonGroupView();
  changeCopy = change;
  v5 = v8.receiver;
  [(FMPlatterImageAndButtonGroupView *)&v8 traitCollectionDidChange:changeCopy];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  traitCollection = [v5 traitCollection];
  v7 = sub_100356E0C(traitCollection);

  [v5 setBackgroundColor:v7];
}

- (_TtC6FindMy32FMPlatterImageAndButtonGroupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end