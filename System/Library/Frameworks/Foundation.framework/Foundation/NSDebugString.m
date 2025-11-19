@interface NSDebugString
- (NSDebugString)initWithString:(id)a3;
- (void)dealloc;
@end

@implementation NSDebugString

- (NSDebugString)initWithString:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSDebugString;
  v4 = [(NSString *)&v6 init];
  v4->string = [a3 copyWithZone:{-[NSDebugString zone](v4, "zone")}];
  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSDebugString;
  [(NSDebugString *)&v3 dealloc];
}

@end