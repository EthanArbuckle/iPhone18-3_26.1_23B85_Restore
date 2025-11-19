@interface AFSiriResponse
- (AFSiriResponse)initWithCoder:(id)a3;
- (BOOL)_isForRequest:(id)a3;
- (id)_initWithRequest:(id)a3;
- (id)_initWithRequestIdentifier:(id)a3;
@end

@implementation AFSiriResponse

- (AFSiriResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SiriResponseRequestIdentifier"];

  v6 = [(AFSiriResponse *)self _initWithRequestIdentifier:v5];
  return v6;
}

- (BOOL)_isForRequest:(id)a3
{
  requestIdentifier = self->_requestIdentifier;
  v4 = [a3 _identifier];
  LOBYTE(requestIdentifier) = [(NSUUID *)requestIdentifier isEqual:v4];

  return requestIdentifier;
}

- (id)_initWithRequest:(id)a3
{
  v4 = [a3 _identifier];
  v5 = [(AFSiriResponse *)self _initWithRequestIdentifier:v4];

  return v5;
}

- (id)_initWithRequestIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFSiriResponse;
  v5 = [(AFSiriResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v6;
  }

  return v5;
}

@end