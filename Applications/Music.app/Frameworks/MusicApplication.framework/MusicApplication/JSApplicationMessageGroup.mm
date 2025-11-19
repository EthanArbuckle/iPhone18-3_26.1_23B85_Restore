@interface JSApplicationMessageGroup
- (_TtC16MusicApplication25JSApplicationMessageGroup)init;
- (_TtC16MusicApplication25JSApplicationMessageGroup)initWithGroupIdentifier:(id)a3;
- (void)performModalMessagePresentation:(id)a3 fromViewController:(id)a4;
@end

@implementation JSApplicationMessageGroup

- (_TtC16MusicApplication25JSApplicationMessageGroup)init
{
  v3 = sub_AB9260();
  v6.receiver = self;
  v6.super_class = type metadata accessor for JSApplicationMessageGroup();
  v4 = [(JSApplicationMessageGroup *)&v6 initWithGroupIdentifier:v3];

  return v4;
}

- (void)performModalMessagePresentation:(id)a3 fromViewController:(id)a4
{
  v6 = objc_allocWithZone(type metadata accessor for JSApplicationMessage());
  v7 = a3;
  v8 = a4;
  v9 = JSApplicationMessage.init(from:)(v7);
  v10 = *JSBridge.shared.unsafeMutableAddressor();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v12 = *&stru_B8.segname[(swift_isaMask & *v10) + 16];
  v13 = v8;
  v14 = v10;
  v15 = v9;
  v12(sub_309418, v11);
}

- (_TtC16MusicApplication25JSApplicationMessageGroup)initWithGroupIdentifier:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end