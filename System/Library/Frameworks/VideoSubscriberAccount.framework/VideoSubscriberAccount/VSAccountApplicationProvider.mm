@interface VSAccountApplicationProvider
+ (VSAccountApplicationProvider)new;
- (BOOL)isEqual:(id)a3;
- (VSAccountApplicationProvider)init;
- (VSAccountApplicationProvider)initWithCoder:(id)a3;
- (VSAccountApplicationProvider)initWithLocalizedDisplayName:(NSString *)localizedDisplayName identifier:(NSString *)identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSAccountApplicationProvider

- (VSAccountApplicationProvider)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

+ (VSAccountApplicationProvider)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The %@ initializer is not available.", v4}];

  return 0;
}

- (VSAccountApplicationProvider)initWithLocalizedDisplayName:(NSString *)localizedDisplayName identifier:(NSString *)identifier
{
  v6 = localizedDisplayName;
  v7 = identifier;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x277CBEAD8];
      v9 = *MEMORY[0x277CBE660];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v8 raise:v9 format:{@"Unexpectedly, localizedDisplayName was %@, instead of NSString.", v11}];
    }

    if ([(NSString *)v6 length])
    {
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      v16 = @"The identifier parameter must not be nil.";
      goto LABEL_14;
    }

    v17 = @"The localizedDisplayName parameter must not be empty.";
  }

  else
  {
    v17 = @"The localizedDisplayName parameter must not be nil.";
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:v17];
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE660];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v12 raise:v13 format:{@"Unexpectedly, identifier was %@, instead of NSString.", v15}];
  }

  if (![(NSString *)v7 length])
  {
    v16 = @"The identifier parameter must not be empty.";
LABEL_14:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:v16];
  }

  v24.receiver = self;
  v24.super_class = VSAccountApplicationProvider;
  v18 = [(VSAccountApplicationProvider *)&v24 init];
  if (v18)
  {
    v19 = [(NSString *)v6 copy];
    v20 = v18->_localizedDisplayName;
    v18->_localizedDisplayName = v19;

    v21 = [(NSString *)v7 copy];
    v22 = v18->_identifier;
    v18->_identifier = v21;
  }

  return v18;
}

- (VSAccountApplicationProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSAccountApplicationProvider;
  v5 = [(VSAccountApplicationProvider *)&v8 init];
  if (v5)
  {
    v6 = VSAccountApplicationProviderValueType();
    VSValueTypeInitWithCoder(v6, v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = VSAccountApplicationProviderValueType();
  VSValueTypeEncodeWithCoder(v5, self, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = VSAccountApplicationProviderValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, a3);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAccountApplicationProviderValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = VSAccountApplicationProviderValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, v4);

  return self;
}

- (id)description
{
  v3 = VSAccountApplicationProviderValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end