@interface FMPlatterImageAndButtonGroupView
- (_TtC6FindMy32FMPlatterImageAndButtonGroupView)initWithFrame:(CGRect)a3;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMPlatterImageAndButtonGroupView

- (void)setupSubviews
{
  v2 = self;
  sub_100455328();
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPlatterImageAndButtonGroupView();
  v4 = a3;
  v5 = v8.receiver;
  [(FMPlatterImageAndButtonGroupView *)&v8 traitCollectionDidChange:v4];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v6 = [v5 traitCollection];
  v7 = sub_100356E0C(v6);

  [v5 setBackgroundColor:v7];
}

- (_TtC6FindMy32FMPlatterImageAndButtonGroupView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end