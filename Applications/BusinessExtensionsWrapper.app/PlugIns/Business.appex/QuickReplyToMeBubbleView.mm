@interface QuickReplyToMeBubbleView
- (_TtC8Business24QuickReplyToMeBubbleView)initWithCoder:(id)a3;
- (_TtC8Business24QuickReplyToMeBubbleView)initWithFrame:(CGRect)a3;
- (void)tapGestureRecognized:(id)a3;
@end

@implementation QuickReplyToMeBubbleView

- (_TtC8Business24QuickReplyToMeBubbleView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_lastButtonBottomConstraint) = 0;
  *&self->model[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v12 = self;
  v5 = [(QuickReplyToMeBubbleView *)v4 view];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for QuickReplyItemButton();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = [v7 tag];
      v9 = *&v12->model[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_onItemSelected];
      (*(&v12->super.super.super.isa + OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_onItemSelected))(*(&v12->super.super.super.isa + OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_model), *&v12->model[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_model], v12->model[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_model + 8], v8);
      v10 = v6;
    }

    else
    {
      v10 = v4;
      v4 = v6;
    }

    v11 = v4;

    v4 = v12;
    v12 = v11;
  }
}

- (_TtC8Business24QuickReplyToMeBubbleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end