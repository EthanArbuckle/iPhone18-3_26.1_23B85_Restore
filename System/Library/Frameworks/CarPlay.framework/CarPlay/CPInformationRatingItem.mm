@interface CPInformationRatingItem
- (CPInformationRatingItem)initWithCoder:(id)a3;
- (CPInformationRatingItem)initWithRating:(NSNumber *)rating maximumRating:(NSNumber *)maximumRating title:(NSString *)title detail:(NSString *)detail;
- (void)_santizeRatingItem;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPInformationRatingItem

- (CPInformationRatingItem)initWithRating:(NSNumber *)rating maximumRating:(NSNumber *)maximumRating title:(NSString *)title detail:(NSString *)detail
{
  v10 = rating;
  v11 = maximumRating;
  v19.receiver = self;
  v19.super_class = CPInformationRatingItem;
  v12 = [(CPInformationItem *)&v19 initWithTitle:title detail:detail];
  if (v12)
  {
    if (v10)
    {
      v13 = [(NSNumber *)v10 copy];
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    }

    v14 = v13;
    objc_storeStrong(&v12->_rating, v13);

    if (v11)
    {
      v16 = [(NSNumber *)v11 copy];
    }

    else
    {
      LODWORD(v15) = 5.0;
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    }

    v17 = v16;
    objc_storeStrong(&v12->_maximumRating, v16);

    [(CPInformationRatingItem *)v12 _santizeRatingItem];
  }

  return v12;
}

- (void)_santizeRatingItem
{
  [(NSNumber *)self->_maximumRating floatValue];
  v4 = fmax(fmin(roundf(v3), 5.0), 1.0);
  [(NSNumber *)self->_rating floatValue];
  v6 = fmax(fmin(round(v5 + v5) * 0.5, v4), 0.0);
  *&v6 = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  rating = self->_rating;
  self->_rating = v7;

  *&v9 = v4;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  maximumRating = self->_maximumRating;
  self->_maximumRating = v10;

  MEMORY[0x2821F96F8](v10, maximumRating);
}

- (CPInformationRatingItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPInformationRatingItem;
  v5 = [(CPInformationItem *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPInformationRatingItemRatingKey"];
    rating = v5->_rating;
    v5->_rating = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPInformationRatingItemMaximumRatingKey"];
    maximumRating = v5->_maximumRating;
    v5->_maximumRating = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPInformationRatingItem;
  v4 = a3;
  [(CPInformationItem *)&v7 encodeWithCoder:v4];
  v5 = [(CPInformationRatingItem *)self rating:v7.receiver];
  [v4 encodeObject:v5 forKey:@"kCPInformationRatingItemRatingKey"];

  v6 = [(CPInformationRatingItem *)self maximumRating];
  [v4 encodeObject:v6 forKey:@"kCPInformationRatingItemMaximumRatingKey"];
}

@end