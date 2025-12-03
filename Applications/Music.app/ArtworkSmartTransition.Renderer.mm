@interface ArtworkSmartTransition.Renderer
- (_TtCO5Music22ArtworkSmartTransition8Renderer)init;
- (void)drawInMTKView:(id)view;
- (void)mtkView:drawableSizeWillChange:;
@end

@implementation ArtworkSmartTransition.Renderer

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100172D54(viewCopy);
}

- (_TtCO5Music22ArtworkSmartTransition8Renderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mtkView:drawableSizeWillChange:
{
  if (qword_10117F5C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_101218A98);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "mtkView(_:drawableSizeWillChange:)", v2, 2u);
  }
}

@end