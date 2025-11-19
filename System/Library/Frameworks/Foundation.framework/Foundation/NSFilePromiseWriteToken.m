@interface NSFilePromiseWriteToken
- (void)dealloc;
@end

@implementation NSFilePromiseWriteToken

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFilePromiseWriteToken;
  [(NSFilePromiseWriteToken *)&v3 dealloc];
}

@end