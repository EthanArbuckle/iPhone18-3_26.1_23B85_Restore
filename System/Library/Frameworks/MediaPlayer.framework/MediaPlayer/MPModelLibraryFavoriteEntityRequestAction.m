@interface MPModelLibraryFavoriteEntityRequestAction
- (MPModelLibraryFavoriteEntityRequestAction)initWithChangeAction:(int64_t)a3;
- (id)description;
@end

@implementation MPModelLibraryFavoriteEntityRequestAction

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MPNSStringForFavoriteEntityChangeRequestAction(self->_changeRequestAction);
  v5 = [v3 stringWithFormat:@"MPModelLibraryFavoriteEntityRequestAction=%p, action=%@", self, v4];

  return v5;
}

- (MPModelLibraryFavoriteEntityRequestAction)initWithChangeAction:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MPModelLibraryFavoriteEntityRequestAction;
  result = [(MPModelLibraryFavoriteEntityRequestAction *)&v5 init];
  if (result)
  {
    result->_changeRequestAction = a3;
  }

  return result;
}

@end