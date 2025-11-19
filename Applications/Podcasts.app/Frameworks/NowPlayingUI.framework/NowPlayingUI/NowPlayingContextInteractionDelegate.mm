@interface NowPlayingContextInteractionDelegate
- (_TtC12NowPlayingUI36NowPlayingContextInteractionDelegate)init;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(void *)a3 previewForHighlightingMenuWithConfiguration:(void *)a4;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
@end

@implementation NowPlayingContextInteractionDelegate

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = _s12NowPlayingUI0aB26ContextInteractionDelegateC011contextMenuE0_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0mhE0C_So7CGPointVtF_0(v5);

  return v7;
}

- (id)contextMenuInteraction:(void *)a3 previewForHighlightingMenuWithConfiguration:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_7CD7C(v6);

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_7CE58(v9, a5);

  swift_unknownObjectRelease();
}

- (_TtC12NowPlayingUI36NowPlayingContextInteractionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end