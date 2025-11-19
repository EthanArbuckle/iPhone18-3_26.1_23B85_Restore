@interface FootnoteFooterView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin18FootnoteFooterView)initWithReuseIdentifier:(id)a3;
@end

@implementation FootnoteFooterView

- (_TtC24MenstrualCyclesAppPlugin18FootnoteFooterView)initWithReuseIdentifier:(id)a3
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

  return sub_29DFA0378(v3, v4);
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
  LOBYTE(length) = sub_29DFA14C8(v13, location, length);

  (*(v11 + 8))(v13, v10);
  return length & 1;
}

@end