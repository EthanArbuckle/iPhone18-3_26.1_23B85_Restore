@interface AWDSymptomsDiagnosticRemoteUpload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConsentStatus:(id)status;
- (int)StringAsPreflightStatus:(id)status;
- (int)StringAsPrimaryNetworkObservedOnCompletions:(id)completions;
- (int)StringAsRequestStatus:(id)status;
- (int)StringAsTaskStatus:(id)status;
- (int)consentStatus;
- (int)preflightStatus;
- (int)primaryNetworkObservedOnCompletionAtIndex:(unint64_t)index;
- (int)requestStatus;
- (int)taskHttpStatusCodeAtIndex:(unint64_t)index;
- (int)taskRetryCountAtIndex:(unint64_t)index;
- (int)taskStatusAtIndex:(unint64_t)index;
- (int64_t)taskErrorCodeAtIndex:(unint64_t)index;
- (int64_t)taskFileSizeAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addTaskErrorDomain:(id)domain;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasConsentStatus:(BOOL)status;
- (void)setHasExpectedFileCount:(BOOL)count;
- (void)setHasPreflightStatus:(BOOL)status;
- (void)setHasRadarIdentifier:(BOOL)identifier;
- (void)setHasRequestStatus:(BOOL)status;
- (void)setHasRequestedTimestamp:(BOOL)timestamp;
- (void)setHasScheduledTimestamp:(BOOL)timestamp;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUrgency:(BOOL)urgency;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsDiagnosticRemoteUpload

- (void)dealloc
{
  PBRepeatedInt64Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt64Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDSymptomsDiagnosticRemoteUpload;
  [(AWDSymptomsDiagnosticRemoteUpload *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRequestedTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasScheduledTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRadarIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
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

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)preflightStatus
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_preflightStatus;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPreflightStatus:(BOOL)status
{
  if (status)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)StringAsPreflightStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"CaseNotFound"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"NoRecordedPayloads"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"PayloadsAllUnavailable"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"PayloadsPartiallyMissing"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"PayloadsFullyAvailable"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)consentStatus
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_consentStatus;
  }

  else
  {
    return 1;
  }
}

- (void)setHasConsentStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsConsentStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"ConsentNotRequired"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"ConsentRequired"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"ConsentDenied"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"ConsentGranted"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)requestStatus
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_requestStatus;
  }

  else
  {
    return 1;
  }
}

- (void)setHasRequestStatus:(BOOL)status
{
  if (status)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsRequestStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UploadPending"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"UploadFailed"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"UploadCompleted"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasExpectedFileCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int64_t)taskFileSizeAtIndex:(unint64_t)index
{
  p_taskFileSizes = &self->_taskFileSizes;
  count = self->_taskFileSizes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_taskFileSizes->list[index];
}

- (int)taskStatusAtIndex:(unint64_t)index
{
  p_taskStatus = &self->_taskStatus;
  count = self->_taskStatus.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_taskStatus->list[index];
}

- (int)StringAsTaskStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UploadTaskPending"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"UploadTaskCompleted"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"UploadTaskError"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)taskRetryCountAtIndex:(unint64_t)index
{
  p_taskRetryCounts = &self->_taskRetryCounts;
  count = self->_taskRetryCounts.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_taskRetryCounts->list[index];
}

- (int)taskHttpStatusCodeAtIndex:(unint64_t)index
{
  p_taskHttpStatusCodes = &self->_taskHttpStatusCodes;
  count = self->_taskHttpStatusCodes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_taskHttpStatusCodes->list[index];
}

- (void)addTaskErrorDomain:(id)domain
{
  domainCopy = domain;
  taskErrorDomains = self->_taskErrorDomains;
  v8 = domainCopy;
  if (!taskErrorDomains)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_taskErrorDomains;
    self->_taskErrorDomains = v6;

    domainCopy = v8;
    taskErrorDomains = self->_taskErrorDomains;
  }

  [(NSMutableArray *)taskErrorDomains addObject:domainCopy];
}

- (int64_t)taskErrorCodeAtIndex:(unint64_t)index
{
  p_taskErrorCodes = &self->_taskErrorCodes;
  count = self->_taskErrorCodes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_taskErrorCodes->list[index];
}

- (int)primaryNetworkObservedOnCompletionAtIndex:(unint64_t)index
{
  p_primaryNetworkObservedOnCompletions = &self->_primaryNetworkObservedOnCompletions;
  count = self->_primaryNetworkObservedOnCompletions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_primaryNetworkObservedOnCompletions->list[index];
}

- (int)StringAsPrimaryNetworkObservedOnCompletions:(id)completions
{
  completionsCopy = completions;
  if ([completionsCopy isEqualToString:@"PrimaryNetworkWiFi"])
  {
    v4 = 1;
  }

  else if ([completionsCopy isEqualToString:@"PrimaryNetworkCellular"])
  {
    v4 = 2;
  }

  else if ([completionsCopy isEqualToString:@"PrimaryNetworkWiredEthernet"])
  {
    v4 = 3;
  }

  else if ([completionsCopy isEqualToString:@"PrimaryNetworkNone"])
  {
    v4 = 128;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsDiagnosticRemoteUpload;
  v4 = [(AWDSymptomsDiagnosticRemoteUpload *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsDiagnosticRemoteUpload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v25 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_requestedTimestamp];
  [dictionary setObject:v26 forKey:@"requestedTimestamp"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_scheduledTimestamp];
    [dictionary setObject:v5 forKey:@"scheduledTimestamp"];
  }

LABEL_5:
  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier)
  {
    [dictionary setObject:caseIdentifier forKey:@"caseIdentifier"];
  }

  v7 = self->_has;
  if ((v7 & 0x80) != 0)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_radarIdentifier];
    [dictionary setObject:v27 forKey:@"radarIdentifier"];

    v7 = self->_has;
    if ((v7 & 1) == 0)
    {
LABEL_9:
      if ((v7 & 0x200) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_apnsMsgIdentifier];
  [dictionary setObject:v28 forKey:@"apnsMsgIdentifier"];

  v7 = self->_has;
  if ((v7 & 0x200) == 0)
  {
LABEL_10:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_urgency];
  [dictionary setObject:v29 forKey:@"urgency"];

  v7 = self->_has;
  if ((v7 & 0x40) == 0)
  {
LABEL_11:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_49:
  v30 = self->_preflightStatus - 1;
  if (v30 >= 5)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_preflightStatus];
  }

  else
  {
    v31 = off_278CF21F0[v30];
  }

  [dictionary setObject:v31 forKey:@"preflightStatus"];

  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_53:
  v32 = self->_consentStatus - 1;
  if (v32 >= 4)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_consentStatus];
  }

  else
  {
    v33 = off_278CF2218[v32];
  }

  [dictionary setObject:v33 forKey:@"consentStatus"];

  v7 = self->_has;
  if ((v7 & 0x100) == 0)
  {
LABEL_13:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_57:
  v34 = self->_requestStatus - 1;
  if (v34 >= 3)
  {
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_requestStatus];
  }

  else
  {
    v35 = off_278CF2238[v34];
  }

  [dictionary setObject:v35 forKey:@"requestStatus"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_expectedFileCount];
    [dictionary setObject:v8 forKey:@"expectedFileCount"];
  }

LABEL_15:
  v9 = PBRepeatedInt64NSArray();
  [dictionary setObject:v9 forKey:@"taskFileSize"];

  p_taskStatus = &self->_taskStatus;
  if (self->_taskStatus.count)
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_taskStatus.count)
    {
      v12 = 0;
      do
      {
        v13 = p_taskStatus->list[v12] - 1;
        if (v13 >= 3)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_taskStatus->list[v12]];
        }

        else
        {
          v14 = off_278CF2250[v13];
        }

        [v11 addObject:v14];

        ++v12;
      }

      while (v12 < self->_taskStatus.count);
    }

    [dictionary setObject:v11 forKey:@"taskStatus"];
  }

  v15 = PBRepeatedInt32NSArray();
  [dictionary setObject:v15 forKey:@"taskRetryCount"];

  v16 = PBRepeatedInt32NSArray();
  [dictionary setObject:v16 forKey:@"taskHttpStatusCode"];

  taskErrorDomains = self->_taskErrorDomains;
  if (taskErrorDomains)
  {
    [dictionary setObject:taskErrorDomains forKey:@"taskErrorDomain"];
  }

  v18 = PBRepeatedInt64NSArray();
  [dictionary setObject:v18 forKey:@"taskErrorCode"];

  p_primaryNetworkObservedOnCompletions = &self->_primaryNetworkObservedOnCompletions;
  if (self->_primaryNetworkObservedOnCompletions.count)
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (p_primaryNetworkObservedOnCompletions->count)
    {
      for (i = 0; i < p_primaryNetworkObservedOnCompletions->count; ++i)
      {
        v22 = p_primaryNetworkObservedOnCompletions->list[i];
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v23 = @"PrimaryNetworkWiredEthernet";
            goto LABEL_38;
          }

          if (v22 != 128)
          {
            goto LABEL_35;
          }

          v23 = @"PrimaryNetworkNone";
        }

        else
        {
          if (v22 == 1)
          {
            v23 = @"PrimaryNetworkWiFi";
            goto LABEL_38;
          }

          if (v22 != 2)
          {
LABEL_35:
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_primaryNetworkObservedOnCompletions->list[i]];
            goto LABEL_38;
          }

          v23 = @"PrimaryNetworkCellular";
        }

LABEL_38:
        [v20 addObject:v23];
      }
    }

    [dictionary setObject:v20 forKey:@"primaryNetworkObservedOnCompletion"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v42 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  requestedTimestamp = self->_requestedTimestamp;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    scheduledTimestamp = self->_scheduledTimestamp;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_caseIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x80) != 0)
  {
    radarIdentifier = self->_radarIdentifier;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((v7 & 1) == 0)
    {
LABEL_9:
      if ((v7 & 0x200) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_46;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  apnsMsgIdentifier = self->_apnsMsgIdentifier;
  PBDataWriterWriteUint64Field();
  v7 = self->_has;
  if ((v7 & 0x200) == 0)
  {
LABEL_10:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  urgency = self->_urgency;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 0x40) == 0)
  {
LABEL_11:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  preflightStatus = self->_preflightStatus;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  consentStatus = self->_consentStatus;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((v7 & 0x100) == 0)
  {
LABEL_13:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_49:
  requestStatus = self->_requestStatus;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    expectedFileCount = self->_expectedFileCount;
    PBDataWriterWriteInt32Field();
  }

LABEL_15:
  if (self->_taskFileSizes.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_taskFileSizes.list[v9];
      PBDataWriterWriteInt64Field();
      ++v9;
    }

    while (v9 < self->_taskFileSizes.count);
  }

  if (self->_taskStatus.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_taskStatus.list[v11];
      PBDataWriterWriteInt32Field();
      ++v11;
    }

    while (v11 < self->_taskStatus.count);
  }

  if (self->_taskRetryCounts.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_taskRetryCounts.list[v13];
      PBDataWriterWriteInt32Field();
      ++v13;
    }

    while (v13 < self->_taskRetryCounts.count);
  }

  if (self->_taskHttpStatusCodes.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_taskHttpStatusCodes.list[v15];
      PBDataWriterWriteInt32Field();
      ++v15;
    }

    while (v15 < self->_taskHttpStatusCodes.count);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = self->_taskErrorDomains;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v19);
  }

  if (self->_taskErrorCodes.count)
  {
    v23 = 0;
    do
    {
      v24 = self->_taskErrorCodes.list[v23];
      PBDataWriterWriteInt64Field();
      ++v23;
    }

    while (v23 < self->_taskErrorCodes.count);
  }

  p_primaryNetworkObservedOnCompletions = &self->_primaryNetworkObservedOnCompletions;
  if (p_primaryNetworkObservedOnCompletions->count)
  {
    v26 = 0;
    do
    {
      v27 = p_primaryNetworkObservedOnCompletions->list[v26];
      PBDataWriterWriteInt32Field();
      ++v26;
    }

    while (v26 < p_primaryNetworkObservedOnCompletions->count);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[22] = self->_timestamp;
    *(toCopy + 114) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[20] = self->_requestedTimestamp;
  *(toCopy + 114) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[21] = self->_scheduledTimestamp;
    *(toCopy + 114) |= 4u;
  }

LABEL_5:
  v29 = toCopy;
  if (self->_caseIdentifier)
  {
    [toCopy setCaseIdentifier:?];
    toCopy = v29;
  }

  v6 = self->_has;
  if ((v6 & 0x80) != 0)
  {
    *(toCopy + 51) = self->_radarIdentifier;
    *(toCopy + 114) |= 0x80u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_9:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  toCopy[19] = self->_apnsMsgIdentifier;
  *(toCopy + 114) |= 1u;
  v6 = self->_has;
  if ((v6 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 56) = self->_urgency;
  *(toCopy + 114) |= 0x200u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 50) = self->_preflightStatus;
  *(toCopy + 114) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_12:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_13;
    }

LABEL_54:
    *(toCopy + 52) = self->_requestStatus;
    *(toCopy + 114) |= 0x100u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_53:
  *(toCopy + 48) = self->_consentStatus;
  *(toCopy + 114) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_54;
  }

LABEL_13:
  if ((v6 & 0x20) != 0)
  {
LABEL_14:
    *(toCopy + 49) = self->_expectedFileCount;
    *(toCopy + 114) |= 0x20u;
  }

LABEL_15:
  if ([(AWDSymptomsDiagnosticRemoteUpload *)self taskFileSizesCount])
  {
    [v29 clearTaskFileSizes];
    taskFileSizesCount = [(AWDSymptomsDiagnosticRemoteUpload *)self taskFileSizesCount];
    if (taskFileSizesCount)
    {
      v8 = taskFileSizesCount;
      for (i = 0; i != v8; ++i)
      {
        [v29 addTaskFileSize:{-[AWDSymptomsDiagnosticRemoteUpload taskFileSizeAtIndex:](self, "taskFileSizeAtIndex:", i)}];
      }
    }
  }

  if ([(AWDSymptomsDiagnosticRemoteUpload *)self taskStatusCount])
  {
    [v29 clearTaskStatus];
    taskStatusCount = [(AWDSymptomsDiagnosticRemoteUpload *)self taskStatusCount];
    if (taskStatusCount)
    {
      v11 = taskStatusCount;
      for (j = 0; j != v11; ++j)
      {
        [v29 addTaskStatus:{-[AWDSymptomsDiagnosticRemoteUpload taskStatusAtIndex:](self, "taskStatusAtIndex:", j)}];
      }
    }
  }

  if ([(AWDSymptomsDiagnosticRemoteUpload *)self taskRetryCountsCount])
  {
    [v29 clearTaskRetryCounts];
    taskRetryCountsCount = [(AWDSymptomsDiagnosticRemoteUpload *)self taskRetryCountsCount];
    if (taskRetryCountsCount)
    {
      v14 = taskRetryCountsCount;
      for (k = 0; k != v14; ++k)
      {
        [v29 addTaskRetryCount:{-[AWDSymptomsDiagnosticRemoteUpload taskRetryCountAtIndex:](self, "taskRetryCountAtIndex:", k)}];
      }
    }
  }

  if ([(AWDSymptomsDiagnosticRemoteUpload *)self taskHttpStatusCodesCount])
  {
    [v29 clearTaskHttpStatusCodes];
    taskHttpStatusCodesCount = [(AWDSymptomsDiagnosticRemoteUpload *)self taskHttpStatusCodesCount];
    if (taskHttpStatusCodesCount)
    {
      v17 = taskHttpStatusCodesCount;
      for (m = 0; m != v17; ++m)
      {
        [v29 addTaskHttpStatusCode:{-[AWDSymptomsDiagnosticRemoteUpload taskHttpStatusCodeAtIndex:](self, "taskHttpStatusCodeAtIndex:", m)}];
      }
    }
  }

  if ([(AWDSymptomsDiagnosticRemoteUpload *)self taskErrorDomainsCount])
  {
    [v29 clearTaskErrorDomains];
    taskErrorDomainsCount = [(AWDSymptomsDiagnosticRemoteUpload *)self taskErrorDomainsCount];
    if (taskErrorDomainsCount)
    {
      v20 = taskErrorDomainsCount;
      for (n = 0; n != v20; ++n)
      {
        v22 = [(AWDSymptomsDiagnosticRemoteUpload *)self taskErrorDomainAtIndex:n];
        [v29 addTaskErrorDomain:v22];
      }
    }
  }

  if ([(AWDSymptomsDiagnosticRemoteUpload *)self taskErrorCodesCount])
  {
    [v29 clearTaskErrorCodes];
    taskErrorCodesCount = [(AWDSymptomsDiagnosticRemoteUpload *)self taskErrorCodesCount];
    if (taskErrorCodesCount)
    {
      v24 = taskErrorCodesCount;
      for (ii = 0; ii != v24; ++ii)
      {
        [v29 addTaskErrorCode:{-[AWDSymptomsDiagnosticRemoteUpload taskErrorCodeAtIndex:](self, "taskErrorCodeAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDSymptomsDiagnosticRemoteUpload *)self primaryNetworkObservedOnCompletionsCount])
  {
    [v29 clearPrimaryNetworkObservedOnCompletions];
    primaryNetworkObservedOnCompletionsCount = [(AWDSymptomsDiagnosticRemoteUpload *)self primaryNetworkObservedOnCompletionsCount];
    if (primaryNetworkObservedOnCompletionsCount)
    {
      v27 = primaryNetworkObservedOnCompletionsCount;
      for (jj = 0; jj != v27; ++jj)
      {
        [v29 addPrimaryNetworkObservedOnCompletion:{-[AWDSymptomsDiagnosticRemoteUpload primaryNetworkObservedOnCompletionAtIndex:](self, "primaryNetworkObservedOnCompletionAtIndex:", jj)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 176) = self->_timestamp;
    *(v5 + 228) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 160) = self->_requestedTimestamp;
  *(v5 + 228) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 168) = self->_scheduledTimestamp;
    *(v5 + 228) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_caseIdentifier copyWithZone:zone];
  v9 = *(v6 + 184);
  *(v6 + 184) = v8;

  v10 = self->_has;
  if ((v10 & 0x80) != 0)
  {
    *(v6 + 204) = self->_radarIdentifier;
    *(v6 + 228) |= 0x80u;
    v10 = self->_has;
    if ((v10 & 1) == 0)
    {
LABEL_7:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 152) = self->_apnsMsgIdentifier;
  *(v6 + 228) |= 1u;
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_8:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v6 + 224) = self->_urgency;
  *(v6 + 228) |= 0x200u;
  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_9:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 200) = self->_preflightStatus;
  *(v6 + 228) |= 0x40u;
  v10 = self->_has;
  if ((v10 & 0x10) == 0)
  {
LABEL_10:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 192) = self->_consentStatus;
  *(v6 + 228) |= 0x10u;
  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_11:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  *(v6 + 208) = self->_requestStatus;
  *(v6 + 228) |= 0x100u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    *(v6 + 196) = self->_expectedFileCount;
    *(v6 + 228) |= 0x20u;
  }

LABEL_13:
  PBRepeatedInt64Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_taskErrorDomains;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v6 addTaskErrorDomain:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  PBRepeatedInt64Copy();
  PBRepeatedInt32Copy();
  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  has = self->_has;
  v6 = *(equalCopy + 114);
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_timestamp != *(equalCopy + 22))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_requestedTimestamp != *(equalCopy + 20))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_scheduledTimestamp != *(equalCopy + 21))
    {
      goto LABEL_63;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_63;
  }

  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier | *(equalCopy + 23))
  {
    if (![(NSString *)caseIdentifier isEqual:?])
    {
LABEL_63:
      IsEqual = 0;
      goto LABEL_64;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 114);
  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_radarIdentifier != *(equalCopy + 51))
    {
      goto LABEL_63;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_63;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_apnsMsgIdentifier != *(equalCopy + 19))
    {
      goto LABEL_63;
    }
  }

  else if (v8)
  {
    goto LABEL_63;
  }

  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 114) & 0x200) == 0 || self->_urgency != *(equalCopy + 56))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 114) & 0x200) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_preflightStatus != *(equalCopy + 50))
    {
      goto LABEL_63;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_consentStatus != *(equalCopy + 48))
    {
      goto LABEL_63;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 114) & 0x100) == 0 || self->_requestStatus != *(equalCopy + 52))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 114) & 0x100) != 0)
  {
    goto LABEL_63;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_expectedFileCount != *(equalCopy + 49))
    {
      goto LABEL_63;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_63;
  }

  if (!PBRepeatedInt64IsEqual())
  {
    goto LABEL_63;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_63;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_63;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_63;
  }

  taskErrorDomains = self->_taskErrorDomains;
  if (taskErrorDomains | *(equalCopy + 27))
  {
    if (![(NSMutableArray *)taskErrorDomains isEqual:?])
    {
      goto LABEL_63;
    }
  }

  if (!PBRepeatedInt64IsEqual())
  {
    goto LABEL_63;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_64:

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) == 0)
  {
    v4 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = 2654435761u * self->_timestamp;
  if ((has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761u * self->_requestedTimestamp;
  if ((has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761u * self->_scheduledTimestamp;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [(NSString *)self->_caseIdentifier hash];
  v8 = self->_has;
  if ((v8 & 0x80) != 0)
  {
    v9 = 2654435761 * self->_radarIdentifier;
    if (v8)
    {
LABEL_10:
      v10 = 2654435761u * self->_apnsMsgIdentifier;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v10 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v11 = 2654435761 * self->_urgency;
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = 0;
  if ((v8 & 0x40) != 0)
  {
LABEL_12:
    v12 = 2654435761 * self->_preflightStatus;
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = 0;
  if ((v8 & 0x10) != 0)
  {
LABEL_13:
    v13 = 2654435761 * self->_consentStatus;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    v14 = 0;
    if ((v8 & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v13 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  v14 = 2654435761 * self->_requestStatus;
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v15 = 2654435761 * self->_expectedFileCount;
LABEL_23:
  v16 = v5 ^ v4 ^ v6 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ PBRepeatedInt64Hash();
  v17 = v16 ^ PBRepeatedInt32Hash() ^ v7;
  v18 = PBRepeatedInt32Hash();
  v19 = v18 ^ PBRepeatedInt32Hash();
  v20 = v17 ^ v19 ^ [(NSMutableArray *)self->_taskErrorDomains hash];
  v21 = PBRepeatedInt64Hash();
  return v20 ^ v21 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  v37 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 114);
  if ((v6 & 8) != 0)
  {
    self->_timestamp = fromCopy[22];
    *&self->_has |= 8u;
    v6 = *(fromCopy + 114);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_requestedTimestamp = fromCopy[20];
  *&self->_has |= 2u;
  if ((*(fromCopy + 114) & 4) != 0)
  {
LABEL_4:
    self->_scheduledTimestamp = fromCopy[21];
    *&self->_has |= 4u;
  }

LABEL_5:
  if (fromCopy[23])
  {
    [(AWDSymptomsDiagnosticRemoteUpload *)self setCaseIdentifier:?];
  }

  v7 = *(v5 + 114);
  if ((v7 & 0x80) != 0)
  {
    self->_radarIdentifier = *(v5 + 51);
    *&self->_has |= 0x80u;
    v7 = *(v5 + 114);
    if ((v7 & 1) == 0)
    {
LABEL_9:
      if ((v7 & 0x200) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_46;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_apnsMsgIdentifier = v5[19];
  *&self->_has |= 1u;
  v7 = *(v5 + 114);
  if ((v7 & 0x200) == 0)
  {
LABEL_10:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_urgency = *(v5 + 56);
  *&self->_has |= 0x200u;
  v7 = *(v5 + 114);
  if ((v7 & 0x40) == 0)
  {
LABEL_11:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_preflightStatus = *(v5 + 50);
  *&self->_has |= 0x40u;
  v7 = *(v5 + 114);
  if ((v7 & 0x10) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_consentStatus = *(v5 + 48);
  *&self->_has |= 0x10u;
  v7 = *(v5 + 114);
  if ((v7 & 0x100) == 0)
  {
LABEL_13:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_49:
  self->_requestStatus = *(v5 + 52);
  *&self->_has |= 0x100u;
  if ((*(v5 + 114) & 0x20) != 0)
  {
LABEL_14:
    self->_expectedFileCount = *(v5 + 49);
    *&self->_has |= 0x20u;
  }

LABEL_15:
  taskFileSizesCount = [v5 taskFileSizesCount];
  if (taskFileSizesCount)
  {
    v9 = taskFileSizesCount;
    for (i = 0; i != v9; ++i)
    {
      -[AWDSymptomsDiagnosticRemoteUpload addTaskFileSize:](self, "addTaskFileSize:", [v5 taskFileSizeAtIndex:i]);
    }
  }

  taskStatusCount = [v5 taskStatusCount];
  if (taskStatusCount)
  {
    v12 = taskStatusCount;
    for (j = 0; j != v12; ++j)
    {
      -[AWDSymptomsDiagnosticRemoteUpload addTaskStatus:](self, "addTaskStatus:", [v5 taskStatusAtIndex:j]);
    }
  }

  taskRetryCountsCount = [v5 taskRetryCountsCount];
  if (taskRetryCountsCount)
  {
    v15 = taskRetryCountsCount;
    for (k = 0; k != v15; ++k)
    {
      -[AWDSymptomsDiagnosticRemoteUpload addTaskRetryCount:](self, "addTaskRetryCount:", [v5 taskRetryCountAtIndex:k]);
    }
  }

  taskHttpStatusCodesCount = [v5 taskHttpStatusCodesCount];
  if (taskHttpStatusCodesCount)
  {
    v18 = taskHttpStatusCodesCount;
    for (m = 0; m != v18; ++m)
    {
      -[AWDSymptomsDiagnosticRemoteUpload addTaskHttpStatusCode:](self, "addTaskHttpStatusCode:", [v5 taskHttpStatusCodeAtIndex:m]);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v5[27];
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (n = 0; n != v22; ++n)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDSymptomsDiagnosticRemoteUpload *)self addTaskErrorDomain:*(*(&v32 + 1) + 8 * n), v32];
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v22);
  }

  taskErrorCodesCount = [v5 taskErrorCodesCount];
  if (taskErrorCodesCount)
  {
    v26 = taskErrorCodesCount;
    for (ii = 0; ii != v26; ++ii)
    {
      -[AWDSymptomsDiagnosticRemoteUpload addTaskErrorCode:](self, "addTaskErrorCode:", [v5 taskErrorCodeAtIndex:{ii, v32}]);
    }
  }

  primaryNetworkObservedOnCompletionsCount = [v5 primaryNetworkObservedOnCompletionsCount];
  if (primaryNetworkObservedOnCompletionsCount)
  {
    v29 = primaryNetworkObservedOnCompletionsCount;
    for (jj = 0; jj != v29; ++jj)
    {
      -[AWDSymptomsDiagnosticRemoteUpload addPrimaryNetworkObservedOnCompletion:](self, "addPrimaryNetworkObservedOnCompletion:", [v5 primaryNetworkObservedOnCompletionAtIndex:jj]);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

@end