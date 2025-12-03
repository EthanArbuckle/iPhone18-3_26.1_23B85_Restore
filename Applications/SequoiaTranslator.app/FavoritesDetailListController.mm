@interface FavoritesDetailListController
- (_TtC17SequoiaTranslator29FavoritesDetailListController)initWithCoder:(id)coder;
- (void)viewDidLoad;
@end

@implementation FavoritesDetailListController

- (_TtC17SequoiaTranslator29FavoritesDetailListController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController____lazy_storage___favoritesLocalePairResultsController) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FavoritesDetailListController();
  v2 = v6.receiver;
  [(FavoritesCardListController *)&v6 viewDidLoad];
  navigationItem = [v2 navigationItem];
  v4 = String._bridgeToObjectiveC()();
  [navigationItem setTitle:v4];

  navigationItem2 = [v2 navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];
}

@end