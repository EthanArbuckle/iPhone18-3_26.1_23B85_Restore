@interface CBService
- (CBPeripheral)peripheral;
- (CBService)initWithPeripheral:(id)a3 dictionary:(id)a4;
- (id)description;
- (id)handleCharacteristicsDiscovered:(id)a3;
- (id)handleIncludedServicesDiscovered:(id)a3;
- (void)invalidate;
@end

@implementation CBService

- (CBService)initWithPeripheral:(id)a3 dictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v9 = [CBUUID UUIDWithData:v8];
  v17.receiver = self;
  v17.super_class = CBService;
  v10 = [(CBAttribute *)&v17 initWithUUID:v9];

  if (v10)
  {
    objc_storeWeak(&v10->_peripheral, v6);
    v11 = [v7 objectForKeyedSubscript:@"kCBMsgArgType"];
    v10->_isPrimary = [v11 BOOLValue];

    v12 = [v7 objectForKeyedSubscript:@"kCBMsgArgServiceStartHandle"];
    startHandle = v10->_startHandle;
    v10->_startHandle = v12;

    v14 = [v7 objectForKeyedSubscript:@"kCBMsgArgServiceEndHandle"];
    endHandle = v10->_endHandle;
    v10->_endHandle = v14;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_isPrimary)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(CBAttribute *)self UUID];
  v7 = [v3 stringWithFormat:@"<%@: %p, isPrimary = %@, UUID = %@>", v4, self, v5, v6];

  return v7;
}

- (void)invalidate
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_includedServices;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v19 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  [(CBService *)self setIncludedServices:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_characteristics;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  [(CBService *)self setCharacteristics:0];
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);
  [WeakRetained removeAttributeForHandle:self->_startHandle];

  v14 = *MEMORY[0x1E69E9840];
}

- (id)handleIncludedServicesDiscovered:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgServices"];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_includedServices];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v4;
  v28 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v28)
  {
LABEL_25:

    v23 = [v5 copy];
    [(CBService *)self setIncludedServices:v23];

    v22 = self;
    goto LABEL_26;
  }

  v8 = *v30;
  *&v7 = 138412546;
  v26 = v7;
  v27 = *v30;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v30 != v8)
    {
      objc_enumerationMutation(v6);
    }

    v10 = *(*(&v29 + 1) + 8 * v9);
    v11 = [v10 objectForKeyedSubscript:{@"kCBMsgArgServiceStartHandle", v26}];
    WeakRetained = objc_loadWeakRetained(&self->_peripheral);
    v13 = [WeakRetained attributeForHandle:v11];

    if (v13)
    {
      if (([v5 containsObject:v13] & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    v14 = [v10 objectForKeyedSubscript:@"kCBMsgArgUUID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 length] != 2 && objc_msgSend(v14, "length") != 4 && objc_msgSend(v14, "length") != 16)
    {
      break;
    }

    v15 = [CBService alloc];
    v16 = v5;
    v17 = v6;
    v18 = objc_loadWeakRetained(&self->_peripheral);
    v13 = [(CBService *)v15 initWithPeripheral:v18 dictionary:v10];

    v19 = objc_loadWeakRetained(&self->_peripheral);
    v20 = [(CBService *)v13 startHandle];
    [v19 setAttribute:v13 forHandle:v20];

    v6 = v17;
    v5 = v16;
    v8 = v27;

    if (([v5 containsObject:v13] & 1) == 0)
    {
LABEL_16:
      [v5 addObject:v13];
      if (CBLogInitOnce != -1)
      {
        [CBCharacteristic handleDescriptorsDiscovered:];
      }

      v21 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        *buf = v26;
        v34 = v13;
        v35 = 2112;
        v36 = self;
        _os_log_debug_impl(&dword_1C0AC1000, v21, OS_LOG_TYPE_DEBUG, "Added %@ to %@", buf, 0x16u);
      }
    }

LABEL_5:

    if (v28 == ++v9)
    {
      v28 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (!v28)
      {
        goto LABEL_25;
      }

      goto LABEL_4;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBCharacteristic handleDescriptorsDiscovered:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBService handleIncludedServicesDiscovered:];
  }

  v22 = 0;
LABEL_26:

  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)handleCharacteristicsDiscovered:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgCharacteristics"];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_characteristics];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v27)
  {
LABEL_25:

    v22 = [v5 copy];
    [(CBService *)self setCharacteristics:v22];

    v21 = self;
    goto LABEL_26;
  }

  v7 = *v29;
  *&v6 = 138412546;
  v25 = v6;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v29 != v7)
    {
      objc_enumerationMutation(obj);
    }

    v9 = *(*(&v28 + 1) + 8 * v8);
    v10 = [v9 objectForKeyedSubscript:{@"kCBMsgArgCharacteristicHandle", v25}];
    WeakRetained = objc_loadWeakRetained(&self->_peripheral);
    v12 = v10;
    v13 = [WeakRetained attributeForHandle:v10];

    if (v13)
    {
      if (([v5 containsObject:v13] & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    v14 = [v9 objectForKeyedSubscript:@"kCBMsgArgUUID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 length] != 2 && objc_msgSend(v14, "length") != 4 && objc_msgSend(v14, "length") != 16)
    {
      break;
    }

    v13 = [[CBCharacteristic alloc] initWithService:self dictionary:v9];
    v15 = objc_loadWeakRetained(&self->_peripheral);
    [(CBCharacteristic *)v13 handle];
    v17 = v16 = v7;
    [v15 setAttribute:v13 forHandle:v17];

    v18 = objc_loadWeakRetained(&self->_peripheral);
    v19 = [(CBCharacteristic *)v13 valueHandle];
    [v18 setAttribute:v13 forHandle:v19];

    v7 = v16;
    if (([v5 containsObject:v13] & 1) == 0)
    {
LABEL_16:
      [v5 addObject:v13];
      if (CBLogInitOnce != -1)
      {
        [CBCharacteristic handleDescriptorsDiscovered:];
      }

      v20 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        *buf = v25;
        v33 = v13;
        v34 = 2112;
        v35 = self;
        _os_log_debug_impl(&dword_1C0AC1000, v20, OS_LOG_TYPE_DEBUG, "Added %@ to %@", buf, 0x16u);
      }
    }

LABEL_5:

    if (v27 == ++v8)
    {
      v27 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (!v27)
      {
        goto LABEL_25;
      }

      goto LABEL_4;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBCharacteristic handleDescriptorsDiscovered:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBService handleCharacteristicsDiscovered:];
  }

  v21 = 0;
LABEL_26:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (CBPeripheral)peripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);

  return WeakRetained;
}

- (void)handleIncludedServicesDiscovered:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5(&dword_1C0AC1000, v0, v1, "Data in %@ does not contain a valid UUID for included service handle = %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleCharacteristicsDiscovered:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5(&dword_1C0AC1000, v0, v1, "Data in %@ does not contain a valid UUID for characteristic handle = %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end