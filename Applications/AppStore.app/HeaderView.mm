@interface HeaderView
- (_TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B110HeaderView)initWithCoder:(id)a3;
- (_TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B110HeaderView)initWithReuseIdentifier:(id)a3;
- (_TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView)initWithCoder:(id)a3;
- (_TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation HeaderView

- (_TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView;
  v6 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(&self->super.super.super.isa + v5) = sub_1001DCC8C(&off_1008AF6C0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10060FBFC();
}

- (_TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B110HeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = _s8AppStore10HeaderViewCMa_0();
  v5 = [(HeaderView *)&v7 initWithReuseIdentifier:v4];

  return v5;
}

- (_TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B110HeaderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _s8AppStore10HeaderViewCMa_0();
  v4 = a3;
  v5 = [(HeaderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end