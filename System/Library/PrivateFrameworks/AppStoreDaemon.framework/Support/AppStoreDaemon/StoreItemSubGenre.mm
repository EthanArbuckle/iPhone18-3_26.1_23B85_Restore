@interface StoreItemSubGenre
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation StoreItemSubGenre

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[StoreItemSubGenre allocWithZone:](StoreItemSubGenre init];
  v6 = [(NSString *)self->_genre copyWithZone:zone];
  genre = v5->_genre;
  v5->_genre = v6;

  v8 = [(NSNumber *)self->_genreID copyWithZone:zone];
  genreID = v5->_genreID;
  v5->_genreID = v8;

  return v5;
}

@end