@interface PaperDocumentInlineView
- (_TtC8PaperKit23PaperDocumentInlineView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)toolPickerWillShow:(id)a3;
@end

@implementation PaperDocumentInlineView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PaperDocumentInlineView();
  v2 = v7.receiver;
  [(PaperDocumentInlineView *)&v7 layoutSubviews];
  v3 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4)
  {
    v5 = v4;
    PaperDocumentInlineView.enclosingTextViewTiledViewRulerHostingView.getter();
    PaperDocumentView.rulerHostView.setter(v6);
  }
}

- (void)didMoveToWindow
{
  v2 = self;
  PaperDocumentInlineView.didMoveToWindow()();
}

- (void)toolPickerWillShow:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  PaperDocumentInlineView.toolPickerWillShow(_:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC8PaperKit23PaperDocumentInlineView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end