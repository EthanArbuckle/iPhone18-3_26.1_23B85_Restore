@interface CNAvatarPosterPairCollectionViewControllerWrapper
- (UIViewController)viewController;
- (_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper)init;
- (_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper)initWithConfiguration:(id)a3 contact:(id)a4 contactForSharedProfile:(id)a5 mode:(int64_t)a6 delegate:(id)a7;
- (void)setViewController:(id)a3;
@end

@implementation CNAvatarPosterPairCollectionViewControllerWrapper

- (UIViewController)viewController
{
  v3 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setViewController:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper)initWithConfiguration:(id)a3 contact:(id)a4 contactForSharedProfile:(id)a5 mode:(int64_t)a6 delegate:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  v13 = sub_199B6AA90(v10, v11, v12, a6);

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