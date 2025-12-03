@interface MainToolbarView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSString)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)didPressBackButtonItem;
- (void)layoutSubviews;
@end

@implementation MainToolbarView

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_1005579EC(collection);

  sub_1000074E0(&v8);
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for MainToolbarView();
  v2 = v10.receiver;
  [(MainToolbarView *)&v10 layoutSubviews];
  layer = [*&v2[OBJC_IVAR____TtC5Books15MainToolbarView_backgroundView] layer];
  [v2 bounds];
  v8 = [objc_opt_self() bezierPathWithRect:{v4, v5, v6, v7}];
  cGPath = [v8 CGPath];

  [layer setShadowPath:cGPath];
}

- (void)didPressBackButtonItem
{
  selfCopy = self;
  sub_100557C3C();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books15MainToolbarView_backgroundView);
  eventCopy = event;
  selfCopy = self;
  if (![v7 isHidden])
  {
    goto LABEL_4;
  }

  v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Books15MainToolbarView_itemViews);
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
  v13.receiver = selfCopy;
  v13.super_class = type metadata accessor for MainToolbarView();
  v11 = [(MainToolbarView *)&v13 pointInside:eventCopy withEvent:x, y];

  return v11;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MainToolbarView();
  v2 = v7.receiver;
  accessibilityTraits = [(MainToolbarView *)&v7 accessibilityTraits];
  v4 = UIAccessibilityTraitHeader;

  if ((v4 & ~accessibilityTraits) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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