@interface _NSURLComponentsBridge
- (void)setEncodedHost:(id)host;
- (void)setPercentEncodedFragment:(id)fragment;
- (void)setPercentEncodedHost:(id)host;
- (void)setPercentEncodedPassword:(id)password;
- (void)setPercentEncodedPath:(id)path;
- (void)setPercentEncodedQuery:(id)query;
- (void)setPercentEncodedQueryItems:(id)items;
- (void)setPercentEncodedUser:(id)user;
- (void)setPort:(id)port;
- (void)setScheme:(id)scheme;
@end

@implementation _NSURLComponentsBridge

- (void)setScheme:(id)scheme
{
  if (![(_NSURLComponentsBridge *)self _setScheme:scheme])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in scheme", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedUser:(id)user
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedUser:user])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedUser", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedPassword:(id)password
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedPassword:password])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedPassword", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedHost:(id)host
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedHost:host])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedHost", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setEncodedHost:(id)host
{
  if (![(_NSURLComponentsBridge *)self _setEncodedHost:host])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in encodedHost", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPort:(id)port
{
  if (![(_NSURLComponentsBridge *)self _setPort:port])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: negative port number", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedPath:(id)path
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedPath:path])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedPath", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedQuery:(id)query
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedQuery:query])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedQuery", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedQueryItems:(id)items
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedQueryItems:items])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedQueryItems", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedFragment:(id)fragment
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedFragment:fragment])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedFragment", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

@end