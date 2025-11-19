@interface NSHTTPCookie
- (BOOL)isSessionOnly;
- (NSDate)expiresDate;
- (NSString)domain;
- (NSString)name;
- (NSString)value;
- (id)ensureCookieValid;
- (void)dealloc;
@end

@implementation NSHTTPCookie

- (void)dealloc
{
  self->_cookiePrivate = 0;
  v3.receiver = self;
  v3.super_class = NSHTTPCookie;
  [(NSHTTPCookie *)&v3 dealloc];
}

- (NSString)value
{
  v2 = CFHTTPCookieCopyValue(self);

  return v2;
}

- (id)ensureCookieValid
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 8);
    if (!v2 || ![v2 _inner] || (v3 = objc_msgSend(v1[1], "_inner"), !(*(*v3 + 16))(v3)))
    {

      return 0;
    }
  }

  return v1;
}

- (NSString)name
{
  v2 = CFHTTPCookieCopyName(self);

  return v2;
}

- (NSDate)expiresDate
{
  if ([(NSHTTPCookie *)self isSessionOnly])
  {
    return 0;
  }

  v4 = [(NSHTTPCookie *)self _inner];
  v5 = (*(v4->var0 + 2))(v4);
  if (*v5 >= 0xCu && (*(v5 + 8) & 2) != 0)
  {
    return 0;
  }

  v6 = 0.0;
  if (*v5 >= 0x30u)
  {
    v6 = floor(*(v5 + 40));
  }

  v7 = CFGetAllocator(self);
  v8 = CFDateCreate(v7, v6);

  return v8;
}

- (BOOL)isSessionOnly
{
  v2 = [(NSHTTPCookie *)self _inner];
  v3 = (*(v2->var0 + 2))(v2);
  if (*v3 >= 0xCu)
  {
    return (v3[2] >> 1) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)domain
{
  v2 = CFHTTPCookieCopyDomain(self);

  return v2;
}

@end