@interface ATXUserNotificationAppDigest
- (ATXUserNotificationAppDigest)initWithBundleId:(id)a3 appMarqueeGroups:(id)a4 nonAppMarqueeGroups:(id)a5;
- (ATXUserNotificationAppDigest)initWithProto:(id)a3;
- (ATXUserNotificationAppDigest)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
- (id)proto;
@end

@implementation ATXUserNotificationAppDigest

- (ATXUserNotificationAppDigest)initWithBundleId:(id)a3 appMarqueeGroups:(id)a4 nonAppMarqueeGroups:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = ATXUserNotificationAppDigest;
  v11 = [(ATXUserNotificationAppDigest *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    bundleId = v11->_bundleId;
    v11->_bundleId = v12;

    v14 = [v9 copy];
    appMarqueeGroups = v11->_appMarqueeGroups;
    v11->_appMarqueeGroups = v14;

    v16 = [v10 copy];
    nonAppMarqueeGroups = v11->_nonAppMarqueeGroups;
    v11->_nonAppMarqueeGroups = v16;

    v18 = [v9 arrayByAddingObjectsFromArray:v10];
    groups = v11->_groups;
    v11->_groups = v18;
  }

  return v11;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBUserNotificationAppDigest alloc] initFromJSON:v4];

  v6 = [(ATXUserNotificationAppDigest *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXUserNotificationAppDigest *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (ATXUserNotificationAppDigest)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUserNotificationAppDigest alloc] initWithData:v4];

    self = [(ATXUserNotificationAppDigest *)self initWithProto:v5];
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
  v2 = [(ATXUserNotificationAppDigest *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXUserNotificationAppDigest)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v12];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v5 bundleId];
  v7 = [v5 appMarqueeGroups];
  v8 = [ATXUserNotificationDigestNotificationGroup groupsFromProtos:v7];
  v9 = [v5 nonAppMarqueeGroups];

  v10 = [ATXUserNotificationDigestNotificationGroup groupsFromProtos:v9];
  self = [(ATXUserNotificationAppDigest *)self initWithBundleId:v6 appMarqueeGroups:v8 nonAppMarqueeGroups:v10];

  v11 = self;
LABEL_8:

  return v11;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setBundleId:self->_bundleId];
  v4 = [ATXUserNotificationDigestNotificationGroup protosFromGroups:self->_appMarqueeGroups];
  [v3 setAppMarqueeGroups:v4];

  v5 = [ATXUserNotificationDigestNotificationGroup protosFromGroups:self->_nonAppMarqueeGroups];
  [v3 setNonAppMarqueeGroups:v5];

  return v3;
}

@end