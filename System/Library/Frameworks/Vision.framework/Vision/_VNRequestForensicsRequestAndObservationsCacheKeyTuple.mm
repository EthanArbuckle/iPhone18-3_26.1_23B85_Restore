@interface _VNRequestForensicsRequestAndObservationsCacheKeyTuple
- (BOOL)isEqual:(id)equal;
- (_VNRequestForensicsRequestAndObservationsCacheKeyTuple)initWithRequest:(id)request observationsCacheKey:(id)key;
- (id)description;
- (unint64_t)hash;
@end

@implementation _VNRequestForensicsRequestAndObservationsCacheKeyTuple

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
      request = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v5 request];

      if (request == request)
      {
        observationsCacheKey = self->_observationsCacheKey;
        observationsCacheKey = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v5 observationsCacheKey];
        v8 = [observationsCacheKey isEqual:observationsCacheKey];
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
  request = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)self request];
  v4 = [request hash];

  observationsCacheKey = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)self observationsCacheKey];
  v6 = [observationsCacheKey hash] ^ __ROR8__(v4, 51);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  request = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)self request];
  observationsCacheKey = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)self observationsCacheKey];
  v6 = [v3 stringWithFormat:@"( %@, %@)", request, observationsCacheKey];

  return v6;
}

- (_VNRequestForensicsRequestAndObservationsCacheKeyTuple)initWithRequest:(id)request observationsCacheKey:(id)key
{
  requestCopy = request;
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = _VNRequestForensicsRequestAndObservationsCacheKeyTuple;
  v9 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_observationsCacheKey, key);
    v11 = v10;
  }

  return v10;
}

@end