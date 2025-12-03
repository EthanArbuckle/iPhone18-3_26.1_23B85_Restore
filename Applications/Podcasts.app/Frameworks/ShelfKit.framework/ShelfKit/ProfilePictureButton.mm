@interface ProfilePictureButton
- (_TtC8ShelfKit20ProfilePictureButton)initWithCoder:(id)coder;
- (_TtC8ShelfKit20ProfilePictureButton)initWithFrame:(CGRect)frame;
- (void)updateAccount;
@end

@implementation ProfilePictureButton

- (_TtC8ShelfKit20ProfilePictureButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton_image) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8ShelfKit20ProfilePictureButton____lazy_storage___placeholderProfilePicture) = (&dword_0 + 1);
  result = sub_3EE574();
  __break(1u);
  return result;
}

- (void)updateAccount
{
  selfCopy = self;
  sub_83180();
}

- (_TtC8ShelfKit20ProfilePictureButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end