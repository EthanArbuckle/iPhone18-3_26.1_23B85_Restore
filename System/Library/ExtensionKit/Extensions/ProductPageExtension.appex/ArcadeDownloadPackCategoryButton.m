@interface ArcadeDownloadPackCategoryButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton)initWithFrame:(CGRect)a3;
- (void)didPress:(id)a3;
- (void)didRelease:(id)a3;
- (void)didTap;
- (void)invalidateMeasurements;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation ArcadeDownloadPackCategoryButton

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ArcadeDownloadPackCategoryButton *)&v5 setSelected:v3];
  sub_100048F40();
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  sub_1000490CC(a3);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(ArcadeDownloadPackCategoryButton *)v2 bounds];
  v3 = [(ArcadeDownloadPackCategoryButton *)v2 traitCollection];
  sub_1000491A4(v10);
  sub_10000CF78(v10, v10[3]);
  sub_10076E0FC();
  v5 = v4;
  v7 = v6;

  sub_10000CD74(v10);
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10004972C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_1000491A4(v11);
  sub_10000CF78(v11, v11[3]);
  v4 = [(ArcadeDownloadPackCategoryButton *)v3 traitCollection];
  sub_10076E0FC();
  v6 = v5;
  v8 = v7;

  sub_10000CD74(v11);
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
  v4 = self;
  v5 = [(ArcadeDownloadPackCategoryButton *)&v7 isSelected];
  v6.receiver = v4;
  v6.super_class = ObjectType;
  [(ArcadeDownloadPackCategoryButton *)&v6 setSelected:v5 ^ 1];
  sub_100048F40();
  (*(&v4->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_action))(*(&v4->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_category));
}

- (void)didPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100049A2C(v4);
}

- (void)didRelease:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004ACB4(v4);
}

- (void)invalidateMeasurements
{
  v2 = self;
  [(ArcadeDownloadPackCategoryButton *)v2 setNeedsLayout];
  [(ArcadeDownloadPackCategoryButton *)v2 invalidateIntrinsicContentSize];
}

- (_TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end