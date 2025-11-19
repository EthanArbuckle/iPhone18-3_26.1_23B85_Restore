@interface OS
@end

@implementation OS

uint64_t __48__OS_nw_dictionary_nw_descriptions__description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (**(a1 + 32) == 1)
  {
    CFStringAppendFormat(v6, 0, @"{%s: %@", a2, v5);
    **(a1 + 32) = 0;
  }

  else
  {
    CFStringAppendFormat(v6, 0, @", %s: %@", a2, v5);
  }

  return 1;
}

uint64_t __56__OS_nw_dictionary_nw_descriptions__redactedDescription__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = @"<redacted>";
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 redactedDescription];
  }

  v7 = *(a1 + 40);
  if (**(a1 + 32) == 1)
  {
    CFStringAppendFormat(v7, 0, @"{%s: %@", a2, v6);
    **(a1 + 32) = 0;
  }

  else
  {
    CFStringAppendFormat(v7, 0, @", %s: %@", a2, v6);
  }

  return 1;
}

@end