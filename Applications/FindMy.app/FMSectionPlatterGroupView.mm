@interface FMSectionPlatterGroupView
- (_TtC6FindMy25FMSectionPlatterGroupView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMSectionPlatterGroupView

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMSectionPlatterGroupView();
  v4 = a3;
  v5 = v9.receiver;
  [(FMSectionPlatterGroupView *)&v9 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentView];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v7 = [v5 traitCollection];
  v8 = sub_100356E0C(v7);

  [v6 setBackgroundColor:v8];
}

- (_TtC6FindMy25FMSectionPlatterGroupView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end