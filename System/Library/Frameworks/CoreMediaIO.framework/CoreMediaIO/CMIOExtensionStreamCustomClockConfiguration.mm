@interface CMIOExtensionStreamCustomClockConfiguration
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionStreamCustomClockConfiguration)initWithClockName:(NSString *)clockName sourceIdentifier:(NSUUID *)sourceIdentifier getTimeCallMinimumInterval:(CMTime *)getTimeCallMinimumInterval numberOfEventsForRateSmoothing:(uint32_t)numberOfEventsForRateSmoothing numberOfAveragesForRateSmoothing:(uint32_t)numberOfAveragesForRateSmoothing;
- (CMIOExtensionStreamCustomClockConfiguration)initWithCoder:(id)coder;
- (CMIOExtensionStreamCustomClockConfiguration)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIOExtensionStreamCustomClockConfiguration

- (CMIOExtensionStreamCustomClockConfiguration)initWithClockName:(NSString *)clockName sourceIdentifier:(NSUUID *)sourceIdentifier getTimeCallMinimumInterval:(CMTime *)getTimeCallMinimumInterval numberOfEventsForRateSmoothing:(uint32_t)numberOfEventsForRateSmoothing numberOfAveragesForRateSmoothing:(uint32_t)numberOfAveragesForRateSmoothing
{
  v18.receiver = self;
  v18.super_class = CMIOExtensionStreamCustomClockConfiguration;
  v12 = [(CMIOExtensionStreamCustomClockConfiguration *)&v18 init];
  if (v12)
  {
    if (clockName)
    {
      *(v12 + 1) = [(NSString *)clockName copy];
      if (sourceIdentifier)
      {
        *(v12 + 2) = [(NSUUID *)sourceIdentifier copy];
        epoch = getTimeCallMinimumInterval->epoch;
        *(v12 + 24) = *&getTimeCallMinimumInterval->value;
        *(v12 + 5) = epoch;
        if (numberOfEventsForRateSmoothing)
        {
          *(v12 + 12) = numberOfEventsForRateSmoothing;
          *(v12 + 13) = numberOfAveragesForRateSmoothing;
          return v12;
        }

        v14 = MEMORY[0x277CBEAD8];
        v15 = *MEMORY[0x277CBE660];
        v16 = @"Invalid number of events for rate smoothing";
      }

      else
      {
        v14 = MEMORY[0x277CBEAD8];
        v15 = *MEMORY[0x277CBE660];
        v16 = @"Invalid source identifier";
      }
    }

    else
    {
      v14 = MEMORY[0x277CBEAD8];
      v15 = *MEMORY[0x277CBE660];
      v16 = @"Invalid clock name";
    }

    [v14 raise:v15 format:v16];

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionStreamCustomClockConfiguration;
  [(CMIOExtensionStreamCustomClockConfiguration *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v7 = -[NSString isEqualToString:](self->_clockName, "isEqualToString:", [equal clockName]);
    if (v7)
    {
      v7 = -[NSUUID isEqual:](self->_sourceIdentifier, "isEqual:", [equal sourceIdentifier]);
      if (v7)
      {
        if (equal)
        {
          [equal getTimeCallMinimumInterval];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        getTimeCallMinimumInterval = self->_getTimeCallMinimumInterval;
        if (!CMTimeCompare(&getTimeCallMinimumInterval, &time2))
        {
          numberOfEventsForRateSmoothing = self->_numberOfEventsForRateSmoothing;
          if (numberOfEventsForRateSmoothing == [equal numberOfEventsForRateSmoothing])
          {
            numberOfAveragesForRateSmoothing = self->_numberOfAveragesForRateSmoothing;
            LOBYTE(v7) = numberOfAveragesForRateSmoothing == [equal numberOfAveragesForRateSmoothing];
            return v7;
          }
        }

LABEL_12:
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  copyXPCDictionary = [(CMIOExtensionStreamCustomClockConfiguration *)self copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v6 = copyXPCDictionary;
    [coder encodeXPCObject:copyXPCDictionary forKey:@"streamCustomClockConfiguration"];

    xpc_release(v6);
  }

  else
  {
    v7 = CMIOLog();
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionStreamCustomClockConfiguration encodeWithCoder:];
    }
  }
}

- (CMIOExtensionStreamCustomClockConfiguration)initWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  v5 = [coder decodeXPCObjectOfType:MEMORY[0x277D86468] forKey:@"streamCustomClockConfiguration"];
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ nil xpc object", self}];
  }

  return [(CMIOExtensionStreamCustomClockConfiguration *)self initWithXPCDictionary:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionStreamCustomClockConfiguration allocWithZone:zone];
  clockName = self->_clockName;
  sourceIdentifier = self->_sourceIdentifier;
  numberOfEventsForRateSmoothing = self->_numberOfEventsForRateSmoothing;
  numberOfAveragesForRateSmoothing = self->_numberOfAveragesForRateSmoothing;
  getTimeCallMinimumInterval = self->_getTimeCallMinimumInterval;
  return [(CMIOExtensionStreamCustomClockConfiguration *)v4 initWithClockName:clockName sourceIdentifier:sourceIdentifier getTimeCallMinimumInterval:&getTimeCallMinimumInterval numberOfEventsForRateSmoothing:numberOfEventsForRateSmoothing numberOfAveragesForRateSmoothing:numberOfAveragesForRateSmoothing];
}

- (id)copyXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "clockName", [(NSString *)self->_clockName UTF8String]);
  xpc_dictionary_set_string(v3, "sourceIdentifier", [objc_msgSend(MEMORY[0x277CCACA8] stringWithString:{-[NSUUID UUIDString](self->_sourceIdentifier, "UUIDString")), "UTF8String"}]);
  xpc_dictionary_set_data(v3, "getTimeCallMinimumInterval", &self->_getTimeCallMinimumInterval, 0x18uLL);
  xpc_dictionary_set_uint64(v3, "numberOfEventsForRateSmoothing", self->_numberOfEventsForRateSmoothing);
  xpc_dictionary_set_uint64(v3, "numberOfAveragesForRateSmoothing", self->_numberOfAveragesForRateSmoothing);
  return v3;
}

- (CMIOExtensionStreamCustomClockConfiguration)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v18 = *MEMORY[0x277CC0898];
    v19 = *(MEMORY[0x277CC0898] + 16);
    string = xpc_dictionary_get_string(dictionary, "clockName");
    if (string)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithCString:string encoding:4];
    }

    else
    {
      v6 = @"unknown";
    }

    v8 = xpc_dictionary_get_string(dictionary, "sourceIdentifier");
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
      uUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    v11 = uUID;
    length = 24;
    data = xpc_dictionary_get_data(dictionary, "getTimeCallMinimumInterval", &length);
    if (data)
    {
      v18 = *data;
      v19 = data[2];
    }

    uint64 = xpc_dictionary_get_uint64(dictionary, "numberOfEventsForRateSmoothing");
    v14 = xpc_dictionary_get_uint64(dictionary, "numberOfAveragesForRateSmoothing");
    v15 = v18;
    v16 = v19;
    return [(CMIOExtensionStreamCustomClockConfiguration *)self initWithClockName:v6 sourceIdentifier:v11 getTimeCallMinimumInterval:&v15 numberOfEventsForRateSmoothing:uint64 numberOfAveragesForRateSmoothing:v14];
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
    return 0;
  }
}

- (void)encodeWithCoder:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end