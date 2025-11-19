@interface ATXFaceGalleryEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)galleryDidAppearEventWithConfiguration:(id)a3;
+ (id)galleryDidDisappearEvent;
+ (id)itemsDidAppearEventWithItems:(id)a3;
- (ATXFaceGalleryEvent)initWithEventType:(int64_t)a3 configuration:(id)a4 items:(id)a5;
- (ATXFaceGalleryEvent)initWithProto:(id)a3;
- (ATXFaceGalleryEvent)initWithProtoData:(id)a3;
- (NSDictionary)jsonDictionary;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
@end

@implementation ATXFaceGalleryEvent

+ (id)galleryDidAppearEventWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[ATXFaceGalleryEvent alloc] initWithEventType:1 configuration:v3 items:0];

  return v4;
}

+ (id)galleryDidDisappearEvent
{
  v2 = [[ATXFaceGalleryEvent alloc] initWithEventType:2 configuration:0 items:0];

  return v2;
}

+ (id)itemsDidAppearEventWithItems:(id)a3
{
  v3 = a3;
  v4 = [[ATXFaceGalleryEvent alloc] initWithEventType:3 configuration:0 items:v3];

  return v4;
}

- (ATXFaceGalleryEvent)initWithEventType:(int64_t)a3 configuration:(id)a4 items:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ATXFaceGalleryEvent;
  v11 = [(ATXFaceGalleryEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_eventType = a3;
    objc_storeStrong(&v11->_configuration, a4);
    v13 = [v10 copy];
    items = v12->_items;
    v12->_items = v13;
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ATXFaceGalleryEvent *)self eventType];
  if (v4 >= 4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = off_1E80C59D8[v4 & 3];
  }

  v6 = [(ATXFaceGalleryEvent *)self configuration];
  v7 = [v3 stringWithFormat:@"<ATXFaceGalleryEvent type: %@ configuration: %@>", v5, v6];

  return v7;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"eventType";
  v3 = [(ATXFaceGalleryEvent *)self eventType];
  if (v3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v3];
  }

  else
  {
    v4 = off_1E80C59D8[v3 & 3];
  }

  v14[0] = v4;
  v13[1] = @"configuration";
  v5 = [(ATXFaceGalleryEvent *)self configuration];
  v6 = [v5 jsonDictionary];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v7;
  v13[2] = @"items";
  v8 = [(ATXFaceGalleryEvent *)self items];
  v9 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_90];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!v9)
  {
  }

  if (!v6)
  {
  }

  return v11;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXFaceGalleryEvent *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXFaceGalleryEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBFaceGalleryEvent alloc] initWithData:v4];

    self = [(ATXFaceGalleryEvent *)self initWithProto:v5];
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
  v2 = [(ATXFaceGalleryEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXFaceGalleryEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_8:
    v11 = 0;
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

  v5 = v4;
  v6 = [(ATXPBFaceGalleryEvent *)v5 eventType];
  if ([(ATXPBFaceGalleryEvent *)v5 hasConfiguration])
  {
    v7 = [ATXFaceGalleryConfiguration alloc];
    v8 = [(ATXPBFaceGalleryEvent *)v5 configuration];
    v9 = [(ATXFaceGalleryConfiguration *)v7 initWithProto:v8];
  }

  else
  {
    v9 = 0;
  }

  v12 = [(ATXPBFaceGalleryEvent *)v5 items];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(ATXPBFaceGalleryEvent *)v5 items];
    v15 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_37_0];
  }

  else
  {
    v15 = 0;
  }

  self = [(ATXFaceGalleryEvent *)self initWithEventType:v6 configuration:v9 items:v15];

  v11 = self;
LABEL_14:

  return v11;
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
  v4 = [(ATXFaceGalleryEvent *)self configuration];
  v5 = [v4 proto];
  [(ATXPBFaceGalleryEvent *)v3 setConfiguration:v5];

  v6 = [(ATXFaceGalleryEvent *)self items];
  v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_40_0];
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