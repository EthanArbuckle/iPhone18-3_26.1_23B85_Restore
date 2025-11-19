@interface CanvasTextView
- (BOOL)canPasteItemProviders:(id)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (CGSize)contentSize;
- (NSUndoManager)undoManager;
- (_TtC7Journal14CanvasTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4;
- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4;
- (void)adjustedContentInsetDidChange;
- (void)assetRemoved:(id)a3;
- (void)deleteBackward;
- (void)didMoveToSuperview;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)layoutSubviews;
- (void)onTouchesDetected:(id)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setEditable:(BOOL)a3;
- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4;
- (void)textStorage:(id)a3 willProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6;
@end

@implementation CanvasTextView

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CanvasTextView();
  [(CanvasTextView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR____TtC7Journal14CanvasTextView_lastAppliedContentSize);
  *v5 = a3;
  LOBYTE(v5[1].width) = 0;
  v6 = self;
  [(CanvasTextView *)v6 bounds];
  v7 = CGRectGetHeight(v12);
  [(CanvasTextView *)v6 adjustedContentInset];
  v9 = v7 - v8;
  [(CanvasTextView *)v6 adjustedContentInset];
  if (height <= v9 - v10)
  {
    height = v9 - v10;
  }

  v11.receiver = v6;
  v11.super_class = type metadata accessor for CanvasTextView();
  [(CanvasTextView *)&v11 setContentSize:width, height];
}

- (_TtC7Journal14CanvasTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_10005018C(a4, x, y, width, height);
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CanvasTextView();
  v2 = v3.receiver;
  [(CanvasTextView *)&v3 didMoveToSuperview];
  sub_1002D2854();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10009532C();
}

- (NSUndoManager)undoManager
{
  v2 = self;
  v3 = [(CanvasTextView *)v2 nextResponder];
  v4 = [v3 undoManager];

  return v4;
}

- (void)assetRemoved:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1002B1A74();

  (*(v5 + 8))(v7, v4);
}

- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4
{
  sub_1000065A8(0, &unk_100ADC630);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  v9 = sub_1002B3AA4(v7, v6);

  return v9;
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for CanvasTextView();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(JournalTextView *)&v9 isEditable];
  v8.receiver = v6;
  v8.super_class = v5;
  [(JournalTextView *)&v8 setEditable:v3];
  sub_1002B5090(v7);
}

- (void)adjustedContentInsetDidChange
{
  v2 = self;
  sub_1002B68C4();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  sub_1002B857C(a4, x, y);
  v11 = v10;

  return v11;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  sub_1002B8B88();
  v4 = v3;

  return v4 & 1;
}

- (void)deleteBackward
{
  v2 = self;
  sub_1002B96D8();
}

- (void)onTouchesDetected:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([v4 state] == 3)
  {
    v5 = [(CanvasTextView *)v6 isEditable];
    if (v5)
    {
      sub_1002B30D0(v5);
    }
  }
}

- (BOOL)scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_1002D3AA4(x, y);
  LOBYTE(self) = v9;

  return self & 1;
}

- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_1002C5450(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1002D42C8(a4);

  swift_unknownObjectRelease();
  sub_1000065A8(0, &unk_100AD4C90);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1002D4654(v5);

  swift_unknownObjectRelease();
  sub_1000065A8(0, &unk_100AD4C90);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1002C9198(v6, a4);

  swift_unknownObjectRelease();
}

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1002D483C(a4, a5);

  swift_unknownObjectRelease();
}

- (BOOL)canPasteItemProviders:(id)a3
{
  sub_1000065A8(0, &unk_100AD8660);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = sub_1002D4C68(v4);

  return v6;
}

- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1002D4DD8(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1002D5050(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1002D552C(a4);
  v9 = v8;

  swift_unknownObjectRelease();

  return v9;
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1002D7194();

  swift_unknownObjectRelease();
}

- (void)textStorage:(id)a3 willProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v10 = self;
  sub_1002D7420(v9, location, length);
}

@end