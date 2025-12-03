@interface CMIOExtensionStreamProperties
+ (CMIOExtensionStreamProperties)streamPropertiesWithDictionary:(NSDictionary *)propertiesDictionary;
- (CMIOExtensionStreamProperties)initWithDictionary:(NSDictionary *)propertiesDictionary;
- (CMIOExtensionStreamProperties)initWithPropertyValues:(id)values client:(id)client;
- (NSDictionary)frameDuration;
- (NSDictionary)maxFrameDuration;
- (NSDictionary)propertiesDictionary;
- (NSNumber)activeFormatIndex;
- (NSNumber)sinkBufferQueueSize;
- (NSNumber)sinkBufferUnderrunCount;
- (NSNumber)sinkBuffersRequiredForStartup;
- (NSNumber)sinkEndOfData;
- (id)client;
- (void)activeFormatIndex;
- (void)dealloc;
- (void)frameDuration;
- (void)maxFrameDuration;
- (void)setActiveFormatIndex:(NSNumber *)activeFormatIndex;
- (void)setFrameDuration:(NSDictionary *)frameDuration;
- (void)setMaxFrameDuration:(NSDictionary *)maxFrameDuration;
- (void)setPropertiesDictionary:(NSDictionary *)propertiesDictionary;
- (void)setPropertyState:(CMIOExtensionPropertyState *)propertyState forProperty:(CMIOExtensionProperty)property;
- (void)setSinkBufferQueueSize:(NSNumber *)sinkBufferQueueSize;
- (void)setSinkBufferUnderrunCount:(NSNumber *)sinkBufferUnderrunCount;
- (void)setSinkBuffersRequiredForStartup:(NSNumber *)sinkBuffersRequiredForStartup;
- (void)setSinkEndOfData:(NSNumber *)sinkEndOfData;
- (void)sinkBufferQueueSize;
- (void)sinkBufferUnderrunCount;
- (void)sinkBuffersRequiredForStartup;
- (void)sinkEndOfData;
@end

@implementation CMIOExtensionStreamProperties

+ (CMIOExtensionStreamProperties)streamPropertiesWithDictionary:(NSDictionary *)propertiesDictionary
{
  v3 = [objc_alloc(objc_opt_class()) initWithDictionary:propertiesDictionary];

  return v3;
}

- (CMIOExtensionStreamProperties)initWithDictionary:(NSDictionary *)propertiesDictionary
{
  v7.receiver = self;
  v7.super_class = CMIOExtensionStreamProperties;
  v4 = [(CMIOExtensionStreamProperties *)&v7 init];
  v5 = v4;
  if (propertiesDictionary && v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_propertiesDictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:propertiesDictionary];
  }

  return v5;
}

- (CMIOExtensionStreamProperties)initWithPropertyValues:(id)values client:(id)client
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__CMIOExtensionStreamProperties_initWithPropertyValues_client___block_invoke;
  v10[3] = &unk_27885B850;
  v10[4] = dictionary;
  [values enumerateKeysAndObjectsUsingBlock:v10];
  v8 = [(CMIOExtensionStreamProperties *)self initWithDictionary:dictionary];
  if (v8)
  {
    v8->_client = [client copy];
  }

  return v8;
}

uint64_t __63__CMIOExtensionStreamProperties_initWithPropertyValues_client___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [CMIOExtensionPropertyState propertyStateWithValue:?];
  v5 = *(a1 + 32);

  return [v5 setObject:v4 forKeyedSubscript:a2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionStreamProperties;
  [(CMIOExtensionStreamProperties *)&v3 dealloc];
}

- (NSNumber)activeFormatIndex
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyStreamActiveFormatIndex"];
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
          [CMIOExtensionStreamProperties activeFormatIndex];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setActiveFormatIndex:(NSNumber *)activeFormatIndex
{
  if (!activeFormatIndex)
  {
LABEL_4:

    [(CMIOExtensionStreamProperties *)self setPropertyState:activeFormatIndex forProperty:@"CMIOExtensionPropertyStreamActiveFormatIndex"];
    return;
  }

  v4 = activeFormatIndex;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeFormatIndex = [CMIOExtensionPropertyState propertyStateWithValue:v4];
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionStreamProperties setActiveFormatIndex:];
  }
}

- (NSDictionary)frameDuration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyStreamFrameDuration"];
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
          [CMIOExtensionStreamProperties frameDuration];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setFrameDuration:(NSDictionary *)frameDuration
{
  if (!frameDuration)
  {
LABEL_4:

    [(CMIOExtensionStreamProperties *)self setPropertyState:frameDuration forProperty:@"CMIOExtensionPropertyStreamFrameDuration"];
    return;
  }

  v4 = frameDuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    frameDuration = [CMIOExtensionPropertyState propertyStateWithValue:v4];
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionStreamProperties setFrameDuration:];
  }
}

- (NSDictionary)maxFrameDuration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyStreamMaxFrameDuration"];
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
          [CMIOExtensionStreamProperties maxFrameDuration];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setMaxFrameDuration:(NSDictionary *)maxFrameDuration
{
  if (!maxFrameDuration)
  {
LABEL_4:

    [(CMIOExtensionStreamProperties *)self setPropertyState:maxFrameDuration forProperty:@"CMIOExtensionPropertyStreamMaxFrameDuration"];
    return;
  }

  v4 = maxFrameDuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    maxFrameDuration = [CMIOExtensionPropertyState propertyStateWithValue:v4];
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionStreamProperties setMaxFrameDuration:];
  }
}

- (NSNumber)sinkBufferQueueSize
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyStreamSinkBufferQueueSize"];
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
          [CMIOExtensionStreamProperties sinkBufferQueueSize];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setSinkBufferQueueSize:(NSNumber *)sinkBufferQueueSize
{
  if (!sinkBufferQueueSize)
  {
LABEL_4:

    [(CMIOExtensionStreamProperties *)self setPropertyState:sinkBufferQueueSize forProperty:@"CMIOExtensionPropertyStreamSinkBufferQueueSize"];
    return;
  }

  v4 = sinkBufferQueueSize;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sinkBufferQueueSize = [CMIOExtensionPropertyState propertyStateWithValue:v4];
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionStreamProperties setSinkBufferQueueSize:];
  }
}

- (NSNumber)sinkBuffersRequiredForStartup
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyStreamSinkBuffersRequiredForStartup"];
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
          [CMIOExtensionStreamProperties sinkBuffersRequiredForStartup];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setSinkBuffersRequiredForStartup:(NSNumber *)sinkBuffersRequiredForStartup
{
  if (!sinkBuffersRequiredForStartup)
  {
LABEL_4:

    [(CMIOExtensionStreamProperties *)self setPropertyState:sinkBuffersRequiredForStartup forProperty:@"CMIOExtensionPropertyStreamSinkBuffersRequiredForStartup"];
    return;
  }

  v4 = sinkBuffersRequiredForStartup;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sinkBuffersRequiredForStartup = [CMIOExtensionPropertyState propertyStateWithValue:v4];
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionStreamProperties setSinkBuffersRequiredForStartup:];
  }
}

- (NSNumber)sinkBufferUnderrunCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyStreamSinkBufferUnderrunCount"];
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
          [CMIOExtensionStreamProperties sinkBufferUnderrunCount];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setSinkBufferUnderrunCount:(NSNumber *)sinkBufferUnderrunCount
{
  if (!sinkBufferUnderrunCount)
  {
LABEL_4:

    [(CMIOExtensionStreamProperties *)self setPropertyState:sinkBufferUnderrunCount forProperty:@"CMIOExtensionPropertyStreamSinkBufferUnderrunCount"];
    return;
  }

  v4 = sinkBufferUnderrunCount;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sinkBufferUnderrunCount = +[CMIOExtensionPropertyState propertyStateWithValue:attributes:](CMIOExtensionPropertyState, "propertyStateWithValue:attributes:", v4, +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]);
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionStreamProperties setSinkBufferUnderrunCount:];
  }
}

- (NSNumber)sinkEndOfData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_propertiesDictionary objectForKey:@"CMIOExtensionPropertyStreamSinkEndOfData"];
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
          [CMIOExtensionStreamProperties sinkEndOfData];
        }

        return 0;
      }
    }
  }

  return value;
}

- (void)setSinkEndOfData:(NSNumber *)sinkEndOfData
{
  if (!sinkEndOfData)
  {
LABEL_4:

    [(CMIOExtensionStreamProperties *)self setPropertyState:sinkEndOfData forProperty:@"CMIOExtensionPropertyStreamSinkEndOfData"];
    return;
  }

  v4 = sinkEndOfData;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sinkEndOfData = [CMIOExtensionPropertyState propertyStateWithValue:v4];
    goto LABEL_4;
  }

  v5 = CMIOLog();
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionStreamProperties setSinkEndOfData:];
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

- (id)client
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(CMIOExtensionClient *)self->_client copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)activeFormatIndex
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setActiveFormatIndex:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)frameDuration
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setFrameDuration:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)maxFrameDuration
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setMaxFrameDuration:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sinkBufferQueueSize
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSinkBufferQueueSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sinkBuffersRequiredForStartup
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSinkBuffersRequiredForStartup:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sinkBufferUnderrunCount
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSinkBufferUnderrunCount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sinkEndOfData
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSinkEndOfData:.cold.1()
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