@interface OpenFavoritesAction
- (OpenFavoritesAction)initWithFavoriteType:(int64_t)a3;
@end

@implementation OpenFavoritesAction

- (OpenFavoritesAction)initWithFavoriteType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = OpenFavoritesAction;
  result = [(OpenFavoritesAction *)&v5 init];
  if (result)
  {
    result->_favoritesType = a3;
  }

  return result;
}

@end