@interface CNPosterSetupAvatarPreviewViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)init;
- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)initWithImageData:(id)data cropRect:(CGRect)rect imageType:(unint64_t)type delegate:(id)delegate;
- (void)setCropRect:(CGRect)rect;
- (void)setHostingController:(id)controller;
- (void)setImageData:(id)data;
- (void)setImageType:(unint64_t)type;
@end

@implementation CNPosterSetupAvatarPreviewViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)controller
{
  v5 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)initWithImageData:(id)data cropRect:(CGRect)rect imageType:(unint64_t)type delegate:(id)delegate
{
  dataCopy = data;
  swift_unknownObjectRetain();
  v7 = sub_199DF71FC();
  v9 = v8;

  v10 = sub_199AD4FF0(v7, v9);
  swift_unknownObjectRelease();
  sub_199A9EF34(v7, v9);
  return v10;
}

- (void)setImageData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v6 = sub_199DF71FC();
  v8 = v7;

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_199AA7630(v6, v8);
  sub_199DF842C();
  sub_199AD1CA8();

  sub_199A9EF34(v6, v8);
}

- (void)setCropRect:(CGRect)rect
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF842C();
}

- (void)setImageType:(unint64_t)type
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF842C();
}

- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end