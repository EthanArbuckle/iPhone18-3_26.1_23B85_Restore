@interface ASCPair
- (ASCPair)initWithFirst:(id)a3 second:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASCPair

- (ASCPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASCPair;
  v9 = [(ASCPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCPair *)self first];
  v7 = [v6 copyWithZone:a3];
  v8 = [(ASCPair *)self second];
  v9 = [v8 copyWithZone:a3];
  v10 = [v5 initWithFirst:v7 second:v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCPair *)self first];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCPair *)self second];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [(ASCPair *)self first];
    v9 = [v7 first];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
        goto LABEL_10;
      }
    }

    else if (v8 == v9)
    {
LABEL_10:
      v11 = [(ASCPair *)self second];
      v12 = [v7 second];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = [v11 isEqual:v12];
      }

      else
      {
        v14 = v11 == v12;
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
  v4 = [(ASCPair *)self first];
  v5 = [(ASCPair *)self second];
  v6 = [v3 stringWithFormat:@"(%@, %@)", v4, v5];

  return v6;
}

@end