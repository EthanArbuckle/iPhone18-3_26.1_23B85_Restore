@interface CTLazuliSuggestedActionOpenUrlInApplication
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionOpenUrlInApplication:(id)application;
- (CTLazuliSuggestedActionOpenUrlInApplication)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionOpenUrlInApplication)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqualToCTLazuliSuggestedActionOpenUrlInApplication:(id)application
{
  applicationCopy = application;
  v5 = [(CTLazuliSuggestedActionOpenUrlInApplication *)self url];
  v6 = [applicationCopy url];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliSuggestedActionOpenUrlInApplication *)self url];
    v8 = [applicationCopy url];
    v9 = [v7 isEqual:v8];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionOpenUrlInApplication *)self isEqualToCTLazuliSuggestedActionOpenUrlInApplication:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionOpenUrlInApplication allocWithZone:?];
  v6 = [(NSURL *)self->_url copyWithZone:zone];
  [(CTLazuliSuggestedActionOpenUrlInApplication *)v5 setUrl:v6];

  return v5;
}

- (CTLazuliSuggestedActionOpenUrlInApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionOpenUrlInApplication;
  v5 = [(CTLazuliSuggestedActionOpenUrlInApplication *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUrlKey"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionOpenUrlInApplication)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliSuggestedActionOpenUrlInApplication;
  v4 = [(CTLazuliSuggestedActionOpenUrlInApplication *)&v15 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(reflection + 23);
    v8 = *reflection;
    defaultCStringEncoding = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v7 >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = v8;
    }

    v11 = [v6 stringWithCString:reflectionCopy encoding:defaultCStringEncoding];
    v12 = [v5 URLWithString:v11];
    url = v4->_url;
    v4->_url = v12;
  }

  return v4;
}

@end