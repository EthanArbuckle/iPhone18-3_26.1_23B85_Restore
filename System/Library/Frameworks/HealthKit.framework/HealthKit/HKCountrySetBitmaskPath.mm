@interface HKCountrySetBitmaskPath
+ (id)pathWithBitmask:(unint64_t)bitmask index:(int64_t)index;
- (BOOL)_isEqualToMask:(_BOOL8)mask;
- (BOOL)isEqual:(id)equal;
@end

@implementation HKCountrySetBitmaskPath

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKCountrySetBitmaskPath *)self _isEqualToMask:equalCopy];
  }

  return v5;
}

+ (id)pathWithBitmask:(unint64_t)bitmask index:(int64_t)index
{
  v6 = [HKCountrySetBitmaskPath alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = HKCountrySetBitmaskPath;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    if (v6)
    {
      v6->_bitmask = bitmask;
      v6->_index = index;
    }
  }

  return v6;
}

- (BOOL)_isEqualToMask:(_BOOL8)mask
{
  v3 = a2;
  v4 = v3;
  if (mask)
  {
    index = [v3 index];
    if (index == [mask index])
    {
      bitmask = [v4 bitmask];
      mask = bitmask == [mask bitmask];
    }

    else
    {
      mask = 0;
    }
  }

  return mask;
}

@end