@interface ArcadeDownloadPackCategoryButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore32ArcadeDownloadPackCategoryButton)initWithFrame:(CGRect)frame;
- (void)didPress:(id)press;
- (void)didRelease:(id)release;
- (void)didTap;
- (void)invalidateMeasurements;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setSelected:(BOOL)selected;
@end

@implementation ArcadeDownloadPackCategoryButton

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ArcadeDownloadPackCategoryButton *)&v5 setSelected:selectedCopy];
  sub_1005CCB1C();
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1005CC914(enabled);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(ArcadeDownloadPackCategoryButton *)selfCopy bounds];
  traitCollection = [(ArcadeDownloadPackCategoryButton *)selfCopy traitCollection];
  sub_1005CCC68(v10);
  sub_10002A400(v10, v10[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v5 = v4;
  v7 = v6;

  sub_100007000(v10);
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005CD1C8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1005CCC68(v11);
  sub_10002A400(v11, v11[3]);
  traitCollection = [(ArcadeDownloadPackCategoryButton *)selfCopy traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v6 = v5;
  v8 = v7;

  sub_100007000(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didTap
{
  ObjectType = swift_getObjectType();
  v7.receiver = self;
  v7.super_class = ObjectType;
  selfCopy = self;
  isSelected = [(ArcadeDownloadPackCategoryButton *)&v7 isSelected];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(ArcadeDownloadPackCategoryButton *)&v6 setSelected:isSelected ^ 1];
  sub_1005CCB1C();
  (*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_action))(*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_category));
}

- (void)didPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_1005CD4C8(pressCopy);
}

- (void)didRelease:(id)release
{
  releaseCopy = release;
  selfCopy = self;
  sub_1005CE6F4(releaseCopy);
}

- (void)invalidateMeasurements
{
  selfCopy = self;
  [(ArcadeDownloadPackCategoryButton *)selfCopy setNeedsLayout];
  [(ArcadeDownloadPackCategoryButton *)selfCopy invalidateIntrinsicContentSize];
}

- (_TtC8AppStore32ArcadeDownloadPackCategoryButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end