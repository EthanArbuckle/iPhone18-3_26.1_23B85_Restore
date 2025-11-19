@interface ASDiscoveredDisplayItem
- (ASDiscoveredDisplayItem)initWithCoder:(id)a3;
- (ASDiscoveredDisplayItem)initWithName:(id)a3 productImage:(id)a4 accessory:(id)a5;
- (ASDiscoveredDisplayItem)initWithXPCObject:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ASDiscoveredDisplayItem

- (ASDiscoveredDisplayItem)initWithName:(id)a3 productImage:(id)a4 accessory:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v9 descriptor];
  v16.receiver = self;
  v16.super_class = ASDiscoveredDisplayItem;
  v13 = [(ASPickerDisplayItem *)&v16 initWithName:v11 productImage:v10 descriptor:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_accessory, a5);
    v14 = v13;
  }

  return v13;
}

- (ASDiscoveredDisplayItem)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASDiscoveredDisplayItem;
  v3 = a3;
  v4 = [(ASPickerDisplayItem *)&v7 initWithCoder:v3];
  if (v4)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v5 = v4;
  }

  else
  {
    [ASDiscoveredDisplayItem initWithCoder:v3];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = ASDiscoveredDisplayItem;
  [(ASPickerDisplayItem *)&v6 encodeWithCoder:v4];
  accessory = self->_accessory;
  if (accessory)
  {
    [v4 encodeObject:accessory forKey:@"dsAc"];
  }
}

- (ASDiscoveredDisplayItem)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = ASDiscoveredDisplayItem;
  v7 = [(ASPickerDisplayItem *)&v17 initWithXPCObject:v6 error:a4];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](v6) == MEMORY[0x277D86468])
    {
      objc_opt_class();
      CUXPCDecodeObject();
      v14 = v7;
    }

    else if (a4)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v16);
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [ASPickerDisplayItem initWithXPCObject:a4 error:&v18];
    v14 = v18;
  }

  return v14;
}

- (void)encodeWithXPCObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASDiscoveredDisplayItem;
  v4 = a3;
  [(ASPickerDisplayItem *)&v6 encodeWithXPCObject:v4];
  accessory = self->_accessory;
  CUXPCEncodeObject();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = ASDiscoveredDisplayItem;
  v5 = [(ASPickerDisplayItem *)&v9 copyWithZone:?];
  v6 = [(ASDiscoveredAccessory *)self->_accessory copyWithZone:a3];
  v7 = v5[9];
  v5[9] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else if ([(ASDiscoveredDisplayItem *)v4 isMemberOfClass:objc_opt_class()])
  {
    accessory = self->_accessory;
    v6 = [(ASDiscoveredDisplayItem *)v4 accessory];
    v7 = accessory;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else if ((v7 != 0) == (v8 == 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = [(ASDiscoveredAccessory *)v7 isEqual:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionWithLevel:(int)a3
{
  CUAppendF();
  v4 = 0;
  v5 = v4;
  accessory = self->_accessory;
  if (accessory)
  {
    v12 = v4;
    v11 = accessory;
    CUAppendF();
    v7 = v12;

    v5 = v7;
  }

  v8 = &stru_28499D698;
  if (v5)
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v9 = ASErrorF(1, "%@ init failed", v3, v4, v5, v6, v7, v8, v2);
  [a1 failWithError:v9];
}

@end