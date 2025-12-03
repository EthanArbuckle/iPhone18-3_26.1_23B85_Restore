@interface ATXPBUserNotification
- (BOOL)isEqual:(id)equal;
- (id)attachmentTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (id)priorityStatusAsString:(int)string;
- (id)summaryStatusAsString:(int)string;
- (id)urgencyAsString:(int)string;
- (int)StringAsAttachmentType:(id)type;
- (int)StringAsPriorityStatus:(id)status;
- (int)StringAsSummaryStatus:(id)status;
- (int)StringAsUrgency:(id)urgency;
- (int)attachmentType;
- (int)priorityStatus;
- (int)summaryStatus;
- (int)urgency;
- (unint64_t)hash;
- (void)addContactIDs:(id)ds;
- (void)addRawIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAttachmentType:(BOOL)type;
- (void)setHasBadge:(BOOL)badge;
- (void)setHasIsGroupMessage:(BOOL)message;
- (void)setHasIsMessage:(BOOL)message;
- (void)setHasIsNotificationSummaryEnabled:(BOOL)enabled;
- (void)setHasIsPartOfStack:(BOOL)stack;
- (void)setHasIsPriorityNotificationEnabled:(BOOL)enabled;
- (void)setHasIsStackSummary:(BOOL)summary;
- (void)setHasIsSummarized:(BOOL)summarized;
- (void)setHasNumberOfNotificationsInStack:(BOOL)stack;
- (void)setHasPositionInStack:(BOOL)stack;
- (void)setHasPriorityStatus:(BOOL)status;
- (void)setHasRecordTimestamp:(BOOL)timestamp;
- (void)setHasSummaryStatus:(BOOL)status;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUrgency:(BOOL)urgency;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUserNotification

- (int)attachmentType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_attachmentType;
  }

  else
  {
    return 0;
  }
}

- (int)priorityStatus
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_priorityStatus;
  }

  else
  {
    return 0;
  }
}

- (int)urgency
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_urgency;
  }

  else
  {
    return 0;
  }
}

- (int)summaryStatus
{
  if (*(&self->_has + 1))
  {
    return self->_summaryStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasBadge:(BOOL)badge
{
  if (badge)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)addContactIDs:(id)ds
{
  dsCopy = ds;
  contactIDs = self->_contactIDs;
  v8 = dsCopy;
  if (!contactIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contactIDs;
    self->_contactIDs = v6;

    dsCopy = v8;
    contactIDs = self->_contactIDs;
  }

  [(NSMutableArray *)contactIDs addObject:dsCopy];
}

- (void)addRawIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  rawIdentifiers = self->_rawIdentifiers;
  v8 = identifiersCopy;
  if (!rawIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rawIdentifiers;
    self->_rawIdentifiers = v6;

    identifiersCopy = v8;
    rawIdentifiers = self->_rawIdentifiers;
  }

  [(NSMutableArray *)rawIdentifiers addObject:identifiersCopy];
}

- (void)setHasIsMessage:(BOOL)message
{
  if (message)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasIsGroupMessage:(BOOL)message
{
  if (message)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasUrgency:(BOOL)urgency
{
  if (urgency)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (id)urgencyAsString:(int)string
{
  if (string >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C29F0[string];
  }

  return v4;
}

- (int)StringAsUrgency:(id)urgency
{
  urgencyCopy = urgency;
  if ([urgencyCopy isEqualToString:@"Critical"])
  {
    v4 = 0;
  }

  else if ([urgencyCopy isEqualToString:@"TimeSensitive"])
  {
    v4 = 1;
  }

  else if ([urgencyCopy isEqualToString:@"Active"])
  {
    v4 = 2;
  }

  else if ([urgencyCopy isEqualToString:@"Passive"])
  {
    v4 = 3;
  }

  else if ([urgencyCopy isEqualToString:@"None"])
  {
    v4 = 4;
  }

  else if ([urgencyCopy isEqualToString:@"Priority"])
  {
    v4 = 5;
  }

  else if ([urgencyCopy isEqualToString:@"Total"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAttachmentType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (id)attachmentTypeAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C2A28[string];
  }

  return v4;
}

- (int)StringAsAttachmentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Image"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Audio"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Video"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Other"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Total"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRecordTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasIsSummarized:(BOOL)summarized
{
  if (summarized)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsPartOfStack:(BOOL)stack
{
  if (stack)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasIsStackSummary:(BOOL)summary
{
  if (summary)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasPositionInStack:(BOOL)stack
{
  if (stack)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasNumberOfNotificationsInStack:(BOOL)stack
{
  if (stack)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasPriorityStatus:(BOOL)status
{
  if (status)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (id)priorityStatusAsString:(int)string
{
  if (string >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C2A58[string];
  }

  return v4;
}

- (int)StringAsPriorityStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"IsPriority"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"IsNotPriority"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"InferenceTimedOut"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"Error"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"Ineligible"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"Total"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSummaryStatus:(BOOL)status
{
  if (status)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (id)summaryStatusAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C2A90[string];
  }

  return v4;
}

- (int)StringAsSummaryStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"Summarized"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"InferenceTimedOut"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"Error"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"Ineligible"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"Total"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsPriorityNotificationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsNotificationSummaryEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUserNotification;
  v4 = [(ATXPBUserNotification *)&v8 description];
  dictionaryRepresentation = [(ATXPBUserNotification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [dictionary setObject:subtitle forKey:@"subtitle"];
  }

  body = self->_body;
  if (body)
  {
    [dictionary setObject:body forKey:@"body"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_badge];
    [dictionary setObject:v9 forKey:@"badge"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [dictionary setObject:userInfo forKey:@"userInfo"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [dictionary setObject:bundleID forKey:@"bundleID"];
  }

  threadID = self->_threadID;
  if (threadID)
  {
    [dictionary setObject:threadID forKey:@"threadID"];
  }

  categoryID = self->_categoryID;
  if (categoryID)
  {
    [dictionary setObject:categoryID forKey:@"categoryID"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [dictionary setObject:sectionID forKey:@"sectionID"];
  }

  contactIDs = self->_contactIDs;
  if (contactIDs)
  {
    [dictionary setObject:contactIDs forKey:@"contactIDs"];
  }

  rawIdentifiers = self->_rawIdentifiers;
  if (rawIdentifiers)
  {
    [dictionary setObject:rawIdentifiers forKey:@"rawIdentifiers"];
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMessage];
    [dictionary setObject:v32 forKey:@"isMessage"];

    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_29:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_57;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_29;
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGroupMessage];
  [dictionary setObject:v33 forKey:@"isGroupMessage"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_30:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_57:
  urgency = self->_urgency;
  if (urgency >= 7)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_urgency];
  }

  else
  {
    v35 = off_1E80C29F0[urgency];
  }

  [dictionary setObject:v35 forKey:@"urgency"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_31:
    if ((*&has & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_67:
  attachmentType = self->_attachmentType;
  if (attachmentType >= 6)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_attachmentType];
  }

  else
  {
    v43 = off_1E80C2A28[attachmentType];
  }

  [dictionary setObject:v43 forKey:@"attachmentType"];

  if (*&self->_has)
  {
LABEL_32:
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_appSpecifiedScore];
    [dictionary setObject:v18 forKey:@"appSpecifiedScore"];
  }

LABEL_33:
  derivedData = self->_derivedData;
  if (derivedData)
  {
    dictionaryRepresentation = [(ATXPBUserNotificationDerivedData *)derivedData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"derivedData"];
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  if (sharedEngagementTracker)
  {
    dictionaryRepresentation2 = [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"sharedEngagementTracker"];
  }

  notificationID = self->_notificationID;
  if (notificationID)
  {
    [dictionary setObject:notificationID forKey:@"notificationID"];
  }

  v24 = self->_has;
  if ((*&v24 & 0x10) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_recordTimestamp];
    [dictionary setObject:v25 forKey:@"recordTimestamp"];

    v24 = self->_has;
  }

  if ((*&v24 & 0x10000) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSummarized];
    [dictionary setObject:v26 forKey:@"isSummarized"];
  }

  summary = self->_summary;
  if (summary)
  {
    [dictionary setObject:summary forKey:@"summary"];
  }

  v28 = self->_has;
  if ((*&v28 & 0x2000) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPartOfStack];
    [dictionary setObject:v36 forKey:@"isPartOfStack"];

    v28 = self->_has;
    if ((*&v28 & 0x8000) == 0)
    {
LABEL_47:
      if ((*&v28 & 8) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v28 & 0x8000) == 0)
  {
    goto LABEL_47;
  }

  v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStackSummary];
  [dictionary setObject:v37 forKey:@"isStackSummary"];

  v28 = self->_has;
  if ((*&v28 & 8) == 0)
  {
LABEL_48:
    if ((*&v28 & 4) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

LABEL_61:
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_positionInStack];
  [dictionary setObject:v38 forKey:@"positionInStack"];

  v28 = self->_has;
  if ((*&v28 & 4) == 0)
  {
LABEL_49:
    if ((*&v28 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

LABEL_62:
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numberOfNotificationsInStack];
  [dictionary setObject:v39 forKey:@"numberOfNotificationsInStack"];

  v28 = self->_has;
  if ((*&v28 & 0x80) == 0)
  {
LABEL_50:
    if ((*&v28 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_63:
  priorityStatus = self->_priorityStatus;
  if (priorityStatus >= 7)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_priorityStatus];
  }

  else
  {
    v41 = off_1E80C2A58[priorityStatus];
  }

  [dictionary setObject:v41 forKey:@"priorityStatus"];

  v28 = self->_has;
  if ((*&v28 & 0x100) == 0)
  {
LABEL_51:
    if ((*&v28 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

LABEL_78:
    v46 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPriorityNotificationEnabled];
    [dictionary setObject:v46 forKey:@"isPriorityNotificationEnabled"];

    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_71:
  summaryStatus = self->_summaryStatus;
  if (summaryStatus >= 6)
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_summaryStatus];
  }

  else
  {
    v45 = off_1E80C2A90[summaryStatus];
  }

  [dictionary setObject:v45 forKey:@"summaryStatus"];

  v28 = self->_has;
  if ((*&v28 & 0x4000) != 0)
  {
    goto LABEL_78;
  }

LABEL_52:
  if ((*&v28 & 0x1000) != 0)
  {
LABEL_53:
    v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_isNotificationSummaryEnabled];
    [dictionary setObject:v29 forKey:@"isNotificationSummaryEnabled"];
  }

LABEL_54:
  v30 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_body)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_derivedData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_categoryID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_contactIDs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_34:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_68;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_34;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_35:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_68:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_36:
    PBDataWriterWriteInt32Field();
  }

LABEL_37:
  if (self->_sharedEngagementTracker)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_rawIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_notificationID)
  {
    PBDataWriterWriteStringField();
  }

  v16 = self->_has;
  if ((*&v16 & 0x10) != 0)
  {
    PBDataWriterWriteDoubleField();
    v16 = self->_has;
  }

  if ((*&v16 & 0x10000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_summary)
  {
    PBDataWriterWriteStringField();
  }

  v17 = self->_has;
  if ((*&v17 & 0x2000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v17 = self->_has;
    if ((*&v17 & 0x8000) == 0)
    {
LABEL_58:
      if ((*&v17 & 8) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v17 & 0x8000) == 0)
  {
    goto LABEL_58;
  }

  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 8) == 0)
  {
LABEL_59:
    if ((*&v17 & 4) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_73;
  }

LABEL_72:
  PBDataWriterWriteUint64Field();
  v17 = self->_has;
  if ((*&v17 & 4) == 0)
  {
LABEL_60:
    if ((*&v17 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteUint64Field();
  v17 = self->_has;
  if ((*&v17 & 0x80) == 0)
  {
LABEL_61:
    if ((*&v17 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_75;
  }

LABEL_74:
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x100) == 0)
  {
LABEL_62:
    if ((*&v17 & 0x4000) == 0)
    {
      goto LABEL_63;
    }

LABEL_76:
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_75:
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x4000) != 0)
  {
    goto LABEL_76;
  }

LABEL_63:
  if ((*&v17 & 0x1000) != 0)
  {
LABEL_64:
    PBDataWriterWriteBOOLField();
  }

LABEL_65:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x20) != 0)
  {
    toCopy[6] = *&self->_timestamp;
    *(toCopy + 54) |= 0x20u;
  }

  v18 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v18;
  }

  if (self->_title)
  {
    [v18 setTitle:?];
    toCopy = v18;
  }

  if (self->_subtitle)
  {
    [v18 setSubtitle:?];
    toCopy = v18;
  }

  if (self->_body)
  {
    [v18 setBody:?];
    toCopy = v18;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_badge;
    *(toCopy + 54) |= 2u;
  }

  if (self->_userInfo)
  {
    [v18 setUserInfo:?];
  }

  if (self->_bundleID)
  {
    [v18 setBundleID:?];
  }

  if (self->_derivedData)
  {
    [v18 setDerivedData:?];
  }

  if (self->_threadID)
  {
    [v18 setThreadID:?];
  }

  if (self->_categoryID)
  {
    [v18 setCategoryID:?];
  }

  if (self->_sectionID)
  {
    [v18 setSectionID:?];
  }

  if ([(ATXPBUserNotification *)self contactIDsCount])
  {
    [v18 clearContactIDs];
    contactIDsCount = [(ATXPBUserNotification *)self contactIDsCount];
    if (contactIDsCount)
    {
      v6 = contactIDsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBUserNotification *)self contactIDsAtIndex:i];
        [v18 addContactIDs:v8];
      }
    }
  }

  has = self->_has;
  v10 = v18;
  if ((*&has & 0x400) != 0)
  {
    *(v18 + 208) = self->_isGroupMessage;
    *(v18 + 54) |= 0x400u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_31:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_64;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_31;
  }

  *(v18 + 46) = self->_urgency;
  *(v18 + 54) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_32:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_64:
  *(v18 + 209) = self->_isMessage;
  *(v18 + 54) |= 0x800u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_33:
    *(v18 + 14) = self->_attachmentType;
    *(v18 + 54) |= 0x40u;
  }

LABEL_34:
  if (self->_sharedEngagementTracker)
  {
    [v18 setSharedEngagementTracker:?];
    v10 = v18;
  }

  if (*&self->_has)
  {
    v10[1] = *&self->_appSpecifiedScore;
    *(v10 + 54) |= 1u;
  }

  if ([(ATXPBUserNotification *)self rawIdentifiersCount])
  {
    [v18 clearRawIdentifiers];
    rawIdentifiersCount = [(ATXPBUserNotification *)self rawIdentifiersCount];
    if (rawIdentifiersCount)
    {
      v12 = rawIdentifiersCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(ATXPBUserNotification *)self rawIdentifiersAtIndex:j];
        [v18 addRawIdentifiers:v14];
      }
    }
  }

  if (self->_notificationID)
  {
    [v18 setNotificationID:?];
  }

  v15 = self->_has;
  v16 = v18;
  if ((*&v15 & 0x10) != 0)
  {
    v18[5] = *&self->_recordTimestamp;
    *(v18 + 54) |= 0x10u;
    v15 = self->_has;
  }

  if ((*&v15 & 0x10000) != 0)
  {
    *(v18 + 214) = self->_isSummarized;
    *(v18 + 54) |= 0x10000u;
  }

  if (self->_summary)
  {
    [v18 setSummary:?];
    v16 = v18;
  }

  v17 = self->_has;
  if ((*&v17 & 0x2000) != 0)
  {
    v16[211] = self->_isPartOfStack;
    *(v16 + 54) |= 0x2000u;
    v17 = self->_has;
    if ((*&v17 & 0x8000) == 0)
    {
LABEL_52:
      if ((*&v17 & 8) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_68;
    }
  }

  else if ((*&v17 & 0x8000) == 0)
  {
    goto LABEL_52;
  }

  v16[213] = self->_isStackSummary;
  *(v16 + 54) |= 0x8000u;
  v17 = self->_has;
  if ((*&v17 & 8) == 0)
  {
LABEL_53:
    if ((*&v17 & 4) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v16 + 4) = self->_positionInStack;
  *(v16 + 54) |= 8u;
  v17 = self->_has;
  if ((*&v17 & 4) == 0)
  {
LABEL_54:
    if ((*&v17 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v16 + 3) = self->_numberOfNotificationsInStack;
  *(v16 + 54) |= 4u;
  v17 = self->_has;
  if ((*&v17 & 0x80) == 0)
  {
LABEL_55:
    if ((*&v17 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v16 + 28) = self->_priorityStatus;
  *(v16 + 54) |= 0x80u;
  v17 = self->_has;
  if ((*&v17 & 0x100) == 0)
  {
LABEL_56:
    if ((*&v17 & 0x4000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v16 + 40) = self->_summaryStatus;
  *(v16 + 54) |= 0x100u;
  v17 = self->_has;
  if ((*&v17 & 0x4000) == 0)
  {
LABEL_57:
    if ((*&v17 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_72:
  v16[212] = self->_isPriorityNotificationEnabled;
  *(v16 + 54) |= 0x4000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_58:
    v16[210] = self->_isNotificationSummaryEnabled;
    *(v16 + 54) |= 0x1000u;
  }

LABEL_59:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_timestamp;
    *(v5 + 216) |= 0x20u;
  }

  v7 = [(NSString *)self->_uuid copyWithZone:zone];
  v8 = *(v6 + 200);
  *(v6 + 200) = v7;

  v9 = [(NSString *)self->_title copyWithZone:zone];
  v10 = *(v6 + 176);
  *(v6 + 176) = v9;

  v11 = [(NSString *)self->_subtitle copyWithZone:zone];
  v12 = *(v6 + 144);
  *(v6 + 144) = v11;

  v13 = [(NSString *)self->_body copyWithZone:zone];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_badge;
    *(v6 + 216) |= 2u;
  }

  v15 = [(NSData *)self->_userInfo copyWithZone:zone];
  v16 = *(v6 + 192);
  *(v6 + 192) = v15;

  v17 = [(NSString *)self->_bundleID copyWithZone:zone];
  v18 = *(v6 + 72);
  *(v6 + 72) = v17;

  v19 = [(ATXPBUserNotificationDerivedData *)self->_derivedData copyWithZone:zone];
  v20 = *(v6 + 96);
  *(v6 + 96) = v19;

  v21 = [(NSString *)self->_threadID copyWithZone:zone];
  v22 = *(v6 + 168);
  *(v6 + 168) = v21;

  v23 = [(NSString *)self->_categoryID copyWithZone:zone];
  v24 = *(v6 + 80);
  *(v6 + 80) = v23;

  v25 = [(NSString *)self->_sectionID copyWithZone:zone];
  v26 = *(v6 + 128);
  *(v6 + 128) = v25;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v27 = self->_contactIDs;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v54;
    do
    {
      v31 = 0;
      do
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v53 + 1) + 8 * v31) copyWithZone:zone];
        [v6 addContactIDs:v32];

        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v29);
  }

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(v6 + 208) = self->_isGroupMessage;
    *(v6 + 216) |= 0x400u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_14:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 184) = self->_urgency;
  *(v6 + 216) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_42:
  *(v6 + 209) = self->_isMessage;
  *(v6 + 216) |= 0x800u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_16:
    *(v6 + 56) = self->_attachmentType;
    *(v6 + 216) |= 0x40u;
  }

LABEL_17:
  v34 = [(ATXPBSharedDigestEngagementTrackingMetrics *)self->_sharedEngagementTracker copyWithZone:zone];
  v35 = *(v6 + 136);
  *(v6 + 136) = v34;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_appSpecifiedScore;
    *(v6 + 216) |= 1u;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v36 = self->_rawIdentifiers;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v50;
    do
    {
      v40 = 0;
      do
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v49 + 1) + 8 * v40) copyWithZone:{zone, v49}];
        [v6 addRawIdentifiers:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v38);
  }

  v42 = [(NSString *)self->_notificationID copyWithZone:zone];
  v43 = *(v6 + 104);
  *(v6 + 104) = v42;

  v44 = self->_has;
  if ((*&v44 & 0x10) != 0)
  {
    *(v6 + 40) = self->_recordTimestamp;
    *(v6 + 216) |= 0x10u;
    v44 = self->_has;
  }

  if ((*&v44 & 0x10000) != 0)
  {
    *(v6 + 214) = self->_isSummarized;
    *(v6 + 216) |= 0x10000u;
  }

  v45 = [(NSString *)self->_summary copyWithZone:zone, v49];
  v46 = *(v6 + 152);
  *(v6 + 152) = v45;

  v47 = self->_has;
  if ((*&v47 & 0x2000) != 0)
  {
    *(v6 + 211) = self->_isPartOfStack;
    *(v6 + 216) |= 0x2000u;
    v47 = self->_has;
    if ((*&v47 & 0x8000) == 0)
    {
LABEL_32:
      if ((*&v47 & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v47 & 0x8000) == 0)
  {
    goto LABEL_32;
  }

  *(v6 + 213) = self->_isStackSummary;
  *(v6 + 216) |= 0x8000u;
  v47 = self->_has;
  if ((*&v47 & 8) == 0)
  {
LABEL_33:
    if ((*&v47 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 32) = self->_positionInStack;
  *(v6 + 216) |= 8u;
  v47 = self->_has;
  if ((*&v47 & 4) == 0)
  {
LABEL_34:
    if ((*&v47 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 24) = self->_numberOfNotificationsInStack;
  *(v6 + 216) |= 4u;
  v47 = self->_has;
  if ((*&v47 & 0x80) == 0)
  {
LABEL_35:
    if ((*&v47 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 112) = self->_priorityStatus;
  *(v6 + 216) |= 0x80u;
  v47 = self->_has;
  if ((*&v47 & 0x100) == 0)
  {
LABEL_36:
    if ((*&v47 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

LABEL_50:
    *(v6 + 212) = self->_isPriorityNotificationEnabled;
    *(v6 + 216) |= 0x4000u;
    if ((*&self->_has & 0x1000) == 0)
    {
      return v6;
    }

    goto LABEL_38;
  }

LABEL_49:
  *(v6 + 160) = self->_summaryStatus;
  *(v6 + 216) |= 0x100u;
  v47 = self->_has;
  if ((*&v47 & 0x4000) != 0)
  {
    goto LABEL_50;
  }

LABEL_37:
  if ((*&v47 & 0x1000) != 0)
  {
LABEL_38:
    *(v6 + 210) = self->_isNotificationSummaryEnabled;
    *(v6 + 216) |= 0x1000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_135;
  }

  v5 = *(equalCopy + 54);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || self->_timestamp != *(equalCopy + 6))
    {
      goto LABEL_135;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    goto LABEL_135;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 25) && ![(NSString *)uuid isEqual:?])
  {
    goto LABEL_135;
  }

  title = self->_title;
  if (title | *(equalCopy + 22))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_135;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(equalCopy + 18))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_135;
    }
  }

  body = self->_body;
  if (body | *(equalCopy + 8))
  {
    if (![(NSString *)body isEqual:?])
    {
      goto LABEL_135;
    }
  }

  v10 = *(equalCopy + 54);
  if ((*&self->_has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_badge != *(equalCopy + 2))
    {
      goto LABEL_135;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_135;
  }

  userInfo = self->_userInfo;
  if (userInfo | *(equalCopy + 24) && ![(NSData *)userInfo isEqual:?])
  {
    goto LABEL_135;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 9))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_135;
    }
  }

  derivedData = self->_derivedData;
  if (derivedData | *(equalCopy + 12))
  {
    if (![(ATXPBUserNotificationDerivedData *)derivedData isEqual:?])
    {
      goto LABEL_135;
    }
  }

  threadID = self->_threadID;
  if (threadID | *(equalCopy + 21))
  {
    if (![(NSString *)threadID isEqual:?])
    {
      goto LABEL_135;
    }
  }

  categoryID = self->_categoryID;
  if (categoryID | *(equalCopy + 10))
  {
    if (![(NSString *)categoryID isEqual:?])
    {
      goto LABEL_135;
    }
  }

  sectionID = self->_sectionID;
  if (sectionID | *(equalCopy + 16))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_135;
    }
  }

  contactIDs = self->_contactIDs;
  if (contactIDs | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)contactIDs isEqual:?])
    {
      goto LABEL_135;
    }
  }

  has = self->_has;
  v19 = *(equalCopy + 54);
  if ((*&has & 0x400) != 0)
  {
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_135;
    }

    if (self->_isGroupMessage)
    {
      if ((*(equalCopy + 208) & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    else if (*(equalCopy + 208))
    {
      goto LABEL_135;
    }
  }

  else if ((v19 & 0x400) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v19 & 0x200) == 0 || self->_urgency != *(equalCopy + 46))
    {
      goto LABEL_135;
    }
  }

  else if ((v19 & 0x200) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_135;
    }

    if (self->_isMessage)
    {
      if ((*(equalCopy + 209) & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    else if (*(equalCopy + 209))
    {
      goto LABEL_135;
    }
  }

  else if ((v19 & 0x800) != 0)
  {
    goto LABEL_135;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v19 & 0x40) == 0 || self->_attachmentType != *(equalCopy + 14))
    {
      goto LABEL_135;
    }
  }

  else if ((v19 & 0x40) != 0)
  {
    goto LABEL_135;
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  if (sharedEngagementTracker | *(equalCopy + 17))
  {
    if (![(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker isEqual:?])
    {
      goto LABEL_135;
    }

    has = self->_has;
  }

  v21 = *(equalCopy + 54);
  if (*&has)
  {
    if ((v21 & 1) == 0 || self->_appSpecifiedScore != *(equalCopy + 1))
    {
      goto LABEL_135;
    }
  }

  else if (v21)
  {
    goto LABEL_135;
  }

  rawIdentifiers = self->_rawIdentifiers;
  if (rawIdentifiers | *(equalCopy + 15) && ![(NSMutableArray *)rawIdentifiers isEqual:?])
  {
    goto LABEL_135;
  }

  notificationID = self->_notificationID;
  if (notificationID | *(equalCopy + 13))
  {
    if (![(NSString *)notificationID isEqual:?])
    {
      goto LABEL_135;
    }
  }

  v24 = self->_has;
  v25 = *(equalCopy + 54);
  if ((*&v24 & 0x10) != 0)
  {
    if ((v25 & 0x10) == 0 || self->_recordTimestamp != *(equalCopy + 5))
    {
      goto LABEL_135;
    }
  }

  else if ((v25 & 0x10) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v24 & 0x10000) != 0)
  {
    if ((v25 & 0x10000) == 0)
    {
      goto LABEL_135;
    }

    if (self->_isSummarized)
    {
      if ((*(equalCopy + 214) & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    else if (*(equalCopy + 214))
    {
      goto LABEL_135;
    }
  }

  else if ((v25 & 0x10000) != 0)
  {
    goto LABEL_135;
  }

  summary = self->_summary;
  if (summary | *(equalCopy + 19))
  {
    if (![(NSString *)summary isEqual:?])
    {
      goto LABEL_135;
    }

    v24 = self->_has;
  }

  v27 = *(equalCopy + 54);
  if ((*&v24 & 0x2000) != 0)
  {
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_135;
    }

    if (self->_isPartOfStack)
    {
      if ((*(equalCopy + 211) & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    else if (*(equalCopy + 211))
    {
      goto LABEL_135;
    }
  }

  else if ((v27 & 0x2000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v24 & 0x8000) != 0)
  {
    if ((v27 & 0x8000) == 0)
    {
      goto LABEL_135;
    }

    if (self->_isStackSummary)
    {
      if ((*(equalCopy + 213) & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    else if (*(equalCopy + 213))
    {
      goto LABEL_135;
    }
  }

  else if ((v27 & 0x8000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v24 & 8) != 0)
  {
    if ((v27 & 8) == 0 || self->_positionInStack != *(equalCopy + 4))
    {
      goto LABEL_135;
    }
  }

  else if ((v27 & 8) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v24 & 4) != 0)
  {
    if ((v27 & 4) == 0 || self->_numberOfNotificationsInStack != *(equalCopy + 3))
    {
      goto LABEL_135;
    }
  }

  else if ((v27 & 4) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v24 & 0x80) != 0)
  {
    if ((v27 & 0x80) == 0 || self->_priorityStatus != *(equalCopy + 28))
    {
      goto LABEL_135;
    }
  }

  else if ((v27 & 0x80) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v24 & 0x100) != 0)
  {
    if ((v27 & 0x100) == 0 || self->_summaryStatus != *(equalCopy + 40))
    {
      goto LABEL_135;
    }
  }

  else if ((v27 & 0x100) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v24 & 0x4000) != 0)
  {
    if ((v27 & 0x4000) == 0)
    {
      goto LABEL_135;
    }

    if (self->_isPriorityNotificationEnabled)
    {
      if ((*(equalCopy + 212) & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    else if (*(equalCopy + 212))
    {
      goto LABEL_135;
    }
  }

  else if ((v27 & 0x4000) != 0)
  {
    goto LABEL_135;
  }

  if ((*&v24 & 0x1000) != 0)
  {
    if ((v27 & 0x1000) != 0)
    {
      if (self->_isNotificationSummaryEnabled)
      {
        if ((*(equalCopy + 210) & 1) == 0)
        {
          goto LABEL_135;
        }
      }

      else if (*(equalCopy + 210))
      {
        goto LABEL_135;
      }

      v28 = 1;
      goto LABEL_136;
    }

LABEL_135:
    v28 = 0;
    goto LABEL_136;
  }

  v28 = (*(equalCopy + 54) & 0x1000) == 0;
LABEL_136:

  return v28;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v6 = (timestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2.i64[0] = vbslq_s8(vnegq_f64(v7), v3, v2).i64[0];
    v8 = 2654435761u * *v2.i64;
    v9 = v8 + v6;
    if (v6 <= 0.0)
    {
      v9 = 2654435761u * *v2.i64;
    }

    v10 = v8 - fabs(v6);
    if (v6 >= 0.0)
    {
      v10 = v9;
    }

    v57 = v10;
  }

  else
  {
    v57 = 0;
  }

  v56 = [(NSString *)self->_uuid hash];
  v55 = [(NSString *)self->_title hash];
  v54 = [(NSString *)self->_subtitle hash];
  v53 = [(NSString *)self->_body hash];
  if ((*&self->_has & 2) != 0)
  {
    v52 = 2654435761u * self->_badge;
  }

  else
  {
    v52 = 0;
  }

  v51 = [(NSData *)self->_userInfo hash];
  v50 = [(NSString *)self->_bundleID hash];
  v49 = [(ATXPBUserNotificationDerivedData *)self->_derivedData hash];
  v48 = [(NSString *)self->_threadID hash];
  v47 = [(NSString *)self->_categoryID hash];
  v46 = [(NSString *)self->_sectionID hash];
  v45 = [(NSMutableArray *)self->_contactIDs hash];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    v44 = 2654435761 * self->_isGroupMessage;
    if ((*&has & 0x200) != 0)
    {
LABEL_15:
      v43 = 2654435761 * self->_urgency;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      v41 = 0;
      if ((*&has & 0x40) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v44 = 0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_15;
    }
  }

  v43 = 0;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v41 = 2654435761 * self->_isMessage;
  if ((*&has & 0x40) != 0)
  {
LABEL_17:
    v12 = 2654435761 * self->_attachmentType;
    goto LABEL_22;
  }

LABEL_21:
  v12 = 0;
LABEL_22:
  v13 = [(ATXPBSharedDigestEngagementTrackingMetrics *)self->_sharedEngagementTracker hash];
  if (*&self->_has)
  {
    appSpecifiedScore = self->_appSpecifiedScore;
    if (appSpecifiedScore < 0.0)
    {
      appSpecifiedScore = -appSpecifiedScore;
    }

    *v14.i64 = floor(appSpecifiedScore + 0.5);
    v18 = (appSpecifiedScore - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v15, v14).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = [(NSMutableArray *)self->_rawIdentifiers hash];
  v21 = [(NSString *)self->_notificationID hash];
  v24 = self->_has;
  if ((*&v24 & 0x10) != 0)
  {
    recordTimestamp = self->_recordTimestamp;
    if (recordTimestamp < 0.0)
    {
      recordTimestamp = -recordTimestamp;
    }

    *v22.i64 = floor(recordTimestamp + 0.5);
    v27 = (recordTimestamp - *v22.i64) * 1.84467441e19;
    *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v25 = 2654435761u * *vbslq_s8(vnegq_f64(v28), v23, v22).i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((*&v24 & 0x10000) != 0)
  {
    v29 = 2654435761 * self->_isSummarized;
  }

  else
  {
    v29 = 0;
  }

  v30 = [(NSString *)self->_summary hash];
  v31 = self->_has;
  if ((*&v31 & 0x2000) != 0)
  {
    v32 = 2654435761 * self->_isPartOfStack;
    if ((*&v31 & 0x8000) != 0)
    {
LABEL_43:
      v33 = 2654435761 * self->_isStackSummary;
      if ((*&v31 & 8) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v32 = 0;
    if ((*&v31 & 0x8000) != 0)
    {
      goto LABEL_43;
    }
  }

  v33 = 0;
  if ((*&v31 & 8) != 0)
  {
LABEL_44:
    v34 = 2654435761u * self->_positionInStack;
    if ((*&v31 & 4) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_53;
  }

LABEL_52:
  v34 = 0;
  if ((*&v31 & 4) != 0)
  {
LABEL_45:
    v35 = 2654435761u * self->_numberOfNotificationsInStack;
    if ((*&v31 & 0x80) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_54;
  }

LABEL_53:
  v35 = 0;
  if ((*&v31 & 0x80) != 0)
  {
LABEL_46:
    v36 = 2654435761 * self->_priorityStatus;
    if ((*&v31 & 0x100) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_55;
  }

LABEL_54:
  v36 = 0;
  if ((*&v31 & 0x100) != 0)
  {
LABEL_47:
    v37 = 2654435761 * self->_summaryStatus;
    if ((*&v31 & 0x4000) != 0)
    {
      goto LABEL_48;
    }

LABEL_56:
    v38 = 0;
    if ((*&v31 & 0x1000) != 0)
    {
      goto LABEL_49;
    }

LABEL_57:
    v39 = 0;
    return v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v12 ^ v13 ^ v16 ^ v20 ^ v21 ^ v25 ^ v29 ^ v30 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39;
  }

LABEL_55:
  v37 = 0;
  if ((*&v31 & 0x4000) == 0)
  {
    goto LABEL_56;
  }

LABEL_48:
  v38 = 2654435761 * self->_isPriorityNotificationEnabled;
  if ((*&v31 & 0x1000) == 0)
  {
    goto LABEL_57;
  }

LABEL_49:
  v39 = 2654435761 * self->_isNotificationSummaryEnabled;
  return v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v12 ^ v13 ^ v16 ^ v20 ^ v21 ^ v25 ^ v29 ^ v30 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39;
}

- (void)mergeFrom:(id)from
{
  v33 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[27] & 0x20) != 0)
  {
    self->_timestamp = fromCopy[6];
    *&self->_has |= 0x20u;
  }

  if (*(fromCopy + 25))
  {
    [(ATXPBUserNotification *)self setUuid:?];
  }

  if (*(v5 + 22))
  {
    [(ATXPBUserNotification *)self setTitle:?];
  }

  if (*(v5 + 18))
  {
    [(ATXPBUserNotification *)self setSubtitle:?];
  }

  if (*(v5 + 8))
  {
    [(ATXPBUserNotification *)self setBody:?];
  }

  if ((v5[27] & 2) != 0)
  {
    self->_badge = v5[2];
    *&self->_has |= 2u;
  }

  if (*(v5 + 24))
  {
    [(ATXPBUserNotification *)self setUserInfo:?];
  }

  if (*(v5 + 9))
  {
    [(ATXPBUserNotification *)self setBundleID:?];
  }

  derivedData = self->_derivedData;
  v7 = *(v5 + 12);
  if (derivedData)
  {
    if (v7)
    {
      [(ATXPBUserNotificationDerivedData *)derivedData mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(ATXPBUserNotification *)self setDerivedData:?];
  }

  if (*(v5 + 21))
  {
    [(ATXPBUserNotification *)self setThreadID:?];
  }

  if (*(v5 + 10))
  {
    [(ATXPBUserNotification *)self setCategoryID:?];
  }

  if (*(v5 + 16))
  {
    [(ATXPBUserNotification *)self setSectionID:?];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = *(v5 + 11);
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(ATXPBUserNotification *)self addContactIDs:*(*(&v27 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v13 = *(v5 + 54);
  if ((v13 & 0x400) != 0)
  {
    self->_isGroupMessage = *(v5 + 208);
    *&self->_has |= 0x400u;
    v13 = *(v5 + 54);
    if ((v13 & 0x200) == 0)
    {
LABEL_37:
      if ((v13 & 0x800) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  self->_urgency = *(v5 + 46);
  *&self->_has |= 0x200u;
  v13 = *(v5 + 54);
  if ((v13 & 0x800) == 0)
  {
LABEL_38:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_45:
  self->_isMessage = *(v5 + 209);
  *&self->_has |= 0x800u;
  if ((v5[27] & 0x40) != 0)
  {
LABEL_39:
    self->_attachmentType = *(v5 + 14);
    *&self->_has |= 0x40u;
  }

LABEL_40:
  sharedEngagementTracker = self->_sharedEngagementTracker;
  v15 = *(v5 + 17);
  if (sharedEngagementTracker)
  {
    if (v15)
    {
      [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(ATXPBUserNotification *)self setSharedEngagementTracker:?];
  }

  if (v5[27])
  {
    self->_appSpecifiedScore = v5[1];
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = *(v5 + 15);
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(ATXPBUserNotification *)self addRawIdentifiers:*(*(&v23 + 1) + 8 * j), v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  if (*(v5 + 13))
  {
    [(ATXPBUserNotification *)self setNotificationID:?];
  }

  v21 = *(v5 + 54);
  if ((v21 & 0x10) != 0)
  {
    self->_recordTimestamp = v5[5];
    *&self->_has |= 0x10u;
    v21 = *(v5 + 54);
  }

  if ((v21 & 0x10000) != 0)
  {
    self->_isSummarized = *(v5 + 214);
    *&self->_has |= 0x10000u;
  }

  if (*(v5 + 19))
  {
    [(ATXPBUserNotification *)self setSummary:?];
  }

  v22 = *(v5 + 54);
  if ((v22 & 0x2000) != 0)
  {
    self->_isPartOfStack = *(v5 + 211);
    *&self->_has |= 0x2000u;
    v22 = *(v5 + 54);
    if ((v22 & 0x8000) == 0)
    {
LABEL_68:
      if ((v22 & 8) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_78;
    }
  }

  else if ((v22 & 0x8000) == 0)
  {
    goto LABEL_68;
  }

  self->_isStackSummary = *(v5 + 213);
  *&self->_has |= 0x8000u;
  v22 = *(v5 + 54);
  if ((v22 & 8) == 0)
  {
LABEL_69:
    if ((v22 & 4) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_positionInStack = v5[4];
  *&self->_has |= 8u;
  v22 = *(v5 + 54);
  if ((v22 & 4) == 0)
  {
LABEL_70:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_numberOfNotificationsInStack = v5[3];
  *&self->_has |= 4u;
  v22 = *(v5 + 54);
  if ((v22 & 0x80) == 0)
  {
LABEL_71:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_priorityStatus = *(v5 + 28);
  *&self->_has |= 0x80u;
  v22 = *(v5 + 54);
  if ((v22 & 0x100) == 0)
  {
LABEL_72:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_73;
    }

LABEL_82:
    self->_isPriorityNotificationEnabled = *(v5 + 212);
    *&self->_has |= 0x4000u;
    if ((v5[27] & 0x1000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_81:
  self->_summaryStatus = *(v5 + 40);
  *&self->_has |= 0x100u;
  v22 = *(v5 + 54);
  if ((v22 & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_73:
  if ((v22 & 0x1000) != 0)
  {
LABEL_74:
    self->_isNotificationSummaryEnabled = *(v5 + 210);
    *&self->_has |= 0x1000u;
  }

LABEL_75:
}

- (id)initFromJSON:(id)n
{
  v72 = *MEMORY[0x1E69E9840];
  nCopy = n;
  v5 = [(ATXPBUserNotification *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = nCopy;
      v7 = [v6 objectForKeyedSubscript:@"timestamp"];
      [v7 doubleValue];
      [(ATXPBUserNotification *)v5 setTimestamp:?];

      v8 = [v6 objectForKeyedSubscript:@"uuid"];
      [(ATXPBUserNotification *)v5 setUuid:v8];

      v9 = [v6 objectForKeyedSubscript:@"title"];
      v10 = [ATXJSONHelper unwrapObject:v9];
      [(ATXPBUserNotification *)v5 setTitle:v10];

      v11 = [v6 objectForKeyedSubscript:@"subtitle"];
      v12 = [ATXJSONHelper unwrapObject:v11];
      [(ATXPBUserNotification *)v5 setSubtitle:v12];

      v13 = [v6 objectForKeyedSubscript:@"body"];
      v14 = [ATXJSONHelper unwrapObject:v13];
      [(ATXPBUserNotification *)v5 setBody:v14];

      v15 = [v6 objectForKeyedSubscript:@"badge"];
      -[ATXPBUserNotification setBadge:](v5, "setBadge:", [v15 unsignedIntValue]);

      v16 = [v6 objectForKeyedSubscript:@"userInfo"];
      v17 = [ATXJSONHelper unwrapData:v16];
      [(ATXPBUserNotification *)v5 setUserInfo:v17];

      v18 = [v6 objectForKeyedSubscript:@"bundleID"];
      v19 = [ATXJSONHelper unwrapObject:v18];
      [(ATXPBUserNotification *)v5 setBundleID:v19];

      v20 = [v6 objectForKeyedSubscript:@"threadID"];
      v21 = [ATXJSONHelper unwrapObject:v20];
      [(ATXPBUserNotification *)v5 setThreadID:v21];

      v22 = [v6 objectForKeyedSubscript:@"categoryID"];
      v23 = [ATXJSONHelper unwrapObject:v22];
      [(ATXPBUserNotification *)v5 setCategoryID:v23];

      v24 = [v6 objectForKeyedSubscript:@"contactIDs"];

      if (v24)
      {
        v25 = [v6 objectForKeyedSubscript:@"contactIDs"];
        v26 = [ATXJSONHelper unwrapObject:v25];

        if (v26)
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v27 = [v6 objectForKeyedSubscript:@"contactIDs"];
          v28 = [v27 countByEnumeratingWithState:&v66 objects:v71 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v67;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v67 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                [(ATXPBUserNotification *)v5 addContactIDs:*(*(&v66 + 1) + 8 * i)];
              }

              v29 = [v27 countByEnumeratingWithState:&v66 objects:v71 count:16];
            }

            while (v29);
          }
        }
      }

      v32 = [v6 objectForKeyedSubscript:@"rawIdentifiers"];

      if (v32)
      {
        v33 = [v6 objectForKeyedSubscript:@"rawIdentifiers"];
        v34 = [ATXJSONHelper unwrapObject:v33];

        if (v34)
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v35 = v34;
          v36 = [v35 countByEnumeratingWithState:&v62 objects:v70 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v63;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v63 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                [(ATXPBUserNotification *)v5 addRawIdentifiers:*(*(&v62 + 1) + 8 * j), v62];
              }

              v37 = [v35 countByEnumeratingWithState:&v62 objects:v70 count:16];
            }

            while (v37);
          }
        }
      }

      v40 = [v6 objectForKeyedSubscript:{@"isMessage", v62}];
      -[ATXPBUserNotification setIsMessage:](v5, "setIsMessage:", [v40 BOOLValue]);

      v41 = [v6 objectForKeyedSubscript:@"isGroupMessage"];
      -[ATXPBUserNotification setIsGroupMessage:](v5, "setIsGroupMessage:", [v41 BOOLValue]);

      v42 = [v6 objectForKeyedSubscript:@"urgency"];
      if (v42)
      {
        v43 = [v6 objectForKeyedSubscript:@"urgency"];
        if ([v43 isEqualToString:@"Critical"])
        {
          v44 = 0;
        }

        else if ([v43 isEqualToString:@"TimeSensitive"])
        {
          v44 = 1;
        }

        else if ([v43 isEqualToString:@"Active"])
        {
          v44 = 2;
        }

        else if ([v43 isEqualToString:@"Passive"])
        {
          v44 = 3;
        }

        else if ([v43 isEqualToString:@"None"])
        {
          v44 = 4;
        }

        else if ([v43 isEqualToString:@"Priority"])
        {
          v44 = 5;
        }

        else if ([v43 isEqualToString:@"Total"])
        {
          v44 = 6;
        }

        else
        {
          v44 = 0;
        }

        [(ATXPBUserNotification *)v5 setUrgency:v44];
      }

      else
      {
        [(ATXPBUserNotification *)v5 setUrgency:4];
      }

      v45 = [v6 objectForKeyedSubscript:@"attachmentType"];
      if (v45)
      {
        v46 = [v6 objectForKeyedSubscript:@"attachmentType"];
        if ([v46 isEqualToString:@"None"])
        {
          v47 = 0;
        }

        else if ([v46 isEqualToString:@"Image"])
        {
          v47 = 1;
        }

        else if ([v46 isEqualToString:@"Audio"])
        {
          v47 = 2;
        }

        else if ([v46 isEqualToString:@"Video"])
        {
          v47 = 3;
        }

        else if ([v46 isEqualToString:@"Other"])
        {
          v47 = 4;
        }

        else if ([v46 isEqualToString:@"Total"])
        {
          v47 = 5;
        }

        else
        {
          v47 = 0;
        }

        [(ATXPBUserNotification *)v5 setAttachmentType:v47];
      }

      else
      {
        [(ATXPBUserNotification *)v5 setAttachmentType:0];
      }

      v48 = [v6 objectForKeyedSubscript:@"appSpecifiedScore"];
      [v48 doubleValue];
      [(ATXPBUserNotification *)v5 setAppSpecifiedScore:?];

      v49 = [v6 objectForKeyedSubscript:@"derivedData"];
      v50 = [ATXJSONHelper unwrapObject:v49];

      if (v50)
      {
        v51 = [ATXPBUserNotificationDerivedData alloc];
        v52 = [v6 objectForKeyedSubscript:@"derivedData"];
        v53 = [ATXJSONHelper unwrapObject:v52];
        v54 = [(ATXPBUserNotificationDerivedData *)v51 initFromJSON:v53];
        [(ATXPBUserNotification *)v5 setDerivedData:v54];
      }

      v55 = [v6 objectForKeyedSubscript:@"sharedDigestEngagementTracker"];
      v56 = [ATXJSONHelper unwrapObject:v55];

      if (v56)
      {
        v57 = [ATXPBSharedDigestEngagementTrackingMetrics alloc];
        v58 = [v6 objectForKeyedSubscript:@"sharedDigestEngagementTracker"];
        v59 = [ATXJSONHelper unwrapObject:v58];
        v60 = [(ATXPBSharedDigestEngagementTrackingMetrics *)v57 initFromJSON:v59];
        [(ATXPBUserNotification *)v5 setSharedEngagementTracker:v60];
      }
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v39[19] = *MEMORY[0x1E69E9840];
  v38[0] = @"timestamp";
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v36 = [ATXJSONHelper wrapObject:?];
  v39[0] = v36;
  v38[1] = @"uuid";
  v35 = [ATXJSONHelper wrapObject:self->_uuid];
  v39[1] = v35;
  v38[2] = @"title";
  v34 = [ATXJSONHelper wrapObject:self->_title];
  v39[2] = v34;
  v38[3] = @"subtitle";
  v33 = [ATXJSONHelper wrapObject:self->_subtitle];
  v39[3] = v33;
  v38[4] = @"body";
  v32 = [ATXJSONHelper wrapObject:self->_body];
  v39[4] = v32;
  v38[5] = @"badge";
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_badge];
  v30 = [ATXJSONHelper wrapObject:?];
  v39[5] = v30;
  v38[6] = @"userInfo";
  v29 = [ATXJSONHelper wrapObject:self->_userInfo];
  v39[6] = v29;
  v38[7] = @"bundleID";
  v28 = [ATXJSONHelper wrapObject:self->_bundleID];
  v39[7] = v28;
  v38[8] = @"threadID";
  v27 = [ATXJSONHelper wrapObject:self->_threadID];
  v39[8] = v27;
  v38[9] = @"categoryID";
  v26 = [ATXJSONHelper wrapObject:self->_categoryID];
  v39[9] = v26;
  v38[10] = @"contactIDs";
  v25 = [ATXJSONHelper wrapObject:self->_contactIDs];
  v39[10] = v25;
  v38[11] = @"rawIdentifiers";
  v24 = [ATXJSONHelper wrapObject:self->_rawIdentifiers];
  v39[11] = v24;
  v38[12] = @"isMessage";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMessage];
  v22 = [ATXJSONHelper wrapObject:?];
  v39[12] = v22;
  v38[13] = @"isGroupMessage";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGroupMessage];
  v20 = [ATXJSONHelper wrapObject:?];
  v39[13] = v20;
  v38[14] = @"urgency";
  urgency = self->_urgency;
  if (urgency >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_urgency];
  }

  else
  {
    v4 = off_1E80C6080[urgency];
  }

  v19 = v4;
  v5 = [ATXJSONHelper wrapObject:v4];
  v39[14] = v5;
  v38[15] = @"attachmentType";
  attachmentType = self->_attachmentType;
  if (attachmentType >= 6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_attachmentType];
  }

  else
  {
    v7 = off_1E80C60B8[attachmentType];
  }

  v8 = [ATXJSONHelper wrapObject:v7];
  v39[15] = v8;
  v38[16] = @"appSpecifiedScore";
  v9 = MEMORY[0x1E696AD98];
  [(ATXPBUserNotification *)self appSpecifiedScore];
  v10 = [v9 numberWithDouble:?];
  v11 = [ATXJSONHelper wrapObject:v10];
  v39[16] = v11;
  v38[17] = @"derivedData";
  jsonRepresentation = [(ATXPBUserNotificationDerivedData *)self->_derivedData jsonRepresentation];
  v13 = [ATXJSONHelper wrapObject:jsonRepresentation];
  v39[17] = v13;
  v38[18] = @"sharedDigestEngagementTracker";
  sharedEngagementTracker = [(ATXPBUserNotification *)self sharedEngagementTracker];
  jsonRepresentation2 = [sharedEngagementTracker jsonRepresentation];
  v16 = [ATXJSONHelper wrapObject:jsonRepresentation2];
  v39[18] = v16;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:19];

  return v18;
}

@end