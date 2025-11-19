@interface CanvasMomentsTitleView
- (UIResponder)nextResponder;
- (_TtC7Journal22CanvasMomentsTitleView)initWithCoder:(id)a3;
- (_TtC7Journal22CanvasMomentsTitleView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)_accessibilityResponderElement;
- (void)insertText:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4;
@end

@implementation CanvasMomentsTitleView

- (_TtC7Journal22CanvasMomentsTitleView)initWithCoder:(id)a3
{
  *&self->journalEntry[OBJC_IVAR____TtC7Journal22CanvasMomentsTitleView_textViewFocusDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UIResponder)nextResponder
{
  v2 = self;
  v3 = [(CanvasMomentsTitleView *)v2 superview];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 superview];

    if (v5)
    {
      type metadata accessor for JournalTextView();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = [v6 nextResponder];

        goto LABEL_7;
      }
    }
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for CanvasMomentsTitleView();
  v7 = [(CanvasMomentsTitleView *)&v9 nextResponder];

LABEL_7:

  return v7;
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = self;
  sub_100190518(v7, v9, location, length);
}

- (void)insertText:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100190680(v4, v6);
}

- (id)_accessibilityResponderElement
{
  v2 = self;
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

- (_TtC7Journal22CanvasMomentsTitleView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  sub_1001912C4(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end