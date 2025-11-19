@interface CFCharacterSetInitialize
@end

@implementation CFCharacterSetInitialize

char *____CFCharacterSetInitialize_block_invoke()
{
  result = getenv("__CF_DEBUG_EXPANDED_SET");
  if (result)
  {
    if (*result == 89)
    {
      __CFCheckForExapendedSet = 1;
    }
  }

  return result;
}

@end