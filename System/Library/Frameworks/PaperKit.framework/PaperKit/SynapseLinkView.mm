@interface SynapseLinkView
- (BOOL)_wantsContextMenuPreviewForLinkView:(id)a3;
- (_TtC8PaperKit15SynapseLinkView)init;
- (id)_contextMenuActionsForLinkView:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)linkViewNeedsResize:(id)a3;
@end

@implementation SynapseLinkView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SynapseLinkView();
  v2 = v4.receiver;
  [(SynapseLinkView *)&v4 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    [*(*&v2[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink] + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) loadFullPreviewIfNeeded];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  SynapseLinkView.layoutSubviews()();
}

- (id)_contextMenuActionsForLinkView:(id)a3
{
  v5 = self + OBJC_IVAR____TtC8PaperKit8LinkView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 8);
    v8 = a3;
    v9 = self;
    v10 = v7();
    swift_unknownObjectRelease();
    if (v10)
    {

      goto LABEL_6;
    }
  }

  else
  {
    v11 = a3;
    v12 = self;
  }

LABEL_6:
  type metadata accessor for UIAction();
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (BOOL)_wantsContextMenuPreviewForLinkView:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = specialized SynapseLinkView._wantsContextMenuPreview(for:)();

  return self & 1;
}

- (void)linkViewNeedsResize:(id)a3
{
  v4 = a3;
  v5 = self;
  SynapseLinkView.linkViewNeedsResize(_:)(v4);
}

- (_TtC8PaperKit15SynapseLinkView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = SynapseLinkView.linkPresentationView.getter();
  v10 = [v9 _contextMenuInteractionDelegate];

  if (v10)
  {
    v11 = [v10 contextMenuInteraction:v7 configurationForMenuAtLocation:{x, y}];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12 = self;
  swift_unknownObjectRetain();
  v10 = SynapseLinkView.linkPresentationView.getter();
  v11 = [v10 _contextMenuInteractionDelegate];

  if (v11)
  {
    if ([v11 respondsToSelector_])
    {
      [v11 contextMenuInteraction:v8 willDisplayMenuForConfiguration:v9 animator:a5];
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

@end