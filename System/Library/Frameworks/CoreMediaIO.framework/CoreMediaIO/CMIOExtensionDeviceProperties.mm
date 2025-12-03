@interface CMIOExtensionDeviceProperties
+ (CMIOExtensionDeviceProperties)devicePropertiesWithDictionary:(NSDictionary *)propertiesDictionary;
- (CMIOExtensionDeviceProperties)initWithDictionary:(NSDictionary *)propertiesDictionary;
- (CMIOExtensionDeviceProperties)initWithPropertyValues:(id)values;
- (NSDictionary)propertiesDictionary;
- (NSNumber)suspended;
- (NSNumber)transportType;
- (NSString)linkedCoreAudioDeviceUID;
- (NSString)model;
- (void)dealloc;
- (void)linkedCoreAudioDeviceUID;
- (void)model;
- (void)setLinkedCoreAudioDeviceUID:(NSString *)linkedCoreAudioDeviceUID;
- (void)setModel:(NSString *)model;
- (void)setPropertiesDictionary:(NSDictionary *)propertiesDictionary;
- (void)setPropertyState:(CMIOExtensionPropertyState *)propertyState forProperty:(CMIOExtensionProperty)property;
- (void)setSuspended:(NSNumber *)suspended;
- (void)setTransportType:(NSNumber *)transportType;
- (void)suspended;
- (void)transportType;
@end

@implementation CMIOExtensionDeviceProperties

+ (CMIOExtensionDeviceProperties)devicePropertiesWithDictionary:(NSDictionary *)propertiesDictionary
{
  v3 = [objc_alloc(objc_opt_class()) initWithDictionary:propertiesDictionary];

  return v3;
}

- (CMIOExtensionDeviceProperties)initWithDictionary:(NSDictionary *)propertiesDictionary
{
  v7.receiver = self;
  v7.super_class = CMIOExtensionDeviceProperties;
  v4 = [(CMIOExtensionDeviceProperties *)&v7 init];
  v5 = v4;
  if (propertiesDictionary && v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_propertiesDictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:propertiesDictionary];
  }

  return v5;
}

- (CMIOExtensionDeviceProperties)initWithPropertyValues:(id)values
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CMIOExtensionDeviceProperties_initWithPropertyValues___block_invoke;
  v7[3] = &unk_27885B850;
  v7[4] = dictionary;
  [values enumerateKeysAndObjectsUsingBlock:v7];
  return [(CMIOExtensionDeviceProperties *)self initWithDictionary:dictionary];
}

uint64_t __56__CMIOExtensionDeviceProperties_initWithPropertyValues___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [CMIOExtensionPropertyState propertyStateWithValue:?];
  v5 = *(a1 + 32);

  return [v5 setObject:v4 forKeyedSubscript:a2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionDeviceProperties;
  [(CMIOExtensionDeviceProperties *)&v3 dealloc];
}

- (NSString)model
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyDeviceModel"];
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
          [CMIOExtensionDeviceProperties model];
        }

        return 0;
      }
    }
  }

  return p_isa;
}

- (void)setModel:(NSString *)model
{
  if (!model)
  {
LABEL_4:

    [(CMIOExtensionDeviceProperties *)self setPropertyState:model forProperty:@"CMIOExtensionPropertyDeviceModel"];
    return;
  }

  v4 = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    model = +[CMIOExtensionPropertyState propertyStateWithValue:attributes:](CMIOExtensionPropertyState, "propertyStateWithValue:attributes:", v4, +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]);
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionDeviceProperties setModel:];
  }
}

- (NSNumber)suspended
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyDeviceIsSuspended"];
  os_unfair_lock_unlock(&self->_lock);
  value = [v3 value];
  if (value)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = CMIOLog();
      value = v5;
      if (v5)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionDeviceProperties suspended];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setSuspended:(NSNumber *)suspended
{
  if (!suspended)
  {
LABEL_4:

    [(CMIOExtensionDeviceProperties *)self setPropertyState:suspended forProperty:@"CMIOExtensionPropertyDeviceIsSuspended"];
    return;
  }

  v4 = suspended;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    suspended = +[CMIOExtensionPropertyState propertyStateWithValue:attributes:](CMIOExtensionPropertyState, "propertyStateWithValue:attributes:", v4, +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]);
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionDeviceProperties setSuspended:];
  }
}

- (NSNumber)transportType
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyDeviceTransportType"];
  os_unfair_lock_unlock(&self->_lock);
  value = [v3 value];
  if (value)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = CMIOLog();
      value = v5;
      if (v5)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionDeviceProperties transportType];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setTransportType:(NSNumber *)transportType
{
  if (!transportType)
  {
LABEL_4:

    [(CMIOExtensionDeviceProperties *)self setPropertyState:transportType forProperty:@"CMIOExtensionPropertyDeviceTransportType"];
    return;
  }

  v4 = transportType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportType = +[CMIOExtensionPropertyState propertyStateWithValue:attributes:](CMIOExtensionPropertyState, "propertyStateWithValue:attributes:", v4, +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]);
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionDeviceProperties setTransportType:];
  }
}

- (NSString)linkedCoreAudioDeviceUID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyDeviceLinkedCoreAudioDeviceUID"];
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
          [CMIOExtensionDeviceProperties linkedCoreAudioDeviceUID];
        }

        return 0;
      }
    }
  }

  return p_isa;
}

- (void)setLinkedCoreAudioDeviceUID:(NSString *)linkedCoreAudioDeviceUID
{
  if (!linkedCoreAudioDeviceUID)
  {
LABEL_4:

    [(CMIOExtensionDeviceProperties *)self setPropertyState:linkedCoreAudioDeviceUID forProperty:@"CMIOExtensionPropertyDeviceLinkedCoreAudioDeviceUID"];
    return;
  }

  v4 = linkedCoreAudioDeviceUID;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    linkedCoreAudioDeviceUID = +[CMIOExtensionPropertyState propertyStateWithValue:attributes:](CMIOExtensionPropertyState, "propertyStateWithValue:attributes:", v4, +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]);
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionDeviceProperties setLinkedCoreAudioDeviceUID:];
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

- (void)model
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setModel:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)suspended
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSuspended:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)transportType
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setTransportType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)linkedCoreAudioDeviceUID
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLinkedCoreAudioDeviceUID:.cold.1()
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