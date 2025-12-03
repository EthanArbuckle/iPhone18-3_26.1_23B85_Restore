@interface CMIOExtensionProviderProperties
+ (CMIOExtensionProviderProperties)providerPropertiesWithDictionary:(NSDictionary *)propertiesDictionary;
- (CMIOExtensionProviderProperties)initWithDictionary:(NSDictionary *)propertiesDictionary;
- (CMIOExtensionProviderProperties)initWithPropertyValues:(id)values client:(id)client;
- (NSDictionary)propertiesDictionary;
- (NSString)manufacturer;
- (NSString)name;
- (id)client;
- (void)dealloc;
- (void)manufacturer;
- (void)name;
- (void)setManufacturer:(NSString *)manufacturer;
- (void)setName:(NSString *)name;
- (void)setPropertiesDictionary:(NSDictionary *)propertiesDictionary;
- (void)setPropertyState:(CMIOExtensionPropertyState *)propertyState forProperty:(CMIOExtensionProperty)property;
@end

@implementation CMIOExtensionProviderProperties

+ (CMIOExtensionProviderProperties)providerPropertiesWithDictionary:(NSDictionary *)propertiesDictionary
{
  v3 = [objc_alloc(objc_opt_class()) initWithDictionary:propertiesDictionary];

  return v3;
}

- (CMIOExtensionProviderProperties)initWithDictionary:(NSDictionary *)propertiesDictionary
{
  v7.receiver = self;
  v7.super_class = CMIOExtensionProviderProperties;
  v4 = [(CMIOExtensionProviderProperties *)&v7 init];
  v5 = v4;
  if (propertiesDictionary && v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_propertiesDictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:propertiesDictionary];
  }

  return v5;
}

- (CMIOExtensionProviderProperties)initWithPropertyValues:(id)values client:(id)client
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CMIOExtensionProviderProperties_initWithPropertyValues_client___block_invoke;
  v10[3] = &unk_27885B850;
  v10[4] = dictionary;
  [values enumerateKeysAndObjectsUsingBlock:v10];
  v8 = [(CMIOExtensionProviderProperties *)self initWithDictionary:dictionary];
  if (v8)
  {
    v8->_client = [client copy];
  }

  return v8;
}

uint64_t __65__CMIOExtensionProviderProperties_initWithPropertyValues_client___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [CMIOExtensionPropertyState propertyStateWithValue:?];
  v5 = *(a1 + 32);

  return [v5 setObject:v4 forKeyedSubscript:a2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionProviderProperties;
  [(CMIOExtensionProviderProperties *)&v3 dealloc];
}

- (id)client
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(CMIOExtensionClient *)self->_client copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)name
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyProviderName"];
  os_unfair_lock_unlock(&self->_lock);
  p_isa = [v3 value];
  if (p_isa)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = CMIOLog();
      p_isa = &v5->isa;
      if (v5)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderProperties name];
        }

        return 0;
      }
    }
  }

  return p_isa;
}

- (void)setName:(NSString *)name
{
  if (!name)
  {
LABEL_4:

    [(CMIOExtensionProviderProperties *)self setPropertyState:name forProperty:@"CMIOExtensionPropertyProviderName"];
    return;
  }

  v4 = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = +[CMIOExtensionPropertyState propertyStateWithValue:attributes:](CMIOExtensionPropertyState, "propertyStateWithValue:attributes:", v4, +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]);
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderProperties setName:];
  }
}

- (NSString)manufacturer
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyProviderManufacturer"];
  os_unfair_lock_unlock(&self->_lock);
  p_isa = [v3 value];
  if (p_isa)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = CMIOLog();
      p_isa = &v5->isa;
      if (v5)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProviderProperties manufacturer];
        }

        return 0;
      }
    }
  }

  return p_isa;
}

- (void)setManufacturer:(NSString *)manufacturer
{
  if (!manufacturer)
  {
LABEL_4:

    [(CMIOExtensionProviderProperties *)self setPropertyState:manufacturer forProperty:@"CMIOExtensionPropertyProviderManufacturer"];
    return;
  }

  v4 = manufacturer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    manufacturer = +[CMIOExtensionPropertyState propertyStateWithValue:attributes:](CMIOExtensionPropertyState, "propertyStateWithValue:attributes:", v4, +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]);
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProviderProperties setManufacturer:];
  }
}

- (void)setPropertyState:(CMIOExtensionPropertyState *)propertyState forProperty:(CMIOExtensionProperty)property
{
  os_unfair_lock_lock(&self->_lock);
  propertiesDictionary = self->_propertiesDictionary;
  if (propertyState)
  {
    [(NSMutableDictionary *)propertiesDictionary setObject:propertyState forKey:property];
  }

  else
  {
    [(NSMutableDictionary *)propertiesDictionary removeObjectForKey:property];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)propertiesDictionary
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPropertiesDictionary:(NSDictionary *)propertiesDictionary
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_propertiesDictionary;
  self->_propertiesDictionary = [(NSDictionary *)propertiesDictionary mutableCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)name
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)manufacturer
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setManufacturer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end