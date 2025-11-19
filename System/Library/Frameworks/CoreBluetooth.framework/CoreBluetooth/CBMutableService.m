@interface CBMutableService
- (CBMutableService)initWithDictionary:(id)a3;
- (id)description;
- (void)dealloc;
- (void)handlePowerNotOn;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation CBMutableService

- (CBMutableService)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v6 = [CBUUID UUIDWithData:v5];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgType"];
  v8 = -[CBMutableService initWithType:primary:](self, "initWithType:primary:", v6, [v7 BOOLValue]);

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
    ID = v8->_ID;
    v8->_ID = v9;
  }

  return v8;
}

- (void)dealloc
{
  [(CBMutableService *)self removeObserver:self forKeyPath:@"characteristics"];
  v3.receiver = self;
  v3.super_class = CBMutableService;
  [(CBMutableService *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:{@"characteristics", a4, a5, a6}])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(CBService *)self characteristics];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) setService:self];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handlePowerNotOn
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CBService *)self characteristics];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) handlePowerNotOn];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(CBService *)self isPrimary])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  v6 = [(CBAttribute *)self UUID];
  v7 = [(CBService *)self includedServices];
  v8 = [(CBService *)self characteristics];
  v9 = [v3 stringWithFormat:@"<%@: %p Primary = %s, UUID = %@, Included Services = %@, Characteristics = %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

@end