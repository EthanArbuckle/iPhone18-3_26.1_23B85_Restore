@interface AdaptiveGlyphTextView
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (NSArray)keyCommands;
- (NSString)accessibilityLabel;
- (_TtC13MessagesPolls21AdaptiveGlyphTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)adaptiveImageGlyphUpdatedWithNotification:(id)a3;
- (void)handleMoveToNextOption;
- (void)handlePayload:(id)a3 withPayloadId:(id)a4;
- (void)handleTabShift;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AdaptiveGlyphTextView

- (_TtC13MessagesPolls21AdaptiveGlyphTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = sub_54FC(a4, x, y, width, height);

  return v10;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AdaptiveGlyphTextView();
  v2 = v4.receiver;
  [(AdaptiveGlyphTextView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  [v2 bounds];
  [v3 setFrame:?];
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = sub_2AF4();

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = sub_2D94();

  return v3 & 1;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_301C(a3);
}

- (NSArray)keyCommands
{
  if (sub_5C4C())
  {
    sub_61D4(0, &qword_62130, UIKeyCommand_ptr);
    v2 = sub_48534();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)handleTabShift
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 64);
    v4 = *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 72);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)handleMoveToNextOption
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 80);
    v4 = *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 88);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)adaptiveImageGlyphUpdatedWithNotification:(id)a3
{
  v4 = sub_473A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_47394();
  v9 = self;
  sub_3388();

  (*(v5 + 8))(v8, v4);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_48734();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_3674(a3, v10);

  sub_60C8(v10, &qword_62128, &qword_4AA80);
  return v8 & 1;
}

- (void)handlePayload:(id)a3 withPayloadId:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = sub_48394();
    if (v4)
    {
LABEL_3:
      v4 = sub_48414();
      v8 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = self;
  sub_3F18(v6, v4, v8);
}

- (NSString)accessibilityLabel
{
  v2 = self;
  result = [(AdaptiveGlyphTextView *)v2 attributedText];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [(NSString *)result length];

  if (v5 < 1)
  {
    v8 = *(&v2->super.super.super.super.super.isa + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText);
    v7 = *&v2->previousPayloadDelegate[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];

    if (v7)
    {
      v9 = sub_483D4();

      v6 = v9;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_48414();
    v4 = self;
    v5 = sub_483D4();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AdaptiveGlyphTextView();
  [(AdaptiveGlyphTextView *)&v7 setAccessibilityLabel:v5];
}

@end