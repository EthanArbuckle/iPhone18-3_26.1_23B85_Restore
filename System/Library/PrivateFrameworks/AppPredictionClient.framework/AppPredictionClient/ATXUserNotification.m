@interface ATXUserNotification
- (ATXUserNotification)initWithCoder:(id)a3;
- (ATXUserNotification)initWithProto:(id)a3;
- (ATXUserNotification)initWithProtoData:(id)a3;
- (ATXUserNotification)initWithUUID:(id)a3 timestamp:(double)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUserNotification:(id)a3;
- (double)finalDigestScoreForMode:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProto;
- (id)groupId;
- (id)initFromJSON:(id)a3;
- (id)initFromNotificationData:(id)a3 date:(id)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 bundleID:(id)a8 threadID:(id)a9 categoryID:(id)a10;
- (id)initFromNotificationData:(id)a3 timestamp:(double)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 badge:(unint64_t)a8 userInfo:(id)a9 bundleID:(id)a10 threadID:(id)a11 categoryID:(id)a12 sectionID:(id)a13 contactIDs:(id)a14 isGroupMessage:(BOOL)a15 derivedData:(id)a16;
- (id)initFromNotificationData:(id)a3 timestamp:(double)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 badge:(unint64_t)a8 userInfo:(id)a9 bundleID:(id)a10 threadID:(id)a11 categoryID:(id)a12 sectionID:(id)a13 contactIDs:(id)a14 isGroupMessage:(BOOL)a15 derivedData:(id)a16 urgency:(int64_t)a17;
- (id)initFromNotificationData:(id)a3 timestamp:(double)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 badge:(unint64_t)a8 userInfo:(id)a9 bundleID:(id)a10 threadID:(id)a11 categoryID:(id)a12 sectionID:(id)a13 contactIDs:(id)a14 rawIdentifiers:(id)a15 isGroupMessage:(BOOL)a16 derivedData:(id)a17 urgency:(int64_t)a18;
- (id)initFromNotificationData:(id)a3 timestamp:(double)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 badge:(unint64_t)a8 userInfo:(id)a9 bundleID:(id)a10 threadID:(id)a11 sectionID:(id)a12 contactIDs:(id)a13 isGroupMessage:(BOOL)a14 derivedData:(id)a15 urgency:(int64_t)a16;
- (id)jsonRepresentation;
- (id)proto;
- (int64_t)compareForDigestRanking:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUserNotification

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuid:v4];

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
  v7 = [(ATXUserNotificationDerivedData *)self->_derivedData proto];
  [v3 setDerivedData:v7];

  [v3 setUrgency:LODWORD(self->_urgency)];
  [v3 setAttachmentType:LODWORD(self->_attachmentType)];
  [(ATXUserNotification *)self appSpecifiedScore];
  [v3 setAppSpecifiedScore:?];
  v8 = [(ATXUserNotification *)self digestEngagementTrackingMetrics];
  v9 = [v8 proto];
  [v3 setSharedEngagementTracker:v9];

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
  v2 = [(ATXUserNotification *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXUserNotification)initWithUUID:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = ATXUserNotification;
  v7 = [(ATXUserNotification *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    uuid = v7->_uuid;
    v7->_uuid = v8;

    v7->_timestamp = a4;
    v10 = objc_opt_new();
    derivedData = v7->_derivedData;
    v7->_derivedData = v10;
  }

  return v7;
}

- (id)initFromNotificationData:(id)a3 timestamp:(double)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 badge:(unint64_t)a8 userInfo:(id)a9 bundleID:(id)a10 threadID:(id)a11 categoryID:(id)a12 sectionID:(id)a13 contactIDs:(id)a14 rawIdentifiers:(id)a15 isGroupMessage:(BOOL)a16 derivedData:(id)a17 urgency:(int64_t)a18
{
  v62 = a3;
  v61 = a5;
  v60 = a6;
  v23 = a7;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a17;
  v63.receiver = self;
  v63.super_class = ATXUserNotification;
  v32 = [(ATXUserNotification *)&v63 init];
  if (v32)
  {
    v33 = [v62 copy];
    uuid = v32->_uuid;
    v32->_uuid = v33;

    v32->_timestamp = a4;
    v35 = [v61 copy];
    title = v32->_title;
    v32->_title = v35;

    v37 = [v60 copy];
    subtitle = v32->_subtitle;
    v32->_subtitle = v37;

    v39 = [v23 copy];
    body = v32->_body;
    v32->_body = v39;

    v32->_badge = a8;
    v41 = [v24 copy];
    userInfo = v32->_userInfo;
    v32->_userInfo = v41;

    v43 = [v25 copy];
    bundleID = v32->_bundleID;
    v32->_bundleID = v43;

    v45 = [v26 copy];
    threadID = v32->_threadID;
    v32->_threadID = v45;

    v47 = [v27 copy];
    categoryID = v32->_categoryID;
    v32->_categoryID = v47;

    v49 = [v28 copy];
    sectionID = v32->_sectionID;
    v32->_sectionID = v49;

    v51 = [v29 copy];
    contactIDs = v32->_contactIDs;
    v32->_contactIDs = v51;

    v53 = [v30 copy];
    rawIdentifiers = v32->_rawIdentifiers;
    v32->_rawIdentifiers = v53;

    v32->_isGroupMessage = a16;
    v32->_urgency = a18;
    if (v31)
    {
      v55 = [v31 copy];
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

- (id)initFromNotificationData:(id)a3 timestamp:(double)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 badge:(unint64_t)a8 userInfo:(id)a9 bundleID:(id)a10 threadID:(id)a11 categoryID:(id)a12 sectionID:(id)a13 contactIDs:(id)a14 isGroupMessage:(BOOL)a15 derivedData:(id)a16 urgency:(int64_t)a17
{
  if (a4 == 0.0)
  {
    v45 = MEMORY[0x1E695DF00];
    v43 = a16;
    v22 = a14;
    v42 = a13;
    v41 = a11;
    v23 = a10;
    v24 = a9;
    v25 = a7;
    v26 = a6;
    v27 = a5;
    v28 = a3;
    v46 = [v45 now];
    [v46 timeIntervalSinceReferenceDate];
    LOBYTE(v40) = a15;
    v50 = [(ATXUserNotification *)self initFromNotificationData:v28 timestamp:v27 title:v26 subtitle:v25 body:a8 badge:v24 userInfo:v23 bundleID:v41 threadID:0 categoryID:v42 sectionID:v22 contactIDs:0 rawIdentifiers:v40 isGroupMessage:v43 derivedData:a17 urgency:?];

    v29 = v50;
  }

  else
  {
    v47 = a16;
    v31 = a14;
    v44 = a13;
    v32 = a11;
    v33 = a10;
    v34 = a9;
    v35 = a7;
    v36 = a6;
    v37 = a5;
    v38 = a3;
    LOBYTE(v40) = a15;
    v51 = [(ATXUserNotification *)self initFromNotificationData:v38 timestamp:v37 title:v36 subtitle:v35 body:a8 badge:v34 userInfo:a4 bundleID:v33 threadID:v32 categoryID:0 sectionID:v44 contactIDs:v31 rawIdentifiers:0 isGroupMessage:v40 derivedData:v47 urgency:a17];

    v29 = v51;
  }

  return v29;
}

- (id)initFromNotificationData:(id)a3 timestamp:(double)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 badge:(unint64_t)a8 userInfo:(id)a9 bundleID:(id)a10 threadID:(id)a11 sectionID:(id)a12 contactIDs:(id)a13 isGroupMessage:(BOOL)a14 derivedData:(id)a15 urgency:(int64_t)a16
{
  if (a4 == 0.0)
  {
    v44 = MEMORY[0x1E695DF00];
    v42 = a15;
    v21 = a13;
    v41 = a12;
    v40 = a11;
    v22 = a10;
    v23 = a9;
    v24 = a7;
    v25 = a6;
    v26 = a5;
    v27 = a3;
    v45 = [v44 now];
    [v45 timeIntervalSinceReferenceDate];
    LOBYTE(v39) = a14;
    v49 = [(ATXUserNotification *)self initFromNotificationData:v27 timestamp:v26 title:v25 subtitle:v24 body:a8 badge:v23 userInfo:v22 bundleID:v40 threadID:0 categoryID:v41 sectionID:v21 contactIDs:v39 isGroupMessage:v42 derivedData:a16 urgency:?];

    v28 = v49;
  }

  else
  {
    v46 = a15;
    v30 = a13;
    v43 = a12;
    v31 = a11;
    v32 = a10;
    v33 = a9;
    v34 = a7;
    v35 = a6;
    v36 = a5;
    v37 = a3;
    LOBYTE(v39) = a14;
    v50 = [(ATXUserNotification *)self initFromNotificationData:v37 timestamp:v36 title:v35 subtitle:v34 body:a8 badge:v33 userInfo:a4 bundleID:v32 threadID:v31 categoryID:0 sectionID:v43 contactIDs:v30 isGroupMessage:v39 derivedData:v46 urgency:a16];

    v28 = v50;
  }

  return v28;
}

- (id)initFromNotificationData:(id)a3 timestamp:(double)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 badge:(unint64_t)a8 userInfo:(id)a9 bundleID:(id)a10 threadID:(id)a11 categoryID:(id)a12 sectionID:(id)a13 contactIDs:(id)a14 isGroupMessage:(BOOL)a15 derivedData:(id)a16
{
  if (a4 == 0.0)
  {
    v41 = MEMORY[0x1E695DF00];
    v43 = a16;
    v19 = a14;
    v20 = a13;
    v39 = a12;
    v21 = a5;
    v22 = a11;
    v23 = a10;
    v37 = a9;
    v24 = a7;
    v25 = a6;
    v46 = v21;
    v26 = a3;
    v49 = [v41 now];
    [v49 timeIntervalSinceReferenceDate];
    LOBYTE(v36) = a15;
    v52 = [(ATXUserNotification *)self initFromNotificationData:v26 timestamp:v46 title:v25 subtitle:v24 body:a8 badge:v37 userInfo:v23 bundleID:v22 threadID:v39 categoryID:v20 sectionID:v19 contactIDs:v36 isGroupMessage:v43 derivedData:4 urgency:?];

    v27 = v52;
  }

  else
  {
    v44 = a16;
    v29 = a14;
    v30 = a13;
    v42 = a12;
    v40 = a11;
    v31 = a10;
    v38 = a9;
    v32 = a7;
    v47 = a6;
    v33 = a5;
    v34 = a3;
    LOBYTE(v36) = a15;
    v53 = [(ATXUserNotification *)self initFromNotificationData:v34 timestamp:v33 title:v47 subtitle:v32 body:a8 badge:v38 userInfo:a4 bundleID:v31 threadID:v40 categoryID:v42 sectionID:v30 contactIDs:v29 isGroupMessage:v36 derivedData:v44 urgency:4];

    v27 = v53;
  }

  return v27;
}

- (id)initFromNotificationData:(id)a3 date:(id)a4 title:(id)a5 subtitle:(id)a6 body:(id)a7 bundleID:(id)a8 threadID:(id)a9 categoryID:(id)a10
{
  v15 = a4;
  v16 = MEMORY[0x1E696AFB0];
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = [[v16 alloc] initWithUUIDString:v23];

  v25 = v15;
  if (v15)
  {
    [v15 timeIntervalSinceReferenceDate];
    LOBYTE(v31) = 0;
    v26 = [(ATXUserNotification *)self initFromNotificationData:v24 timestamp:v22 title:v21 subtitle:v20 body:0 badge:0 userInfo:v19 bundleID:v18 threadID:v17 categoryID:0 sectionID:0 contactIDs:v31 isGroupMessage:0 derivedData:?];

    v27 = v26;
  }

  else
  {
    v28 = [MEMORY[0x1E695DF00] now];
    [v28 timeIntervalSinceReferenceDate];
    LOBYTE(v31) = 0;
    v29 = [(ATXUserNotification *)self initFromNotificationData:v24 timestamp:v22 title:v21 subtitle:v20 body:0 badge:0 userInfo:v19 bundleID:v18 threadID:v17 categoryID:0 sectionID:0 contactIDs:v31 isGroupMessage:0 derivedData:?];

    v27 = v29;
  }

  return v27;
}

- (int64_t)compareForDigestRanking:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotification *)self digestRankingHardcodedComparisonValue];
  v6 = [v4 digestRankingHardcodedComparisonValue];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = MEMORY[0x1E696AD98];
    [(ATXUserNotification *)self appSpecifiedScore];
    v9 = [v8 numberWithDouble:?];
    v10 = MEMORY[0x1E696AD98];
    [v4 appSpecifiedScore];
    v11 = [v10 numberWithDouble:?];
    v7 = [v9 compare:v11];

    if (!v7)
    {
      v12 = MEMORY[0x1E696AD98];
      [(ATXUserNotification *)self timestamp];
      v13 = [v12 numberWithDouble:?];
      v14 = MEMORY[0x1E696AD98];
      [v4 timestamp];
      v15 = [v14 numberWithDouble:?];
      v7 = [v13 compare:v15];
    }
  }

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUserNotification *)self isEqualToATXUserNotification:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUserNotification:(id)a3
{
  v4 = a3;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == v4[3])
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
  if (v8 == v4[6])
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
  if (v11 == v4[7])
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
  if (v14 == v4[8])
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

  if (self->_badge != v4[9])
  {
    goto LABEL_53;
  }

  v17 = self->_userInfo;
  v18 = v17;
  if (v17 == v4[10])
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
  if (v20 == v4[11])
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
  if (v23 == v4[12])
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
  if (v26 == v4[13])
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
  if (v29 == v4[14])
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
  if (v32 == v4[15])
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
  if (v35 == v4[16])
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

  if (self->_isGroupMessage != *(v4 + 9))
  {
LABEL_53:
    v44 = 0;
    goto LABEL_54;
  }

  v38 = self->_derivedData;
  v39 = v38;
  if (v38 == v4[20])
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
  if (v41 == v4[4])
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
  if (v46 == v4[5])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXUserNotification allocWithZone:a3];
  LOBYTE(v12) = self->_isGroupMessage;
  v5 = [(ATXUserNotification *)v4 initFromNotificationData:self->_uuid timestamp:self->_title title:self->_subtitle subtitle:self->_body body:self->_badge badge:self->_userInfo userInfo:self->_timestamp bundleID:self->_bundleID threadID:self->_threadID categoryID:self->_categoryID sectionID:self->_sectionID contactIDs:self->_contactIDs rawIdentifiers:self->_rawIdentifiers isGroupMessage:v12 derivedData:self->_derivedData urgency:self->_urgency];
  [v5 setIsMessage:{-[ATXUserNotification isMessage](self, "isMessage")}];
  v6 = [(ATXUserNotification *)self summary];
  [v5 setSummary:v6];

  [v5 setIsSummarized:{-[ATXUserNotification isSummarized](self, "isSummarized")}];
  [v5 setIsPartOfStack:{-[ATXUserNotification isPartOfStack](self, "isPartOfStack")}];
  [v5 setIsStackSummary:{-[ATXUserNotification isStackSummary](self, "isStackSummary")}];
  [v5 setPositionInStack:{-[ATXUserNotification positionInStack](self, "positionInStack")}];
  [v5 setNumberOfNotificationsInStack:{-[ATXUserNotification numberOfNotificationsInStack](self, "numberOfNotificationsInStack")}];
  [v5 setAttachmentType:{-[ATXUserNotification attachmentType](self, "attachmentType")}];
  [(ATXUserNotification *)self appSpecifiedScore];
  [v5 setAppSpecifiedScore:?];
  v7 = [(ATXUserNotification *)self digestEngagementTrackingMetrics];
  v8 = [v7 copy];
  [v5 setDigestEngagementTrackingMetrics:v8];

  v9 = [(ATXUserNotification *)self recordDate];
  [v5 setRecordDate:v9];

  v10 = [(ATXUserNotification *)self notificationID];
  [v5 setNotificationID:v10];

  [v5 setPriorityStatus:{-[ATXUserNotification priorityStatus](self, "priorityStatus")}];
  [v5 setSummaryStatus:{-[ATXUserNotification summaryStatus](self, "summaryStatus")}];
  [v5 setIsPriorityNotificationEnabled:{-[ATXUserNotification isPriorityNotificationEnabled](self, "isPriorityNotificationEnabled")}];
  [v5 setIsNotificationSummaryEnabled:{-[ATXUserNotification isNotificationSummaryEnabled](self, "isNotificationSummaryEnabled")}];
  return v5;
}

- (double)finalDigestScoreForMode:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 getDigestScoreForNotification:self modeId:v4];
  v7 = v6;

  return v7;
}

- (id)groupId
{
  threadID = self->_threadID;
  if (threadID || (threadID = self->_bundleID) != 0)
  {
    v3 = threadID;
  }

  else
  {
    v3 = [(NSUUID *)self->_uuid UUIDString];
  }

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBUserNotification alloc] initFromJSON:v4];

  v6 = [(ATXUserNotification *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXUserNotification *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (ATXUserNotification)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUserNotification alloc] initWithData:v4];

    self = [(ATXUserNotification *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXUserNotification)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXMissedNotificationRanking initWithProto:];
      }

      v12 = 0;
      goto LABEL_25;
    }

    v43 = v4;
    v5 = v4;
    v6 = [v5 derivedData];

    if (v6)
    {
      v7 = [v5 derivedData];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [ATXUserNotificationDerivedData alloc];
        v10 = [v5 derivedData];
        v11 = [(ATXUserNotificationDerivedData *)v9 initWithProto:v10];

LABEL_14:
        v14 = objc_alloc(MEMORY[0x1E696AFB0]);
        v42 = [v5 uuid];
        v41 = [v14 initWithUUIDString:v42];
        [v5 timestamp];
        v16 = v15;
        v38 = [v5 title];
        v40 = [v5 subtitle];
        v39 = [v5 body];
        v37 = [v5 badge];
        v36 = [v5 userInfo];
        v35 = [v5 bundleID];
        v34 = [v5 threadID];
        v33 = [v5 categoryID];
        v17 = [v5 sectionID];
        v18 = [v5 contactIDs];
        v19 = [v5 rawIdentifiers];
        LOBYTE(v32) = [v5 isGroupMessage];
        v20 = [(ATXUserNotification *)self initFromNotificationData:v41 timestamp:v38 title:v40 subtitle:v39 body:v37 badge:v36 userInfo:v16 bundleID:v35 threadID:v34 categoryID:v33 sectionID:v17 contactIDs:v18 rawIdentifiers:v19 isGroupMessage:v32 derivedData:v11 urgency:[v5 urgency]];

        [v20 setIsMessage:{-[NSObject isMessage](v5, "isMessage")}];
        v21 = [v5 summary];
        [v20 setSummary:v21];

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
        v22 = [v5 sharedEngagementTracker];

        if (v22)
        {
          v23 = [v5 sharedEngagementTracker];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          if (v24)
          {
            v25 = [ATXSharedDigestEngagementTrackingMetrics alloc];
            v26 = [v5 sharedEngagementTracker];
            v27 = [(ATXSharedDigestEngagementTrackingMetrics *)v25 initWithProto:v26];
            [v20 setDigestEngagementTrackingMetrics:v27];
          }

          else
          {
            v26 = __atxlog_handle_notification_management();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
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

        v4 = v43;
        if ([v5 hasNotificationID])
        {
          v30 = [v5 notificationID];
          [v20 setNotificationID:v30];
        }

        self = v20;

        v12 = self;
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

  v12 = 0;
LABEL_26:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotification *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUserNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotification *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end