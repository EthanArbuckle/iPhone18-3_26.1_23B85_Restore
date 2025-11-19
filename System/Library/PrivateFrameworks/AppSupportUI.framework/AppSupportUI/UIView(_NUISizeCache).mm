@interface UIView(_NUISizeCache)
- (uint64_t)nukeContentLayoutSizeCacheFromOrbit;
@end

@implementation UIView(_NUISizeCache)

- (uint64_t)nukeContentLayoutSizeCacheFromOrbit
{
  v13 = *MEMORY[0x277D85DE8];
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  IfNeeded->_sizeCache.__end_ = IfNeeded->_sizeCache.__begin_;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(objc_object *)a1 subviews];
  result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) nukeContentLayoutSizeCacheFromOrbit];
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

@end