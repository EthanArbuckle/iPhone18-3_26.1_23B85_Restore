@interface MainToolbarView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSString)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)didPressBackButtonItem;
- (void)layoutSubviews;
@end

@implementation MainToolbarView

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_1005579EC(a4);

  sub_1000074E0(&v8);
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for MainToolbarView();
  v2 = v10.receiver;
  [(MainToolbarView *)&v10 layoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC5Books15MainToolbarView_backgroundView] layer];
  [v2 bounds];
  v8 = [objc_opt_self() bezierPathWithRect:{v4, v5, v6, v7}];
  v9 = [v8 CGPath];

  [v3 setShadowPath:v9];
}

- (void)didPressBackButtonItem
{
  v2 = self;
  sub_100557C3C();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books15MainToolbarView_backgroundView);
  v8 = a4;
  v9 = self;
  if (![v7 isHidden])
  {
    goto LABEL_4;
  }

  v10 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC5Books15MainToolbarView_itemViews);
  if (v10 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_4;
    }

LABEL_7:

    return 0;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_4:
  v13.receiver = v9;
  v13.super_class = type metadata accessor for MainToolbarView();
  v11 = [(MainToolbarView *)&v13 pointInside:v8 withEvent:x, y];

  return v11;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MainToolbarView();
  v2 = v7.receiver;
  v3 = [(MainToolbarView *)&v7 accessibilityTraits];
  v4 = UIAccessibilityTraitHeader;

  if ((v4 & ~v3) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_100557FF0();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1007A2214();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end