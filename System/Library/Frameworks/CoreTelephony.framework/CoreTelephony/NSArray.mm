@interface NSArray
@end

@implementation NSArray

void __60__NSArray_CTXPCLogging__ct_descriptionWithShortDescriptions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if ([v10 conformsToProtocol:&unk_1EF067AB8])
  {
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    [v6 ct_shortDescription];
  }

  else
  {
    [v10 description];
  }
  v8 = ;

  if (a3)
  {
    v9 = @",\n  %@";
  }

  else
  {
    v9 = @"  %@";
  }

  [*(a1 + 32) appendFormat:v9, v8];
}

@end