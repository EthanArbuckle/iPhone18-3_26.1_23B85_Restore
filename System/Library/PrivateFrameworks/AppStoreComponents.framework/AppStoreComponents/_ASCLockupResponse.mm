@interface _ASCLockupResponse
- (BOOL)isEqual:(id)a3;
- (_ASCLockupResponse)initWithRequest:(id)a3 lockup:(id)a4 error:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation _ASCLockupResponse

- (_ASCLockupResponse)initWithRequest:(id)a3 lockup:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _ASCLockupResponse;
  v11 = [(_ASCLockupResponse *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    request = v11->_request;
    v11->_request = v12;

    v14 = [v9 copy];
    lockup = v11->_lockup;
    v11->_lockup = v14;

    v16 = [v10 copy];
    error = v11->_error;
    v11->_error = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(_ASCLockupResponse *)self request];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(_ASCLockupResponse *)self lockup];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(_ASCLockupResponse *)self error];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCHasher *)v3 finalizeHash];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [(_ASCLockupResponse *)self request];
    v9 = [v7 request];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(_ASCLockupResponse *)self lockup];
        v12 = [v7 lockup];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
            goto LABEL_13;
          }
        }

        else if (v11 == v12)
        {
LABEL_13:
          v14 = [(_ASCLockupResponse *)self error];
          v15 = [v7 error];
          v16 = v15;
          if (v14 && v15)
          {
            v17 = [v14 isEqual:v15];
          }

          else
          {
            v17 = v14 == v15;
          }

          goto LABEL_23;
        }

        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (v8 == v9)
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
  v4 = [(_ASCLockupResponse *)self request];
  [(ASCDescriber *)v3 addObject:v4 withName:@"request"];

  v5 = [(_ASCLockupResponse *)self lockup];
  [(ASCDescriber *)v3 addObject:v5 withName:@"lockup"];

  v6 = [(_ASCLockupResponse *)self error];
  [(ASCDescriber *)v3 addObject:v6 withName:@"error"];

  v7 = [(ASCDescriber *)v3 finalizeDescription];

  return v7;
}

@end