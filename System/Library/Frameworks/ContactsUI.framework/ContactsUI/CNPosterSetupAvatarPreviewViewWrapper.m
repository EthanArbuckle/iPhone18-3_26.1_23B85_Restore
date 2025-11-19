@interface CNPosterSetupAvatarPreviewViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)init;
- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)initWithImageData:(id)a3 cropRect:(CGRect)a4 imageType:(unint64_t)a5 delegate:(id)a6;
- (void)setCropRect:(CGRect)a3;
- (void)setHostingController:(id)a3;
- (void)setImageData:(id)a3;
- (void)setImageType:(unint64_t)a3;
@end

@implementation CNPosterSetupAvatarPreviewViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)initWithImageData:(id)a3 cropRect:(CGRect)a4 imageType:(unint64_t)a5 delegate:(id)a6
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = sub_199DF71FC();
  v9 = v8;

  v10 = sub_199AD4FF0(v7, v9);
  swift_unknownObjectRelease();
  sub_199A9EF34(v7, v9);
  return v10;
}

- (void)setImageData:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (void)setCropRect:(CGRect)a3
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF842C();
}

- (void)setImageType:(unint64_t)a3
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