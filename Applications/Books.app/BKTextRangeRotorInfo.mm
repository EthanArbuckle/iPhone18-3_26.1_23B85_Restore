@interface BKTextRangeRotorInfo
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation BKTextRangeRotorInfo

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  textRange = [(BKTextRangeRotorInfo *)self textRange];
  range = [textRange range];
  v8 = v7;

  textRange2 = [compareCopy textRange];

  range2 = [textRange2 range];
  v12 = v11;

  if (range < range2)
  {
    return -1;
  }

  v14 = -1;
  if (v8 >= v12)
  {
    v14 = v8 > v12;
  }

  if (range <= range2)
  {
    return v14;
  }

  else
  {
    return 1;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  type = [(BKTextRangeRotorInfo *)self type];
  textRange = [(BKTextRangeRotorInfo *)self textRange];
  v10.location = [textRange range];
  v6 = NSStringFromRange(v10);
  v7 = [NSString stringWithFormat:@"<%@ %p type=%@ range=%@>", v3, self, type, v6];

  return v7;
}

@end