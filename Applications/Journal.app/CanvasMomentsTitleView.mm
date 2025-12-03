@interface CanvasMomentsTitleView
- (UIResponder)nextResponder;
- (_TtC7Journal22CanvasMomentsTitleView)initWithCoder:(id)coder;
- (_TtC7Journal22CanvasMomentsTitleView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)_accessibilityResponderElement;
- (void)insertText:(id)text;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item;
@end

@implementation CanvasMomentsTitleView

- (_TtC7Journal22CanvasMomentsTitleView)initWithCoder:(id)coder
{
  *&self->journalEntry[OBJC_IVAR____TtC7Journal22CanvasMomentsTitleView_textViewFocusDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UIResponder)nextResponder
{
  selfCopy = self;
  superview = [(CanvasMomentsTitleView *)selfCopy superview];
  if (superview)
  {
    v4 = superview;
    v3Superview = [superview superview];

    if (v3Superview)
    {
      type metadata accessor for JournalTextView();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        nextResponder = [v6 nextResponder];

        goto LABEL_7;
      }
    }
  }

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for CanvasMomentsTitleView();
  nextResponder = [(CanvasMomentsTitleView *)&v9 nextResponder];

LABEL_7:

  return nextResponder;
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (text)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  selfCopy = self;
  sub_100190518(v7, v9, location, length);
}

- (void)insertText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_100190680(v4, v6);
}

- (id)_accessibilityResponderElement
{
  selfCopy = self;
  sub_100190830(v10);

  v3 = v11;
  if (v11)
  {
    v4 = sub_10000CA14(v10, v11);
    v5 = *(v3 - 8);
    __chkstk_darwin(v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v7, v3);
    sub_10000BA7C(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_TtC7Journal22CanvasMomentsTitleView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001912C4(item);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end