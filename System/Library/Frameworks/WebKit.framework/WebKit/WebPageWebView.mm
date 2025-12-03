@interface WebPageWebView
- (BOOL)supportsTextReplacement;
- (NSString)_nameForVisualIdentificationOverlay;
- (_TtC6WebKit14WebPageWebView)initWithCoder:(id)coder;
- (_TtC6WebKit14WebPageWebView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
@end

@implementation WebPageWebView

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  ObjectType = swift_getObjectType();
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  [(WKWebView *)&v14 findInteraction:interactionCopy didBeginFindSession:sessionCopy];
  v11 = selfCopy + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    v13 = swift_getObjectType();
    (*(v12 + 8))(interactionCopy, sessionCopy, v13, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  ObjectType = swift_getObjectType();
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  [(WKWebView *)&v14 findInteraction:interactionCopy didEndFindSession:sessionCopy];
  v11 = selfCopy + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    v13 = swift_getObjectType();
    (*(v12 + 16))(interactionCopy, sessionCopy, v13, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (BOOL)supportsTextReplacement
{
  ObjectType = swift_getObjectType();
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    v10.receiver = self;
    v10.super_class = ObjectType;
    selfCopy = self;
    if ([(WKWebView *)&v10 supportsTextReplacement])
    {
      v7 = swift_getObjectType();
      supportsTextReplacement = (*(v5 + 24))(v7, v5);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();

      supportsTextReplacement = 0;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ObjectType;
    supportsTextReplacement = [(WKWebView *)&v11 supportsTextReplacement];
  }

  return supportsTextReplacement & 1;
}

- (_TtC6WebKit14WebPageWebView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(WKWebView *)&v13 initWithFrame:configuration configuration:x, y, width, height];

  return height;
}

- (_TtC6WebKit14WebPageWebView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(WKWebView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

- (NSString)_nameForVisualIdentificationOverlay
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_19E6CD4C8();

  return v2;
}

@end