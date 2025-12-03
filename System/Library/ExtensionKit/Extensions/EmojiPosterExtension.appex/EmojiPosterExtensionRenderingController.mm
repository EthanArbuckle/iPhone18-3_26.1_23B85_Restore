@interface EmojiPosterExtensionRenderingController
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation EmojiPosterExtensionRenderingController

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10001118C(environment);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)invalidate
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
  *(&self->super.isa + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController) = 0;
  selfCopy = self;

  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController) = 0;

  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_renderer);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_renderer) = 0;
}

@end