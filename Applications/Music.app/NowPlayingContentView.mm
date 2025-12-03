@interface NowPlayingContentView
- (AVPlayerLayer)accessibilityPlayerVideoLayer;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NowPlayingContentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  ObjectType = swift_getObjectType();
  if (key)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    key = v6;
    selfCopy = self;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v10 = [(NowPlayingContentView *)&v14 _shouldAnimatePropertyWithKey:v8];

  if (v10)
  {

    return 1;
  }

  if (key)
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
  selfCopy = self;
  sub_100056FE4();
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  changeCopy = change;
  [(NowPlayingContentView *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if (!changeCopy || userInterfaceStyle != [changeCopy userInterfaceStyle])
  {
    [v4 setNeedsLayout];
  }
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_10005AA14();
}

- (AVPlayerLayer)accessibilityPlayerVideoLayer
{
  selfCopy = self;
  sub_100661448();
  v4 = v3;

  return v4;
}

@end