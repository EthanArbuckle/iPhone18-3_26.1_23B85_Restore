@interface LearnMoreFooterTextView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView)initWithCoder:(id)a3;
@end

@implementation LearnMoreFooterTextView

- (_TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView____lazy_storage___textView) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_highlightedText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_tapCompletion);
  *v5 = nullsub_1;
  v5[1] = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v10 = sub_29E2BC904();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BC8D4();
  v14 = a3;
  v15 = self;
  LOBYTE(length) = sub_29DEBE8A0(v13, location, length);

  (*(v11 + 8))(v13, v10);
  return length & 1;
}

@end