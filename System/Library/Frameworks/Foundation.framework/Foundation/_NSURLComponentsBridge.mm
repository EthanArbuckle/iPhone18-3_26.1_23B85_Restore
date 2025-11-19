@interface _NSURLComponentsBridge
- (void)setEncodedHost:(id)a3;
- (void)setPercentEncodedFragment:(id)a3;
- (void)setPercentEncodedHost:(id)a3;
- (void)setPercentEncodedPassword:(id)a3;
- (void)setPercentEncodedPath:(id)a3;
- (void)setPercentEncodedQuery:(id)a3;
- (void)setPercentEncodedQueryItems:(id)a3;
- (void)setPercentEncodedUser:(id)a3;
- (void)setPort:(id)a3;
- (void)setScheme:(id)a3;
@end

@implementation _NSURLComponentsBridge

- (void)setScheme:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setScheme:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in scheme", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedUser:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedUser:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedUser", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedPassword:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedPassword:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedPassword", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedHost:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedHost:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedHost", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setEncodedHost:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setEncodedHost:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in encodedHost", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPort:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setPort:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: negative port number", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedPath:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedPath:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedPath", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedQuery:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedQuery:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedQuery", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedQueryItems:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedQueryItems:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedQueryItems", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

- (void)setPercentEncodedFragment:(id)a3
{
  if (![(_NSURLComponentsBridge *)self _setPercentEncodedFragment:a3])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid characters in percentEncodedFragment", _NSMethodExceptionProem(-[_NSURLComponentsBridge superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }
}

@end