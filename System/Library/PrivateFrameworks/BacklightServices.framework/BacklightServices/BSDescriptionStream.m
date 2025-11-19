@interface BSDescriptionStream
@end

@implementation BSDescriptionStream

void __102__BSDescriptionStream_BacklightServices__bls_appendBoundedCollection_withName_maximumItems_itemBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v4 isEqual:v3])
  {
    [*(a1 + 40) appendString:v4 withName:0];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

@end