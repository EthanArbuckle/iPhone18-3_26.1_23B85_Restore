@interface StoreItemSubGenre
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation StoreItemSubGenre

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[StoreItemSubGenre allocWithZone:](StoreItemSubGenre init];
  v6 = [(NSString *)self->_genre copyWithZone:a3];
  genre = v5->_genre;
  v5->_genre = v6;

  v8 = [(NSNumber *)self->_genreID copyWithZone:a3];
  genreID = v5->_genreID;
  v5->_genreID = v8;

  return v5;
}

@end