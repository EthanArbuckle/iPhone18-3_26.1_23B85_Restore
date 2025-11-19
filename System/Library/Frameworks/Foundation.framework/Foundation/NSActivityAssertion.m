@interface NSActivityAssertion
@end

@implementation NSActivityAssertion

uint64_t __38___NSActivityAssertion__bundleVersion__block_invoke()
{
  v0 = [+[NSBundle mainBundle](NSBundle infoDictionary];
  qword_1ED43F728 = [(NSDictionary *)v0 objectForKey:*MEMORY[0x1E695E500]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [NSString alloc];
    [qword_1ED43F728 doubleValue];
    result = [(NSString *)v1 initWithFormat:@"%f", v2];
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      return result;
    }

    result = @"unknown";
  }

  qword_1ED43F728 = result;
  return result;
}

dispatch_queue_t __51___NSActivityAssertion__expiringTaskExecutionQueue__block_invoke()
{
  result = dispatch_queue_create("com.apple.expiringTaskExecutionQueue", MEMORY[0x1E69E96A8]);
  qword_1ED43F700 = result;
  return result;
}

dispatch_queue_t __56___NSActivityAssertion__expirationHandlerExecutionQueue__block_invoke()
{
  result = dispatch_queue_create("com.apple.expirationHandlerExecutionQueue", MEMORY[0x1E69E96A8]);
  qword_1ED43F710 = result;
  return result;
}

NSHashTable *__43___NSActivityAssertion__expiringActivities__block_invoke()
{
  result = [[NSHashTable alloc] initWithOptions:5 capacity:0];
  qword_1ED43F720 = result;
  return result;
}

uint64_t __74___NSActivityAssertion__initWithActivityOptions_reason_expirationHandler___block_invoke()
{
  global_queue = dispatch_get_global_queue(21, 0);
  v1 = softLinkBKSProcessAssertionSetExpirationHandler;

  return v1(global_queue, &__block_literal_global_45);
}

uint64_t __74___NSActivityAssertion__initWithActivityOptions_reason_expirationHandler___block_invoke_3(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    Weak = objc_loadWeak((result + 32));

    return [Weak _fireExpirationHandler];
  }

  return result;
}

uint64_t __46___NSActivityAssertion__fireExpirationHandler__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);

  return [v4 _releaseProcessAssertion];
}

uint64_t __70___NSActivityAssertion__performExpiringActivityWithReason_usingBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _endFromDealloc:0];
}

@end