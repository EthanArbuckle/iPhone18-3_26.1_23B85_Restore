@interface LibraryListSavedItemManagementItem
- (NSString)_maps_diffableDataSourceIdentifier;
- (NSString)symbol;
- (NSString)title;
- (_TtC4Maps34LibraryListSavedItemManagementItem)init;
@end

@implementation LibraryListSavedItemManagementItem

- (NSString)symbol
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)title
{
  selfCopy = self;
  sub_1004BDCA8();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  selfCopy = self;
  sub_1004B733C();
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

- (_TtC4Maps34LibraryListSavedItemManagementItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end