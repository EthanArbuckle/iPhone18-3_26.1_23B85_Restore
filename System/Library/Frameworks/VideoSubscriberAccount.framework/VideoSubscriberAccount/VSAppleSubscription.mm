@interface VSAppleSubscription
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (VSAppleSubscription)init;
- (VSAppleSubscription)initWithCoder:(id)a3;
- (VSAppleSubscription)initWithCustomerID:(id)a3 productCodes:(id)a4;
- (id)componentsForPrinting:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)prettyPrint;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSAppleSubscription

- (VSAppleSubscription)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The %@ initializer is not available.", v4}];

  return 0;
}

- (VSAppleSubscription)initWithCustomerID:(id)a3 productCodes:(id)a4
{
  v5 = a3;
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = VSAppleSubscription;
  v9 = [(VSAppleSubscription *)&v32 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
    v11 = [v7 stringByTrimmingCharactersInSet:v10];
    v12 = [v11 length];

    if (!v12)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"customerID is required."];
    }

    if ([v8 count])
    {
      v24 = v9;
      v25 = v5;
      v26 = a4;
      v27 = v7;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        v17 = *MEMORY[0x277CBE660];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            v20 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
            v21 = [v19 stringByTrimmingCharactersInSet:v20];
            v22 = [v21 length];

            if (!v22)
            {
              [MEMORY[0x277CBEAD8] raise:v17 format:@"Invalid product code was provided."];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v15);
      }

      a4 = v26;
      v7 = v27;
      v5 = v25;
      v9 = v24;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"At least one product code is required."];
    }

    objc_storeStrong(&v9->_customerID, v5);
    objc_storeStrong(&v9->_productCodes, a4);
  }

  return v9;
}

- (VSAppleSubscription)initWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [(VSAppleSubscription *)self initWithCustomerID:@"sampleCID" productCodes:&unk_284DF34C0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customerID"];

    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [coder decodeObjectOfClass:[NSString class] forKey:kVSAppleSubscriptionTypeCustomerIDKey] parameter must not be nil."];
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customerID"];
    [(VSAppleSubscription *)v5 setCustomerID:v7];

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"productCodes"];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [coder decodeArrayOfObjectsOfClass:[NSString class] forKey:kVSAppleSubscriptionTypeProductCodesKey] parameter must not be nil."];
    }

    v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"productCodes"];
    [(VSAppleSubscription *)v5 setProductCodes:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [(VSAppleSubscription *)self customerID];
  [v4 encodeObject:v5 forKey:@"customerID"];

  v6 = [(VSAppleSubscription *)self productCodes];
  [v4 encodeObject:v6 forKey:@"productCodes"];
}

- (id)description
{
  v3 = [(VSAppleSubscription *)self componentsForPrinting:@" = "];
  v4 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = VSAppleSubscription;
  v5 = [(VSAppleSubscription *)&v9 description];
  v6 = [v3 componentsJoinedByString:{@", "}];
  v7 = [v4 stringWithFormat:@"<%@ %@>", v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VSAppleSubscription *)self customerID];
  v4 = [v3 hash];
  v5 = [(VSAppleSubscription *)self productCodes];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v16 = 1;
  }

  else if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277CBEAD8];
        v8 = *MEMORY[0x277CBE660];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v7 raise:v8 format:{@"Unexpectedly, object was %@, instead of VSAppleSubscription.", v10}];
      }

      v11 = v6;
      v12 = [(VSAppleSubscription *)self customerID];
      v13 = [(VSAppleSubscription *)v11 customerID];
      if ([v12 isEqualToString:v13])
      {
        v14 = [(VSAppleSubscription *)self productCodes];
        v15 = [(VSAppleSubscription *)v11 productCodes];
        v16 = [v14 isEqualToArray:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VSAppleSubscription alloc];
  v5 = [(VSAppleSubscription *)self customerID];
  v6 = [(VSAppleSubscription *)self productCodes];
  v7 = [(VSAppleSubscription *)v4 initWithCustomerID:v5 productCodes:v6];

  return v7;
}

- (id)componentsForPrinting:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CCACA8];
  v8 = [(VSAppleSubscription *)self customerID];
  v9 = [v7 stringWithFormat:@"%@%@%@", @"customerID", v5, v8];
  [v6 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(VSAppleSubscription *)self productCodes];
  v12 = [v10 stringWithFormat:@"%@%@%@", @"productCodes", v5, v11];

  [v6 addObject:v12];

  return v6;
}

- (id)prettyPrint
{
  v2 = [(VSAppleSubscription *)self componentsForPrinting:@": "];
  v3 = [v2 componentsJoinedByString:@"\n"];

  return v3;
}

@end