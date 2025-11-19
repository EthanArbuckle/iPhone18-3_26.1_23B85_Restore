@interface CTLazuliSuggestedActionShowQuery
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionShowQuery:(id)a3;
- (CTLazuliSuggestedActionShowQuery)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionShowQuery)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliSuggestedActionShowQuery

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionShowQuery *)self query];
  [v3 appendFormat:@", query = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionShowQuery:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliSuggestedActionShowQuery *)self query];
  v6 = [v4 query];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliSuggestedActionShowQuery *)self query];
    v8 = [v4 query];
    v9 = [v7 isEqualToString:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionShowQuery *)self isEqualToCTLazuliSuggestedActionShowQuery:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionShowQuery allocWithZone:?];
  v6 = [(NSString *)self->_query copyWithZone:a3];
  [(CTLazuliSuggestedActionShowQuery *)v5 setQuery:v6];

  return v5;
}

- (CTLazuliSuggestedActionShowQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionShowQuery;
  v5 = [(CTLazuliSuggestedActionShowQuery *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kQueryKey"];
    query = v5->_query;
    v5->_query = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionShowQuery)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionShowQuery;
  v4 = [(CTLazuliSuggestedActionShowQuery *)&v9 init];
  if (v4)
  {
    if (*(a3 + 24) == 1)
    {
      if (*(a3 + 23) >= 0)
      {
        v5 = a3;
      }

      else
      {
        v5 = *a3;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    }

    else
    {
      v6 = 0;
    }

    query = v4->_query;
    v4->_query = v6;
  }

  return v4;
}

@end