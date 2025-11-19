@interface BCCountedCFISetEntry
- (BCCountedCFISetEntry)initWithCFI:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation BCCountedCFISetEntry

- (BCCountedCFISetEntry)initWithCFI:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BCCountedCFISetEntry;
  v6 = [(BCCountedCFISetEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cfi, a3);
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BCCountedCFISetEntry *)self cfi];
      v6 = [(BCCountedCFISetEntry *)v4 cfi];
      v7 = [v5 compare:v6];
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [v3 string];
  [(BCCountedCFISetEntry *)self count];
  v6 = [NSString stringWithFormat:@"%@ => %.1f", v4, v5];

  return v6;
}

@end