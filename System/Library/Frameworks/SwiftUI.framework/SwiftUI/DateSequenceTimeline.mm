@interface DateSequenceTimeline
- (_TtC7SwiftUI20DateSequenceTimeline)initWithIdentifier:(id)identifier configure:(id)configure;
- (id)unconfiguredEntriesForDateInterval:(id)interval previousEntry:(id)entry;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry;
@end

@implementation DateSequenceTimeline

- (id)unconfiguredEntriesForDateInterval:(id)interval previousEntry:(id)entry
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  entryCopy = entry;
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

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  entryCopy = entry;
  selfCopy = self;
  v12 = DateSequenceTimeline.requestedFidelityForStartEntry(in:withPreviousEntry:)(v9, entry);

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (_TtC7SwiftUI20DateSequenceTimeline)initWithIdentifier:(id)identifier configure:(id)configure
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end