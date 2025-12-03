@interface CNHostingPosterSnapshotImageView
- (BOOL)isSensitiveContent;
- (UIImage)image;
- (UIView)view;
- (void)setImage:(id)image;
- (void)setIsSensitiveContent:(BOOL)content;
@end

@implementation CNHostingPosterSnapshotImageView

- (UIImage)image
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  sub_199DF841C();

  return v5;
}

- (void)setImage:(id)image
{
  swift_getKeyPath();
  swift_getKeyPath();
  imageCopy = image;

  sub_199DF842C();
}

- (BOOL)isSensitiveContent
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  sub_199DF841C();

  return v5;
}

- (void)setIsSensitiveContent:(BOOL)content
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF842C();
}

- (UIView)view
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController);
  selfCopy = self;
  result = [v2 view];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end