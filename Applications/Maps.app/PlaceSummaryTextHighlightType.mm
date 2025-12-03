@interface PlaceSummaryTextHighlightType
- (_TtC4Maps29PlaceSummaryTextHighlightType)init;
- (_TtC4Maps29PlaceSummaryTextHighlightType)initWithHighlightType:(int64_t)type;
@end

@implementation PlaceSummaryTextHighlightType

- (_TtC4Maps29PlaceSummaryTextHighlightType)initWithHighlightType:(int64_t)type
{
  v3 = type == 1;
  if (type == 2)
  {
    v3 = 2;
  }

  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceSummaryTextHighlightType_type) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaceSummaryTextHighlightType();
  return [(PlaceSummaryTextHighlightType *)&v5 init];
}

- (_TtC4Maps29PlaceSummaryTextHighlightType)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end