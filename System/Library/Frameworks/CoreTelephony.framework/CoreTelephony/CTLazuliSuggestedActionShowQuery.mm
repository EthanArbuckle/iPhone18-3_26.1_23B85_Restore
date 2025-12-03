@interface CTLazuliSuggestedActionShowQuery
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionShowQuery:(id)query;
- (CTLazuliSuggestedActionShowQuery)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionShowQuery)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliSuggestedActionShowQuery

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  query = [(CTLazuliSuggestedActionShowQuery *)self query];
  [v3 appendFormat:@", query = %@", query];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionShowQuery:(id)query
{
  queryCopy = query;
  query = [(CTLazuliSuggestedActionShowQuery *)self query];
  query2 = [queryCopy query];
  if (query == query2)
  {
    v9 = 1;
  }

  else
  {
    query3 = [(CTLazuliSuggestedActionShowQuery *)self query];
    query4 = [queryCopy query];
    v9 = [query3 isEqualToString:query4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionShowQuery *)self isEqualToCTLazuliSuggestedActionShowQuery:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionShowQuery allocWithZone:?];
  v6 = [(NSString *)self->_query copyWithZone:zone];
  [(CTLazuliSuggestedActionShowQuery *)v5 setQuery:v6];

  return v5;
}

- (CTLazuliSuggestedActionShowQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionShowQuery;
  v5 = [(CTLazuliSuggestedActionShowQuery *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kQueryKey"];
    query = v5->_query;
    v5->_query = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionShowQuery)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionShowQuery;
  v4 = [(CTLazuliSuggestedActionShowQuery *)&v9 init];
  if (v4)
  {
    if (*(reflection + 24) == 1)
    {
      if (*(reflection + 23) >= 0)
      {
        reflectionCopy = reflection;
      }

      else
      {
        reflectionCopy = *reflection;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reflectionCopy];
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