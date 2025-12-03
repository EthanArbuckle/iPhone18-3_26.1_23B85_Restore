@interface ASDiscoveredDisplayItem
- (ASDiscoveredDisplayItem)initWithCoder:(id)coder;
- (ASDiscoveredDisplayItem)initWithName:(id)name productImage:(id)image accessory:(id)accessory;
- (ASDiscoveredDisplayItem)initWithXPCObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASDiscoveredDisplayItem

- (ASDiscoveredDisplayItem)initWithName:(id)name productImage:(id)image accessory:(id)accessory
{
  accessoryCopy = accessory;
  imageCopy = image;
  nameCopy = name;
  descriptor = [accessoryCopy descriptor];
  v16.receiver = self;
  v16.super_class = ASDiscoveredDisplayItem;
  v13 = [(ASPickerDisplayItem *)&v16 initWithName:nameCopy productImage:imageCopy descriptor:descriptor];

  if (v13)
  {
    objc_storeStrong(&v13->_accessory, accessory);
    v14 = v13;
  }

  return v13;
}

- (ASDiscoveredDisplayItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ASDiscoveredDisplayItem;
  coderCopy = coder;
  v4 = [(ASPickerDisplayItem *)&v7 initWithCoder:coderCopy];
  if (v4)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v5 = v4;
  }

  else
  {
    [ASDiscoveredDisplayItem initWithCoder:coderCopy];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = ASDiscoveredDisplayItem;
  [(ASPickerDisplayItem *)&v6 encodeWithCoder:coderCopy];
  accessory = self->_accessory;
  if (accessory)
  {
    [coderCopy encodeObject:accessory forKey:@"dsAc"];
  }
}

- (ASDiscoveredDisplayItem)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = ASDiscoveredDisplayItem;
  v7 = [(ASPickerDisplayItem *)&v17 initWithXPCObject:objectCopy error:error];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](objectCopy) == MEMORY[0x277D86468])
    {
      objc_opt_class();
      CUXPCDecodeObject();
      v14 = v7;
    }

    else if (error)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v16);
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [ASPickerDisplayItem initWithXPCObject:error error:&v18];
    v14 = v18;
  }

  return v14;
}

- (void)encodeWithXPCObject:(id)object
{
  v6.receiver = self;
  v6.super_class = ASDiscoveredDisplayItem;
  objectCopy = object;
  [(ASPickerDisplayItem *)&v6 encodeWithXPCObject:objectCopy];
  accessory = self->_accessory;
  CUXPCEncodeObject();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = ASDiscoveredDisplayItem;
  v5 = [(ASPickerDisplayItem *)&v9 copyWithZone:?];
  v6 = [(ASDiscoveredAccessory *)self->_accessory copyWithZone:zone];
  v7 = v5[9];
  v5[9] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if ([(ASDiscoveredDisplayItem *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    accessory = self->_accessory;
    accessory = [(ASDiscoveredDisplayItem *)equalCopy accessory];
    v7 = accessory;
    v8 = accessory;
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

- (id)descriptionWithLevel:(int)level
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