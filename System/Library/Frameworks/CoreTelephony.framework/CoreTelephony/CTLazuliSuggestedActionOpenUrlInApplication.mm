@interface CTLazuliSuggestedActionOpenUrlInApplication
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionOpenUrlInApplication:(id)a3;
- (CTLazuliSuggestedActionOpenUrlInApplication)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionOpenUrlInApplication)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliSuggestedActionOpenUrlInApplication

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionOpenUrlInApplication *)self url];
  [v3 appendFormat:@", url = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionOpenUrlInApplication:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliSuggestedActionOpenUrlInApplication *)self url];
  v6 = [v4 url];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliSuggestedActionOpenUrlInApplication *)self url];
    v8 = [v4 url];
    v9 = [v7 isEqual:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionOpenUrlInApplication *)self isEqualToCTLazuliSuggestedActionOpenUrlInApplication:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionOpenUrlInApplication allocWithZone:?];
  v6 = [(NSURL *)self->_url copyWithZone:a3];
  [(CTLazuliSuggestedActionOpenUrlInApplication *)v5 setUrl:v6];

  return v5;
}

- (CTLazuliSuggestedActionOpenUrlInApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionOpenUrlInApplication;
  v5 = [(CTLazuliSuggestedActionOpenUrlInApplication *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUrlKey"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionOpenUrlInApplication)initWithReflection:(const void *)a3
{
  v15.receiver = self;
  v15.super_class = CTLazuliSuggestedActionOpenUrlInApplication;
  v4 = [(CTLazuliSuggestedActionOpenUrlInApplication *)&v15 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a3 + 23);
    v8 = *a3;
    v9 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v7 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = v8;
    }

    v11 = [v6 stringWithCString:v10 encoding:v9];
    v12 = [v5 URLWithString:v11];
    url = v4->_url;
    v4->_url = v12;
  }

  return v4;
}

@end