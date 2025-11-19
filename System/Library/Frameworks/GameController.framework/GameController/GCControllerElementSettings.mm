@interface GCControllerElementSettings
- (GCControllerElementSettings)initWithCoder:(id)a3;
- (GCControllerElementSettings)initWithElementKey:(id)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDictionaryRepresentation:(id)a3 fromCoder:(BOOL)a4;
- (void)setInvertHorizontally:(BOOL)a3;
- (void)setInvertVertically:(BOOL)a3;
- (void)setSwapAxes:(BOOL)a3;
@end

@implementation GCControllerElementSettings

- (GCControllerElementSettings)initWithElementKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GCControllerElementSettings;
  v6 = [(GCControllerElementSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mappingKey, a3);
    [(GCControllerElementSettings *)v7 setDefaultValues];
  }

  return v7;
}

- (void)setInvertVertically:(BOOL)a3
{
  if (self->_invertVertically != a3)
  {
    self->_invertVertically = a3;
    changedHandler = self->_changedHandler;
    if (changedHandler)
    {
      changedHandler[2](changedHandler, self);
    }
  }
}

- (void)setInvertHorizontally:(BOOL)a3
{
  if (self->_invertHorizontally != a3)
  {
    self->_invertHorizontally = a3;
    changedHandler = self->_changedHandler;
    if (changedHandler)
    {
      changedHandler[2](changedHandler, self);
    }
  }
}

- (void)setSwapAxes:(BOOL)a3
{
  if (self->_swapAxes != a3)
  {
    self->_swapAxes = a3;
    changedHandler = self->_changedHandler;
    if (changedHandler)
    {
      changedHandler[2](changedHandler, self);
    }
  }
}

- (void)setDictionaryRepresentation:(id)a3 fromCoder:(BOOL)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (a4)
  {
    goto LABEL_9;
  }

  v8 = [v6 objectForKeyedSubscript:@"elementMappingKey"];

  if (!v8)
  {
LABEL_8:
    [(GCControllerElementSettings *)self setDefaultValues];
    goto LABEL_9;
  }

  v9 = [v7 objectForKeyedSubscript:@"elementMappingKey"];
  v10 = [v9 isEqualToString:self->_mappingKey];

  if ((v10 & 1) == 0)
  {
    v11 = getGCSettingsLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mappingKey = self->_mappingKey;
      v20 = [v7 objectForKeyedSubscript:@"elementMappingKey"];
      v21 = 138412546;
      v22 = mappingKey;
      v23 = 2112;
      v24 = v20;
      _os_log_error_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_ERROR, "Attempting to set dictionary representation element settings with key %@ to representation with key %@", &v21, 0x16u);
    }

    goto LABEL_15;
  }

LABEL_9:
  v12 = [v7 objectForKeyedSubscript:@"invertHorizontally"];
  v13 = [v12 BOOLValue];

  if (self->_invertHorizontally != v13)
  {
    [(GCControllerElementSettings *)self willChangeValueForKey:@"invertHorizontally"];
    self->_invertHorizontally = v13;
    [(GCControllerElementSettings *)self didChangeValueForKey:@"invertHorizontally"];
  }

  v14 = [v7 objectForKeyedSubscript:@"invertVertically"];
  v15 = [v14 BOOLValue];

  if (self->_invertVertically != v15)
  {
    [(GCControllerElementSettings *)self willChangeValueForKey:@"invertVertically"];
    self->_invertVertically = v15;
    [(GCControllerElementSettings *)self didChangeValueForKey:@"invertVertically"];
  }

  v16 = [v7 objectForKeyedSubscript:@"swapAxes"];
  v17 = [v16 BOOLValue];

  if (self->_swapAxes != v17)
  {
    [(GCControllerElementSettings *)self willChangeValueForKey:@"swapAxes"];
    self->_swapAxes = v17;
    [(GCControllerElementSettings *)self didChangeValueForKey:@"swapAxes"];
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x1E69E9840];
  v10[0] = self->_mappingKey;
  v9[0] = @"elementMappingKey";
  v9[1] = @"invertHorizontally";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_invertHorizontally];
  v10[1] = v3;
  v9[2] = @"invertVertically";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_invertVertically];
  v10[2] = v4;
  v9[3] = @"swapAxes";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_swapAxes];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCControllerElementSettings *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"dictionaryRepresentation"];
}

- (GCControllerElementSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GCControllerElementSettings;
  v5 = [(GCControllerElementSettings *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"dictionaryRepresentation"];

    [(GCControllerElementSettings *)v5 setDefaultValues];
    [(GCControllerElementSettings *)v5 setDictionaryRepresentation:v10 fromCoder:1];
  }

  return v5;
}

@end