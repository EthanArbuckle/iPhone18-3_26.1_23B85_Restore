@interface ATXPredictionAmbientLightContext
- (ATXPredictionAmbientLightContext)initWithAmbientLightType:(int)type;
- (ATXPredictionAmbientLightContext)initWithProto:(id)proto;
- (ATXPredictionAmbientLightContext)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXPredictionAmbientLightContext

- (ATXPredictionAmbientLightContext)initWithAmbientLightType:(int)type
{
  v5.receiver = self;
  v5.super_class = ATXPredictionAmbientLightContext;
  result = [(ATXPredictionAmbientLightContext *)&v5 init];
  if (result)
  {
    result->_ambientLightType = type;
  }

  return result;
}

- (id)description
{
  jsonDict = [(ATXPredictionAmbientLightContext *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (id)jsonDict
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"ambientLightType";
  ambientLightType = self->_ambientLightType;
  if (ambientLightType >= 8)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", ambientLightType, v7];
  }

  else
  {
    v3 = off_278599878[ambientLightType];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (ATXPredictionAmbientLightContext)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBPredictionAmbientLightContext alloc] initWithData:dataCopy];

    self = [(ATXPredictionAmbientLightContext *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXPredictionAmbientLightContext *)self proto];
  data = [proto data];

  return data;
}

- (ATXPredictionAmbientLightContext)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXPredictionAmbientLightContext *)self initWithProto:v6];
    }

    goto LABEL_7;
  }

  self = -[ATXPredictionAmbientLightContext initWithAmbientLightType:](self, "initWithAmbientLightType:", [protoCopy ambientLightType]);
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setAmbientLightType:self->_ambientLightType];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionAmbientLightContext *)self isEqualToATXPredictionAmbientLightContext:v5];
  }

  return v6;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBPredictionAmbientLightContext proto", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end