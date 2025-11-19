@interface MultiAppFallbackCardCollectionViewCell
- (NSArray)accessibilityElements;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityElements:(id)isa;
@end

@implementation MultiAppFallbackCardCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(BaseTodayCardCollectionViewCell *)&v4 layoutSubviews];
  sub_100033268();
  sub_10003340C();
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100034104();
}

- (NSArray)accessibilityElements
{
  sub_10000C518(&unk_1009259C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A5A00;
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
  *(v3 + 56) = type metadata accessor for TodayCardLabelsView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_100753294().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_1007532A4();
    v6 = self;
    isa = sub_100753294().super.isa;
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(MultiAppFallbackCardCollectionViewCell *)&v8 setAccessibilityElements:isa];
}

@end