@interface TrendExplanationView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC10FitnessApp20TrendExplanationView)initWithCoder:(id)a3;
@end

@implementation TrendExplanationView

- (_TtC10FitnessApp20TrendExplanationView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10FitnessApp20TrendExplanationView_textView;
  type metadata accessor for TrendsFooterTextView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.isa + v4) = v5;

  type metadata accessor for TrendExplanationView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v8 + 8))(v10, v7);
  return a6 == 0;
}

@end