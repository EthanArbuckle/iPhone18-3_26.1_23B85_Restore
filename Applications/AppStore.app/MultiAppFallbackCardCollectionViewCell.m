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
  sub_1003CC8A0();
  sub_1003CCA44();
  v3 = *&v2[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003CD73C();
}

- (NSArray)accessibilityElements
{
  sub_10002849C(&qword_1009701B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B10D0;
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
  *(v3 + 56) = type metadata accessor for TodayCardLabelsView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
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