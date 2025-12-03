@interface CanvasCollaborationStateView
- (_TtC8PaperKit28CanvasCollaborationStateView)initWithCoder:(id)coder;
- (_TtC8PaperKit28CanvasCollaborationStateView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation CanvasCollaborationStateView

- (_TtC8PaperKit28CanvasCollaborationStateView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC8PaperKit28CanvasCollaborationStateView_selectionCursors;
  *(&self->super.super.super.isa + v8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit28CanvasCollaborationStateViewC0H6CursorVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11.receiver = self;
  v11.super_class = type metadata accessor for CanvasCollaborationStateView();
  height = [(CanvasCollaborationStateView *)&v11 initWithFrame:x, y, width, height];
  [(CanvasCollaborationStateView *)height setUserInteractionEnabled:0];
  return height;
}

- (_TtC8PaperKit28CanvasCollaborationStateView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8PaperKit28CanvasCollaborationStateView_selectionCursors;
  *(&self->super.super.super.isa + v4) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit28CanvasCollaborationStateViewC0H6CursorVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  CanvasCollaborationStateView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)layoutSubviews
{
  selfCopy = self;
  CanvasCollaborationStateView.layoutSubviews()();
}

@end