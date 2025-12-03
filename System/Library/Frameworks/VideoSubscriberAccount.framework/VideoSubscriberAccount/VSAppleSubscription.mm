@interface VSAppleSubscription
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (VSAppleSubscription)init;
- (VSAppleSubscription)initWithCoder:(id)coder;
- (VSAppleSubscription)initWithCustomerID:(id)d productCodes:(id)codes;
- (id)componentsForPrinting:(id)printing;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)prettyPrint;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (VSAppleSubscription)initWithCustomerID:(id)d productCodes:(id)codes
{
  dCopy = d;
  v34 = *MEMORY[0x277D85DE8];
  dCopy2 = d;
  codesCopy = codes;
  v32.receiver = self;
  v32.super_class = VSAppleSubscription;
  v9 = [(VSAppleSubscription *)&v32 init];
  if (v9)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
    v11 = [dCopy2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v12 = [v11 length];

    if (!v12)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"customerID is required."];
    }

    if ([codesCopy count])
    {
      v24 = v9;
      v25 = dCopy;
      codesCopy2 = codes;
      v27 = dCopy2;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = codesCopy;
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
            whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
            v21 = [v19 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
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

      codes = codesCopy2;
      dCopy2 = v27;
      dCopy = v25;
      v9 = v24;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"At least one product code is required."];
    }

    objc_storeStrong(&v9->_customerID, dCopy);
    objc_storeStrong(&v9->_productCodes, codes);
  }

  return v9;
}

- (VSAppleSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  v5 = [(VSAppleSubscription *)self initWithCustomerID:@"sampleCID" productCodes:&unk_284DF34C0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customerID"];

    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [coder decodeObjectOfClass:[NSString class] forKey:kVSAppleSubscriptionTypeCustomerIDKey] parameter must not be nil."];
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customerID"];
    [(VSAppleSubscription *)v5 setCustomerID:v7];

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"productCodes"];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [coder decodeArrayOfObjectsOfClass:[NSString class] forKey:kVSAppleSubscriptionTypeProductCodesKey] parameter must not be nil."];
    }

    v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"productCodes"];
    [(VSAppleSubscription *)v5 setProductCodes:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  customerID = [(VSAppleSubscription *)self customerID];
  [coderCopy encodeObject:customerID forKey:@"customerID"];

  productCodes = [(VSAppleSubscription *)self productCodes];
  [coderCopy encodeObject:productCodes forKey:@"productCodes"];
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
  customerID = [(VSAppleSubscription *)self customerID];
  v4 = [customerID hash];
  productCodes = [(VSAppleSubscription *)self productCodes];
  v6 = [productCodes hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else if (equalCopy)
  {
    v6 = equalCopy;
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
      customerID = [(VSAppleSubscription *)self customerID];
      customerID2 = [(VSAppleSubscription *)v11 customerID];
      if ([customerID isEqualToString:customerID2])
      {
        productCodes = [(VSAppleSubscription *)self productCodes];
        productCodes2 = [(VSAppleSubscription *)v11 productCodes];
        v16 = [productCodes isEqualToArray:productCodes2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VSAppleSubscription alloc];
  customerID = [(VSAppleSubscription *)self customerID];
  productCodes = [(VSAppleSubscription *)self productCodes];
  v7 = [(VSAppleSubscription *)v4 initWithCustomerID:customerID productCodes:productCodes];

  return v7;
}

- (id)componentsForPrinting:(id)printing
{
  v4 = MEMORY[0x277CBEB18];
  printingCopy = printing;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CCACA8];
  customerID = [(VSAppleSubscription *)self customerID];
  v9 = [v7 stringWithFormat:@"%@%@%@", @"customerID", printingCopy, customerID];
  [v6 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  productCodes = [(VSAppleSubscription *)self productCodes];
  v12 = [v10 stringWithFormat:@"%@%@%@", @"productCodes", printingCopy, productCodes];

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