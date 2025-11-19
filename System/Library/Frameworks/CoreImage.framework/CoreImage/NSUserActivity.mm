@interface NSUserActivity
@end

@implementation NSUserActivity

uint64_t __55__NSUserActivity_CIBarcodeDescriptor__setDetectedCode___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = archivedDataWithRootObject(*(a1 + 32));
  v8 = *(a5 + 16);

  return v8(a5, a4, v7, 0, 0);
}

@end