@interface OpenFavoritesAction
- (OpenFavoritesAction)initWithFavoriteType:(int64_t)type;
@end

@implementation OpenFavoritesAction

- (OpenFavoritesAction)initWithFavoriteType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = OpenFavoritesAction;
  result = [(OpenFavoritesAction *)&v5 init];
  if (result)
  {
    result->_favoritesType = type;
  }

  return result;
}

@end