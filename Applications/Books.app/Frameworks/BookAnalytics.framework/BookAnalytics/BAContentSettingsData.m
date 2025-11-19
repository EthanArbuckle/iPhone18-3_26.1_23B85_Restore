@interface BAContentSettingsData
- (BAContentSettingsData)init;
- (BAContentSettingsData)initWithBookmarkCount:(id)a3 noteCount:(id)a4 highlightCount:(id)a5;
@end

@implementation BAContentSettingsData

- (BAContentSettingsData)initWithBookmarkCount:(id)a3 noteCount:(id)a4 highlightCount:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___BAContentSettingsData_bookmarkCount) = a3;
  *(&self->super.isa + OBJC_IVAR___BAContentSettingsData_noteCount) = a4;
  *(&self->super.isa + OBJC_IVAR___BAContentSettingsData_highlightCount) = a5;
  v12.receiver = self;
  v12.super_class = type metadata accessor for BridgedContentSettingsData();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return [(BAContentSettingsData *)&v12 init];
}

- (BAContentSettingsData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end