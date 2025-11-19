@interface NSMutableDictionary(NSMutableDictionary)
- (uint64_t)initWithContentsOfFile:()NSMutableDictionary;
- (uint64_t)initWithContentsOfURL:()NSMutableDictionary;
- (uint64_t)initWithContentsOfURL:()NSMutableDictionary error:;
@end

@implementation NSMutableDictionary(NSMutableDictionary)

- (uint64_t)initWithContentsOfFile:()NSMutableDictionary
{
  v4 = [MEMORY[0x1E695DF20] newWithContentsOf:a3 immutable:0];

  return v4;
}

- (uint64_t)initWithContentsOfURL:()NSMutableDictionary
{
  v4 = [MEMORY[0x1E695DF20] newWithContentsOf:a3 immutable:0];

  return v4;
}

- (uint64_t)initWithContentsOfURL:()NSMutableDictionary error:
{
  v5 = [MEMORY[0x1E695DF20] newWithContentsOf:a3 immutable:0 error:a4];

  return v5;
}

@end