@interface AXSSMotionTrackingHIDInput
+ (id)motionTrackingHIDInputWithDevice:(id)a3;
- (AXSSMotionTrackingHIDInput)initWithCoder:(id)a3;
- (AXSSMotionTrackingHIDInput)initWithDeviceUniqueID:(id)a3 productID:(id)a4 vendorID:(id)a5 deviceName:(id)a6 mfiAuthenticated:(BOOL)a7;
- (AXSSMotionTrackingHIDInput)initWithPlistDictionary:(id)a3;
- (NSDictionary)hidMatchingDictionary;
- (id)description;
- (id)plistDictionary;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSSMotionTrackingHIDInput

+ (id)motionTrackingHIDInputWithDevice:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__AXSSMotionTrackingHIDInput_motionTrackingHIDInputWithDevice___block_invoke;
  aBlock[3] = &unk_1E8134E70;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __63__AXSSMotionTrackingHIDInput_motionTrackingHIDInputWithDevice___block_invoke_2;
  v18 = &unk_1E8134E98;
  v6 = v4;
  v19 = v6;
  v7 = _Block_copy(&v15);
  v8 = v5[2](v5, @"PhysicalDeviceUniqueID");
  v9 = v7[2](v7, @"ProductID");
  v10 = v7[2](v7, @"VendorID");
  v11 = v5[2](v5, @"Product");
  v12 = [AXSSMotionTrackingUtilities axss_HIDDeviceIsMFiAuthenticated:v6, v15, v16, v17, v18];
  if ([v8 length] || v9 || v10 || objc_msgSend(v11, "length"))
  {
    v13 = [[AXSSMotionTrackingHIDInput alloc] initWithDeviceUniqueID:v8 productID:v9 vendorID:v10 deviceName:v11 mfiAuthenticated:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __63__AXSSMotionTrackingHIDInput_motionTrackingHIDInputWithDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) propertyForKey:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __63__AXSSMotionTrackingHIDInput_motionTrackingHIDInputWithDevice___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) propertyForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AXSSMotionTrackingHIDInput)initWithDeviceUniqueID:(id)a3 productID:(id)a4 vendorID:(id)a5 deviceName:(id)a6 mfiAuthenticated:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 length];
  if (v13 || v14 || v16 || [v15 length])
  {
    v28.receiver = self;
    v28.super_class = AXSSMotionTrackingHIDInput;
    v17 = [(AXSSMotionTrackingInput *)&v28 init];
    if (v17)
    {
      v18 = [v12 copy];
      deviceUniqueID = v17->_deviceUniqueID;
      v17->_deviceUniqueID = v18;

      v20 = [v13 copy];
      productID = v17->_productID;
      v17->_productID = v20;

      v22 = [v14 copy];
      vendorID = v17->_vendorID;
      v17->_vendorID = v22;

      v24 = [v15 copy];
      deviceName = v17->_deviceName;
      v17->_deviceName = v24;

      v17->_mfiAuthenticated = a7;
    }

    self = v17;
    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)uniqueIdentifier
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AXSSMotionTrackingHIDInput *)self productID];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(AXSSMotionTrackingHIDInput *)self productID];
    v7 = [v5 stringWithFormat:@"%@", v6];
    [v3 addObject:v7];
  }

  v8 = [(AXSSMotionTrackingHIDInput *)self vendorID];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(AXSSMotionTrackingHIDInput *)self vendorID];
    v11 = [v9 stringWithFormat:@"%@", v10];
    [v3 addObject:v11];
  }

  v12 = [(AXSSMotionTrackingHIDInput *)self deviceName];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(AXSSMotionTrackingHIDInput *)self deviceName];
    [v3 addObject:v14];
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingHIDInput mfiAuthenticated](self, "mfiAuthenticated")}];
  v17 = [v15 stringWithFormat:@"%@", v16];
  [v3 addObject:v17];

  if ([v3 count])
  {
    v18 = [v3 componentsJoinedByString:@"-"];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (NSDictionary)hidMatchingDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__AXSSMotionTrackingHIDInput_hidMatchingDictionary__block_invoke;
  aBlock[3] = &unk_1E8134EC0;
  v4 = v3;
  v20 = v4;
  v5 = _Block_copy(aBlock);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __51__AXSSMotionTrackingHIDInput_hidMatchingDictionary__block_invoke_2;
  v17 = &unk_1E8134EE8;
  v18 = v4;
  v6 = v4;
  v7 = _Block_copy(&v14);
  v8 = [(AXSSMotionTrackingHIDInput *)self deviceUniqueID:v14];
  v5[2](v5, v8, "PhysicalDeviceUniqueID");

  v9 = [(AXSSMotionTrackingHIDInput *)self productID];
  v7[2](v7, v9, "ProductID");

  v10 = [(AXSSMotionTrackingHIDInput *)self vendorID];
  v7[2](v7, v10, "VendorID");

  v11 = [(AXSSMotionTrackingHIDInput *)self deviceName];
  v5[2](v5, v11, "Product");

  v12 = [v6 copy];

  return v12;
}

uint64_t __51__AXSSMotionTrackingHIDInput_hidMatchingDictionary__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    if ([v5 length])
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
      [v6 setObject:v9 forKeyedSubscript:v7];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __51__AXSSMotionTrackingHIDInput_hidMatchingDictionary__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = MEMORY[0x1E696AEC0];
    v6 = a2;
    v7 = [v5 stringWithUTF8String:a3];
    [v4 setObject:v6 forKeyedSubscript:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = [(AXSSMotionTrackingHIDInput *)self deviceUniqueID];

  if (v4)
  {
    v5 = [(AXSSMotionTrackingHIDInput *)self deviceUniqueID];
    v6 = NSStringFromSelector(sel_deviceUniqueID);
    [v18 encodeObject:v5 forKey:v6];
  }

  v7 = [(AXSSMotionTrackingHIDInput *)self productID];

  if (v7)
  {
    v8 = [(AXSSMotionTrackingHIDInput *)self productID];
    v9 = NSStringFromSelector(sel_productID);
    [v18 encodeObject:v8 forKey:v9];
  }

  v10 = [(AXSSMotionTrackingHIDInput *)self vendorID];

  if (v10)
  {
    v11 = [(AXSSMotionTrackingHIDInput *)self vendorID];
    v12 = NSStringFromSelector(sel_vendorID);
    [v18 encodeObject:v11 forKey:v12];
  }

  v13 = [(AXSSMotionTrackingHIDInput *)self deviceName];

  if (v13)
  {
    v14 = [(AXSSMotionTrackingHIDInput *)self deviceName];
    v15 = NSStringFromSelector(sel_deviceName);
    [v18 encodeObject:v14 forKey:v15];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingHIDInput mfiAuthenticated](self, "mfiAuthenticated")}];
  v17 = NSStringFromSelector(sel_mfiAuthenticated);
  [v18 encodeObject:v16 forKey:v17];
}

- (AXSSMotionTrackingHIDInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_deviceUniqueID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_productID);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_vendorID);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_deviceName);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_mfiAuthenticated);
  v19 = [v4 decodeObjectOfClass:v17 forKey:v18];

  v20 = [v19 BOOLValue];
  v21 = [(AXSSMotionTrackingHIDInput *)self initWithDeviceUniqueID:v7 productID:v10 vendorID:v13 deviceName:v16 mfiAuthenticated:v20];

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = AXSSMotionTrackingHIDInput;
  v4 = [(AXSSMotionTrackingHIDInput *)&v12 description];
  v5 = [(AXSSMotionTrackingHIDInput *)self deviceUniqueID];
  v6 = [(AXSSMotionTrackingHIDInput *)self productID];
  v7 = [(AXSSMotionTrackingHIDInput *)self vendorID];
  v8 = [(AXSSMotionTrackingHIDInput *)self deviceName];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingHIDInput mfiAuthenticated](self, "mfiAuthenticated")}];
  v10 = [v3 stringWithFormat:@"%@ <deviceUniqueID: %@, productID: %@, vendorID: %@, deviceName: %@, MFi authenticated: %@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)plistDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v21.receiver = self;
  v21.super_class = AXSSMotionTrackingHIDInput;
  v4 = [(AXSSMotionTrackingInput *)&v21 plistDictionary];
  if ([v4 count])
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = [(AXSSMotionTrackingHIDInput *)self deviceUniqueID];

  if (v5)
  {
    v6 = [(AXSSMotionTrackingHIDInput *)self deviceUniqueID];
    v7 = NSStringFromSelector(sel_deviceUniqueID);
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [(AXSSMotionTrackingHIDInput *)self productID];

  if (v8)
  {
    v9 = [(AXSSMotionTrackingHIDInput *)self productID];
    v10 = NSStringFromSelector(sel_productID);
    [v3 setObject:v9 forKeyedSubscript:v10];
  }

  v11 = [(AXSSMotionTrackingHIDInput *)self vendorID];

  if (v11)
  {
    v12 = [(AXSSMotionTrackingHIDInput *)self vendorID];
    v13 = NSStringFromSelector(sel_vendorID);
    [v3 setObject:v12 forKeyedSubscript:v13];
  }

  v14 = [(AXSSMotionTrackingHIDInput *)self deviceName];

  if (v14)
  {
    v15 = [(AXSSMotionTrackingHIDInput *)self deviceName];
    v16 = NSStringFromSelector(sel_deviceName);
    [v3 setObject:v15 forKeyedSubscript:v16];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingHIDInput mfiAuthenticated](self, "mfiAuthenticated")}];
  v18 = NSStringFromSelector(sel_mfiAuthenticated);
  [v3 setObject:v17 forKeyedSubscript:v18];

  v19 = [v3 copy];

  return v19;
}

- (AXSSMotionTrackingHIDInput)initWithPlistDictionary:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__AXSSMotionTrackingHIDInput_initWithPlistDictionary___block_invoke;
  aBlock[3] = &unk_1E8134E70;
  v4 = v3;
  v24 = v4;
  v5 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__AXSSMotionTrackingHIDInput_initWithPlistDictionary___block_invoke_2;
  v21[3] = &unk_1E8134E98;
  v22 = v4;
  v20 = v4;
  v6 = _Block_copy(v21);
  v17 = NSStringFromSelector(sel_deviceUniqueID);
  v7 = v5[2](v5, v17);
  v16 = NSStringFromSelector(sel_productID);
  v8 = v6[2](v6, v16);
  v9 = NSStringFromSelector(sel_vendorID);
  v10 = v6[2](v6, v9);
  v11 = NSStringFromSelector(sel_deviceName);
  v12 = v5[2](v5, v11);
  v13 = NSStringFromSelector(sel_mfiAuthenticated);
  v14 = v6[2](v6, v13);
  v19 = -[AXSSMotionTrackingHIDInput initWithDeviceUniqueID:productID:vendorID:deviceName:mfiAuthenticated:](self, "initWithDeviceUniqueID:productID:vendorID:deviceName:mfiAuthenticated:", v7, v8, v10, v12, [v14 BOOLValue]);

  return v19;
}

id __54__AXSSMotionTrackingHIDInput_initWithPlistDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __54__AXSSMotionTrackingHIDInput_initWithPlistDictionary___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end