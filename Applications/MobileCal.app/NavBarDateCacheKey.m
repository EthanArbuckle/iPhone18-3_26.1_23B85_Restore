@interface NavBarDateCacheKey
- (BOOL)isEqual:(id)a3;
@end

@implementation NavBarDateCacheKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NavBarDateCacheKey;
    if ([(NavBarDateCacheKey *)&v12 isEqual:v4])
    {
      v5 = v4;
      month = self->_month;
      if (month == [(NavBarDateCacheKey *)v5 month]&& (year = self->_year, year == [(NavBarDateCacheKey *)v5 year]))
      {
        font = self->_font;
        v9 = [(NavBarDateCacheKey *)v5 font];
        v10 = font == v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end