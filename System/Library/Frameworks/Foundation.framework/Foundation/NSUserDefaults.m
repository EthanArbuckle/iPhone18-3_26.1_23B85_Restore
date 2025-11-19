@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __76__NSUserDefaults_NSUserDefaults_NSURLExtras___web_addDefaultsChangeObserver__block_invoke()
{
  v0 = +[NSNotificationCenter defaultCenter];
  v1 = objc_opt_self();
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];

  return [(NSNotificationCenter *)v0 addObserver:v1 selector:sel__web_defaultsDidChange name:@"NSUserDefaultsDidChangeNotification" object:v2];
}

void ___NSUserDefaults_Log_Nonsensical_Suites_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"NSGlobalDomain"])
  {
    NSLog(@"Using NSGlobalDomain as an NSUserDefaults suite name does not make sense and will not work. Break on _NSUserDefaults_Log_Nonsensical_Suites to find this");
  }

  else
  {
    NSLog(@"Using your own bundle identifier as an NSUserDefaults suite name does not make sense and will not work. Break on _NSUserDefaults_Log_Nonsensical_Suites to find this");
  }
}

uint64_t __51__NSUserDefaults_NSUserDefaults__registerDefaults___block_invoke(uint64_t a1, uint64_t a2, NSData *a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (!v7)
    {
      *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 40) mutableCopy];
      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    v8 = encodeURLForDefaults(a3);

    return [v7 setObject:v8 forKey:a2];
  }

  return result;
}

@end