@interface ATXFaceGalleryEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)galleryDidAppearEventWithConfiguration:(id)configuration;
+ (id)galleryDidDisappearEvent;
+ (id)itemsDidAppearEventWithItems:(id)items;
- (ATXFaceGalleryEvent)initWithEventType:(int64_t)type configuration:(id)configuration items:(id)items;
- (ATXFaceGalleryEvent)initWithProto:(id)proto;
- (ATXFaceGalleryEvent)initWithProtoData:(id)data;
- (NSDictionary)jsonDictionary;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
@end

@implementation ATXFaceGalleryEvent

+ (id)galleryDidAppearEventWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[ATXFaceGalleryEvent alloc] initWithEventType:1 configuration:configurationCopy items:0];

  return v4;
}

+ (id)galleryDidDisappearEvent
{
  v2 = [[ATXFaceGalleryEvent alloc] initWithEventType:2 configuration:0 items:0];

  return v2;
}

+ (id)itemsDidAppearEventWithItems:(id)items
{
  itemsCopy = items;
  v4 = [[ATXFaceGalleryEvent alloc] initWithEventType:3 configuration:0 items:itemsCopy];

  return v4;
}

- (ATXFaceGalleryEvent)initWithEventType:(int64_t)type configuration:(id)configuration items:(id)items
{
  configurationCopy = configuration;
  itemsCopy = items;
  v16.receiver = self;
  v16.super_class = ATXFaceGalleryEvent;
  v11 = [(ATXFaceGalleryEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_eventType = type;
    objc_storeStrong(&v11->_configuration, configuration);
    v13 = [itemsCopy copy];
    items = v12->_items;
    v12->_items = v13;
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  eventType = [(ATXFaceGalleryEvent *)self eventType];
  if (eventType >= 4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", eventType];
  }

  else
  {
    v5 = off_1E80C59D8[eventType & 3];
  }

  configuration = [(ATXFaceGalleryEvent *)self configuration];
  v7 = [v3 stringWithFormat:@"<ATXFaceGalleryEvent type: %@ configuration: %@>", v5, configuration];

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"eventType";
  eventType = [(ATXFaceGalleryEvent *)self eventType];
  if (eventType >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", eventType];
  }

  else
  {
    v4 = off_1E80C59D8[eventType & 3];
  }

  v14[0] = v4;
  v13[1] = @"configuration";
  configuration = [(ATXFaceGalleryEvent *)self configuration];
  jsonDictionary = [configuration jsonDictionary];
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null;
  v13[2] = @"items";
  items = [(ATXFaceGalleryEvent *)self items];
  v9 = [items _pas_mappedArrayWithTransform:&__block_literal_global_90];
  null2 = v9;
  if (!v9)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!v9)
  {
  }

  if (!jsonDictionary)
  {
  }

  return v11;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionary = [(ATXFaceGalleryEvent *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:jsonDictionary options:1 error:0];

  return v4;
}

- (ATXFaceGalleryEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBFaceGalleryEvent alloc] initWithData:dataCopy];

    self = [(ATXFaceGalleryEvent *)self initWithProto:v5];
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
  proto = [(ATXFaceGalleryEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXFaceGalleryEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v10];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  eventType = [(ATXPBFaceGalleryEvent *)v5 eventType];
  if ([(ATXPBFaceGalleryEvent *)v5 hasConfiguration])
  {
    v7 = [ATXFaceGalleryConfiguration alloc];
    configuration = [(ATXPBFaceGalleryEvent *)v5 configuration];
    v9 = [(ATXFaceGalleryConfiguration *)v7 initWithProto:configuration];
  }

  else
  {
    v9 = 0;
  }

  items = [(ATXPBFaceGalleryEvent *)v5 items];
  v13 = [items count];

  if (v13)
  {
    items2 = [(ATXPBFaceGalleryEvent *)v5 items];
    v15 = [items2 _pas_mappedArrayWithTransform:&__block_literal_global_37_0];
  }

  else
  {
    v15 = 0;
  }

  self = [(ATXFaceGalleryEvent *)self initWithEventType:eventType configuration:v9 items:v15];

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

ATXFaceGalleryItem *__37__ATXFaceGalleryEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXFaceGalleryItem alloc] initWithProto:v2];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBFaceGalleryEvent *)v3 setEventType:?];
  configuration = [(ATXFaceGalleryEvent *)self configuration];
  proto = [configuration proto];
  [(ATXPBFaceGalleryEvent *)v3 setConfiguration:proto];

  items = [(ATXFaceGalleryEvent *)self items];
  v7 = [items _pas_mappedArrayWithTransform:&__block_literal_global_40_0];
  v8 = v7;
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v9 = [v7 mutableCopy];
  [(ATXPBFaceGalleryEvent *)v3 setItems:v9];

  return v3;
}

@end