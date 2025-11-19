@interface CNPosterPreviewViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI26CNPosterPreviewViewWrapper)init;
- (_TtC10ContactsUI26CNPosterPreviewViewWrapper)initWithConfiguration:(id)a3 contact:(id)a4 editingState:(int64_t)a5 delegate:(id)a6 windowScene:(id)a7;
- (void)setHostingController:(id)a3;
@end

@implementation CNPosterPreviewViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC10ContactsUI26CNPosterPreviewViewWrapper)initWithConfiguration:(id)a3 contact:(id)a4 editingState:(int64_t)a5 delegate:(id)a6 windowScene:(id)a7
{
  v11 = a3;
  v12 = a4;
  swift_unknownObjectRetain();
  v13 = a7;
  v14 = sub_199B7C894(v11, v12, a5, a6, a7);

  swift_unknownObjectRelease();
  return v14;
}

- (_TtC10ContactsUI26CNPosterPreviewViewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end