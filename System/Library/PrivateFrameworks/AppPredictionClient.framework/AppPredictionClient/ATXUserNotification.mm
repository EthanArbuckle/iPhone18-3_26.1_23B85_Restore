@interface ATXUserNotification
- (ATXUserNotification)initWithCoder:(id)coder;
- (ATXUserNotification)initWithProto:(id)proto;
- (ATXUserNotification)initWithProtoData:(id)data;
- (ATXUserNotification)initWithUUID:(id)d timestamp:(double)timestamp;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUserNotification:(id)notification;
- (double)finalDigestScoreForMode:(id)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)groupId;
- (id)initFromJSON:(id)n;
- (id)initFromNotificationData:(id)data date:(id)date title:(id)title subtitle:(id)subtitle body:(id)body bundleID:(id)d threadID:(id)iD categoryID:(id)self0;
- (id)initFromNotificationData:(id)data timestamp:(double)timestamp title:(id)title subtitle:(id)subtitle body:(id)body badge:(unint64_t)badge userInfo:(id)info bundleID:(id)self0 threadID:(id)self1 categoryID:(id)self2 sectionID:(id)self3 contactIDs:(id)self4 isGroupMessage:(BOOL)self5 derivedData:(id)self6;
- (id)initFromNotificationData:(id)data timestamp:(double)timestamp title:(id)title subtitle:(id)subtitle body:(id)body badge:(unint64_t)badge userInfo:(id)info bundleID:(id)self0 threadID:(id)self1 categoryID:(id)self2 sectionID:(id)self3 contactIDs:(id)self4 isGroupMessage:(BOOL)self5 derivedData:(id)self6 urgency:(int64_t)self7;
- (id)initFromNotificationData:(id)data timestamp:(double)timestamp title:(id)title subtitle:(id)subtitle body:(id)body badge:(unint64_t)badge userInfo:(id)info bundleID:(id)self0 threadID:(id)self1 categoryID:(id)self2 sectionID:(id)self3 contactIDs:(id)self4 rawIdentifiers:(id)self5 isGroupMessage:(BOOL)self6 derivedData:(id)self7 urgency:(int64_t)self8;
- (id)initFromNotificationData:(id)data timestamp:(double)timestamp title:(id)title subtitle:(id)subtitle body:(id)body badge:(unint64_t)badge userInfo:(id)info bundleID:(id)self0 threadID:(id)self1 sectionID:(id)self2 contactIDs:(id)self3 isGroupMessage:(BOOL)self4 derivedData:(id)self5 urgency:(int64_t)self6;
- (id)jsonRepresentation;
- (id)proto;
- (int64_t)compareForDigestRanking:(id)ranking;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserNotification

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuid:uUIDString];

  [v3 setTimestamp:self->_timestamp];
  [v3 setTitle:self->_title];
  [v3 setSubtitle:self->_subtitle];
  [v3 setBody:self->_body];
  [v3 setBadge:self->_badge];
  [v3 setUserInfo:self->_userInfo];
  [v3 setBundleID:self->_bundleID];
  [v3 setThreadID:self->_threadID];
  [v3 setCategoryID:self->_categoryID];
  [v3 setSectionID:self->_sectionID];
  v5 = [(NSArray *)self->_contactIDs mutableCopy];
  [v3 setContactIDs:v5];

  v6 = [(NSArray *)self->_rawIdentifiers mutableCopy];
  [v3 setRawIdentifiers:v6];

  [v3 setIsMessage:self->_isMessage];
  [v3 setSummary:self->_summary];
  [v3 setIsSummarized:self->_isSummarized];
  [v3 setIsPartOfStack:self->_isPartOfStack];
  [v3 setIsStackSummary:self->_isStackSummary];
  [v3 setPositionInStack:self->_positionInStack];
  [v3 setNumberOfNotificationsInStack:self->_numberOfNotificationsInStack];
  [v3 setPriorityStatus:LODWORD(self->_priorityStatus)];
  [v3 setSummaryStatus:LODWORD(self->_summaryStatus)];
  [v3 setIsPriorityNotificationEnabled:self->_isPriorityNotificationEnabled];
  [v3 setIsNotificationSummaryEnabled:self->_isNotificationSummaryEnabled];
  [v3 setIsGroupMessage:self->_isGroupMessage];
  proto = [(ATXUserNotificationDerivedData *)self->_derivedData proto];
  [v3 setDerivedData:proto];

  [v3 setUrgency:LODWORD(self->_urgency)];
  [v3 setAttachmentType:LODWORD(self->_attachmentType)];
  [(ATXUserNotification *)self appSpecifiedScore];
  [v3 setAppSpecifiedScore:?];
  digestEngagementTrackingMetrics = [(ATXUserNotification *)self digestEngagementTrackingMetrics];
  proto2 = [digestEngagementTrackingMetrics proto];
  [v3 setSharedEngagementTracker:proto2];

  recordDate = self->_recordDate;
  if (recordDate)
  {
    [(NSDate *)recordDate timeIntervalSinceReferenceDate];
    [v3 setRecordTimestamp:?];
  }

  [v3 setNotificationID:self->_notificationID];

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXUserNotification *)self proto];
  data = [proto data];

  return data;
}

- (ATXUserNotification)initWithUUID:(id)d timestamp:(double)timestamp
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = ATXUserNotification;
  v7 = [(ATXUserNotification *)&v13 init];
  if (v7)
  {
    v8 = [dCopy copy];
    uuid = v7->_uuid;
    v7->_uuid = v8;

    v7->_timestamp = timestamp;
    v10 = objc_opt_new();
    derivedData = v7->_derivedData;
    v7->_derivedData = v10;
  }

  return v7;
}

- (id)initFromNotificationData:(id)data timestamp:(double)timestamp title:(id)title subtitle:(id)subtitle body:(id)body badge:(unint64_t)badge userInfo:(id)info bundleID:(id)self0 threadID:(id)self1 categoryID:(id)self2 sectionID:(id)self3 contactIDs:(id)self4 rawIdentifiers:(id)self5 isGroupMessage:(BOOL)self6 derivedData:(id)self7 urgency:(int64_t)self8
{
  dataCopy = data;
  titleCopy = title;
  subtitleCopy = subtitle;
  bodyCopy = body;
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  categoryIDCopy = categoryID;
  sectionIDCopy = sectionID;
  dsCopy = ds;
  identifiersCopy = identifiers;
  derivedDataCopy = derivedData;
  v63.receiver = self;
  v63.super_class = ATXUserNotification;
  v32 = [(ATXUserNotification *)&v63 init];
  if (v32)
  {
    v33 = [dataCopy copy];
    uuid = v32->_uuid;
    v32->_uuid = v33;

    v32->_timestamp = timestamp;
    v35 = [titleCopy copy];
    title = v32->_title;
    v32->_title = v35;

    v37 = [subtitleCopy copy];
    subtitle = v32->_subtitle;
    v32->_subtitle = v37;

    v39 = [bodyCopy copy];
    body = v32->_body;
    v32->_body = v39;

    v32->_badge = badge;
    v41 = [infoCopy copy];
    userInfo = v32->_userInfo;
    v32->_userInfo = v41;

    v43 = [dCopy copy];
    bundleID = v32->_bundleID;
    v32->_bundleID = v43;

    v45 = [iDCopy copy];
    threadID = v32->_threadID;
    v32->_threadID = v45;

    v47 = [categoryIDCopy copy];
    categoryID = v32->_categoryID;
    v32->_categoryID = v47;

    v49 = [sectionIDCopy copy];
    sectionID = v32->_sectionID;
    v32->_sectionID = v49;

    v51 = [dsCopy copy];
    contactIDs = v32->_contactIDs;
    v32->_contactIDs = v51;

    v53 = [identifiersCopy copy];
    rawIdentifiers = v32->_rawIdentifiers;
    v32->_rawIdentifiers = v53;

    v32->_isGroupMessage = message;
    v32->_urgency = urgency;
    if (derivedDataCopy)
    {
      v55 = [derivedDataCopy copy];
    }

    else
    {
      v55 = objc_opt_new();
    }

    derivedData = v32->_derivedData;
    v32->_derivedData = v55;
  }

  return v32;
}

- (id)initFromNotificationData:(id)data timestamp:(double)timestamp title:(id)title subtitle:(id)subtitle body:(id)body badge:(unint64_t)badge userInfo:(id)info bundleID:(id)self0 threadID:(id)self1 categoryID:(id)self2 sectionID:(id)self3 contactIDs:(id)self4 isGroupMessage:(BOOL)self5 derivedData:(id)self6 urgency:(int64_t)self7
{
  if (timestamp == 0.0)
  {
    v45 = MEMORY[0x1E695DF00];
    derivedDataCopy = derivedData;
    dsCopy = ds;
    sectionIDCopy = sectionID;
    iDCopy = iD;
    dCopy = d;
    infoCopy = info;
    bodyCopy = body;
    subtitleCopy = subtitle;
    titleCopy = title;
    dataCopy = data;
    v46 = [v45 now];
    [v46 timeIntervalSinceReferenceDate];
    LOBYTE(v40) = message;
    v50 = [(ATXUserNotification *)self initFromNotificationData:dataCopy timestamp:titleCopy title:subtitleCopy subtitle:bodyCopy body:badge badge:infoCopy userInfo:dCopy bundleID:iDCopy threadID:0 categoryID:sectionIDCopy sectionID:dsCopy contactIDs:0 rawIdentifiers:v40 isGroupMessage:derivedDataCopy derivedData:urgency urgency:?];

    v29 = v50;
  }

  else
  {
    derivedDataCopy2 = derivedData;
    dsCopy2 = ds;
    sectionIDCopy2 = sectionID;
    iDCopy2 = iD;
    dCopy2 = d;
    infoCopy2 = info;
    bodyCopy2 = body;
    subtitleCopy2 = subtitle;
    titleCopy2 = title;
    dataCopy2 = data;
    LOBYTE(v40) = message;
    v51 = [(ATXUserNotification *)self initFromNotificationData:dataCopy2 timestamp:titleCopy2 title:subtitleCopy2 subtitle:bodyCopy2 body:badge badge:infoCopy2 userInfo:timestamp bundleID:dCopy2 threadID:iDCopy2 categoryID:0 sectionID:sectionIDCopy2 contactIDs:dsCopy2 rawIdentifiers:0 isGroupMessage:v40 derivedData:derivedDataCopy2 urgency:urgency];

    v29 = v51;
  }

  return v29;
}

- (id)initFromNotificationData:(id)data timestamp:(double)timestamp title:(id)title subtitle:(id)subtitle body:(id)body badge:(unint64_t)badge userInfo:(id)info bundleID:(id)self0 threadID:(id)self1 sectionID:(id)self2 contactIDs:(id)self3 isGroupMessage:(BOOL)self4 derivedData:(id)self5 urgency:(int64_t)self6
{
  if (timestamp == 0.0)
  {
    v44 = MEMORY[0x1E695DF00];
    derivedDataCopy = derivedData;
    dsCopy = ds;
    sectionIDCopy = sectionID;
    iDCopy = iD;
    dCopy = d;
    infoCopy = info;
    bodyCopy = body;
    subtitleCopy = subtitle;
    titleCopy = title;
    dataCopy = data;
    v45 = [v44 now];
    [v45 timeIntervalSinceReferenceDate];
    LOBYTE(v39) = message;
    v49 = [(ATXUserNotification *)self initFromNotificationData:dataCopy timestamp:titleCopy title:subtitleCopy subtitle:bodyCopy body:badge badge:infoCopy userInfo:dCopy bundleID:iDCopy threadID:0 categoryID:sectionIDCopy sectionID:dsCopy contactIDs:v39 isGroupMessage:derivedDataCopy derivedData:urgency urgency:?];

    v28 = v49;
  }

  else
  {
    derivedDataCopy2 = derivedData;
    dsCopy2 = ds;
    sectionIDCopy2 = sectionID;
    iDCopy2 = iD;
    dCopy2 = d;
    infoCopy2 = info;
    bodyCopy2 = body;
    subtitleCopy2 = subtitle;
    titleCopy2 = title;
    dataCopy2 = data;
    LOBYTE(v39) = message;
    v50 = [(ATXUserNotification *)self initFromNotificationData:dataCopy2 timestamp:titleCopy2 title:subtitleCopy2 subtitle:bodyCopy2 body:badge badge:infoCopy2 userInfo:timestamp bundleID:dCopy2 threadID:iDCopy2 categoryID:0 sectionID:sectionIDCopy2 contactIDs:dsCopy2 isGroupMessage:v39 derivedData:derivedDataCopy2 urgency:urgency];

    v28 = v50;
  }

  return v28;
}

- (id)initFromNotificationData:(id)data timestamp:(double)timestamp title:(id)title subtitle:(id)subtitle body:(id)body badge:(unint64_t)badge userInfo:(id)info bundleID:(id)self0 threadID:(id)self1 categoryID:(id)self2 sectionID:(id)self3 contactIDs:(id)self4 isGroupMessage:(BOOL)self5 derivedData:(id)self6
{
  if (timestamp == 0.0)
  {
    v41 = MEMORY[0x1E695DF00];
    derivedDataCopy = derivedData;
    dsCopy = ds;
    sectionIDCopy = sectionID;
    categoryIDCopy = categoryID;
    titleCopy = title;
    iDCopy = iD;
    dCopy = d;
    infoCopy = info;
    bodyCopy = body;
    subtitleCopy = subtitle;
    v46 = titleCopy;
    dataCopy = data;
    v49 = [v41 now];
    [v49 timeIntervalSinceReferenceDate];
    LOBYTE(v36) = message;
    v52 = [(ATXUserNotification *)self initFromNotificationData:dataCopy timestamp:v46 title:subtitleCopy subtitle:bodyCopy body:badge badge:infoCopy userInfo:dCopy bundleID:iDCopy threadID:categoryIDCopy categoryID:sectionIDCopy sectionID:dsCopy contactIDs:v36 isGroupMessage:derivedDataCopy derivedData:4 urgency:?];

    v27 = v52;
  }

  else
  {
    derivedDataCopy2 = derivedData;
    dsCopy2 = ds;
    sectionIDCopy2 = sectionID;
    categoryIDCopy2 = categoryID;
    iDCopy2 = iD;
    dCopy2 = d;
    infoCopy2 = info;
    bodyCopy2 = body;
    subtitleCopy2 = subtitle;
    titleCopy2 = title;
    dataCopy2 = data;
    LOBYTE(v36) = message;
    v53 = [(ATXUserNotification *)self initFromNotificationData:dataCopy2 timestamp:titleCopy2 title:subtitleCopy2 subtitle:bodyCopy2 body:badge badge:infoCopy2 userInfo:timestamp bundleID:dCopy2 threadID:iDCopy2 categoryID:categoryIDCopy2 sectionID:sectionIDCopy2 contactIDs:dsCopy2 isGroupMessage:v36 derivedData:derivedDataCopy2 urgency:4];

    v27 = v53;
  }

  return v27;
}

- (id)initFromNotificationData:(id)data date:(id)date title:(id)title subtitle:(id)subtitle body:(id)body bundleID:(id)d threadID:(id)iD categoryID:(id)self0
{
  dateCopy = date;
  v16 = MEMORY[0x1E696AFB0];
  categoryIDCopy = categoryID;
  iDCopy = iD;
  dCopy = d;
  bodyCopy = body;
  subtitleCopy = subtitle;
  titleCopy = title;
  dataCopy = data;
  v24 = [[v16 alloc] initWithUUIDString:dataCopy];

  v25 = dateCopy;
  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    LOBYTE(v31) = 0;
    v26 = [(ATXUserNotification *)self initFromNotificationData:v24 timestamp:titleCopy title:subtitleCopy subtitle:bodyCopy body:0 badge:0 userInfo:dCopy bundleID:iDCopy threadID:categoryIDCopy categoryID:0 sectionID:0 contactIDs:v31 isGroupMessage:0 derivedData:?];

    v27 = v26;
  }

  else
  {
    v28 = [MEMORY[0x1E695DF00] now];
    [v28 timeIntervalSinceReferenceDate];
    LOBYTE(v31) = 0;
    v29 = [(ATXUserNotification *)self initFromNotificationData:v24 timestamp:titleCopy title:subtitleCopy subtitle:bodyCopy body:0 badge:0 userInfo:dCopy bundleID:iDCopy threadID:categoryIDCopy categoryID:0 sectionID:0 contactIDs:v31 isGroupMessage:0 derivedData:?];

    v27 = v29;
  }

  return v27;
}

- (int64_t)compareForDigestRanking:(id)ranking
{
  rankingCopy = ranking;
  digestRankingHardcodedComparisonValue = [(ATXUserNotification *)self digestRankingHardcodedComparisonValue];
  digestRankingHardcodedComparisonValue2 = [rankingCopy digestRankingHardcodedComparisonValue];
  v7 = [digestRankingHardcodedComparisonValue compare:digestRankingHardcodedComparisonValue2];

  if (!v7)
  {
    v8 = MEMORY[0x1E696AD98];
    [(ATXUserNotification *)self appSpecifiedScore];
    v9 = [v8 numberWithDouble:?];
    v10 = MEMORY[0x1E696AD98];
    [rankingCopy appSpecifiedScore];
    v11 = [v10 numberWithDouble:?];
    v7 = [v9 compare:v11];

    if (!v7)
    {
      v12 = MEMORY[0x1E696AD98];
      [(ATXUserNotification *)self timestamp];
      v13 = [v12 numberWithDouble:?];
      v14 = MEMORY[0x1E696AD98];
      [rankingCopy timestamp];
      v15 = [v14 numberWithDouble:?];
      v7 = [v13 compare:v15];
    }
  }

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUserNotification *)self isEqualToATXUserNotification:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUserNotification:(id)notification
{
  notificationCopy = notification;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == notificationCopy[3])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v8 = self->_title;
  v9 = v8;
  if (v8 == notificationCopy[6])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v11 = self->_subtitle;
  v12 = v11;
  if (v11 == notificationCopy[7])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v14 = self->_body;
  v15 = v14;
  if (v14 == notificationCopy[8])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  if (self->_badge != notificationCopy[9])
  {
    goto LABEL_53;
  }

  v17 = self->_userInfo;
  v18 = v17;
  if (v17 == notificationCopy[10])
  {
  }

  else
  {
    v19 = [(NSData *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v20 = self->_bundleID;
  v21 = v20;
  if (v20 == notificationCopy[11])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v23 = self->_threadID;
  v24 = v23;
  if (v23 == notificationCopy[12])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v26 = self->_categoryID;
  v27 = v26;
  if (v26 == notificationCopy[13])
  {
  }

  else
  {
    v28 = [(NSString *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v29 = self->_sectionID;
  v30 = v29;
  if (v29 == notificationCopy[14])
  {
  }

  else
  {
    v31 = [(NSString *)v29 isEqual:?];

    if ((v31 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v32 = self->_contactIDs;
  v33 = v32;
  if (v32 == notificationCopy[15])
  {
  }

  else
  {
    v34 = [(NSArray *)v32 isEqual:?];

    if ((v34 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v35 = self->_rawIdentifiers;
  v36 = v35;
  if (v35 == notificationCopy[16])
  {
  }

  else
  {
    v37 = [(NSArray *)v35 isEqual:?];

    if ((v37 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  if (self->_isGroupMessage != *(notificationCopy + 9))
  {
LABEL_53:
    v44 = 0;
    goto LABEL_54;
  }

  v38 = self->_derivedData;
  v39 = v38;
  if (v38 == notificationCopy[20])
  {
  }

  else
  {
    v40 = [(ATXUserNotificationDerivedData *)v38 isEqual:?];

    if (!v40)
    {
      goto LABEL_53;
    }
  }

  v41 = self->_recordDate;
  v42 = v41;
  if (v41 == notificationCopy[4])
  {
  }

  else
  {
    v43 = [(NSDate *)v41 isEqual:?];

    if ((v43 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v46 = self->_notificationID;
  v47 = v46;
  if (v46 == notificationCopy[5])
  {
    v44 = 1;
  }

  else
  {
    v44 = [(NSString *)v46 isEqual:?];
  }

LABEL_54:
  return v44;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"User notification: {uuid: %@}, {bundle-id: %@}, {thread-id: %@}, {category-id: %@}, {section-id: %@}, {contact-ids: %@}, {is group message: %d}, {is part of stack: %d}, {number of notifications in Stack: %d}  {is summarized: %d}, {summary: %@}, {is stack summary: %d}, {priority status: %d}, {summary status: %d}, {is priority notification enabled: %d}, {is notification summary enabled: %d}, {title length: %d}, {subtitle length: %d}, {body length: %d}, {summary length: %d}, ", self->_uuid, self->_bundleID, self->_threadID, self->_categoryID, self->_sectionID, self->_contactIDs, self->_isGroupMessage, self->_isPartOfStack, self->_numberOfNotificationsInStack, self->_isSummarized, self->_summary, self->_isStackSummary, self->_priorityStatus, self->_summaryStatus, self->_isPriorityNotificationEnabled, self->_isNotificationSummaryEnabled, -[NSString length](self->_title, "length"), -[NSString length](self->_subtitle, "length"), -[NSString length](self->_body, "length"), -[NSString length](self->_summary, "length")];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXUserNotification allocWithZone:zone];
  LOBYTE(v12) = self->_isGroupMessage;
  v5 = [(ATXUserNotification *)v4 initFromNotificationData:self->_uuid timestamp:self->_title title:self->_subtitle subtitle:self->_body body:self->_badge badge:self->_userInfo userInfo:self->_timestamp bundleID:self->_bundleID threadID:self->_threadID categoryID:self->_categoryID sectionID:self->_sectionID contactIDs:self->_contactIDs rawIdentifiers:self->_rawIdentifiers isGroupMessage:v12 derivedData:self->_derivedData urgency:self->_urgency];
  [v5 setIsMessage:{-[ATXUserNotification isMessage](self, "isMessage")}];
  summary = [(ATXUserNotification *)self summary];
  [v5 setSummary:summary];

  [v5 setIsSummarized:{-[ATXUserNotification isSummarized](self, "isSummarized")}];
  [v5 setIsPartOfStack:{-[ATXUserNotification isPartOfStack](self, "isPartOfStack")}];
  [v5 setIsStackSummary:{-[ATXUserNotification isStackSummary](self, "isStackSummary")}];
  [v5 setPositionInStack:{-[ATXUserNotification positionInStack](self, "positionInStack")}];
  [v5 setNumberOfNotificationsInStack:{-[ATXUserNotification numberOfNotificationsInStack](self, "numberOfNotificationsInStack")}];
  [v5 setAttachmentType:{-[ATXUserNotification attachmentType](self, "attachmentType")}];
  [(ATXUserNotification *)self appSpecifiedScore];
  [v5 setAppSpecifiedScore:?];
  digestEngagementTrackingMetrics = [(ATXUserNotification *)self digestEngagementTrackingMetrics];
  v8 = [digestEngagementTrackingMetrics copy];
  [v5 setDigestEngagementTrackingMetrics:v8];

  recordDate = [(ATXUserNotification *)self recordDate];
  [v5 setRecordDate:recordDate];

  notificationID = [(ATXUserNotification *)self notificationID];
  [v5 setNotificationID:notificationID];

  [v5 setPriorityStatus:{-[ATXUserNotification priorityStatus](self, "priorityStatus")}];
  [v5 setSummaryStatus:{-[ATXUserNotification summaryStatus](self, "summaryStatus")}];
  [v5 setIsPriorityNotificationEnabled:{-[ATXUserNotification isPriorityNotificationEnabled](self, "isPriorityNotificationEnabled")}];
  [v5 setIsNotificationSummaryEnabled:{-[ATXUserNotification isNotificationSummaryEnabled](self, "isNotificationSummaryEnabled")}];
  return v5;
}

- (double)finalDigestScoreForMode:(id)mode
{
  modeCopy = mode;
  v5 = objc_opt_new();
  [v5 getDigestScoreForNotification:self modeId:modeCopy];
  v7 = v6;

  return v7;
}

- (id)groupId
{
  threadID = self->_threadID;
  if (threadID || (threadID = self->_bundleID) != 0)
  {
    uUIDString = threadID;
  }

  else
  {
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
  }

  return uUIDString;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUserNotification alloc] initFromJSON:nCopy];

  v6 = [(ATXUserNotification *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUserNotification *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (ATXUserNotification)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUserNotification alloc] initWithData:dataCopy];

    self = [(ATXUserNotification *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXUserNotification)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXMissedNotificationRanking initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_25;
    }

    v43 = protoCopy;
    v5 = protoCopy;
    derivedData = [v5 derivedData];

    if (derivedData)
    {
      derivedData2 = [v5 derivedData];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [ATXUserNotificationDerivedData alloc];
        derivedData3 = [v5 derivedData];
        v11 = [(ATXUserNotificationDerivedData *)v9 initWithProto:derivedData3];

LABEL_14:
        v14 = objc_alloc(MEMORY[0x1E696AFB0]);
        uuid = [v5 uuid];
        v41 = [v14 initWithUUIDString:uuid];
        [v5 timestamp];
        v16 = v15;
        title = [v5 title];
        subtitle = [v5 subtitle];
        body = [v5 body];
        badge = [v5 badge];
        userInfo = [v5 userInfo];
        bundleID = [v5 bundleID];
        threadID = [v5 threadID];
        categoryID = [v5 categoryID];
        sectionID = [v5 sectionID];
        contactIDs = [v5 contactIDs];
        rawIdentifiers = [v5 rawIdentifiers];
        LOBYTE(v32) = [v5 isGroupMessage];
        v20 = [(ATXUserNotification *)self initFromNotificationData:v41 timestamp:title title:subtitle subtitle:body body:badge badge:userInfo userInfo:v16 bundleID:bundleID threadID:threadID categoryID:categoryID sectionID:sectionID contactIDs:contactIDs rawIdentifiers:rawIdentifiers isGroupMessage:v32 derivedData:v11 urgency:[v5 urgency]];

        [v20 setIsMessage:{-[NSObject isMessage](v5, "isMessage")}];
        summary = [v5 summary];
        [v20 setSummary:summary];

        [v20 setIsSummarized:{-[NSObject isSummarized](v5, "isSummarized")}];
        [v20 setIsPartOfStack:{-[NSObject isPartOfStack](v5, "isPartOfStack")}];
        [v20 setIsStackSummary:{-[NSObject isStackSummary](v5, "isStackSummary")}];
        [v20 setPositionInStack:{-[NSObject positionInStack](v5, "positionInStack")}];
        [v20 setNumberOfNotificationsInStack:{-[NSObject numberOfNotificationsInStack](v5, "numberOfNotificationsInStack")}];
        [v20 setAttachmentType:{-[NSObject attachmentType](v5, "attachmentType")}];
        [v5 appSpecifiedScore];
        [v20 setAppSpecifiedScore:?];
        [v20 setPriorityStatus:{-[NSObject priorityStatus](v5, "priorityStatus")}];
        [v20 setSummaryStatus:{-[NSObject summaryStatus](v5, "summaryStatus")}];
        [v20 setIsPriorityNotificationEnabled:{-[NSObject isPriorityNotificationEnabled](v5, "isPriorityNotificationEnabled")}];
        [v20 setIsNotificationSummaryEnabled:{-[NSObject isNotificationSummaryEnabled](v5, "isNotificationSummaryEnabled")}];
        sharedEngagementTracker = [v5 sharedEngagementTracker];

        if (sharedEngagementTracker)
        {
          sharedEngagementTracker2 = [v5 sharedEngagementTracker];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          if (v24)
          {
            v25 = [ATXSharedDigestEngagementTrackingMetrics alloc];
            sharedEngagementTracker3 = [v5 sharedEngagementTracker];
            v27 = [(ATXSharedDigestEngagementTrackingMetrics *)v25 initWithProto:sharedEngagementTracker3];
            [v20 setDigestEngagementTrackingMetrics:v27];
          }

          else
          {
            sharedEngagementTracker3 = __atxlog_handle_notification_management();
            if (os_log_type_enabled(sharedEngagementTracker3, OS_LOG_TYPE_FAULT))
            {
              [ATXMissedNotificationRanking initWithProto:];
            }
          }
        }

        if ([v5 hasRecordTimestamp])
        {
          v28 = MEMORY[0x1E695DF00];
          [v5 recordTimestamp];
          v29 = [v28 dateWithTimeIntervalSinceReferenceDate:?];
          [v20 setRecordDate:v29];
        }

        protoCopy = v43;
        if ([v5 hasNotificationID])
        {
          notificationID = [v5 notificationID];
          [v20 setNotificationID:notificationID];
        }

        self = v20;

        selfCopy = self;
LABEL_25:

        goto LABEL_26;
      }

      v13 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [ATXMissedNotificationRanking initWithProto:];
      }
    }

    v11 = 0;
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_26:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUserNotification *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUserNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotification *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end