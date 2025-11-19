@interface NowPlayingContentView
- (AVPlayerLayer)accessibilityPlayerVideoLayer;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (void)layoutSubviews;
@end

@implementation NowPlayingContentView

- (void)layoutSubviews
{
  v2 = self;
  sub_C6E1C();
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_1448DC();
    a3 = v6;
    v7 = self;
    v8 = sub_14489C();
  }

  else
  {
    v9 = self;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = ObjectType;
  v10 = [(NowPlayingContentView *)&v13 _shouldAnimatePropertyWithKey:v8];

  if (v10)
  {

    return 1;
  }

  if (a3)
  {
    v14._countAndFlagsBits = 0x776F64616873;
    v14._object = 0xE600000000000000;
    v12 = sub_14496C(v14);

    return v12;
  }

  __break(1u);
  return result;
}

- (AVPlayerLayer)accessibilityPlayerVideoLayer
{
  v2 = self;
  v3 = sub_C8424();

  return v3;
}

@end