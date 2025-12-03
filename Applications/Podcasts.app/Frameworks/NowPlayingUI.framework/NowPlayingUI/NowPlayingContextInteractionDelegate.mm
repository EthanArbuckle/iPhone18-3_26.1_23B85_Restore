@interface NowPlayingContextInteractionDelegate
- (_TtC12NowPlayingUI36NowPlayingContextInteractionDelegate)init;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(void *)interaction previewForHighlightingMenuWithConfiguration:(void *)configuration;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
@end

@implementation NowPlayingContextInteractionDelegate

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = _s12NowPlayingUI0aB26ContextInteractionDelegateC011contextMenuE0_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0mhE0C_So7CGPointVtF_0(interactionCopy);

  return v7;
}

- (id)contextMenuInteraction:(void *)interaction previewForHighlightingMenuWithConfiguration:(void *)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_7CD7C(interactionCopy);

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_7CE58(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (_TtC12NowPlayingUI36NowPlayingContextInteractionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end