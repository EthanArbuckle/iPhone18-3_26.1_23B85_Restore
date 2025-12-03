@interface WKURLSchemeHandlerAdapter
- (_TtC6WebKit25WKURLSchemeHandlerAdapter)init;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation WKURLSchemeHandlerAdapter

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19D637DC4(task);

  swift_unknownObjectRelease();
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
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
  selfCopy = self;
  v7 = sub_19D637540(task);
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