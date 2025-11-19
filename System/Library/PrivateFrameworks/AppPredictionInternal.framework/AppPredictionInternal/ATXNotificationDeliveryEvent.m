@interface ATXNotificationDeliveryEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXNotificationDeliveryEvent)initWithDeliveryUI:(unint64_t)a3 suggestionUUIDs:(id)a4;
- (ATXNotificationDeliveryEvent)initWithProto:(id)a3;
- (ATXNotificationDeliveryEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXNotificationDeliveryEvent:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonRawData;
- (id)proto;
@end

@implementation ATXNotificationDeliveryEvent

- (id)encodeAsProto
{
  v2 = [(ATXNotificationDeliveryEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setDeliveryUI:LODWORD(self->_deliveryUI)];
  v4 = [(NSArray *)self->_suggestionUUIDs _pas_mappedArrayWithTransform:&__block_literal_global_25_3];
  v5 = [v4 mutableCopy];
  [v3 setSuggestionUUIDs:v5];

  return v3;
}

- (ATXNotificationDeliveryEvent)initWithDeliveryUI:(unint64_t)a3 suggestionUUIDs:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATXNotificationDeliveryEvent;
  v8 = [(ATXNotificationDeliveryEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_deliveryUI = a3;
    objc_storeStrong(&v8->_suggestionUUIDs, a4);
  }

  return v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXNotificationDeliveryEvent *)self isEqualToATXNotificationDeliveryEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXNotificationDeliveryEvent:(id)a3
{
  v4 = a3;
  if ([v4 deliveryUI] == self->_deliveryUI)
  {
    v5 = self->_suggestionUUIDs;
    v6 = v5;
    if (v5 == v4[2])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSArray *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonRawData
{
  v10[2] = *MEMORY[0x277D85DE8];
  suggestionUUIDs = self->_suggestionUUIDs;
  if (suggestionUUIDs)
  {
    v4 = [(NSArray *)suggestionUUIDs description];
  }

  else
  {
    v4 = @"nil";
  }

  v9[0] = @"deliveryUI";
  if (self->_deliveryUI >= 8)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deliveryUI, v9[0]];
  }

  else
  {
    v5 = off_27859F690[self->_deliveryUI & 7];
  }

  v9[1] = @"suggestionUUIDs";
  v10[0] = v5;
  v10[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(ATXNotificationDeliveryEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXNotificationDeliveryEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBNotificationDeliveryEvent alloc] initWithData:v4];

    self = [(ATXNotificationDeliveryEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXNotificationDeliveryEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXMinimalAction *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v5 deliveryUI];
  v7 = [v5 suggestionUUIDs];

  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_177];
  self = [(ATXNotificationDeliveryEvent *)self initWithDeliveryUI:v6 suggestionUUIDs:v8];

  v9 = self;
LABEL_8:

  return v9;
}

id __46__ATXNotificationDeliveryEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

@end