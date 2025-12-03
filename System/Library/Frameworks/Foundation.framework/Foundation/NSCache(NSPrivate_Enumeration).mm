@interface NSCache(NSPrivate_Enumeration)
- (NSMapTable)mapTableRepresentation;
@end

@implementation NSCache(NSPrivate_Enumeration)

- (NSMapTable)mapTableRepresentation
{
  v4[5] = *MEMORY[0x1E69E9840];
  v2 = +[NSMapTable strongToStrongObjectsMapTable];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NSCache_NSPrivate_Enumeration__mapTableRepresentation__block_invoke;
  v4[3] = &unk_1E69F4990;
  v4[4] = v2;
  [self __apply:v4];
  return v2;
}

@end