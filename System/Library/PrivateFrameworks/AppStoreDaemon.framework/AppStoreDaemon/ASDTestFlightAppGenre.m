@interface ASDTestFlightAppGenre
- (ASDTestFlightAppGenre)initWithCoder:(id)a3;
- (ASDTestFlightAppGenre)initWithGenre:(id)a3 genreID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDTestFlightAppGenre

- (ASDTestFlightAppGenre)initWithGenre:(id)a3 genreID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASDTestFlightAppGenre;
  v9 = [(ASDTestFlightAppGenre *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_genre, a3);
    objc_storeStrong(&v10->_genreID, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDTestFlightAppGenre allocWithZone:](ASDTestFlightAppGenre init];
  v6 = [(NSString *)self->_genre copyWithZone:a3];
  genre = v5->_genre;
  v5->_genre = v6;

  v8 = [(NSNumber *)self->_genreID copyWithZone:a3];
  genreID = v5->_genreID;
  v5->_genreID = v8;

  return v5;
}

- (ASDTestFlightAppGenre)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GE"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GI"];

  v7 = [(ASDTestFlightAppGenre *)self initWithGenre:v5 genreID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  genre = self->_genre;
  v5 = a3;
  [v5 encodeObject:genre forKey:@"GE"];
  [v5 encodeObject:self->_genreID forKey:@"GI"];
}

@end