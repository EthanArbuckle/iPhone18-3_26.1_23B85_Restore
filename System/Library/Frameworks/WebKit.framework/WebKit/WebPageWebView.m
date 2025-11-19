@interface WebPageWebView
- (BOOL)supportsTextReplacement;
- (NSString)_nameForVisualIdentificationOverlay;
- (_TtC6WebKit14WebPageWebView)initWithCoder:(id)a3;
- (_TtC6WebKit14WebPageWebView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
@end

@implementation WebPageWebView

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
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
  v8 = a3;
  v9 = a4;
  v10 = self;
  [(WKWebView *)&v14 findInteraction:v8 didBeginFindSession:v9];
  v11 = v10 + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    v13 = swift_getObjectType();
    (*(v12 + 8))(v8, v9, v13, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
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
  v8 = a3;
  v9 = a4;
  v10 = self;
  [(WKWebView *)&v14 findInteraction:v8 didEndFindSession:v9];
  v11 = v10 + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    v13 = swift_getObjectType();
    (*(v12 + 16))(v8, v9, v13, v12);

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
    v6 = self;
    if ([(WKWebView *)&v10 supportsTextReplacement])
    {
      v7 = swift_getObjectType();
      v8 = (*(v5 + 24))(v7, v5);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();

      v8 = 0;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ObjectType;
    v8 = [(WKWebView *)&v11 supportsTextReplacement];
  }

  return v8 & 1;
}

- (_TtC6WebKit14WebPageWebView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v11 = [(WKWebView *)&v13 initWithFrame:a4 configuration:x, y, width, height];

  return v11;
}

- (_TtC6WebKit14WebPageWebView)initWithCoder:(id)a3
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
  v6 = a3;
  v7 = [(WKWebView *)&v9 initWithCoder:v6];

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