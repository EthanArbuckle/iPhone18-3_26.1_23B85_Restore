@interface CNAvatarPosterPairCollectionViewControllerWrapper
- (UIViewController)viewController;
- (_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper)init;
- (_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper)initWithConfiguration:(id)configuration contact:(id)contact contactForSharedProfile:(id)profile mode:(int64_t)mode delegate:(id)delegate;
- (void)setViewController:(id)controller;
@end

@implementation CNAvatarPosterPairCollectionViewControllerWrapper

- (UIViewController)viewController
{
  v3 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setViewController:(id)controller
{
  v5 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper)initWithConfiguration:(id)configuration contact:(id)contact contactForSharedProfile:(id)profile mode:(int64_t)mode delegate:(id)delegate
{
  configurationCopy = configuration;
  contactCopy = contact;
  profileCopy = profile;
  swift_unknownObjectRetain();
  v13 = sub_199B6AA90(configurationCopy, contactCopy, profileCopy, mode);

  swift_unknownObjectRelease();
  return v13;
}

- (_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end