@interface HKCountrySetBitmaskPath
+ (id)pathWithBitmask:(unint64_t)a3 index:(int64_t)a4;
- (BOOL)_isEqualToMask:(_BOOL8)a1;
- (BOOL)isEqual:(id)a3;
@end

@implementation HKCountrySetBitmaskPath

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKCountrySetBitmaskPath *)self _isEqualToMask:v4];
  }

  return v5;
}

+ (id)pathWithBitmask:(unint64_t)a3 index:(int64_t)a4
{
  v6 = [HKCountrySetBitmaskPath alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = HKCountrySetBitmaskPath;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    if (v6)
    {
      v6->_bitmask = a3;
      v6->_index = a4;
    }
  }

  return v6;
}

- (BOOL)_isEqualToMask:(_BOOL8)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 index];
    if (v5 == [a1 index])
    {
      v6 = [v4 bitmask];
      a1 = v6 == [a1 bitmask];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

@end