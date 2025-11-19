@interface NSObject
@end

@implementation NSObject

void __69__NSObject_STKLoggable__stk_loggingDescriptionFromLoggable_isPretty___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(a1 + 48) == 1 && (objc_opt_class(), ITKDynamicCast(), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = [v6 itk_prettyDescriptionWithTabLevel:1];
    [v8 appendFormat:@"\t%@ = %@\n", v10, v9];
  }

  else
  {
    [*(a1 + 32) appendFormat:*(a1 + 40), v10, v5];
  }
}

@end