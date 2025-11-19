@interface TransparentNotifierViewController
- (_TtC21JournalingSuggestions33TransparentNotifierViewController)initWithCoder:(id)a3;
- (_TtC21JournalingSuggestions33TransparentNotifierViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation TransparentNotifierViewController

- (_TtC21JournalingSuggestions33TransparentNotifierViewController)initWithCoder:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC21JournalingSuggestions33TransparentNotifierViewController__viewHasAppeared;
  v11[15] = 0;
  Published.init(initialValue:)();
  (*(v5 + 32))(self + v9, v8, v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC21JournalingSuggestions33TransparentNotifierViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end