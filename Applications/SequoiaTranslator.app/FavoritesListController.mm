@interface FavoritesListController
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FavoritesListController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001016C8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100101CE8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FavoritesListController();
  v4 = v6.receiver;
  [(FavoritesListController *)&v6 viewWillDisappear:disappearCopy];
  v5 = OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_favoriteTranslationsTipUpdates;
  if (*&v4[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_favoriteTranslationsTipUpdates])
  {

    Task.cancel()();
  }

  *&v4[v5] = 0;
}

@end