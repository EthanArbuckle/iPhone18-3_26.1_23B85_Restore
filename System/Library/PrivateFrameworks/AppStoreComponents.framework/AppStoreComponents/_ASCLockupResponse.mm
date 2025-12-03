@interface _ASCLockupResponse
- (BOOL)isEqual:(id)equal;
- (_ASCLockupResponse)initWithRequest:(id)request lockup:(id)lockup error:(id)error;
- (id)description;
- (unint64_t)hash;
@end

@implementation _ASCLockupResponse

- (_ASCLockupResponse)initWithRequest:(id)request lockup:(id)lockup error:(id)error
{
  requestCopy = request;
  lockupCopy = lockup;
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = _ASCLockupResponse;
  v11 = [(_ASCLockupResponse *)&v19 init];
  if (v11)
  {
    v12 = [requestCopy copy];
    request = v11->_request;
    v11->_request = v12;

    v14 = [lockupCopy copy];
    lockup = v11->_lockup;
    v11->_lockup = v14;

    v16 = [errorCopy copy];
    error = v11->_error;
    v11->_error = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  request = [(_ASCLockupResponse *)self request];
  [(ASCHasher *)v3 combineObject:request];

  lockup = [(_ASCLockupResponse *)self lockup];
  [(ASCHasher *)v3 combineObject:lockup];

  error = [(_ASCLockupResponse *)self error];
  [(ASCHasher *)v3 combineObject:error];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    request = [(_ASCLockupResponse *)self request];
    request2 = [v7 request];
    v10 = request2;
    if (request && request2)
    {
      if ([request isEqual:request2])
      {
LABEL_10:
        lockup = [(_ASCLockupResponse *)self lockup];
        lockup2 = [v7 lockup];
        v13 = lockup2;
        if (lockup && lockup2)
        {
          if ([lockup isEqual:lockup2])
          {
            goto LABEL_13;
          }
        }

        else if (lockup == lockup2)
        {
LABEL_13:
          error = [(_ASCLockupResponse *)self error];
          error2 = [v7 error];
          v16 = error2;
          if (error && error2)
          {
            v17 = [error isEqual:error2];
          }

          else
          {
            v17 = error == error2;
          }

          goto LABEL_23;
        }

        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (request == request2)
    {
      goto LABEL_10;
    }

    v17 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v17 = 0;
LABEL_25:

  return v17;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  request = [(_ASCLockupResponse *)self request];
  [(ASCDescriber *)v3 addObject:request withName:@"request"];

  lockup = [(_ASCLockupResponse *)self lockup];
  [(ASCDescriber *)v3 addObject:lockup withName:@"lockup"];

  error = [(_ASCLockupResponse *)self error];
  [(ASCDescriber *)v3 addObject:error withName:@"error"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end