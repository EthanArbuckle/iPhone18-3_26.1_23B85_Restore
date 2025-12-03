@interface BCCountedCFISetEntry
- (BCCountedCFISetEntry)initWithCFI:(id)i;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation BCCountedCFISetEntry

- (BCCountedCFISetEntry)initWithCFI:(id)i
{
  iCopy = i;
  v9.receiver = self;
  v9.super_class = BCCountedCFISetEntry;
  v6 = [(BCCountedCFISetEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cfi, i);
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (self == compareCopy)
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BCCountedCFISetEntry *)self cfi];
      v6 = [(BCCountedCFISetEntry *)compareCopy cfi];
      v7 = [v5 compare:v6];
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(BCCountedCFISetEntry *)self cfi];
  v6 = [v4 initWithCFI:v5];

  [(BCCountedCFISetEntry *)self count];
  [v6 setCount:?];
  return v6;
}

- (id)description
{
  v3 = [(BCCountedCFISetEntry *)self cfi];
  string = [v3 string];
  [(BCCountedCFISetEntry *)self count];
  v6 = [NSString stringWithFormat:@"%@ => %.1f", string, v5];

  return v6;
}

@end