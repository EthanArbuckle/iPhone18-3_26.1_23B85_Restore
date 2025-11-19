@interface AXCustomizableMouse
+ (id)_existingMouseForIdentifier:(id)a3 vendorId:(int64_t)a4 productId:(int64_t)a5;
+ (id)_newOrExistingMouseForIdentifier:(id)a3 name:(id)a4 vendorId:(id)a5 productId:(id)a6;
+ (id)deserialize:(id)a3;
+ (id)mouseForHIDDevice:(__IOHIDDevice *)a3;
+ (id)mouseForHIDServiceClient:(__IOHIDServiceClient *)a3;
+ (id)serialize:(id)a3;
- (AXCustomizableMouse)initWithCoder:(id)a3;
- (AXCustomizableMouse)initWithIdentifier:(id)a3 name:(id)a4 vendorId:(int64_t)a5 productId:(int64_t)a6;
- (BOOL)customActionsRequireAssistiveTouch;
- (BOOL)hasCustomActions;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentifier:(id)a3 vendorId:(int64_t)a4 productId:(int64_t)a5;
- (BOOL)isEqualToMouse:(id)a3;
- (NSArray)buttonsWithCustomActions;
- (id)customActionForButtonNumber:(int64_t)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCustomAction:(id)a3 forButtonNumber:(int64_t)a4;
- (void)setDefaultActionForButtonNumber:(int64_t)a3;
@end

@implementation AXCustomizableMouse

- (AXCustomizableMouse)initWithCoder:(id)a3
{
  v19[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AXCustomizableMouse;
  v5 = [(AXCustomizableMouse *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorId"];
    v5->_vendorId = [v10 integerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productId"];
    v5->_productId = [v11 integerValue];

    v12 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v14 = [v12 setWithArray:v13];

    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"buttonMap"];
    v16 = [v15 mutableCopy];
    [(AXCustomizableMouse *)v5 setButtonMap:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXCustomizableMouse *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(AXCustomizableMouse *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXCustomizableMouse vendorId](self, "vendorId")}];
  [v4 encodeObject:v7 forKey:@"vendorId"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXCustomizableMouse productId](self, "productId")}];
  [v4 encodeObject:v8 forKey:@"productId"];

  v9 = [(AXCustomizableMouse *)self buttonMap];
  [v4 encodeObject:v9 forKey:@"buttonMap"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXCustomizableMouse *)self name];
  v6 = [v3 stringWithFormat:@"<%@ %p name=%@>", v4, self, v5];

  return v6;
}

+ (id)deserialize:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v24 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = v5;
    v7 = *v26;
    v8 = 0x1E696A000uLL;
    v9 = 0x1E71E7000uLL;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [*(v8 + 3280) unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
          if (v12)
          {
            [v24 addObject:v12];
          }
        }

        else
        {
          v13 = [MEMORY[0x1E69887A0] sharedInstance];
          v14 = [v13 ignoreLogging];

          if (v14)
          {
            continue;
          }

          v15 = v4;
          v16 = v9;
          v17 = v8;
          v18 = [MEMORY[0x1E69887A0] identifier];
          v12 = AXLoggerForFacility();

          v19 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v12, v19))
          {
            v20 = AXColorizeFormatLog();
            v21 = _AXStringForArgs();
            if (os_log_type_enabled(v12, v19))
            {
              *buf = 138543362;
              v30 = v21;
              _os_log_impl(&dword_18B15E000, v12, v19, "%{public}@", buf, 0xCu);
            }
          }

          v8 = v17;
          v9 = v16;
          v4 = v15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (!v6)
      {
LABEL_20:

        v3 = v23;
        goto LABEL_22;
      }
    }
  }

  v24 = MEMORY[0x1E695E0F0];
LABEL_22:

  return v24;
}

+ (id)serialize:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(*(&v12 + 1) + 8 * i) requiringSecureCoding:1 error:{0, v12}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)mouseForHIDDevice:(__IOHIDDevice *)a3
{
  if (a3)
  {
    v5 = IOHIDDeviceGetProperty(a3, @"Product");
    v6 = IOHIDDeviceGetProperty(a3, @"PhysicalDeviceUniqueID");
    v7 = IOHIDDeviceGetProperty(a3, @"VendorID");
    v8 = IOHIDDeviceGetProperty(a3, @"ProductID");
    v9 = [a1 _newOrExistingMouseForIdentifier:v6 name:v5 vendorId:v7 productId:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)mouseForHIDServiceClient:(__IOHIDServiceClient *)a3
{
  if (a3)
  {
    v5 = IOHIDServiceClientCopyProperty(a3, @"Product");
    v6 = IOHIDServiceClientCopyProperty(a3, @"PhysicalDeviceUniqueID");
    v7 = IOHIDServiceClientCopyProperty(a3, @"VendorID");
    v8 = IOHIDServiceClientCopyProperty(a3, @"ProductID");
    v9 = [a1 _newOrExistingMouseForIdentifier:v6 name:v5 vendorId:v7 productId:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_existingMouseForIdentifier:(id)a3 vendorId:(int64_t)a4 productId:(int64_t)a5
{
  v7 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if ([v7 length])
  {
    v8 = +[AXSettings sharedInstance];
    v9 = [v8 assistiveTouchMouseCustomizedClickActions];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__AXCustomizableMouse__existingMouseForIdentifier_vendorId_productId___block_invoke;
    v16[3] = &unk_1E71E9FB0;
    v19 = a4;
    v20 = a5;
    v17 = v7;
    v18 = &v21;
    [v9 enumerateObjectsUsingBlock:v16];
  }

  v10 = v22[5];
  if (!v10)
  {
    v11 = +[AXSettings sharedInstance];
    v12 = [v11 assistiveTouchMouseCustomizedClickActions];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__AXCustomizableMouse__existingMouseForIdentifier_vendorId_productId___block_invoke_2;
    v15[3] = &unk_1E71E9FD8;
    v15[5] = a4;
    v15[6] = a5;
    v15[4] = &v21;
    [v12 enumerateObjectsUsingBlock:v15];

    v10 = v22[5];
  }

  v13 = v10;
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __70__AXCustomizableMouse__existingMouseForIdentifier_vendorId_productId___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEqualToIdentifier:a1[4] vendorId:a1[6] productId:a1[7]])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *a4 = 1;
  }
}

void __70__AXCustomizableMouse__existingMouseForIdentifier_vendorId_productId___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 vendorId] == a1[5] && objc_msgSend(v7, "productId") == a1[6])
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)_newOrExistingMouseForIdentifier:(id)a3 name:(id)a4 vendorId:(id)a5 productId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 length] || (v14 = 0, v12) && v13)
  {
    v14 = [a1 _existingMouseForIdentifier:v10 vendorId:objc_msgSend(v12 productId:{"integerValue"), objc_msgSend(v13, "integerValue")}];
    if (!v14)
    {
      v14 = -[AXCustomizableMouse initWithIdentifier:name:vendorId:productId:]([AXCustomizableMouse alloc], "initWithIdentifier:name:vendorId:productId:", v10, v11, [v12 integerValue], objc_msgSend(v13, "integerValue"));
    }
  }

  return v14;
}

- (AXCustomizableMouse)initWithIdentifier:(id)a3 name:(id)a4 vendorId:(int64_t)a5 productId:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v19.receiver = self;
  v19.super_class = AXCustomizableMouse;
  v13 = [(AXCustomizableMouse *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a4);
    objc_storeStrong(&v14->_identifier, a3);
    v14->_vendorId = a5;
    v14->_productId = a6;
    if (![(NSString *)v14->_identifier length])
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li-%li", a5, a6];
      identifier = v14->_identifier;
      v14->_identifier = v15;
    }

    v17 = [MEMORY[0x1E695DF90] dictionary];
    [(AXCustomizableMouse *)v14 setButtonMap:v17];
  }

  return v14;
}

- (void)setDefaultActionForButtonNumber:(int64_t)a3
{
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 laserEnabled];

  if (v6)
  {
    AXAssistiveTouchDefaultLaserIconTypeForMouseButton(a3);
  }

  else
  {
    AXAssistiveTouchDefaultIconTypeForMouseButton(a3);
  }
  v7 = ;
  [(AXCustomizableMouse *)self setCustomAction:v7 forButtonNumber:a3];
}

- (void)setCustomAction:(id)a3 forButtonNumber:(int64_t)a4
{
  v9 = a3;
  v6 = [v9 length];
  v7 = [(AXCustomizableMouse *)self buttonMap];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  if (v6)
  {
    [v7 setObject:v9 forKeyedSubscript:v8];
  }

  else
  {
    [v7 removeObjectForKey:v8];
  }
}

- (BOOL)hasCustomActions
{
  v2 = [(AXCustomizableMouse *)self buttonMap];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)customActionsRequireAssistiveTouch
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(AXCustomizableMouse *)self buttonMap];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(AXCustomizableMouse *)self buttonMap];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(AXCustomizableMouse *)self buttonMap];
        v12 = [v11 objectForKeyedSubscript:v10];

        if ([v12 length])
        {
          if (([v12 isEqualToString:@"__NONE__"] & 1) == 0)
          {
            v13 = AXAssistiveTouchDefaultLaserIconTypeForMouseButton([v10 integerValue]);
            v14 = [v12 isEqualToString:v13];

            if (!v14)
            {

              v15 = 1;
              goto LABEL_15;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (NSArray)buttonsWithCustomActions
{
  v2 = [(AXCustomizableMouse *)self buttonMap];
  v3 = [v2 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (id)customActionForButtonNumber:(int64_t)a3
{
  v4 = [(AXCustomizableMouse *)self buttonMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(AXCustomizableMouse *)self identifier];
  v4 = [v3 hash];
  v5 = [(AXCustomizableMouse *)self vendorId];
  v6 = v5 ^ [(AXCustomizableMouse *)self productId];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXCustomizableMouse *)self isEqualToMouse:v4];

  return v5;
}

- (BOOL)isEqualToMouse:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = self;
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 vendorId];
  v7 = [v4 productId];

  LOBYTE(v3) = [(AXCustomizableMouse *)v3 isEqualToIdentifier:v5 vendorId:v6 productId:v7];
  return v3;
}

- (BOOL)isEqualToIdentifier:(id)a3 vendorId:(int64_t)a4 productId:(int64_t)a5
{
  v8 = a3;
  v9 = [(AXCustomizableMouse *)self identifier];
  v10 = [v9 isEqualToString:v8];

  v11 = v10 && [(AXCustomizableMouse *)self vendorId]== a4 && [(AXCustomizableMouse *)self productId]== a5;
  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = AXCustomizableMouse;
  v4 = [(AXCustomizableMouse *)&v12 debugDescription];
  v5 = [(AXCustomizableMouse *)self name];
  v6 = [(AXCustomizableMouse *)self identifier];
  v7 = [(AXCustomizableMouse *)self vendorId];
  v8 = [(AXCustomizableMouse *)self productId];
  v9 = [(AXCustomizableMouse *)self buttonMap];
  v10 = [v3 stringWithFormat:@"%@, name: %@, identifier: %@, vendorId: %d, productId: %d, buttonMap: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end