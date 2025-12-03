@interface SUINSStringImplementation
- (SUINSStringImplementation)init;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation SUINSStringImplementation

- (unint64_t)length
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplemented" reason:@"Subclass must override length" userInfo:0];
  objc_exception_throw(v2);
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplemented" reason:@"Subclass must override characterAtIndex" userInfo:0];
  objc_exception_throw(v3);
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplemented" reason:@"Subclass must override getCharacters" userInfo:0];
  objc_exception_throw(v4);
}

- (SUINSStringImplementation)init
{
  v3.receiver = self;
  v3.super_class = SUINSStringImplementation;
  return [(SUINSStringImplementation *)&v3 init];
}

@end