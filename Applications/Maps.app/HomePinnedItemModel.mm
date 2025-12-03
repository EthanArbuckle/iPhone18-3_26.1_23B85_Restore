@interface HomePinnedItemModel
- (_TtC4Maps19HomePinnedItemModel)init;
- (void)shortcutsRowCellModelDidUpdate:(id)update;
@end

@implementation HomePinnedItemModel

- (void)shortcutsRowCellModelDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_10050311C(updateCopy);
}

- (_TtC4Maps19HomePinnedItemModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end