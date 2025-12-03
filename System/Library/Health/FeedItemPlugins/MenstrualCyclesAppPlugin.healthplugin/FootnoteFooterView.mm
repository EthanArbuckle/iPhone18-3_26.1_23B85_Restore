@interface FootnoteFooterView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (_TtC24MenstrualCyclesAppPlugin18FootnoteFooterView)initWithReuseIdentifier:(id)identifier;
@end

@implementation FootnoteFooterView

- (_TtC24MenstrualCyclesAppPlugin18FootnoteFooterView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  length = range.length;
  location = range.location;
  v10 = sub_29E2BC904();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BC8D4();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_29DFA14C8(v13, location, length);

  (*(v11 + 8))(v13, v10);
  return length & 1;
}

@end