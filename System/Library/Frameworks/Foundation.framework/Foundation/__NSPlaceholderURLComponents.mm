@interface __NSPlaceholderURLComponents
- (__NSPlaceholderURLComponents)init;
- (__NSPlaceholderURLComponents)initWithString:(id)a3;
- (__NSPlaceholderURLComponents)initWithString:(id)a3 encodingInvalidCharacters:(BOOL)a4;
- (__NSPlaceholderURLComponents)initWithURL:(id)a3 resolvingAgainstBaseURL:(BOOL)a4;
@end

@implementation __NSPlaceholderURLComponents

- (__NSPlaceholderURLComponents)init
{
  v2 = +[NSURLComponents _components];

  return v2;
}

- (__NSPlaceholderURLComponents)initWithURL:(id)a3 resolvingAgainstBaseURL:(BOOL)a4
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil URL parameter", _NSMethodExceptionProem(-[__NSPlaceholderURLComponents superclass](self, "superclass", 0, a4), a2)), 0}];
    objc_exception_throw(v6);
  }

  v4 = [NSURLComponents _componentsWithUrl:a3 resolvingAgainstBaseURL:a4];

  return v4;
}

- (__NSPlaceholderURLComponents)initWithString:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil URLString parameter", _NSMethodExceptionProem(-[__NSPlaceholderURLComponents superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }

  return [__NSPlaceholderURLComponents initWithString:"initWithString:encodingInvalidCharacters:" encodingInvalidCharacters:?];
}

- (__NSPlaceholderURLComponents)initWithString:(id)a3 encodingInvalidCharacters:(BOOL)a4
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil URLString parameter", _NSMethodExceptionProem(-[__NSPlaceholderURLComponents superclass](self, "superclass", 0, a4), a2)), 0}];
    objc_exception_throw(v6);
  }

  v4 = [NSURLComponents _componentsWithString:a3 encodingInvalidCharacters:a4];

  return v4;
}

@end