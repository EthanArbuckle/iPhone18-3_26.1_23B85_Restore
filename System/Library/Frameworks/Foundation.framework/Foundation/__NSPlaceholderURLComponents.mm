@interface __NSPlaceholderURLComponents
- (__NSPlaceholderURLComponents)init;
- (__NSPlaceholderURLComponents)initWithString:(id)string;
- (__NSPlaceholderURLComponents)initWithString:(id)string encodingInvalidCharacters:(BOOL)characters;
- (__NSPlaceholderURLComponents)initWithURL:(id)l resolvingAgainstBaseURL:(BOOL)rL;
@end

@implementation __NSPlaceholderURLComponents

- (__NSPlaceholderURLComponents)init
{
  v2 = +[NSURLComponents _components];

  return v2;
}

- (__NSPlaceholderURLComponents)initWithURL:(id)l resolvingAgainstBaseURL:(BOOL)rL
{
  if (!l)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil URL parameter", _NSMethodExceptionProem(-[__NSPlaceholderURLComponents superclass](self, "superclass", 0, rL), a2)), 0}];
    objc_exception_throw(v6);
  }

  v4 = [NSURLComponents _componentsWithUrl:l resolvingAgainstBaseURL:rL];

  return v4;
}

- (__NSPlaceholderURLComponents)initWithString:(id)string
{
  if (!string)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil URLString parameter", _NSMethodExceptionProem(-[__NSPlaceholderURLComponents superclass](self, "superclass"), a2)), 0}];
    objc_exception_throw(v5);
  }

  return [__NSPlaceholderURLComponents initWithString:"initWithString:encodingInvalidCharacters:" encodingInvalidCharacters:?];
}

- (__NSPlaceholderURLComponents)initWithString:(id)string encodingInvalidCharacters:(BOOL)characters
{
  if (!string)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil URLString parameter", _NSMethodExceptionProem(-[__NSPlaceholderURLComponents superclass](self, "superclass", 0, characters), a2)), 0}];
    objc_exception_throw(v6);
  }

  v4 = [NSURLComponents _componentsWithString:string encodingInvalidCharacters:characters];

  return v4;
}

@end