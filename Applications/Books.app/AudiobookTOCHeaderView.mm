@interface AudiobookTOCHeaderView
- (NSArray)accessibilityElements;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)didSelectSupplementalContent;
- (void)layoutSubviews;
@end

@implementation AudiobookTOCHeaderView

- (void)layoutSubviews
{
  v2 = self;
  sub_10042C298();
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  v6 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel);
  if (qword_100AD15B0 != -1)
  {
    v8 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel);
    swift_once();
    v6 = v8;
  }

  [v6 setFont:qword_100AE2AF8];
  v7 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel);
  if (qword_100AD15B8 != -1)
  {
    v9 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel);
    swift_once();
    v7 = v9;
  }

  [v7 setFont:qword_100AE2B00];
  sub_1000074E0(&v10);
}

- (void)didSelectSupplementalContent
{
  v2 = self;
  sub_10042C75C();
}

- (NSArray)accessibilityElements
{
  v2 = self;
  sub_10042CED0();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

@end