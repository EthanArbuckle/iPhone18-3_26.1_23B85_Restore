@interface AXCustomizableMouse
+ (id)_existingMouseForIdentifier:(id)identifier vendorId:(int64_t)id productId:(int64_t)productId;
+ (id)_newOrExistingMouseForIdentifier:(id)identifier name:(id)name vendorId:(id)id productId:(id)productId;
+ (id)deserialize:(id)deserialize;
+ (id)mouseForHIDDevice:(__IOHIDDevice *)device;
+ (id)mouseForHIDServiceClient:(__IOHIDServiceClient *)client;
+ (id)serialize:(id)serialize;
- (AXCustomizableMouse)initWithCoder:(id)coder;
- (AXCustomizableMouse)initWithIdentifier:(id)identifier name:(id)name vendorId:(int64_t)id productId:(int64_t)productId;
- (BOOL)customActionsRequireAssistiveTouch;
- (BOOL)hasCustomActions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentifier:(id)identifier vendorId:(int64_t)id productId:(int64_t)productId;
- (BOOL)isEqualToMouse:(id)mouse;
- (NSArray)buttonsWithCustomActions;
- (id)customActionForButtonNumber:(int64_t)number;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCustomAction:(id)action forButtonNumber:(int64_t)number;
- (void)setDefaultActionForButtonNumber:(int64_t)number;
@end

@implementation AXCustomizableMouse

- (AXCustomizableMouse)initWithCoder:(id)coder
{
  v19[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = AXCustomizableMouse;
  v5 = [(AXCustomizableMouse *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorId"];
    v5->_vendorId = [v10 integerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productId"];
    v5->_productId = [v11 integerValue];

    v12 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v14 = [v12 setWithArray:v13];

    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"buttonMap"];
    v16 = [v15 mutableCopy];
    [(AXCustomizableMouse *)v5 setButtonMap:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(AXCustomizableMouse *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(AXCustomizableMouse *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXCustomizableMouse vendorId](self, "vendorId")}];
  [coderCopy encodeObject:v7 forKey:@"vendorId"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXCustomizableMouse productId](self, "productId")}];
  [coderCopy encodeObject:v8 forKey:@"productId"];

  buttonMap = [(AXCustomizableMouse *)self buttonMap];
  [coderCopy encodeObject:buttonMap forKey:@"buttonMap"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(AXCustomizableMouse *)self name];
  v6 = [v3 stringWithFormat:@"<%@ %p name=%@>", v4, self, name];

  return v6;
}

+ (id)deserialize:(id)deserialize
{
  v32 = *MEMORY[0x1E69E9840];
  deserializeCopy = deserialize;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [deserializeCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = deserializeCopy;
    v4 = deserializeCopy;
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
            [array addObject:v12];
          }
        }

        else
        {
          mEMORY[0x1E69887A0] = [MEMORY[0x1E69887A0] sharedInstance];
          ignoreLogging = [mEMORY[0x1E69887A0] ignoreLogging];

          if (ignoreLogging)
          {
            continue;
          }

          v15 = v4;
          v16 = v9;
          v17 = v8;
          identifier = [MEMORY[0x1E69887A0] identifier];
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

        deserializeCopy = v23;
        goto LABEL_22;
      }
    }
  }

  array = MEMORY[0x1E695E0F0];
LABEL_22:

  return array;
}

+ (id)serialize:(id)serialize
{
  v17 = *MEMORY[0x1E69E9840];
  serializeCopy = serialize;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = serializeCopy;
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
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)mouseForHIDDevice:(__IOHIDDevice *)device
{
  if (device)
  {
    v5 = IOHIDDeviceGetProperty(device, @"Product");
    v6 = IOHIDDeviceGetProperty(device, @"PhysicalDeviceUniqueID");
    v7 = IOHIDDeviceGetProperty(device, @"VendorID");
    v8 = IOHIDDeviceGetProperty(device, @"ProductID");
    v9 = [self _newOrExistingMouseForIdentifier:v6 name:v5 vendorId:v7 productId:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)mouseForHIDServiceClient:(__IOHIDServiceClient *)client
{
  if (client)
  {
    v5 = IOHIDServiceClientCopyProperty(client, @"Product");
    v6 = IOHIDServiceClientCopyProperty(client, @"PhysicalDeviceUniqueID");
    v7 = IOHIDServiceClientCopyProperty(client, @"VendorID");
    v8 = IOHIDServiceClientCopyProperty(client, @"ProductID");
    v9 = [self _newOrExistingMouseForIdentifier:v6 name:v5 vendorId:v7 productId:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_existingMouseForIdentifier:(id)identifier vendorId:(int64_t)id productId:(int64_t)productId
{
  identifierCopy = identifier;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if ([identifierCopy length])
  {
    v8 = +[AXSettings sharedInstance];
    assistiveTouchMouseCustomizedClickActions = [v8 assistiveTouchMouseCustomizedClickActions];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__AXCustomizableMouse__existingMouseForIdentifier_vendorId_productId___block_invoke;
    v16[3] = &unk_1E71E9FB0;
    idCopy = id;
    productIdCopy = productId;
    v17 = identifierCopy;
    v18 = &v21;
    [assistiveTouchMouseCustomizedClickActions enumerateObjectsUsingBlock:v16];
  }

  v10 = v22[5];
  if (!v10)
  {
    v11 = +[AXSettings sharedInstance];
    assistiveTouchMouseCustomizedClickActions2 = [v11 assistiveTouchMouseCustomizedClickActions];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__AXCustomizableMouse__existingMouseForIdentifier_vendorId_productId___block_invoke_2;
    v15[3] = &unk_1E71E9FD8;
    v15[5] = id;
    v15[6] = productId;
    v15[4] = &v21;
    [assistiveTouchMouseCustomizedClickActions2 enumerateObjectsUsingBlock:v15];

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

+ (id)_newOrExistingMouseForIdentifier:(id)identifier name:(id)name vendorId:(id)id productId:(id)productId
{
  identifierCopy = identifier;
  nameCopy = name;
  idCopy = id;
  productIdCopy = productId;
  if ([identifierCopy length] || (v14 = 0, idCopy) && productIdCopy)
  {
    v14 = [self _existingMouseForIdentifier:identifierCopy vendorId:objc_msgSend(idCopy productId:{"integerValue"), objc_msgSend(productIdCopy, "integerValue")}];
    if (!v14)
    {
      v14 = -[AXCustomizableMouse initWithIdentifier:name:vendorId:productId:]([AXCustomizableMouse alloc], "initWithIdentifier:name:vendorId:productId:", identifierCopy, nameCopy, [idCopy integerValue], objc_msgSend(productIdCopy, "integerValue"));
    }
  }

  return v14;
}

- (AXCustomizableMouse)initWithIdentifier:(id)identifier name:(id)name vendorId:(int64_t)id productId:(int64_t)productId
{
  identifierCopy = identifier;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = AXCustomizableMouse;
  v13 = [(AXCustomizableMouse *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v14->_identifier, identifier);
    v14->_vendorId = id;
    v14->_productId = productId;
    if (![(NSString *)v14->_identifier length])
    {
      productId = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li-%li", id, productId];
      identifier = v14->_identifier;
      v14->_identifier = productId;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(AXCustomizableMouse *)v14 setButtonMap:dictionary];
  }

  return v14;
}

- (void)setDefaultActionForButtonNumber:(int64_t)number
{
  v5 = +[AXSettings sharedInstance];
  laserEnabled = [v5 laserEnabled];

  if (laserEnabled)
  {
    AXAssistiveTouchDefaultLaserIconTypeForMouseButton(number);
  }

  else
  {
    AXAssistiveTouchDefaultIconTypeForMouseButton(number);
  }
  v7 = ;
  [(AXCustomizableMouse *)self setCustomAction:v7 forButtonNumber:number];
}

- (void)setCustomAction:(id)action forButtonNumber:(int64_t)number
{
  actionCopy = action;
  v6 = [actionCopy length];
  buttonMap = [(AXCustomizableMouse *)self buttonMap];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:number];
  if (v6)
  {
    [buttonMap setObject:actionCopy forKeyedSubscript:v8];
  }

  else
  {
    [buttonMap removeObjectForKey:v8];
  }
}

- (BOOL)hasCustomActions
{
  buttonMap = [(AXCustomizableMouse *)self buttonMap];
  v3 = [buttonMap count] != 0;

  return v3;
}

- (BOOL)customActionsRequireAssistiveTouch
{
  v22 = *MEMORY[0x1E69E9840];
  buttonMap = [(AXCustomizableMouse *)self buttonMap];
  v4 = [buttonMap count];

  if (!v4)
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  buttonMap2 = [(AXCustomizableMouse *)self buttonMap];
  v6 = [buttonMap2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(buttonMap2);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        buttonMap3 = [(AXCustomizableMouse *)self buttonMap];
        v12 = [buttonMap3 objectForKeyedSubscript:v10];

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

      v7 = [buttonMap2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  buttonMap = [(AXCustomizableMouse *)self buttonMap];
  allKeys = [buttonMap allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (id)customActionForButtonNumber:(int64_t)number
{
  buttonMap = [(AXCustomizableMouse *)self buttonMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:number];
  v6 = [buttonMap objectForKeyedSubscript:v5];

  return v6;
}

- (unint64_t)hash
{
  identifier = [(AXCustomizableMouse *)self identifier];
  v4 = [identifier hash];
  vendorId = [(AXCustomizableMouse *)self vendorId];
  v6 = vendorId ^ [(AXCustomizableMouse *)self productId];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXCustomizableMouse *)self isEqualToMouse:equalCopy];

  return v5;
}

- (BOOL)isEqualToMouse:(id)mouse
{
  if (self == mouse)
  {
    return 1;
  }

  selfCopy = self;
  mouseCopy = mouse;
  identifier = [mouseCopy identifier];
  vendorId = [mouseCopy vendorId];
  productId = [mouseCopy productId];

  LOBYTE(selfCopy) = [(AXCustomizableMouse *)selfCopy isEqualToIdentifier:identifier vendorId:vendorId productId:productId];
  return selfCopy;
}

- (BOOL)isEqualToIdentifier:(id)identifier vendorId:(int64_t)id productId:(int64_t)productId
{
  identifierCopy = identifier;
  identifier = [(AXCustomizableMouse *)self identifier];
  v10 = [identifier isEqualToString:identifierCopy];

  v11 = v10 && [(AXCustomizableMouse *)self vendorId]== id && [(AXCustomizableMouse *)self productId]== productId;
  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = AXCustomizableMouse;
  v4 = [(AXCustomizableMouse *)&v12 debugDescription];
  name = [(AXCustomizableMouse *)self name];
  identifier = [(AXCustomizableMouse *)self identifier];
  vendorId = [(AXCustomizableMouse *)self vendorId];
  productId = [(AXCustomizableMouse *)self productId];
  buttonMap = [(AXCustomizableMouse *)self buttonMap];
  v10 = [v3 stringWithFormat:@"%@, name: %@, identifier: %@, vendorId: %d, productId: %d, buttonMap: %@", v4, name, identifier, vendorId, productId, buttonMap];

  return v10;
}

@end