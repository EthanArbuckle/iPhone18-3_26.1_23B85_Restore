@interface CBCharacteristic
- (CBCharacteristic)initWithService:(id)a3 dictionary:(id)a4;
- (CBService)service;
- (id)description;
- (id)handleDescriptorsDiscovered:(id)a3;
- (id)handleValueBroadcasted:(id)a3;
- (id)handleValueNotifying:(id)a3;
- (id)handleValueUpdated:(id)a3;
- (void)invalidate;
@end

@implementation CBCharacteristic

- (CBCharacteristic)initWithService:(id)a3 dictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v9 = [CBUUID UUIDWithData:v8];
  v21.receiver = self;
  v21.super_class = CBCharacteristic;
  v10 = [(CBAttribute *)&v21 initWithUUID:v9];

  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:@"kCBMsgArgCharacteristicProperties"];
    v10->_properties = [v11 unsignedIntegerValue];

    v12 = [v7 objectForKeyedSubscript:@"kCBMsgArgCharacteristicHandle"];
    handle = v10->_handle;
    v10->_handle = v12;

    v14 = [v7 objectForKeyedSubscript:@"kCBMsgArgCharacteristicValueHandle"];
    valueHandle = v10->_valueHandle;
    v10->_valueHandle = v14;

    v16 = [v7 objectForKeyedSubscript:@"kCBMsgArgData"];
    value = v10->_value;
    v10->_value = v16;

    v10->_valueTimestamp = 0;
    v18 = [v6 peripheral];
    peripheral = v10->_peripheral;
    v10->_peripheral = v18;

    objc_storeWeak(&v10->_service, v6);
    v10->_isBroadcasted = 0;
    v10->_isNotifying = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CBAttribute *)self UUID];
  properties = self->_properties;
  v7 = [(CBCharacteristic *)self value];
  v8 = v7;
  if (self->_isNotifying)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, UUID = %@, properties = 0x%lX, value = %@, notifying = %@>", v4, self, v5, properties, v7, v9];

  return v10;
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_descriptors;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(CBCharacteristic *)self setDescriptors:0];
  [(CBPeripheral *)self->_peripheral removeAttributeForHandle:self->_valueHandle];
  [(CBPeripheral *)self->_peripheral removeAttributeForHandle:self->_handle];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)handleValueUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgData"];
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgTimestamp"];

  [(CBCharacteristic *)self setValue:v5];
  self->_valueTimestamp = [v6 unsignedLongLongValue];

  return self;
}

- (id)handleValueBroadcasted:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgState"];
  self->_isBroadcasted = [v4 BOOLValue];

  return self;
}

- (id)handleValueNotifying:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgState"];
  self->_isNotifying = [v4 BOOLValue];

  return self;
}

- (id)handleDescriptorsDiscovered:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgDescriptors"];
  v26 = self;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_descriptors];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v25 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v25)
  {
LABEL_25:

    v19 = [v5 copy];
    [(CBCharacteristic *)v26 setDescriptors:v19];

    v18 = v26;
    goto LABEL_26;
  }

  v8 = *v28;
  *&v7 = 138412546;
  v22 = v7;
  v23 = v6;
  v24 = v5;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v28 != v8)
    {
      objc_enumerationMutation(v6);
    }

    v10 = *(*(&v27 + 1) + 8 * v9);
    v11 = [v10 objectForKeyedSubscript:{@"kCBMsgArgDescriptorHandle", v22}];
    v12 = [(CBPeripheral *)v26->_peripheral attributeForHandle:v11];
    if (v12)
    {
      if (([v5 containsObject:v12] & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    v13 = [v10 objectForKeyedSubscript:@"kCBMsgArgUUID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v13 length] != 2 && objc_msgSend(v13, "length") != 4 && objc_msgSend(v13, "length") != 16)
    {
      break;
    }

    v12 = [[CBDescriptor alloc] initWithCharacteristic:v26 dictionary:v10];
    peripheral = v26->_peripheral;
    v15 = [(CBDescriptor *)v12 handle];
    [(CBPeripheral *)peripheral setAttribute:v12 forHandle:v15];

    v6 = v23;
    v5 = v24;
    if (([v24 containsObject:v12] & 1) == 0)
    {
LABEL_16:
      [v5 addObject:v12];
      if (CBLogInitOnce != -1)
      {
        [CBCharacteristic handleDescriptorsDiscovered:];
      }

      v16 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        *buf = v22;
        v32 = v12;
        v33 = 2112;
        v34 = v26;
        _os_log_debug_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_DEBUG, "Added %@ to %@", buf, 0x16u);
      }
    }

LABEL_5:

    if (v25 == ++v9)
    {
      v25 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (!v25)
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

  v17 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [(CBCharacteristic *)v11 handleDescriptorsDiscovered:v26, v17];
  }

  v6 = v23;
  v18 = 0;
  v5 = v24;
LABEL_26:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (CBService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)handleDescriptorsDiscovered:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_debug_impl(&dword_1C0AC1000, log, OS_LOG_TYPE_DEBUG, "Data in %@ does not contain a valid UUID for descriptor handle = %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end