@interface SynapseLinkView
- (BOOL)_wantsContextMenuPreviewForLinkView:(id)view;
- (_TtC8PaperKit15SynapseLinkView)init;
- (id)_contextMenuActionsForLinkView:(id)view;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)linkViewNeedsResize:(id)resize;
@end

@implementation SynapseLinkView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SynapseLinkView();
  v2 = v4.receiver;
  [(SynapseLinkView *)&v4 didMoveToWindow];
  window = [v2 window];
  if (window)
  {

    [*(*&v2[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink] + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) loadFullPreviewIfNeeded];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  SynapseLinkView.layoutSubviews()();
}

- (id)_contextMenuActionsForLinkView:(id)view
{
  v5 = self + OBJC_IVAR____TtC8PaperKit8LinkView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 8);
    viewCopy = view;
    selfCopy = self;
    v10 = v7();
    swift_unknownObjectRelease();
    if (v10)
    {

      goto LABEL_6;
    }
  }

  else
  {
    viewCopy2 = view;
    selfCopy2 = self;
  }

LABEL_6:
  type metadata accessor for UIAction();
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (BOOL)_wantsContextMenuPreviewForLinkView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = specialized SynapseLinkView._wantsContextMenuPreview(for:)();

  return self & 1;
}

- (void)linkViewNeedsResize:(id)resize
{
  resizeCopy = resize;
  selfCopy = self;
  SynapseLinkView.linkViewNeedsResize(_:)(resizeCopy);
}

- (_TtC8PaperKit15SynapseLinkView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = SynapseLinkView.linkPresentationView.getter();
  _contextMenuInteractionDelegate = [v9 _contextMenuInteractionDelegate];

  if (_contextMenuInteractionDelegate)
  {
    v11 = [_contextMenuInteractionDelegate contextMenuInteraction:interactionCopy configurationForMenuAtLocation:{x, y}];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  swift_unknownObjectRetain();
  v10 = SynapseLinkView.linkPresentationView.getter();
  _contextMenuInteractionDelegate = [v10 _contextMenuInteractionDelegate];

  if (_contextMenuInteractionDelegate)
  {
    if ([_contextMenuInteractionDelegate respondsToSelector_])
    {
      [_contextMenuInteractionDelegate contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animator];
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

@end