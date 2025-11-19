@interface BKTextRangeRotorInfo
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation BKTextRangeRotorInfo

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(BKTextRangeRotorInfo *)self textRange];
  v6 = [v5 range];
  v8 = v7;

  v9 = [v4 textRange];

  v10 = [v9 range];
  v12 = v11;

  if (v6 < v10)
  {
    return -1;
  }

  v14 = -1;
  if (v8 >= v12)
  {
    v14 = v8 > v12;
  }

  if (v6 <= v10)
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
  v4 = [(BKTextRangeRotorInfo *)self type];
  v5 = [(BKTextRangeRotorInfo *)self textRange];
  v10.location = [v5 range];
  v6 = NSStringFromRange(v10);
  v7 = [NSString stringWithFormat:@"<%@ %p type=%@ range=%@>", v3, self, v4, v6];

  return v7;
}

@end