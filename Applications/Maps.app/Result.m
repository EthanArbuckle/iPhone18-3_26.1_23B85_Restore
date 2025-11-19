@interface Result
+ (Result)resultWithError:(id)a3;
+ (Result)resultWithValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResult:(id)a3;
- (Result)initWithError:(id)a3;
- (Result)initWithSuccess:(id)a3;
- (id)_errorMessageForValue:(BOOL)a3 error:(BOOL)a4;
- (id)description;
- (id)flatMap:(id)a3;
- (id)map:(id)a3;
- (unint64_t)hash;
- (void)withValue:(id)a3 orError:(id)a4;
@end

@implementation Result

- (id)flatMap:(id)a3
{
  if (self->_isSuccess)
  {
    v3 = (*(a3 + 2))(a3, self->_value);
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (id)map:(id)a3
{
  if (self->_isSuccess)
  {
    v3 = (*(a3 + 2))(a3, self->_value);
    v4 = [Result resultWithValue:v3];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = 24;
  if (self->_isSuccess)
  {
    v3 = 16;
  }

  isSuccess = self->_isSuccess;
  return [*(&self->super.isa + v3) hash] ^ (2654435761 * isSuccess);
}

- (BOOL)isEqualToResult:(id)a3
{
  v4 = a3;
  v5 = [v4 isSuccess];
  if (v5 == [(Result *)self isSuccess])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1007F10E0;
    v9[3] = &unk_10162AD60;
    v9[4] = self;
    v9[5] = &v10;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1007F111C;
    v8[3] = &unk_10165E218;
    v8[4] = self;
    v8[5] = &v10;
    [v4 withValue:v9 orError:v8];
    v6 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else if ([(Result *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(Result *)self isEqualToResult:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_errorMessageForValue:(BOOL)a3 error:(BOOL)a4
{
  v4 = @"value block is nil.";
  if (a4)
  {
    v4 = @"both are nil.";
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"error block is nil.";
  }

  v6 = [@"Neither block can be nil but " stringByAppendingString:v5];

  return v6;
}

- (id)description
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1007F1394;
  v12 = sub_1007F13A4;
  v7.receiver = self;
  v7.super_class = Result;
  v13 = [(Result *)&v7 description];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007F13AC;
  v6[3] = &unk_101659710;
  v6[4] = &v8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007F1440;
  v5[3] = &unk_10165E590;
  v5[4] = &v8;
  [(Result *)self withValue:v6 orError:v5];
  v3 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v3;
}

- (void)withValue:(id)a3 orError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v9 = [(Result *)self _errorMessageForValue:v6 == 0 error:v7 == 0];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
    }
  }

  value = self->_value;
  if (v6 && value)
  {
    v6[2](v6, self->_value);
  }

  else
  {
    error = self->_error;
    if (v8 && error)
    {
      v8[2](v8);
    }

    else
    {
      if (!v6 && value)
      {
        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Had a value but no value block", &v15, 2u);
        }

        error = self->_error;
      }

      if (!v8 && error)
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Had an error but no error block", &v15, 2u);
        }
      }
    }
  }
}

- (Result)initWithError:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"Error cannot be nil"];
  }

  v9.receiver = self;
  v9.super_class = Result;
  v6 = [(Result *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    v7->_isSuccess = 0;
  }

  return v7;
}

- (Result)initWithSuccess:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"Value cannot be nil"];
  }

  v9.receiver = self;
  v9.super_class = Result;
  v6 = [(Result *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
    v7->_isSuccess = 1;
  }

  return v7;
}

+ (Result)resultWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithError:v4];

  return v5;
}

+ (Result)resultWithValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSuccess:v4];

  return v5;
}

@end