@interface CustomJournalEmojiIconCellContentView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC7Journal37CustomJournalEmojiIconCellContentView)initWithCoder:(id)a3;
- (_TtC7Journal37CustomJournalEmojiIconCellContentView)initWithFrame:(CGRect)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
@end

@implementation CustomJournalEmojiIconCellContentView

- (_TtC7Journal37CustomJournalEmojiIconCellContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView;
  *(&self->super.super.super.isa + v4) = sub_1006A2FC8();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_emojiTextField) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Journal37CustomJournalEmojiIconCellContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  v12 = String._bridgeToObjectiveC()();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (IsSingleEmoji)
  {
    v14 = *&v11->appliedConfiguration[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration];
    if (v14)
    {

      v14(v7, v9);
      sub_100004DF8(v14);
    }
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v6 = self;
  sub_1006A3B90();
  v4 = *&v6->appliedConfiguration[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration + 16];
  if (v4)
  {

    v4(v5);

    sub_100004DF8(v4);
  }

  else
  {
  }
}

@end