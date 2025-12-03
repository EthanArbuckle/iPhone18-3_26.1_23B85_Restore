@interface PlaceSummaryViewModelTemplate
- (BOOL)isEqual:(id)equal;
- (BOOL)isSelected;
- (NSString)debugString;
- (_TtC4Maps29PlaceSummaryViewModelTemplate)init;
- (double)containerWidth;
- (id)hyperlinkString;
- (int)hyperlinkType;
- (int)trailingEntityType;
- (void)setContainerWidth:(double)width;
- (void)setDebugString:(id)string;
- (void)setIsSelected:(BOOL)selected;
- (void)setMetrics:(id)metrics;
@end

@implementation PlaceSummaryViewModelTemplate

- (BOOL)isSelected
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setIsSelected:(BOOL)selected
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

- (double)containerWidth
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setContainerWidth:(double)width
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

- (void)setMetrics:(id)metrics
{
  v4 = *(self + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics);
  *(self + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics) = metrics;
  metricsCopy = metrics;
}

- (NSString)debugString
{
  if (*(self + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDebugString:(id)string
{
  if (string)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString);
  *v6 = v4;
  v6[1] = v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_10021C2C8(v8);

  sub_100024F64(v8, &unk_101908380);
  return v6 & 1;
}

- (_TtC4Maps29PlaceSummaryViewModelTemplate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int)trailingEntityType
{
  selfCopy = self;
  v3 = sub_10022341C();

  return v3;
}

- (id)hyperlinkString
{
  selfCopy = self;
  sub_100223558();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)hyperlinkType
{
  selfCopy = self;
  v3 = sub_10022436C();

  return v3;
}

@end