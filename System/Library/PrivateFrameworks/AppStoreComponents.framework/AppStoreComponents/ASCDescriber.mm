@interface ASCDescriber
- (ASCDescriber)initWithObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)describeObject;
- (id)describeProperties;
- (id)description;
- (id)finalizeDescription;
- (unint64_t)hash;
- (void)addBool:(BOOL)a3 withName:(id)a4;
- (void)addDouble:(double)a3 withName:(id)a4;
- (void)addInt64:(int64_t)a3 withName:(id)a4;
- (void)addInteger:(int64_t)a3 withName:(id)a4;
- (void)addObject:(id)a3 withName:(id)a4;
- (void)addSensitiveObject:(id)a3 withName:(id)a4;
- (void)addUInt64:(unint64_t)a3 withName:(id)a4;
- (void)addUnsignedInteger:(unint64_t)a3 withName:(id)a4;
@end

@implementation ASCDescriber

- (ASCDescriber)initWithObject:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ASCDescriber;
  v6 = [(ASCDescriber *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    properties = v7->_properties;
    v7->_properties = v8;
  }

  return v7;
}

- (void)addBool:(BOOL)a3 withName:(id)a4
{
  v5 = a4;
  v6 = NSStringFromBOOL();
  [(ASCDescriber *)self addObject:v6 withName:v5];
}

- (void)addInteger:(int64_t)a3 withName:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(ASCDescriber *)self addObject:v8 withName:v7];
}

- (void)addUnsignedInteger:(unint64_t)a3 withName:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:a3];
  [(ASCDescriber *)self addObject:v8 withName:v7];
}

- (void)addInt64:(int64_t)a3 withName:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(ASCDescriber *)self addObject:v8 withName:v7];
}

- (void)addUInt64:(unint64_t)a3 withName:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedLongLong:a3];
  [(ASCDescriber *)self addObject:v8 withName:v7];
}

- (void)addDouble:(double)a3 withName:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(ASCDescriber *)self addObject:v8 withName:v7];
}

- (void)addSensitiveObject:(id)a3 withName:(id)a4
{
  v5 = a4;
  v6 = AMSHashIfNeeded();
  [(ASCDescriber *)self addObject:v6 withName:v5];
}

- (void)addObject:(id)a3 withName:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(ASCDescriber *)self properties];
  v8 = [ASCPair alloc];
  v9 = v11;
  if (!v11)
  {
    v9 = +[ASCDescriber nilObject];
  }

  v10 = [(ASCPair *)v8 initWithFirst:v6 second:v9];
  [v7 addObject:v10];

  if (!v11)
  {
  }
}

- (id)describeObject
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(ASCDescriber *)self object];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(ASCDescriber *)self object];
  v8 = [v3 initWithFormat:@"%@:%p", v6, v7];

  return v8;
}

- (id)describeProperties
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(ASCDescriber *)self properties];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(ASCDescriber *)self properties];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v5 length])
          {
            [v5 appendString:@"; "];
          }

          v12 = [v11 first];
          v13 = [v11 second];
          [v5 appendFormat:@"%@ = %@", v12, v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
  }

  else
  {
    v14 = &stru_2827A1458;
  }

  return v14;
}

- (id)finalizeDescription
{
  v3 = [(ASCDescriber *)self describeObject];
  v4 = [(ASCDescriber *)self describeProperties];
  v5 = [v4 length];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v5)
  {
    v7 = [v6 initWithFormat:@"<%@ %@>", v3, v4];
  }

  else
  {
    v7 = [v6 initWithFormat:@"<%@>", v3, v10];
  }

  v8 = v7;

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCDescriber *)self object];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCDescriber *)self properties];
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
    v8 = [(ASCDescriber *)self object];
    v9 = [v7 object];
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
      v11 = [(ASCDescriber *)self properties];
      v12 = [v7 properties];
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
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASCDescriber *)self object];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(ASCDescriber *)self object];
  v10 = [(ASCDescriber *)self properties];
  v11 = [v3 stringWithFormat:@"<%@:%p object = <%@:%p> properties = %@>", v5, self, v8, v9, v10];;

  return v11;
}

@end