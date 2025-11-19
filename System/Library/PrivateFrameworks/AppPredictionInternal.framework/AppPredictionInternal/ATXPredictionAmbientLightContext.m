@interface ATXPredictionAmbientLightContext
- (ATXPredictionAmbientLightContext)initWithAmbientLightType:(int)a3;
- (ATXPredictionAmbientLightContext)initWithProto:(id)a3;
- (ATXPredictionAmbientLightContext)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXPredictionAmbientLightContext

- (ATXPredictionAmbientLightContext)initWithAmbientLightType:(int)a3
{
  v5.receiver = self;
  v5.super_class = ATXPredictionAmbientLightContext;
  result = [(ATXPredictionAmbientLightContext *)&v5 init];
  if (result)
  {
    result->_ambientLightType = a3;
  }

  return result;
}

- (id)description
{
  v2 = [(ATXPredictionAmbientLightContext *)self jsonDict];
  v3 = [v2 description];

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

- (ATXPredictionAmbientLightContext)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBPredictionAmbientLightContext alloc] initWithData:v4];

    self = [(ATXPredictionAmbientLightContext *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXPredictionAmbientLightContext *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXPredictionAmbientLightContext)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v5 = 0;
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

  self = -[ATXPredictionAmbientLightContext initWithAmbientLightType:](self, "initWithAmbientLightType:", [v4 ambientLightType]);
  v5 = self;
LABEL_8:

  return v5;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setAmbientLightType:self->_ambientLightType];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionAmbientLightContext *)self isEqualToATXPredictionAmbientLightContext:v5];
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