@interface ATXUserNotificationAppDigest
- (ATXUserNotificationAppDigest)initWithBundleId:(id)id appMarqueeGroups:(id)groups nonAppMarqueeGroups:(id)marqueeGroups;
- (ATXUserNotificationAppDigest)initWithProto:(id)proto;
- (ATXUserNotificationAppDigest)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (id)proto;
@end

@implementation ATXUserNotificationAppDigest

- (ATXUserNotificationAppDigest)initWithBundleId:(id)id appMarqueeGroups:(id)groups nonAppMarqueeGroups:(id)marqueeGroups
{
  idCopy = id;
  groupsCopy = groups;
  marqueeGroupsCopy = marqueeGroups;
  v21.receiver = self;
  v21.super_class = ATXUserNotificationAppDigest;
  v11 = [(ATXUserNotificationAppDigest *)&v21 init];
  if (v11)
  {
    v12 = [idCopy copy];
    bundleId = v11->_bundleId;
    v11->_bundleId = v12;

    v14 = [groupsCopy copy];
    appMarqueeGroups = v11->_appMarqueeGroups;
    v11->_appMarqueeGroups = v14;

    v16 = [marqueeGroupsCopy copy];
    nonAppMarqueeGroups = v11->_nonAppMarqueeGroups;
    v11->_nonAppMarqueeGroups = v16;

    v18 = [groupsCopy arrayByAddingObjectsFromArray:marqueeGroupsCopy];
    groups = v11->_groups;
    v11->_groups = v18;
  }

  return v11;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUserNotificationAppDigest alloc] initFromJSON:nCopy];

  v6 = [(ATXUserNotificationAppDigest *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUserNotificationAppDigest *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (ATXUserNotificationAppDigest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUserNotificationAppDigest alloc] initWithData:dataCopy];

    self = [(ATXUserNotificationAppDigest *)self initWithProto:v5];
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
  proto = [(ATXUserNotificationAppDigest *)self proto];
  data = [proto data];

  return data;
}

- (ATXUserNotificationAppDigest)initWithProto:(id)proto
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
    v12 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v12];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  bundleId = [v5 bundleId];
  appMarqueeGroups = [v5 appMarqueeGroups];
  v8 = [ATXUserNotificationDigestNotificationGroup groupsFromProtos:appMarqueeGroups];
  nonAppMarqueeGroups = [v5 nonAppMarqueeGroups];

  v10 = [ATXUserNotificationDigestNotificationGroup groupsFromProtos:nonAppMarqueeGroups];
  self = [(ATXUserNotificationAppDigest *)self initWithBundleId:bundleId appMarqueeGroups:v8 nonAppMarqueeGroups:v10];

  selfCopy = self;
LABEL_8:

  return selfCopy;
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