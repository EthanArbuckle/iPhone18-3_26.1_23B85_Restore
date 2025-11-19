@interface NavTrayButton
- (CGSize)intrinsicContentSize;
- (_TtC4Maps13NavTrayButton)initWithCoder:(id)a3;
- (_TtC4Maps13NavTrayButton)initWithFrame:(CGRect)a3;
- (_TtC4Maps13NavTrayButton)initWithStyle:(int64_t)a3 action:(id)a4;
- (void)redrawTitle;
@end

@implementation NavTrayButton

- (_TtC4Maps13NavTrayButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps13NavTrayButton_hostingView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps13NavTrayButton)initWithStyle:(int64_t)a3 action:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = sub_100550AC0(a3, sub_1003FD06C, v6);

  return v7;
}

- (void)redrawTitle
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps13NavTrayButton_style);
  v3 = self;
  sub_100550108(v2);
  dispatch thunk of GridButtonViewModel.title.setter();
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps13NavTrayButton_hostingView);
  if (v2)
  {
    [v2 intrinsicContentSize];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC4Maps13NavTrayButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end