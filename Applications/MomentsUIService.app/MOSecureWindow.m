@interface MOSecureWindow
- (_TtC16MomentsUIService14MOSecureWindow)initWithCoder:(id)a3;
- (_TtC16MomentsUIService14MOSecureWindow)initWithFrame:(CGRect)a3;
- (_TtC16MomentsUIService14MOSecureWindow)initWithWindowScene:(id)a3;
@end

@implementation MOSecureWindow

- (_TtC16MomentsUIService14MOSecureWindow)initWithCoder:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v8 = OBJC_IVAR____TtC16MomentsUIService14MOSecureWindow__controller;
  v10[1] = [objc_allocWithZone(type metadata accessor for MOAngelControllerWrapper()) init];
  Published.init(initialValue:)();
  (*(v5 + 32))(self + v8, v7, v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService14MOSecureWindow)initWithWindowScene:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService14MOSecureWindow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end