@interface BAContentSettingsData
- (BAContentSettingsData)init;
- (BAContentSettingsData)initWithBookmarkCount:(id)count noteCount:(id)noteCount highlightCount:(id)highlightCount;
@end

@implementation BAContentSettingsData

- (BAContentSettingsData)initWithBookmarkCount:(id)count noteCount:(id)noteCount highlightCount:(id)highlightCount
{
  *(&self->super.isa + OBJC_IVAR___BAContentSettingsData_bookmarkCount) = count;
  *(&self->super.isa + OBJC_IVAR___BAContentSettingsData_noteCount) = noteCount;
  *(&self->super.isa + OBJC_IVAR___BAContentSettingsData_highlightCount) = highlightCount;
  v12.receiver = self;
  v12.super_class = type metadata accessor for BridgedContentSettingsData();
  countCopy = count;
  noteCountCopy = noteCount;
  highlightCountCopy = highlightCount;
  return [(BAContentSettingsData *)&v12 init];
}

- (BAContentSettingsData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end