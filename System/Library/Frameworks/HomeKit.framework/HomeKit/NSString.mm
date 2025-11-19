@interface NSString
- (id)stringByTrimmingDots;
@end

@implementation NSString

- (id)stringByTrimmingDots
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"."];
    v1 = [v1 stringByTrimmingCharactersInSet:v2];
  }

  return v1;
}

void __61__NSString_HomeKit__stringByTransformingFirstWordUsingBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = *(a1[5] + 8);
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v10 = (*(a1[4] + 16))();
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a7 = 1;
}

@end