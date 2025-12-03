@interface CustomJournalEmojiIconCellContentView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC7Journal37CustomJournalEmojiIconCellContentView)initWithCoder:(id)coder;
- (_TtC7Journal37CustomJournalEmojiIconCellContentView)initWithFrame:(CGRect)frame;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
@end

@implementation CustomJournalEmojiIconCellContentView

- (_TtC7Journal37CustomJournalEmojiIconCellContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView;
  *(&self->super.super.super.isa + v4) = sub_1006A2FC8();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_emojiTextField) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Journal37CustomJournalEmojiIconCellContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  fieldCopy = field;
  selfCopy = self;
  v12 = String._bridgeToObjectiveC()();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (IsSingleEmoji)
  {
    v14 = *&selfCopy->appliedConfiguration[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration];
    if (v14)
    {

      v14(v7, v9);
      sub_100004DF8(v14);
    }
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  selfCopy = self;
  sub_1006A3B90();
  v4 = *&selfCopy->appliedConfiguration[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration + 16];
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