@interface FMLostModeSummaryTextView
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
@end

@implementation FMLostModeSummaryTextView

- (void)textViewDidChange:(id)a3
{
  v3 = self;
  sub_1002CFB70();
  sub_1002CFC18();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100144414(v3);
    swift_unknownObjectRelease();
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_1002CFF88(v12, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002D05D0();
}

@end