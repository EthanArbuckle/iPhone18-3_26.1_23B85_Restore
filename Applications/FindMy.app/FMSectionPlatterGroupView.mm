@interface FMSectionPlatterGroupView
- (_TtC6FindMy25FMSectionPlatterGroupView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMSectionPlatterGroupView

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMSectionPlatterGroupView();
  changeCopy = change;
  v5 = v9.receiver;
  [(FMSectionPlatterGroupView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentView];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  traitCollection = [v5 traitCollection];
  v8 = sub_100356E0C(traitCollection);

  [v6 setBackgroundColor:v8];
}

- (_TtC6FindMy25FMSectionPlatterGroupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end