@interface ATXDigestOnboardingAppSelectionLoggingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithProto:(id)a3;
- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithProtoData:(id)a3;
- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithSessionUUID:(id)a3 bundleId:(id)a4 avgNumBasicNotifications:(unint64_t)a5 avgNumMessageNotifications:(unint64_t)a6 avgNumTimeSensitiveNonMessageNotifications:(unint64_t)a7 rank:(unint64_t)a8 addedToDigest:(BOOL)a9 wasShownInDigestOnboarding:(BOOL)a10;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXDigestOnboardingAppSelectionLoggingEvent

- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithSessionUUID:(id)a3 bundleId:(id)a4 avgNumBasicNotifications:(unint64_t)a5 avgNumMessageNotifications:(unint64_t)a6 avgNumTimeSensitiveNonMessageNotifications:(unint64_t)a7 rank:(unint64_t)a8 addedToDigest:(BOOL)a9 wasShownInDigestOnboarding:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v22.receiver = self;
  v22.super_class = ATXDigestOnboardingAppSelectionLoggingEvent;
  v19 = [(ATXDigestOnboardingAppSelectionLoggingEvent *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionUUID, a3);
    objc_storeStrong(&v20->_bundleId, a4);
    v20->_avgNumBasicNotifications = a5;
    v20->_avgNumMessageNotfications = a6;
    v20->_avgNumTimeSensitiveNonMessageNotifications = a7;
    v20->_rank = a8;
    v20->_addedToDigest = a9;
    v20->_wasShownInDigestOnboarding = a10;
  }

  return v20;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBDigestOnboardingAppSelectionLoggingEvent alloc] initWithData:v4];

  v6 = [(ATXDigestOnboardingAppSelectionLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXDigestOnboardingAppSelectionLoggingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v16];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E696AFB0];
  v6 = v4;
  v7 = [v5 alloc];
  v8 = [v6 sessionUUID];
  v19 = [v7 initWithUUIDString:v8];

  v9 = [v6 bundleId];
  v10 = [v6 avgNumBasicNotifications];
  v11 = [v6 avgNumMessageNotifications];
  v12 = [v6 avgNumTimeSensitiveNonMessageNotifications];
  v13 = [v6 rank];
  v14 = [v6 addedToDigest];
  LOBYTE(v7) = [v6 wasShownInDigestOnboarding];

  BYTE1(v18) = v7;
  LOBYTE(v18) = v14;
  self = [(ATXDigestOnboardingAppSelectionLoggingEvent *)self initWithSessionUUID:v19 bundleId:v9 avgNumBasicNotifications:v10 avgNumMessageNotifications:v11 avgNumTimeSensitiveNonMessageNotifications:v12 rank:v13 addedToDigest:v18 wasShownInDigestOnboarding:?];

  v15 = self;
LABEL_8:

  return v15;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_sessionUUID UUIDString];
  [v3 setSessionUUID:v4];

  [v3 setBundleId:self->_bundleId];
  [v3 setAvgNumBasicNotifications:LODWORD(self->_avgNumBasicNotifications)];
  [v3 setAvgNumMessageNotifications:LODWORD(self->_avgNumMessageNotfications)];
  [v3 setAvgNumTimeSensitiveNonMessageNotifications:LODWORD(self->_avgNumTimeSensitiveNonMessageNotifications)];
  [v3 setRank:LODWORD(self->_rank)];
  [v3 setAddedToDigest:self->_addedToDigest];
  [v3 setWasShownInDigestOnboarding:self->_wasShownInDigestOnboarding];

  return v3;
}

@end