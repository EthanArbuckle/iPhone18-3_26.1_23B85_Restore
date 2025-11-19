@interface NowPlayingContentView
- (AVPlayerLayer)accessibilityPlayerVideoLayer;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NowPlayingContentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v6;
    v7 = self;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = self;
    v8 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v10 = [(NowPlayingContentView *)&v14 _shouldAnimatePropertyWithKey:v8];

  if (v10)
  {

    return 1;
  }

  if (a3)
  {
    v13._countAndFlagsBits = 0x776F64616873;
    v13._object = 0xE600000000000000;
    v12 = String.hasPrefix(_:)(v13);

    return v12;
  }

  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100056FE4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  v5 = a3;
  [(NowPlayingContentView *)&v8 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v6 userInterfaceStyle];
  if (!v5 || v7 != [v5 userInterfaceStyle])
  {
    [v4 setNeedsLayout];
  }
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_10005AA14();
}

- (AVPlayerLayer)accessibilityPlayerVideoLayer
{
  v2 = self;
  sub_100661448();
  v4 = v3;

  return v4;
}

@end