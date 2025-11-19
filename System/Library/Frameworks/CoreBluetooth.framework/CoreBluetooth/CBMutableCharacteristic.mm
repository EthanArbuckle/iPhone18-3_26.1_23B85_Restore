@interface CBMutableCharacteristic
- (BOOL)handleCentralSubscribed:(id)a3;
- (BOOL)handleCentralUnsubscribed:(id)a3;
- (CBMutableCharacteristic)initWithService:(id)a3 dictionary:(id)a4;
- (CBMutableCharacteristic)initWithType:(CBUUID *)UUID properties:(CBCharacteristicProperties)properties value:(NSData *)value permissions:(CBAttributePermissions)permissions;
- (id)description;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation CBMutableCharacteristic

- (CBMutableCharacteristic)initWithType:(CBUUID *)UUID properties:(CBCharacteristicProperties)properties value:(NSData *)value permissions:(CBAttributePermissions)permissions
{
  v10 = value;
  v16.receiver = self;
  v16.super_class = CBMutableCharacteristic;
  v11 = [(CBAttribute *)&v16 initWithUUID:UUID];
  v12 = v11;
  if (v11)
  {
    [(CBCharacteristic *)v11 setValue:v10];
    v12->_permissions = permissions;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subscribedCentrals = v12->_subscribedCentrals;
    v12->_subscribedCentrals = v13;

    [(CBCharacteristic *)v12 setProperties:properties];
    [(CBMutableCharacteristic *)v12 addObserver:v12 forKeyPath:@"properties" options:0 context:0];
    [(CBMutableCharacteristic *)v12 addObserver:v12 forKeyPath:@"descriptors" options:0 context:0];
  }

  return v12;
}

- (CBMutableCharacteristic)initWithService:(id)a3 dictionary:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v7 = [CBUUID UUIDWithData:v6];

  v8 = [v5 objectForKeyedSubscript:@"kCBMsgArgCharacteristicProperties"];
  v9 = [v8 integerValue];

  v10 = [v5 objectForKeyedSubscript:@"kCBMsgArgAttributePermissions"];
  v11 = [v10 integerValue];

  v12 = [v5 objectForKeyedSubscript:@"kCBMsgArgData"];
  v13 = [(CBMutableCharacteristic *)self initWithType:v7 properties:v9 value:v12 permissions:v11];
  if (v13)
  {
    v14 = [v5 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
    ID = v13->_ID;
    v13->_ID = v14;
  }

  return v13;
}

- (void)dealloc
{
  [(CBMutableCharacteristic *)self removeObserver:self forKeyPath:@"descriptors"];
  [(CBMutableCharacteristic *)self removeObserver:self forKeyPath:@"properties"];
  v3.receiver = self;
  v3.super_class = CBMutableCharacteristic;
  [(CBMutableCharacteristic *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 isEqualToString:@"descriptors"])
  {
    v23 = a2;
    v24 = v8;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(CBCharacteristic *)self descriptors];
    v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v27 = 0;
      v28 = *v30;
      do
      {
        v12 = 0;
        v25 = v10;
        do
        {
          v13 = self;
          if (*v30 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * v12);
          v15 = [v14 UUID];
          v16 = [CBUUID UUIDWithString:@"2901"];
          v17 = [v15 isEqual:v16];

          if (v17)
          {
            self = v13;
            if ((v11 & 1) == 0)
            {
              v11 = 1;
              goto LABEL_8;
            }

            [CBMutableCharacteristic observeValueForKeyPath:v23 ofObject:v13 change:&v33 context:?];
            v21 = v33;
            v11 = 1;
          }

          else
          {
            v18 = [v14 UUID];
            v19 = [CBUUID UUIDWithString:@"2904"];
            v20 = [v18 isEqual:v19];

            if ((v20 & v27) != 1)
            {
              v27 |= v20;
              self = v13;
              v10 = v25;
              goto LABEL_8;
            }

            self = v13;
            [CBMutableCharacteristic observeValueForKeyPath:v23 ofObject:v13 change:&v33 context:?];
            v21 = v33;
            v27 = 1;
            v10 = v25;
          }

LABEL_8:
          [v14 setCharacteristic:self];
          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    v8 = v24;
  }

  else if ([v8 isEqualToString:@"properties"])
  {
    if (([(CBCharacteristic *)self properties]& 1) != 0)
    {
      [CBMutableCharacteristic observeValueForKeyPath:a2 ofObject:self change:? context:?];
      if (([(CBCharacteristic *)self properties]& 0x80) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (([(CBCharacteristic *)self properties]& 0x80) == 0)
    {
      goto LABEL_22;
    }

    [CBMutableCharacteristic observeValueForKeyPath:a2 ofObject:self change:? context:?];
  }

LABEL_22:

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleCentralSubscribed:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_subscribedCentrals containsObject:v4];
  if ((v5 & 1) == 0)
  {
    [(NSMutableArray *)self->_subscribedCentrals addObject:v4];
  }

  return v5 ^ 1;
}

- (BOOL)handleCentralUnsubscribed:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_subscribedCentrals containsObject:v4];
  if (v5)
  {
    [(NSMutableArray *)self->_subscribedCentrals removeObject:v4];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CBAttribute *)self UUID];
  v6 = [(CBCharacteristic *)self value];
  v7 = [(CBCharacteristic *)self properties];
  v8 = [(CBMutableCharacteristic *)self permissions];
  v9 = [(CBCharacteristic *)self descriptors];
  v10 = [v3 stringWithFormat:@"<%@: %p UUID = %@, Value = %@, Properties = 0x%lX, Permissions = 0x%lX, Descriptors = %@, SubscribedCentrals = %@>", v4, self, v5, v6, v7, v8, v9, self->_subscribedCentrals];

  return v10;
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:(uint64_t)a2 change:context:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBCharacteristic.m" lineNumber:206 description:@"CBCharacteristicPropertyBroadcast is not allowed"];
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:(uint64_t)a2 change:context:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBCharacteristic.m" lineNumber:207 description:@"CBCharacteristicPropertyExtendedProperties is not allowed"];
}

- (uint64_t)observeValueForKeyPath:(void *)a3 ofObject:change:context:.cold.3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"CBCharacteristic.m" lineNumber:198 description:@"Cannot have more than one Format descriptor per characteristic"];
}

- (uint64_t)observeValueForKeyPath:(void *)a3 ofObject:change:context:.cold.4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"CBCharacteristic.m" lineNumber:194 description:@"Cannot have more than one User Description descriptor per characteristic"];
}

@end