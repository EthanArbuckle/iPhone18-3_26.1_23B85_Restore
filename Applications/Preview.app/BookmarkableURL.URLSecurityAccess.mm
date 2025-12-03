@interface BookmarkableURL.URLSecurityAccess
- (_TtCV17PreviewFoundation15BookmarkableURLP33_F50D038DC7581BEB6B4407D7C634236B17URLSecurityAccess)init;
- (void)dealloc;
@end

@implementation BookmarkableURL.URLSecurityAccess

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, self + OBJC_IVAR____TtCV17PreviewFoundation15BookmarkableURLP33_F50D038DC7581BEB6B4407D7C634236B17URLSecurityAccess_url, v4, v6);
  selfCopy = self;
  URL.stopAccessingSecurityScopedResource()();
  (*(v5 + 8))(v8, v4);
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(BookmarkableURL.URLSecurityAccess *)&v10 dealloc];
}

- (_TtCV17PreviewFoundation15BookmarkableURLP33_F50D038DC7581BEB6B4407D7C634236B17URLSecurityAccess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end