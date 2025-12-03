@interface CBMutableService
- (CBMutableService)initWithDictionary:(id)dictionary;
- (id)description;
- (void)dealloc;
- (void)handlePowerNotOn;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CBMutableService

- (CBMutableService)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v6 = [CBUUID UUIDWithData:v5];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgType"];
  v8 = -[CBMutableService initWithType:primary:](self, "initWithType:primary:", v6, [v7 BOOLValue]);

  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v18 = *MEMORY[0x1E69E9840];
  if ([path isEqualToString:{@"characteristics", object, change, context}])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    characteristics = [(CBService *)self characteristics];
    v8 = [characteristics countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(characteristics);
          }

          [*(*(&v13 + 1) + 8 * v11++) setService:self];
        }

        while (v9 != v11);
        v9 = [characteristics countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  characteristics = [(CBService *)self characteristics];
  v3 = [characteristics countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(characteristics);
        }

        [*(*(&v8 + 1) + 8 * v6++) handlePowerNotOn];
      }

      while (v4 != v6);
      v4 = [characteristics countByEnumeratingWithState:&v8 objects:v12 count:16];
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

  uUID = [(CBAttribute *)self UUID];
  includedServices = [(CBService *)self includedServices];
  characteristics = [(CBService *)self characteristics];
  v9 = [v3 stringWithFormat:@"<%@: %p Primary = %s, UUID = %@, Included Services = %@, Characteristics = %@>", v4, self, v5, uUID, includedServices, characteristics];

  return v9;
}

@end