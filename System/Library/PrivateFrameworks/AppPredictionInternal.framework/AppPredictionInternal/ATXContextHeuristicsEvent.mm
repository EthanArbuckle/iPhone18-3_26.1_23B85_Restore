@interface ATXContextHeuristicsEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXContextHeuristicsEvent)initWithContextName:(id)name contextType:(id)type isStart:(BOOL)start;
- (ATXContextHeuristicsEvent)initWithProto:(id)proto;
- (ATXContextHeuristicsEvent)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDictionary;
- (id)proto;
@end

@implementation ATXContextHeuristicsEvent

- (ATXContextHeuristicsEvent)initWithContextName:(id)name contextType:(id)type isStart:(BOOL)start
{
  nameCopy = name;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = ATXContextHeuristicsEvent;
  v10 = [(ATXContextHeuristicsEvent *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    contextName = v10->_contextName;
    v10->_contextName = v11;

    v13 = [typeCopy copy];
    contextType = v10->_contextType;
    v10->_contextType = v13;

    v10->_isStart = start;
  }

  return v10;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"contextName";
  contextName = [(ATXContextHeuristicsEvent *)self contextName];
  null = contextName;
  if (!contextName)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = null;
  v12[1] = @"contextType";
  contextType = [(ATXContextHeuristicsEvent *)self contextType];
  null2 = contextType;
  if (!contextType)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = null2;
  v12[2] = @"isStart";
  isStart = [(ATXContextHeuristicsEvent *)self isStart];
  v8 = &unk_283A55E38;
  if (isStart)
  {
    v8 = &unk_283A55E20;
  }

  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!contextType)
  {
  }

  if (!contextName)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  jsonDictionary = [(ATXContextHeuristicsEvent *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:jsonDictionary options:1 error:0];

  return v4;
}

- (ATXContextHeuristicsEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBContextHeuristicsEvent alloc] initWithData:dataCopy];

    self = [(ATXContextHeuristicsEvent *)self initWithProto:v5];
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
  proto = [(ATXContextHeuristicsEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXContextHeuristicsEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    contextName = [v5 contextName];
    contextType = [v5 contextType];
    isStart = [v5 isStart];

    self = [(ATXContextHeuristicsEvent *)self initWithContextName:contextName contextType:contextType isStart:isStart];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  contextName = [(ATXContextHeuristicsEvent *)self contextName];
  [v3 setContextName:contextName];

  contextType = [(ATXContextHeuristicsEvent *)self contextType];
  [v3 setContextType:contextType];

  [v3 setIsStart:{-[ATXContextHeuristicsEvent isStart](self, "isStart")}];

  return v3;
}

@end