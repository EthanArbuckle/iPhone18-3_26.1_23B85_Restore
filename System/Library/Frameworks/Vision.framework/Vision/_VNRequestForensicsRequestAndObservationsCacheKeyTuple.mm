@interface _VNRequestForensicsRequestAndObservationsCacheKeyTuple
- (BOOL)isEqual:(id)a3;
- (_VNRequestForensicsRequestAndObservationsCacheKeyTuple)initWithRequest:(id)a3 observationsCacheKey:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation _VNRequestForensicsRequestAndObservationsCacheKeyTuple

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      request = self->_request;
      v7 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v5 request];

      if (request == v7)
      {
        observationsCacheKey = self->_observationsCacheKey;
        v10 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)v5 observationsCacheKey];
        v8 = [observationsCacheKey isEqual:v10];
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
  v3 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)self request];
  v4 = [v3 hash];

  v5 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)self observationsCacheKey];
  v6 = [v5 hash] ^ __ROR8__(v4, 51);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)self request];
  v5 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)self observationsCacheKey];
  v6 = [v3 stringWithFormat:@"( %@, %@)", v4, v5];

  return v6;
}

- (_VNRequestForensicsRequestAndObservationsCacheKeyTuple)initWithRequest:(id)a3 observationsCacheKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _VNRequestForensicsRequestAndObservationsCacheKeyTuple;
  v9 = [(_VNRequestForensicsRequestAndObservationsCacheKeyTuple *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_observationsCacheKey, a4);
    v11 = v10;
  }

  return v10;
}

@end