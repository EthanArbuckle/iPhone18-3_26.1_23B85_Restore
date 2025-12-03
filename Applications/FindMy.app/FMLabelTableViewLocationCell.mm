@interface FMLabelTableViewLocationCell
- (_TtC6FindMy28FMLabelTableViewLocationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation FMLabelTableViewLocationCell

- (_TtC6FindMy28FMLabelTableViewLocationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10042CCC8(style, identifier, v6);
}

@end