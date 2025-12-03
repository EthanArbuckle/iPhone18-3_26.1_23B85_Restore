@interface _VNRequestForensicsRequestAndErrorTuple
- (BOOL)isEqual:(id)equal;
- (_VNRequestForensicsRequestAndErrorTuple)initWithRequest:(id)request error:(id)error;
- (id)description;
- (unint64_t)hash;
@end

@implementation _VNRequestForensicsRequestAndErrorTuple

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      request = self->_request;
      request = [(_VNRequestForensicsRequestAndErrorTuple *)v5 request];

      if (request == request)
      {
        error = self->_error;
        error = [(_VNRequestForensicsRequestAndErrorTuple *)v5 error];
        v8 = [(NSError *)error isEqual:error];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  request = [(_VNRequestForensicsRequestAndErrorTuple *)self request];
  v4 = [request hash];

  error = [(_VNRequestForensicsRequestAndErrorTuple *)self error];
  v6 = [error hash] ^ __ROR8__(v4, 51);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  request = [(_VNRequestForensicsRequestAndErrorTuple *)self request];
  error = [(_VNRequestForensicsRequestAndErrorTuple *)self error];
  v6 = [v3 stringWithFormat:@"( %@, %@)", request, error];

  return v6;
}

- (_VNRequestForensicsRequestAndErrorTuple)initWithRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = _VNRequestForensicsRequestAndErrorTuple;
  v9 = [(_VNRequestForensicsRequestAndErrorTuple *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_error, error);
    v11 = v10;
  }

  return v10;
}

@end