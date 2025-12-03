@interface ASCPair
- (ASCPair)initWithFirst:(id)first second:(id)second;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASCPair

- (ASCPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = ASCPair;
  v9 = [(ASCPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  first = [(ASCPair *)self first];
  v7 = [first copyWithZone:zone];
  second = [(ASCPair *)self second];
  v9 = [second copyWithZone:zone];
  v10 = [v5 initWithFirst:v7 second:v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  first = [(ASCPair *)self first];
  [(ASCHasher *)v3 combineObject:first];

  second = [(ASCPair *)self second];
  [(ASCHasher *)v3 combineObject:second];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    first = [(ASCPair *)self first];
    first2 = [v7 first];
    v10 = first2;
    if (first && first2)
    {
      if ([first isEqual:first2])
      {
        goto LABEL_10;
      }
    }

    else if (first == first2)
    {
LABEL_10:
      second = [(ASCPair *)self second];
      second2 = [v7 second];
      v13 = second2;
      if (second && second2)
      {
        v14 = [second isEqual:second2];
      }

      else
      {
        v14 = second == second2;
      }

      goto LABEL_18;
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  first = [(ASCPair *)self first];
  second = [(ASCPair *)self second];
  v6 = [v3 stringWithFormat:@"(%@, %@)", first, second];

  return v6;
}

@end