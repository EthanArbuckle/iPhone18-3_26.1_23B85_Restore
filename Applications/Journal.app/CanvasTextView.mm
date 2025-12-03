@interface CanvasTextView
- (BOOL)canPasteItemProviders:(id)providers;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)resignFirstResponder;
- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (CGSize)contentSize;
- (NSUndoManager)undoManager;
- (_TtC7Journal14CanvasTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)textDraggableView:(id)view itemsForDrag:(id)drag;
- (id)textDroppableView:(id)view proposalForDrop:(id)drop;
- (void)adjustedContentInsetDidChange;
- (void)assetRemoved:(id)removed;
- (void)deleteBackward;
- (void)didMoveToSuperview;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)layoutSubviews;
- (void)onTouchesDetected:(id)detected;
- (void)setContentSize:(CGSize)size;
- (void)setEditable:(BOOL)editable;
- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item;
- (void)textStorage:(id)storage willProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length;
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

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = (self + OBJC_IVAR____TtC7Journal14CanvasTextView_lastAppliedContentSize);
  *v5 = size;
  LOBYTE(v5[1].width) = 0;
  selfCopy = self;
  [(CanvasTextView *)selfCopy bounds];
  v7 = CGRectGetHeight(v12);
  [(CanvasTextView *)selfCopy adjustedContentInset];
  v9 = v7 - v8;
  [(CanvasTextView *)selfCopy adjustedContentInset];
  if (height <= v9 - v10)
  {
    height = v9 - v10;
  }

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for CanvasTextView();
  [(CanvasTextView *)&v11 setContentSize:width, height];
}

- (_TtC7Journal14CanvasTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_10005018C(container, x, y, width, height);
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
  selfCopy = self;
  sub_10009532C();
}

- (NSUndoManager)undoManager
{
  selfCopy = self;
  nextResponder = [(CanvasTextView *)selfCopy nextResponder];
  undoManager = [nextResponder undoManager];

  return undoManager;
}

- (void)assetRemoved:(id)removed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002B1A74();

  (*(v5 + 8))(v7, v4);
}

- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions
{
  sub_1000065A8(0, &unk_100ADC630);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  rangeCopy = range;
  selfCopy = self;
  v9 = sub_1002B3AA4(rangeCopy, v6);

  return v9;
}

- (void)setEditable:(BOOL)editable
{
  editableCopy = editable;
  v5 = type metadata accessor for CanvasTextView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isEditable = [(JournalTextView *)&v9 isEditable];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(JournalTextView *)&v8 setEditable:editableCopy];
  sub_1002B5090(isEditable);
}

- (void)adjustedContentInsetDidChange
{
  selfCopy = self;
  sub_1002B68C4();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  sub_1002B857C(event, x, y);
  v11 = v10;

  return v11;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  sub_1002B8B88();
  v4 = v3;

  return v4 & 1;
}

- (void)deleteBackward
{
  selfCopy = self;
  sub_1002B96D8();
}

- (void)onTouchesDetected:(id)detected
{
  detectedCopy = detected;
  selfCopy = self;
  if ([detectedCopy state] == 3)
  {
    isEditable = [(CanvasTextView *)selfCopy isEditable];
    if (isEditable)
    {
      sub_1002B30D0(isEditable);
    }
  }
}

- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  sub_1002D3AA4(x, y);
  LOBYTE(self) = v9;

  return self & 1;
}

- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002C5450(supporting, item);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (id)textDraggableView:(id)view itemsForDrag:(id)drag
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002D42C8(drag);

  swift_unknownObjectRelease();
  sub_1000065A8(0, &unk_100AD4C90);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002D4654(interactionCopy);

  swift_unknownObjectRelease();
  sub_1000065A8(0, &unk_100AD4C90);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002C9198(interactionCopy, begin);

  swift_unknownObjectRelease();
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002D483C(session, operation);

  swift_unknownObjectRelease();
}

- (BOOL)canPasteItemProviders:(id)providers
{
  sub_1000065A8(0, &unk_100AD8660);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v6 = sub_1002D4C68(v4);

  return v6;
}

- (id)textDroppableView:(id)view proposalForDrop:(id)drop
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1002D4DD8(drop);

  swift_unknownObjectRelease();

  return v8;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1002D5050(session);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002D552C(update);
  v9 = v8;

  swift_unknownObjectRelease();

  return v9;
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002D7194();

  swift_unknownObjectRelease();
}

- (void)textStorage:(id)storage willProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  selfCopy = self;
  sub_1002D7420(storageCopy, location, length);
}

@end