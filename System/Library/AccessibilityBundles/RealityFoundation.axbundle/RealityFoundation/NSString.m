@interface NSString
@end

@implementation NSString

void __94__NSString_AXRealityFoundationUtilities___accessibilityEnumerateDelayedDescriptionsWithBlock___block_invoke()
{
  v4 = 0;
  v0 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"\\{\\{\\{delay:([0-9]+(\\.[0-9]+)?)\\}\\}\\}" options:1 error:&v4];
  v1 = v4;
  v2 = _accessibilityEnumerateDelayedDescriptionsWithBlock__regex;
  _accessibilityEnumerateDelayedDescriptionsWithBlock__regex = v0;

  if (!_accessibilityEnumerateDelayedDescriptionsWithBlock__regex)
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __94__NSString_AXRealityFoundationUtilities___accessibilityEnumerateDelayedDescriptionsWithBlock___block_invoke_cold_1(v1, v3);
    }
  }
}

void __94__NSString_AXRealityFoundationUtilities___accessibilityEnumerateDelayedDescriptionsWithBlock___block_invoke_284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangeAtIndex:1];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL && v5 == 0)
  {
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __94__NSString_AXRealityFoundationUtilities___accessibilityEnumerateDelayedDescriptionsWithBlock___block_invoke_284_cold_1(v10);
    }

    v9 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) substringWithRange:{v4, v5}];
    [v7 doubleValue];
    v9 = v8;
  }

  v11 = [v3 range];
  v13 = v12;

  v14 = *(*(*(a1 + 48) + 8) + 24);
  v15 = [*(a1 + 32) substringWithRange:{v14, v11 - v14}];
  if ([v15 length])
  {
    (*(*(a1 + 40) + 16))(*(*(*(a1 + 56) + 8) + 24));
  }

  *(*(*(a1 + 48) + 8) + 24) = v11 + v13;
  *(*(*(a1 + 56) + 8) + 24) = v9;
}

void __94__NSString_AXRealityFoundationUtilities___accessibilityEnumerateDelayedDescriptionsWithBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C1FB000, a2, OS_LOG_TYPE_ERROR, "Unable to create regular expression: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end