@interface CBMutableDescriptor
- (CBMutableDescriptor)initWithCharacteristic:(id)a3 dictionary:(id)a4;
- (CBMutableDescriptor)initWithType:(CBUUID *)UUID value:(id)value;
- (id)description;
@end

@implementation CBMutableDescriptor

- (CBMutableDescriptor)initWithType:(CBUUID *)UUID value:(id)value
{
  v6 = UUID;
  v7 = value;
  v8 = [CBUUID UUIDWithString:@"2901"];
  v9 = [(CBUUID *)v6 isEqual:v8];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    [CBMutableDescriptor initWithType:value:];
    goto LABEL_17;
  }

  v10 = [CBUUID UUIDWithString:@"2904"];
  v11 = [(CBUUID *)v6 isEqual:v10];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    [CBMutableDescriptor initWithType:value:];
    goto LABEL_17;
  }

  v12 = [CBUUID UUIDWithString:@"2906"];
  v13 = [(CBUUID *)v6 isEqual:v12];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || ([v7 length])
    {
      [CBMutableDescriptor initWithType:value:];
LABEL_17:
    }
  }

  else
  {
    v14 = [(CBUUID *)v6 data];
    v15 = [v14 length];

    if (v15 == 16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [CBMutableDescriptor initWithType:value:];
        goto LABEL_17;
      }
    }
  }

LABEL_13:
  v19.receiver = self;
  v19.super_class = CBMutableDescriptor;
  v16 = [(CBAttribute *)&v19 initWithUUID:v6];
  v17 = v16;
  if (v16)
  {
    [(CBDescriptor *)v16 setValue:v7];
  }

  return v17;
}

- (CBMutableDescriptor)initWithCharacteristic:(id)a3 dictionary:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v7 = [CBUUID UUIDWithData:v6];

  v8 = [v5 objectForKeyedSubscript:@"kCBMsgArgData"];
  v9 = [(CBMutableDescriptor *)self initWithType:v7 value:v8];
  if (v9)
  {
    v10 = [v5 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
    ID = v9->_ID;
    v9->_ID = v10;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CBAttribute *)self UUID];
  v6 = [(CBDescriptor *)self value];
  v7 = [v3 stringWithFormat:@"<%@: %p UUID = %@, Value = %@>", v4, self, v5, v6];

  return v7;
}

- (uint64_t)initWithType:value:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  *v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_4();

  return [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)initWithType:value:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  *v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_4();

  return [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)initWithType:value:.cold.3()
{
  OUTLINED_FUNCTION_0_5();
  *v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_4();

  return [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)initWithType:value:.cold.4()
{
  OUTLINED_FUNCTION_0_5();
  *v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_4();

  return [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end