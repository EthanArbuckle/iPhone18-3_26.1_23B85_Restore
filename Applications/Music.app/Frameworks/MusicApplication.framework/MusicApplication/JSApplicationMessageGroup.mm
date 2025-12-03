@interface JSApplicationMessageGroup
- (_TtC16MusicApplication25JSApplicationMessageGroup)init;
- (_TtC16MusicApplication25JSApplicationMessageGroup)initWithGroupIdentifier:(id)identifier;
- (void)performModalMessagePresentation:(id)presentation fromViewController:(id)controller;
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

- (void)performModalMessagePresentation:(id)presentation fromViewController:(id)controller
{
  v6 = objc_allocWithZone(type metadata accessor for JSApplicationMessage());
  presentationCopy = presentation;
  controllerCopy = controller;
  v9 = JSApplicationMessage.init(from:)(presentationCopy);
  v10 = *JSBridge.shared.unsafeMutableAddressor();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = controllerCopy;
  v12 = *&stru_B8.segname[(swift_isaMask & *v10) + 16];
  v13 = controllerCopy;
  v14 = v10;
  v15 = v9;
  v12(sub_309418, v11);
}

- (_TtC16MusicApplication25JSApplicationMessageGroup)initWithGroupIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end