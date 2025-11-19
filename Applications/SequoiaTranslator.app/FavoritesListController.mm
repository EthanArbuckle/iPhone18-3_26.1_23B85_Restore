@interface FavoritesListController
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FavoritesListController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001016C8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100101CE8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FavoritesListController();
  v4 = v6.receiver;
  [(FavoritesListController *)&v6 viewWillDisappear:v3];
  v5 = OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_favoriteTranslationsTipUpdates;
  if (*&v4[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_favoriteTranslationsTipUpdates])
  {

    Task.cancel()();
  }

  *&v4[v5] = 0;
}

@end