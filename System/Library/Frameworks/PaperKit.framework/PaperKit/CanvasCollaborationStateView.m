@interface CanvasCollaborationStateView
- (_TtC8PaperKit28CanvasCollaborationStateView)initWithCoder:(id)a3;
- (_TtC8PaperKit28CanvasCollaborationStateView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation CanvasCollaborationStateView

- (_TtC8PaperKit28CanvasCollaborationStateView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC8PaperKit28CanvasCollaborationStateView_selectionCursors;
  *(&self->super.super.super.isa + v8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit28CanvasCollaborationStateViewC0H6CursorVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11.receiver = self;
  v11.super_class = type metadata accessor for CanvasCollaborationStateView();
  v9 = [(CanvasCollaborationStateView *)&v11 initWithFrame:x, y, width, height];
  [(CanvasCollaborationStateView *)v9 setUserInteractionEnabled:0];
  return v9;
}

- (_TtC8PaperKit28CanvasCollaborationStateView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8PaperKit28CanvasCollaborationStateView_selectionCursors;
  *(&self->super.super.super.isa + v4) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit28CanvasCollaborationStateViewC0H6CursorVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  CanvasCollaborationStateView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)layoutSubviews
{
  v2 = self;
  CanvasCollaborationStateView.layoutSubviews()();
}

@end