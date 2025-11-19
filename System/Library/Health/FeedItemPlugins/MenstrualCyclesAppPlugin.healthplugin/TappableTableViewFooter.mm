@interface TappableTableViewFooter
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter)initWithReuseIdentifier:(id)a3;
@end

@implementation TappableTableViewFooter

- (_TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_29E1052E8(v3, v4);
}

- (_TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_footerTextView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7D60]) init];
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_highlightedText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_tapCompletion);
  *v6 = nullsub_1;
  v6[1] = 0;
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
  LOBYTE(length) = sub_29E1060BC(v13, location, length);

  (*(v11 + 8))(v13, v10);
  return length & 1;
}

@end