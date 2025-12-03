@interface ASPickerDisplayItem
- (ASPickerDisplayItem)initWithCoder:(id)coder;
- (ASPickerDisplayItem)initWithName:(id)name productImage:(id)image descriptor:(id)descriptor;
- (ASPickerDisplayItem)initWithXPCObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (id)resizedImage;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASPickerDisplayItem

- (ASPickerDisplayItem)initWithName:(id)name productImage:(id)image descriptor:(id)descriptor
{
  nameCopy = name;
  imageCopy = image;
  descriptorCopy = descriptor;
  v18.receiver = self;
  v18.super_class = ASPickerDisplayItem;
  v12 = [(ASPickerDisplayItem *)&v18 init];
  if (v12)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v12->_identifier;
    v12->_identifier = uUIDString;

    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v12->_productImage, image);
    objc_storeStrong(&v12->_descriptor, descriptor);
    v16 = v12;
  }

  return v12;
}

- (ASPickerDisplayItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASPickerDisplayItem *)self init];
  v6 = v5;
  if (v5)
  {
    if (v5->_allowsRename)
    {
      v5->_setupOptions |= 1uLL;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = [MEMORY[0x277D755B8] imageWithData:0];
    objc_storeStrong(&v6->_productImage, v9);
    v10 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    if ([v11 containsValueForKey:@"rOp"])
    {
      v6->_renameOptions = [v11 decodeIntegerForKey:@"rOp"];
    }

    v12 = v11;
    if ([v12 containsValueForKey:@"pDop"])
    {
      v6->_setupOptions = [v12 decodeIntegerForKey:@"pDop"];
    }

    v13 = v6;
  }

  else
  {
    [ASAccessory initWithCoder:coderCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryType = self->_accessoryType;
  if (accessoryType)
  {
    [coderCopy encodeObject:accessoryType forKey:@"aTe"];
  }

  if (self->_allowsRename)
  {
    [coderCopy encodeBool:1 forKey:@"aRm"];
  }

  descriptor = self->_descriptor;
  if (descriptor)
  {
    [coderCopy encodeObject:descriptor forKey:@"aDr"];
  }

  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"dNm"];
  }

  resizedImage = [(ASPickerDisplayItem *)self resizedImage];
  v8 = UIImagePNGRepresentation(resizedImage);
  if (v8)
  {
    [coderCopy encodeObject:v8 forKey:@"pImg"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"pDid"];
  }

  renameOptions = self->_renameOptions;
  v11 = coderCopy;
  if (renameOptions)
  {
    [coderCopy encodeInteger:renameOptions forKey:@"rOp"];
    v11 = coderCopy;
  }

  setupOptions = self->_setupOptions;
  if (setupOptions)
  {
    [coderCopy encodeInteger:setupOptions forKey:@"pDop"];
    v11 = coderCopy;
  }
}

- (ASPickerDisplayItem)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ASPickerDisplayItem *)self init];
  if (!v7)
  {
    [ASPickerDisplayItem initWithXPCObject:error error:&v20];
    v17 = v20;
    goto LABEL_19;
  }

  if (MEMORY[0x2383B4C90](objectCopy) == MEMORY[0x277D86468])
  {
    if (!CUXPCDecodeNSString())
    {
      goto LABEL_20;
    }

    if (v7->_allowsRename)
    {
      v7->_setupOptions |= 1uLL;
    }

    objc_opt_class();
    if (!CUXPCDecodeObject() || !CUXPCDecodeNSString())
    {
LABEL_20:
      v17 = 0;
      goto LABEL_18;
    }

    CUXPCDecodeNSData();
    v14 = [MEMORY[0x277D755B8] imageWithData:0];
    if (!v14)
    {
      [(ASPickerDisplayItem *)error initWithXPCObject:v7 error:&v20];
      v17 = v20;
      goto LABEL_17;
    }

    objc_storeStrong(&v7->_productImage, v14);
    if (!CUXPCDecodeNSString())
    {
      goto LABEL_21;
    }

    v20 = 0;
    v15 = CUXPCDecodeUInt64RangedEx();
    if (v15 == 6)
    {
      v7->_renameOptions = v20;
    }

    else if (v15 == 5)
    {
      goto LABEL_21;
    }

    v20 = 0;
    v16 = CUXPCDecodeUInt64RangedEx();
    if (v16 == 6)
    {
      v7->_setupOptions = v20;
LABEL_16:
      v17 = v7;
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    if (v16 != 5)
    {
      goto LABEL_16;
    }

LABEL_21:
    v17 = 0;
    goto LABEL_17;
  }

  if (error)
  {
    ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v19);
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  descriptor = self->_descriptor;
  CUXPCEncodeObject();
  name = self->_name;
  v7 = objectCopy;
  uTF8String = [(NSString *)name UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v7, "dNm", uTF8String);
  }

  identifier = [(UTType *)self->_accessoryType identifier];
  v10 = v7;
  uTF8String2 = [identifier UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v10, "aTe", uTF8String2);
  }

  resizedImage = [(ASPickerDisplayItem *)self resizedImage];
  v13 = UIImagePNGRepresentation(resizedImage);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    v16 = v10;
    bytes = [v14 bytes];
    if (bytes)
    {
      v18 = bytes;
    }

    else
    {
      v18 = "";
    }

    xpc_dictionary_set_data(v16, "pImg", v18, [v14 length]);
  }

  identifier = self->_identifier;
  xdict = v10;
  uTF8String3 = [(NSString *)identifier UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(xdict, "pDid", uTF8String3);
  }

  renameOptions = self->_renameOptions;
  if (renameOptions)
  {
    xpc_dictionary_set_uint64(xdict, "rOp", renameOptions);
  }

  setupOptions = self->_setupOptions;
  if (setupOptions)
  {
    xpc_dictionary_set_uint64(xdict, "pDop", setupOptions);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(UTType *)self->_accessoryType copy];
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;

  *(v4 + 8) = self->_allowsRename;
  v7 = [(UIImage *)self->_productImage copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(ASDiscoveryDescriptor *)self->_descriptor copy];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(NSString *)self->_name copy];
  v12 = *(v4 + 16);
  *(v4 + 16) = v11;

  v13 = [(NSString *)self->_identifier copy];
  v14 = *(v4 + 64);
  *(v4 + 64) = v13;

  *(v4 + 40) = self->_renameOptions;
  *(v4 + 48) = self->_setupOptions;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (![(ASPickerDisplayItem *)v6 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_29:

      goto LABEL_30;
    }

    name = self->_name;
    name = [(ASPickerDisplayItem *)v6 name];
    p_isa = name;
    v10 = name;
    v11 = v10;
    if (p_isa == v10)
    {
    }

    else
    {
      if ((p_isa != 0) == (v10 == 0))
      {
        v13 = 0;
        v16 = v10;
LABEL_26:

        goto LABEL_27;
      }

      v12 = [(NSString *)p_isa isEqual:v10];

      if (!v12)
      {
        v13 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    descriptor = self->_descriptor;
    descriptor = [(ASPickerDisplayItem *)v6 descriptor];
    v16 = descriptor;
    v17 = descriptor;
    p_isa = &v17->super.isa;
    if (v16 == v17)
    {
    }

    else
    {
      if ((v16 != 0) == (v17 == 0))
      {

        goto LABEL_25;
      }

      v18 = [(ASDiscoveryDescriptor *)v16 isEqual:v17];

      if (!v18)
      {
        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    identifier = self->_identifier;
    identifier = [(ASPickerDisplayItem *)v6 identifier];
    v21 = identifier;
    v22 = identifier;
    v16 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if ((v21 != 0) == (v22 == 0))
      {

        goto LABEL_25;
      }

      v23 = [(NSString *)v21 isEqual:v22];

      if (!v23)
      {
        goto LABEL_25;
      }
    }

    renameOptions = self->_renameOptions;
    if (renameOptions == [(ASPickerDisplayItem *)v6 renameOptions])
    {
      setupOptions = self->_setupOptions;
      v13 = setupOptions == [(ASPickerDisplayItem *)v6 setupOptions];
      goto LABEL_26;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v13 = 1;
LABEL_30:

  return v13;
}

- (id)resizedImage
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  v6 = CGImageGetWidth([(UIImage *)self->_productImage CGImage]) / v5;
  v7 = CGImageGetHeight([(UIImage *)self->_productImage CGImage]) / v5;
  v8 = 180.0;
  if (v6 <= 180.0 && v7 <= 120.0)
  {
    v12 = self->_productImage;
  }

  else
  {
    v10 = v6 / v7;
    if (v10 <= 1.5)
    {
      v11 = 120.0;
      v8 = v10 * 120.0;
    }

    else
    {
      v11 = 180.0 / v10;
    }

    v13 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v8, v11}];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __35__ASPickerDisplayItem_resizedImage__block_invoke;
    v16[3] = &unk_278A01F30;
    v16[4] = self;
    *&v16[5] = v8;
    *&v16[6] = v11;
    v14 = [v13 imageWithActions:v16];
    v12 = [v14 imageWithRenderingMode:{-[UIImage renderingMode](self->_productImage, "renderingMode")}];
  }

  return v12;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v19 = identifier;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  accessoryType = self->_accessoryType;
  if (accessoryType)
  {
    v8 = accessoryType;
    identifier = [(UTType *)v8 identifier];
    CUAppendF();
    v9 = v4;

    v4 = v9;
  }

  name = self->_name;
  if (name)
  {
    v21 = name;
    CUAppendF();
    v11 = v4;

    v4 = v11;
  }

  descriptor = self->_descriptor;
  if (descriptor)
  {
    v22 = descriptor;
    CUAppendF();
    v13 = v4;

    v4 = v13;
  }

  if (self->_setupOptions)
  {
    v23 = CUPrintFlags64();
    CUAppendF();
    v14 = v4;

    v4 = v14;
  }

  if (self->_renameOptions)
  {
    v24 = CUPrintFlags64();
    CUAppendF();
    v15 = v4;

    v4 = v15;
  }

  v16 = &stru_28499D698;
  if (v4)
  {
    v16 = v4;
  }

  v17 = v16;

  return v17;
}

- (void)initWithXPCObject:(void *)a3 error:.cold.1(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_0();
    *a1 = ASErrorF(-6756, "%@ bad image data init failed", v6, v7, v8, v9, v10, v11, v12);
  }

  *a3 = 0;
}

- (void)initWithXPCObject:(void *)a1 error:(void *)a2 .cold.2(void *a1, void *a2)
{
  if (a1)
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_0();
    *a1 = ASErrorF(-6756, "%@ init failed", v5, v6, v7, v8, v9, v10, v11);
  }

  *a2 = 0;
}

@end