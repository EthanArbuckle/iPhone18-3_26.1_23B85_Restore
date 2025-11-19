@interface DateSequenceTimeline
- (_TtC7SwiftUI20DateSequenceTimeline)initWithIdentifier:(id)a3 configure:(id)a4;
- (id)unconfiguredEntriesForDateInterval:(id)a3 previousEntry:(id)a4;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)a3 withPreviousEntry:(id)a4;
@end

@implementation DateSequenceTimeline

- (id)unconfiguredEntriesForDateInterval:(id)a3 previousEntry:(id)a4
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  v11 = a4;
  v12 = specialized DateSequenceTimeline.unconfiguredEntries(for:previousEntry:)();

  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    type metadata accessor for BLSAlwaysOnTimelineUnconfiguredEntry();
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  return v13.super.isa;
}

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)a3 withPreviousEntry:(id)a4
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = self;
  v12 = DateSequenceTimeline.requestedFidelityForStartEntry(in:withPreviousEntry:)(v9, a4);

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (_TtC7SwiftUI20DateSequenceTimeline)initWithIdentifier:(id)a3 configure:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end