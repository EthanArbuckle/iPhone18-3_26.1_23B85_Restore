@interface PrivacyTypeCollectionViewCell
- (NSArray)accessibilityCategoryViews;
- (void)layoutSubviews;
- (void)lowMemoryWarning:(id)a3;
- (void)prepareForReuse;
@end

@implementation PrivacyTypeCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_100362738();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(PrivacyTypeCollectionViewCell *)&v4 prepareForReuse];
  sub_1000278C4(0, 0, &OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel);
  sub_1000278C4(0, 0, &OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v5, v3);
  sub_100363EC8();
  *&v2[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_1003617FC();
}

- (void)lowMemoryWarning:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v8 = self;
  sub_10002849C(&qword_1009813A0);
  ReusePool.drain()();
  swift_endAccess();

  (*(v5 + 8))(v7, v4);
}

- (NSArray)accessibilityCategoryViews
{
  swift_beginAccess();
  type metadata accessor for PrivacyCategoryView();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end