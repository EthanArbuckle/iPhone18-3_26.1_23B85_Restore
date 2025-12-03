@interface QuickReplyToMeBubbleView
- (_TtC8Business24QuickReplyToMeBubbleView)initWithCoder:(id)coder;
- (_TtC8Business24QuickReplyToMeBubbleView)initWithFrame:(CGRect)frame;
- (void)tapGestureRecognized:(id)recognized;
@end

@implementation QuickReplyToMeBubbleView

- (_TtC8Business24QuickReplyToMeBubbleView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_lastButtonBottomConstraint) = 0;
  *&self->model[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  view = [(QuickReplyToMeBubbleView *)recognizedCopy view];
  if (view)
  {
    v6 = view;
    type metadata accessor for QuickReplyItemButton();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = [v7 tag];
      v9 = *&selfCopy->model[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_onItemSelected];
      (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_onItemSelected))(*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_model), *&selfCopy->model[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_model], selfCopy->model[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_model + 8], v8);
      v10 = v6;
    }

    else
    {
      v10 = recognizedCopy;
      recognizedCopy = v6;
    }

    v11 = recognizedCopy;

    recognizedCopy = selfCopy;
    selfCopy = v11;
  }
}

- (_TtC8Business24QuickReplyToMeBubbleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end