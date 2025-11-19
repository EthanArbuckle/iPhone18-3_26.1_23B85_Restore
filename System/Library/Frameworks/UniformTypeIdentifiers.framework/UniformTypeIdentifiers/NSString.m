@interface NSString
@end

@implementation NSString

void __63__NSString_UTAdditions__stringByAppendingPathExtensionForType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 preferredTagOfClass:@"public.filename-extension"];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

@end