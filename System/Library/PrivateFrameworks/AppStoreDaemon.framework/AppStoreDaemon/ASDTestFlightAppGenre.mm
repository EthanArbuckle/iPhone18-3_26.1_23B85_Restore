@interface ASDTestFlightAppGenre
- (ASDTestFlightAppGenre)initWithCoder:(id)coder;
- (ASDTestFlightAppGenre)initWithGenre:(id)genre genreID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDTestFlightAppGenre

- (ASDTestFlightAppGenre)initWithGenre:(id)genre genreID:(id)d
{
  genreCopy = genre;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = ASDTestFlightAppGenre;
  v9 = [(ASDTestFlightAppGenre *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_genre, genre);
    objc_storeStrong(&v10->_genreID, d);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDTestFlightAppGenre allocWithZone:](ASDTestFlightAppGenre init];
  v6 = [(NSString *)self->_genre copyWithZone:zone];
  genre = v5->_genre;
  v5->_genre = v6;

  v8 = [(NSNumber *)self->_genreID copyWithZone:zone];
  genreID = v5->_genreID;
  v5->_genreID = v8;

  return v5;
}

- (ASDTestFlightAppGenre)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GE"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GI"];

  v7 = [(ASDTestFlightAppGenre *)self initWithGenre:v5 genreID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  genre = self->_genre;
  coderCopy = coder;
  [coderCopy encodeObject:genre forKey:@"GE"];
  [coderCopy encodeObject:self->_genreID forKey:@"GI"];
}

@end