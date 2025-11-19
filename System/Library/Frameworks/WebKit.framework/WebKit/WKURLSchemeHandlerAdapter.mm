@interface WKURLSchemeHandlerAdapter
- (_TtC6WebKit25WKURLSchemeHandlerAdapter)init;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
- (void)webView:(id)a3 stopURLSchemeTask:(id)a4;
@end

@implementation WKURLSchemeHandlerAdapter

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  sub_19D637DC4(a4);

  swift_unknownObjectRelease();
}

- (void)webView:(id)a3 stopURLSchemeTask:(id)a4
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_19D637540(a4);
  swift_endAccess();
  if (v7)
  {
    sub_19E6CD5E8();
  }

  swift_unknownObjectRelease();
}

- (_TtC6WebKit25WKURLSchemeHandlerAdapter)init
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end