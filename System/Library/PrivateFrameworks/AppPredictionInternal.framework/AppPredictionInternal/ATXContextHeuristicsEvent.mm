@interface ATXContextHeuristicsEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXContextHeuristicsEvent)initWithContextName:(id)a3 contextType:(id)a4 isStart:(BOOL)a5;
- (ATXContextHeuristicsEvent)initWithProto:(id)a3;
- (ATXContextHeuristicsEvent)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDictionary;
- (id)proto;
@end

@implementation ATXContextHeuristicsEvent

- (ATXContextHeuristicsEvent)initWithContextName:(id)a3 contextType:(id)a4 isStart:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ATXContextHeuristicsEvent;
  v10 = [(ATXContextHeuristicsEvent *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    contextName = v10->_contextName;
    v10->_contextName = v11;

    v13 = [v9 copy];
    contextType = v10->_contextType;
    v10->_contextType = v13;

    v10->_isStart = a5;
  }

  return v10;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"contextName";
  v3 = [(ATXContextHeuristicsEvent *)self contextName];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v4;
  v12[1] = @"contextType";
  v5 = [(ATXContextHeuristicsEvent *)self contextType];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v6;
  v12[2] = @"isStart";
  v7 = [(ATXContextHeuristicsEvent *)self isStart];
  v8 = &unk_283A55E38;
  if (v7)
  {
    v8 = &unk_283A55E20;
  }

  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(ATXContextHeuristicsEvent *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXContextHeuristicsEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBContextHeuristicsEvent alloc] initWithData:v4];

    self = [(ATXContextHeuristicsEvent *)self initWithProto:v5];
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
  v2 = [(ATXContextHeuristicsEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXContextHeuristicsEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 contextName];
    v7 = [v5 contextType];
    v8 = [v5 isStart];

    self = [(ATXContextHeuristicsEvent *)self initWithContextName:v6 contextType:v7 isStart:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXContextHeuristicsEvent *)self contextName];
  [v3 setContextName:v4];

  v5 = [(ATXContextHeuristicsEvent *)self contextType];
  [v3 setContextType:v5];

  [v3 setIsStart:{-[ATXContextHeuristicsEvent isStart](self, "isStart")}];

  return v3;
}

@end