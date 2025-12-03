@interface AudioAssetTranscriptionGridView
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityLabel;
@end

@implementation AudioAssetTranscriptionGridView

- (NSString)accessibilityLabel
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_10070A3D0();

  if (v3)
  {
    sub_1000065A8(0, &qword_100AD86C0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end