@interface SUINSMutableStringImplementation
- (SUINSMutableStringImplementation)init;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
@end

@implementation SUINSMutableStringImplementation

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplemented" reason:@"Subclass must override replaceCharactersInRange" userInfo:0];
  objc_exception_throw(v5);
}

- (SUINSMutableStringImplementation)init
{
  v3.receiver = self;
  v3.super_class = SUINSMutableStringImplementation;
  return [(SUINSStringImplementation *)&v3 init];
}

@end