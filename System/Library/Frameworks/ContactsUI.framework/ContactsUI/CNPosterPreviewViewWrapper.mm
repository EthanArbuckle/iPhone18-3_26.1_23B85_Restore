@interface CNPosterPreviewViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI26CNPosterPreviewViewWrapper)init;
- (_TtC10ContactsUI26CNPosterPreviewViewWrapper)initWithConfiguration:(id)configuration contact:(id)contact editingState:(int64_t)state delegate:(id)delegate windowScene:(id)scene;
- (void)setHostingController:(id)controller;
@end

@implementation CNPosterPreviewViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)controller
{
  v5 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (_TtC10ContactsUI26CNPosterPreviewViewWrapper)initWithConfiguration:(id)configuration contact:(id)contact editingState:(int64_t)state delegate:(id)delegate windowScene:(id)scene
{
  configurationCopy = configuration;
  contactCopy = contact;
  swift_unknownObjectRetain();
  sceneCopy = scene;
  v14 = sub_199B7C894(configurationCopy, contactCopy, state, delegate, scene);

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