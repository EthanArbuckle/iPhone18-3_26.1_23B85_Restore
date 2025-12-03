@interface NavBarDateCacheKey
- (BOOL)isEqual:(id)equal;
@end

@implementation NavBarDateCacheKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NavBarDateCacheKey;
    if ([(NavBarDateCacheKey *)&v12 isEqual:equalCopy])
    {
      v5 = equalCopy;
      month = self->_month;
      if (month == [(NavBarDateCacheKey *)v5 month]&& (year = self->_year, year == [(NavBarDateCacheKey *)v5 year]))
      {
        font = self->_font;
        font = [(NavBarDateCacheKey *)v5 font];
        v10 = font == font;
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