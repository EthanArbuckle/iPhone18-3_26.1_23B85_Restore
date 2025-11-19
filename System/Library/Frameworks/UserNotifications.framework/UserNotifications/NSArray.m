@interface NSArray
@end

@implementation NSArray

void __37__NSArray_UserNotifications__un_map___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v4 = v2;
  if (v2)
  {
    [v1 addObject:v2];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
    [v1 addObject:v3];
  }
}

@end