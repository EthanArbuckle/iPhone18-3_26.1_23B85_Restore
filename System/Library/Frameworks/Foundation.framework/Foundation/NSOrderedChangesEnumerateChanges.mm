@interface NSOrderedChangesEnumerateChanges
@end

@implementation NSOrderedChangesEnumerateChanges

uint64_t ___NSOrderedChangesEnumerateChanges_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 == 5 && (*(result + 40) & 0x20) != 0)
      {
        return (*(*(result + 32) + 16))();
      }

      return result;
    }

    if ((*(result + 40) & 8) == 0)
    {
      return result;
    }

    return (*(*(result + 32) + 16))();
  }

  if (a2 == 1)
  {
    if ((*(result + 40) & 2) == 0)
    {
      return result;
    }

    return (*(*(result + 32) + 16))();
  }

  if (a2 == 2 && (*(result + 40) & 4) != 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

@end