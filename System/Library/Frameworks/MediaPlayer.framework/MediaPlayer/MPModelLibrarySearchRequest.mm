@interface MPModelLibrarySearchRequest
- (MPModelLibrarySearchRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelLibrarySearchRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibrarySearchRequestOperation);
  [(MPModelLibrarySearchRequestOperation *)v5 setResponseHandler:handlerCopy];
  [(MPModelLibrarySearchRequestOperation *)v5 setRequest:self];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MPModelLibrarySearchRequest;
  v4 = [(MPModelLibraryRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v4[23] = self->_maximumResultsPerScope;
    objc_storeStrong(v4 + 22, self->_scopes);
    objc_storeStrong(v5 + 24, self->_searchString);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MPModelLibrarySearchRequest;
  [(MPModelLibraryRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_maximumResultsPerScope forKey:@"MPModelLibrarySearchRequestMaximumResultsPerScope"];
  [coderCopy encodeObject:self->_scopes forKey:@"MPModelLibrarySearchRequestScopes"];
  [coderCopy encodeObject:self->_searchString forKey:@"MPModelLibrarySearchRequestSearchString"];
}

- (MPModelLibrarySearchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MPModelLibrarySearchRequest;
  v5 = [(MPModelLibraryRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_maximumResultsPerScope = [coderCopy decodeIntegerForKey:@"MPModelLibrarySearchRequestMaximumResultsPerScope"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MPModelLibrarySearchRequestScopes"];
    scopes = v5->_scopes;
    v5->_scopes = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibrarySearchRequestSearchString"];
    searchString = v5->_searchString;
    v5->_searchString = v11;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"<"];
  v8.receiver = self;
  v8.super_class = MPModelLibrarySearchRequest;
  v4 = [(MPModelLibraryRequest *)&v8 description];
  [v3 appendString:v4];

  if (self->_searchString)
  {
    [v3 appendFormat:@", searchString = %@", self->_searchString];
  }

  scopes = self->_scopes;
  if (scopes)
  {
    v6 = [(NSArray *)scopes description];
    [v3 appendFormat:@", scopes = %@", v6];
  }

  [v3 appendString:@">"];

  return v3;
}

@end