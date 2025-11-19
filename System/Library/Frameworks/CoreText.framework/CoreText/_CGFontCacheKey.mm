@interface _CGFontCacheKey
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation _CGFontCacheKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CGFontCacheKey;
  [(_CGFontCacheKey *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    v20 = v9;
    v21 = v5;
    v22 = v4;
    v23 = v3;
    if (a3 && (v13 = objc_opt_class(), v13 == objc_opt_class()) && (hash = self->_hash, hash == [a3 hash]))
    {
      url = self->_url;
      if (url == [a3 url] || (v16 = -[NSURL isEqual:](self->_url, "isEqual:", objc_msgSend(a3, "url"))) != 0)
      {
        opticalSize = self->_opticalSize;
        [a3 opticalSize];
        LOBYTE(v16) = opticalSize == v18;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

@end