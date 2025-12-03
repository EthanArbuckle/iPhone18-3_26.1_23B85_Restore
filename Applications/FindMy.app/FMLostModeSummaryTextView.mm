@interface FMLostModeSummaryTextView
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
@end

@implementation FMLostModeSummaryTextView

- (void)textViewDidChange:(id)change
{
  selfCopy = self;
  sub_1002CFB70();
  sub_1002CFC18();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100144414(selfCopy);
    swift_unknownObjectRelease();
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_1002CFF88(viewCopy, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_1002D05D0();
}

@end