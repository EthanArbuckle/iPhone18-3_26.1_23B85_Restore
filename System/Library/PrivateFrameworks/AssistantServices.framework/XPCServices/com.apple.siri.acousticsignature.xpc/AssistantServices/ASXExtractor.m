@interface ASXExtractor
- (ASXExtractor)init;
- (id)_sigx;
- (id)currentSignature;
- (void)reset;
- (void)setSampleRate:(int)a3;
@end

@implementation ASXExtractor

- (void)reset
{
  sigx = self->_sigx;
  if (sigx)
  {
    v5 = 0;
    [(SigX *)sigx resetWithError:&v5];
    v3 = v5;
    if (v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = [v3 code];
        *buf = 134217984;
        v7 = v4;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error resetting %ld", buf, 0xCu);
      }
    }
  }
}

- (id)currentSignature
{
  sigx = self->_sigx;
  if (sigx)
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
    v8 = 0;
    [(SigX *)sigx getSignature:&__p error:&v8];
    v3 = v8;
    if (v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v7 = [v3 code];
        *buf = 134217984;
        v13 = v7;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error getting signature %ld", buf, 0xCu);
      }

      v4 = 0;
    }

    else
    {
      v5 = [NSData alloc];
      v4 = [v5 initWithBytes:__p length:v10 - __p];
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSampleRate:(int)a3
{
  if (self->_sampleRate != a3)
  {
    self->_sampleRate = a3;
    if (self->_sigx)
    {
      self->_sigx = 0;
      _objc_release_x1();
    }
  }
}

- (id)_sigx
{
  p_sigx = &self->_sigx;
  sigx = self->_sigx;
  if (!sigx)
  {
    v5 = [SigX alloc];
    sampleRate = self->_sampleRate;
    v12 = 0;
    v7 = [(SigX *)v5 initWithSignatureType:2 sampleRate:sampleRate error:&v12];
    v8 = v12;
    if (v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v9 = [v8 code];
        v10 = self->_sampleRate;
        *buf = 134218240;
        v14 = v9;
        v15 = 1024;
        v16 = v10;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error %ld setting sample rate %d", buf, 0x12u);
      }
    }

    else
    {
      objc_storeStrong(p_sigx, v7);
    }

    sigx = *p_sigx;
  }

  return sigx;
}

- (ASXExtractor)init
{
  v3.receiver = self;
  v3.super_class = ASXExtractor;
  result = [(ASXExtractor *)&v3 init];
  if (result)
  {
    result->_sampleRate = 16000;
  }

  return result;
}

@end