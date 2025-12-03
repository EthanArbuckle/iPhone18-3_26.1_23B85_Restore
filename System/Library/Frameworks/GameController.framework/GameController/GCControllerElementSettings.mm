@interface GCControllerElementSettings
- (GCControllerElementSettings)initWithCoder:(id)coder;
- (GCControllerElementSettings)initWithElementKey:(id)key;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDictionaryRepresentation:(id)representation fromCoder:(BOOL)coder;
- (void)setInvertHorizontally:(BOOL)horizontally;
- (void)setInvertVertically:(BOOL)vertically;
- (void)setSwapAxes:(BOOL)axes;
@end

@implementation GCControllerElementSettings

- (GCControllerElementSettings)initWithElementKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = GCControllerElementSettings;
  v6 = [(GCControllerElementSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mappingKey, key);
    [(GCControllerElementSettings *)v7 setDefaultValues];
  }

  return v7;
}

- (void)setInvertVertically:(BOOL)vertically
{
  if (self->_invertVertically != vertically)
  {
    self->_invertVertically = vertically;
    changedHandler = self->_changedHandler;
    if (changedHandler)
    {
      changedHandler[2](changedHandler, self);
    }
  }
}

- (void)setInvertHorizontally:(BOOL)horizontally
{
  if (self->_invertHorizontally != horizontally)
  {
    self->_invertHorizontally = horizontally;
    changedHandler = self->_changedHandler;
    if (changedHandler)
    {
      changedHandler[2](changedHandler, self);
    }
  }
}

- (void)setSwapAxes:(BOOL)axes
{
  if (self->_swapAxes != axes)
  {
    self->_swapAxes = axes;
    changedHandler = self->_changedHandler;
    if (changedHandler)
    {
      changedHandler[2](changedHandler, self);
    }
  }
}

- (void)setDictionaryRepresentation:(id)representation fromCoder:(BOOL)coder
{
  v25 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v7 = representationCopy;
  if (!representationCopy)
  {
    goto LABEL_8;
  }

  if (coder)
  {
    goto LABEL_9;
  }

  v8 = [representationCopy objectForKeyedSubscript:@"elementMappingKey"];

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
  bOOLValue = [v12 BOOLValue];

  if (self->_invertHorizontally != bOOLValue)
  {
    [(GCControllerElementSettings *)self willChangeValueForKey:@"invertHorizontally"];
    self->_invertHorizontally = bOOLValue;
    [(GCControllerElementSettings *)self didChangeValueForKey:@"invertHorizontally"];
  }

  v14 = [v7 objectForKeyedSubscript:@"invertVertically"];
  bOOLValue2 = [v14 BOOLValue];

  if (self->_invertVertically != bOOLValue2)
  {
    [(GCControllerElementSettings *)self willChangeValueForKey:@"invertVertically"];
    self->_invertVertically = bOOLValue2;
    [(GCControllerElementSettings *)self didChangeValueForKey:@"invertVertically"];
  }

  v16 = [v7 objectForKeyedSubscript:@"swapAxes"];
  bOOLValue3 = [v16 BOOLValue];

  if (self->_swapAxes != bOOLValue3)
  {
    [(GCControllerElementSettings *)self willChangeValueForKey:@"swapAxes"];
    self->_swapAxes = bOOLValue3;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(GCControllerElementSettings *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"dictionaryRepresentation"];
}

- (GCControllerElementSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GCControllerElementSettings;
  v5 = [(GCControllerElementSettings *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dictionaryRepresentation"];

    [(GCControllerElementSettings *)v5 setDefaultValues];
    [(GCControllerElementSettings *)v5 setDictionaryRepresentation:v10 fromCoder:1];
  }

  return v5;
}

@end