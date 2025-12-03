@interface AFSiriResponse
- (AFSiriResponse)initWithCoder:(id)coder;
- (BOOL)_isForRequest:(id)request;
- (id)_initWithRequest:(id)request;
- (id)_initWithRequestIdentifier:(id)identifier;
@end

@implementation AFSiriResponse

- (AFSiriResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiriResponseRequestIdentifier"];

  v6 = [(AFSiriResponse *)self _initWithRequestIdentifier:v5];
  return v6;
}

- (BOOL)_isForRequest:(id)request
{
  requestIdentifier = self->_requestIdentifier;
  _identifier = [request _identifier];
  LOBYTE(requestIdentifier) = [(NSUUID *)requestIdentifier isEqual:_identifier];

  return requestIdentifier;
}

- (id)_initWithRequest:(id)request
{
  _identifier = [request _identifier];
  v5 = [(AFSiriResponse *)self _initWithRequestIdentifier:_identifier];

  return v5;
}

- (id)_initWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = AFSiriResponse;
  v5 = [(AFSiriResponse *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v6;
  }

  return v5;
}

@end