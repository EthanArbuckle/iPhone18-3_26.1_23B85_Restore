@interface AdaptiveGlyphTextView
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (NSArray)keyCommands;
- (NSString)accessibilityLabel;
- (_TtC13MessagesPolls21AdaptiveGlyphTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)adaptiveImageGlyphUpdatedWithNotification:(id)notification;
- (void)handleMoveToNextOption;
- (void)handlePayload:(id)payload withPayloadId:(id)id;
- (void)handleTabShift;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AdaptiveGlyphTextView

- (_TtC13MessagesPolls21AdaptiveGlyphTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  v10 = sub_54FC(container, x, y, width, height);

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
  selfCopy = self;
  v3 = sub_2AF4();

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = sub_2D94();

  return v3 & 1;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_301C(change);
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
    selfCopy = self;
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
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)adaptiveImageGlyphUpdatedWithNotification:(id)notification
{
  v4 = sub_473A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_47394();
  selfCopy = self;
  sub_3388();

  (*(v5 + 8))(v8, v4);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_48734();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_3674(action, v10);

  sub_60C8(v10, &qword_62128, &qword_4AA80);
  return v8 & 1;
}

- (void)handlePayload:(id)payload withPayloadId:(id)id
{
  idCopy = id;
  if (payload)
  {
    v6 = sub_48394();
    if (idCopy)
    {
LABEL_3:
      idCopy = sub_48414();
      v8 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (id)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  selfCopy = self;
  sub_3F18(v6, idCopy, v8);
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  result = [(AdaptiveGlyphTextView *)selfCopy attributedText];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [(NSString *)result length];

  if (v5 < 1)
  {
    v8 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText);
    v7 = *&selfCopy->previousPayloadDelegate[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];

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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_48414();
    selfCopy = self;
    v5 = sub_483D4();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AdaptiveGlyphTextView();
  [(AdaptiveGlyphTextView *)&v7 setAccessibilityLabel:v5];
}

@end