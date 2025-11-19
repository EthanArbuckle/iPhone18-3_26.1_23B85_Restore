@interface NSCacheApplicationDidEnterBackgroundCallBack
@end

@implementation NSCacheApplicationDidEnterBackgroundCallBack

uint64_t ____NSCacheApplicationDidEnterBackgroundCallBack_block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v1 = objc_opt_respondsToSelector() ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

@end