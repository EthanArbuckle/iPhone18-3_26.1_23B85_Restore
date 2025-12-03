@interface HKCloudSyncRequest
+ (id)emptySyncRequest;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)matchesFilter:(unint64_t)filter;
- (HKCloudSyncRequest)init;
- (HKCloudSyncRequest)initWithChangesSyncRequest:(id)request contextSyncRequest:(id)syncRequest stateSyncRequest:(id)stateSyncRequest medicalIDSyncRequest:(id)dSyncRequest summarySharingSyncRequest:(id)sharingSyncRequest allowCellular:(BOOL)cellular qualityOfService:(int64_t)service;
- (HKCloudSyncRequest)initWithCoder:(id)coder;
- (HKCloudSyncRequest)initWithIdentifier:(id)identifier changesSyncRequest:(id)request contextSyncRequest:(id)syncRequest stateSyncRequest:(id)stateSyncRequest medicalIDSyncRequest:(id)dSyncRequest summarySharingSyncRequest:(id)sharingSyncRequest allowCellular:(BOOL)cellular qualityOfService:(int64_t)self0;
- (id)description;
- (id)requestByMergingRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCloudSyncRequest

- (HKCloudSyncRequest)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKCloudSyncRequest)initWithIdentifier:(id)identifier changesSyncRequest:(id)request contextSyncRequest:(id)syncRequest stateSyncRequest:(id)stateSyncRequest medicalIDSyncRequest:(id)dSyncRequest summarySharingSyncRequest:(id)sharingSyncRequest allowCellular:(BOOL)cellular qualityOfService:(int64_t)self0
{
  identifierCopy = identifier;
  requestCopy = request;
  syncRequestCopy = syncRequest;
  stateSyncRequestCopy = stateSyncRequest;
  dSyncRequestCopy = dSyncRequest;
  sharingSyncRequestCopy = sharingSyncRequest;
  v36.receiver = self;
  v36.super_class = HKCloudSyncRequest;
  v22 = [(HKCloudSyncRequest *)&v36 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [requestCopy copy];
    changesSyncRequest = v22->_changesSyncRequest;
    v22->_changesSyncRequest = v25;

    v27 = [syncRequestCopy copy];
    contextSyncRequest = v22->_contextSyncRequest;
    v22->_contextSyncRequest = v27;

    v29 = [stateSyncRequestCopy copy];
    stateSyncRequest = v22->_stateSyncRequest;
    v22->_stateSyncRequest = v29;

    v31 = [dSyncRequestCopy copy];
    medicalIDSyncRequest = v22->_medicalIDSyncRequest;
    v22->_medicalIDSyncRequest = v31;

    v33 = [sharingSyncRequestCopy copy];
    summarySharingSyncRequest = v22->_summarySharingSyncRequest;
    v22->_summarySharingSyncRequest = v33;

    v22->_allowCellular = cellular;
    v22->_qualityOfService = service;
  }

  return v22;
}

- (HKCloudSyncRequest)initWithChangesSyncRequest:(id)request contextSyncRequest:(id)syncRequest stateSyncRequest:(id)stateSyncRequest medicalIDSyncRequest:(id)dSyncRequest summarySharingSyncRequest:(id)sharingSyncRequest allowCellular:(BOOL)cellular qualityOfService:(int64_t)service
{
  v15 = MEMORY[0x1E696AFB0];
  sharingSyncRequestCopy = sharingSyncRequest;
  dSyncRequestCopy = dSyncRequest;
  stateSyncRequestCopy = stateSyncRequest;
  syncRequestCopy = syncRequest;
  requestCopy = request;
  uUID = [v15 UUID];
  LOBYTE(v24) = cellular;
  v22 = [(HKCloudSyncRequest *)self initWithIdentifier:uUID changesSyncRequest:requestCopy contextSyncRequest:syncRequestCopy stateSyncRequest:stateSyncRequestCopy medicalIDSyncRequest:dSyncRequestCopy summarySharingSyncRequest:sharingSyncRequestCopy allowCellular:v24 qualityOfService:service];

  return v22;
}

- (id)requestByMergingRequest:(id)request
{
  requestCopy = request;
  changesSyncRequest = [requestCopy changesSyncRequest];
  if (changesSyncRequest)
  {
    changesSyncRequest2 = [requestCopy changesSyncRequest];
    changesSyncRequest3 = [(HKCloudSyncRequest *)self changesSyncRequest];
    changesSyncRequest4 = [changesSyncRequest2 requestByMergingRequest:changesSyncRequest3];
  }

  else
  {
    changesSyncRequest4 = [(HKCloudSyncRequest *)self changesSyncRequest];
  }

  contextSyncRequest = [requestCopy contextSyncRequest];
  if (contextSyncRequest)
  {
    contextSyncRequest2 = [requestCopy contextSyncRequest];
    contextSyncRequest3 = [(HKCloudSyncRequest *)self contextSyncRequest];
    contextSyncRequest4 = [contextSyncRequest2 requestByMergingRequest:contextSyncRequest3];
  }

  else
  {
    contextSyncRequest4 = [(HKCloudSyncRequest *)self contextSyncRequest];
  }

  stateSyncRequest = [requestCopy stateSyncRequest];
  if (stateSyncRequest)
  {
    stateSyncRequest2 = [requestCopy stateSyncRequest];
    stateSyncRequest3 = [(HKCloudSyncRequest *)self stateSyncRequest];
    stateSyncRequest4 = [stateSyncRequest2 requestByMergingRequest:stateSyncRequest3];
  }

  else
  {
    stateSyncRequest4 = [(HKCloudSyncRequest *)self stateSyncRequest];
  }

  medicalIDSyncRequest = [requestCopy medicalIDSyncRequest];
  if (medicalIDSyncRequest)
  {
    medicalIDSyncRequest2 = [requestCopy medicalIDSyncRequest];
    medicalIDSyncRequest3 = [(HKCloudSyncRequest *)self medicalIDSyncRequest];
    medicalIDSyncRequest4 = [medicalIDSyncRequest2 requestByMergingRequest:medicalIDSyncRequest3];
  }

  else
  {
    medicalIDSyncRequest4 = [(HKCloudSyncRequest *)self medicalIDSyncRequest];
  }

  summarySharingSyncRequest = [requestCopy summarySharingSyncRequest];
  if (summarySharingSyncRequest)
  {
    summarySharingSyncRequest2 = [requestCopy summarySharingSyncRequest];
    summarySharingSyncRequest3 = [(HKCloudSyncRequest *)self summarySharingSyncRequest];
    summarySharingSyncRequest4 = [summarySharingSyncRequest2 requestByMergingRequest:summarySharingSyncRequest3];
  }

  else
  {
    summarySharingSyncRequest4 = [(HKCloudSyncRequest *)self summarySharingSyncRequest];
  }

  v25 = [HKCloudSyncRequest alloc];
  if ([(HKCloudSyncRequest *)self allowCellular])
  {
    allowCellular = 1;
  }

  else
  {
    allowCellular = [requestCopy allowCellular];
  }

  qualityOfService = [(HKCloudSyncRequest *)self qualityOfService];
  qualityOfService2 = [requestCopy qualityOfService];
  if (qualityOfService <= qualityOfService2)
  {
    v29 = qualityOfService2;
  }

  else
  {
    v29 = qualityOfService;
  }

  v30 = [(HKCloudSyncRequest *)v25 initWithChangesSyncRequest:changesSyncRequest4 contextSyncRequest:contextSyncRequest4 stateSyncRequest:stateSyncRequest4 medicalIDSyncRequest:medicalIDSyncRequest4 summarySharingSyncRequest:summarySharingSyncRequest4 allowCellular:allowCellular qualityOfService:v29];

  return v30;
}

+ (id)emptySyncRequest
{
  v2 = [[self alloc] initWithChangesSyncRequest:0 contextSyncRequest:0 stateSyncRequest:0 medicalIDSyncRequest:0 summarySharingSyncRequest:0 allowCellular:0 qualityOfService:-1];

  return v2;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (![equivalentCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  changesSyncRequest = [equivalentCopy changesSyncRequest];
  v6 = changesSyncRequest;
  changesSyncRequest = self->_changesSyncRequest;
  if (changesSyncRequest == changesSyncRequest)
  {
  }

  else
  {
    if (!changesSyncRequest)
    {
      goto LABEL_26;
    }

    changesSyncRequest2 = [equivalentCopy changesSyncRequest];
    v9 = [changesSyncRequest2 isEqual:self->_changesSyncRequest];

    if (!v9)
    {
      goto LABEL_27;
    }
  }

  contextSyncRequest = [equivalentCopy contextSyncRequest];
  v6 = contextSyncRequest;
  contextSyncRequest = self->_contextSyncRequest;
  if (contextSyncRequest == contextSyncRequest)
  {
  }

  else
  {
    if (!contextSyncRequest)
    {
      goto LABEL_26;
    }

    contextSyncRequest2 = [equivalentCopy contextSyncRequest];
    v13 = [contextSyncRequest2 isEqual:self->_contextSyncRequest];

    if (!v13)
    {
      goto LABEL_27;
    }
  }

  stateSyncRequest = [equivalentCopy stateSyncRequest];
  v6 = stateSyncRequest;
  stateSyncRequest = self->_stateSyncRequest;
  if (stateSyncRequest == stateSyncRequest)
  {
  }

  else
  {
    if (!stateSyncRequest)
    {
      goto LABEL_26;
    }

    stateSyncRequest2 = [equivalentCopy stateSyncRequest];
    v17 = [stateSyncRequest2 isEqual:self->_stateSyncRequest];

    if (!v17)
    {
      goto LABEL_27;
    }
  }

  summarySharingSyncRequest = [equivalentCopy summarySharingSyncRequest];
  v6 = summarySharingSyncRequest;
  summarySharingSyncRequest = self->_summarySharingSyncRequest;
  if (summarySharingSyncRequest == summarySharingSyncRequest)
  {
  }

  else
  {
    if (!summarySharingSyncRequest)
    {
      goto LABEL_26;
    }

    summarySharingSyncRequest2 = [equivalentCopy summarySharingSyncRequest];
    v21 = [summarySharingSyncRequest2 isEqual:self->_summarySharingSyncRequest];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  medicalIDSyncRequest = [equivalentCopy medicalIDSyncRequest];
  v6 = medicalIDSyncRequest;
  medicalIDSyncRequest = self->_medicalIDSyncRequest;
  if (medicalIDSyncRequest != medicalIDSyncRequest)
  {
    if (medicalIDSyncRequest)
    {
      medicalIDSyncRequest2 = [equivalentCopy medicalIDSyncRequest];
      v25 = [medicalIDSyncRequest2 isEqual:self->_medicalIDSyncRequest];

      if (!v25)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_30:
  if (self->_allowCellular == [equivalentCopy allowCellular])
  {
    v26 = [equivalentCopy qualityOfService] == self->_qualityOfService;
    goto LABEL_28;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![(HKCloudSyncRequest *)self isEquivalent:equalCopy])
  {
    goto LABEL_9;
  }

  identifier = [equalCopy identifier];
  v6 = identifier;
  identifier = self->_identifier;
  if (identifier == identifier)
  {
  }

  else
  {
    if (!identifier)
    {

LABEL_9:
      v10 = 0;
      goto LABEL_10;
    }

    identifier2 = [equalCopy identifier];
    v9 = [identifier2 isEqual:self->_identifier];

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)matchesFilter:(unint64_t)filter
{
  filterCopy = filter;
  if (filter)
  {
    changesSyncRequest = [(HKCloudSyncRequest *)self changesSyncRequest];
    v5 = changesSyncRequest == 0;

    if ((filterCopy & 2) != 0)
    {
LABEL_3:
      contextSyncRequest = [(HKCloudSyncRequest *)self contextSyncRequest];
      v7 = contextSyncRequest == 0;

      if ((filterCopy & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    if ((filter & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((filterCopy & 4) != 0)
  {
LABEL_4:
    stateSyncRequest = [(HKCloudSyncRequest *)self stateSyncRequest];
    v9 = stateSyncRequest == 0;

    if ((filterCopy & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = 1;
    if ((filterCopy & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v13 = 1;
    return v11 & ~(v5 || v7 || v9) & v13 & 1;
  }

LABEL_9:
  v9 = 0;
  if ((filterCopy & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  medicalIDSyncRequest = [(HKCloudSyncRequest *)self medicalIDSyncRequest];
  v11 = medicalIDSyncRequest != 0;

  if ((filterCopy & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  summarySharingSyncRequest = [(HKCloudSyncRequest *)self summarySharingSyncRequest];
  v13 = summarySharingSyncRequest != 0;

  return v11 & ~(v5 || v7 || v9) & v13 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  changesSyncRequest = self->_changesSyncRequest;
  coderCopy = coder;
  [coderCopy encodeObject:changesSyncRequest forKey:@"changesSyncRequest"];
  [coderCopy encodeObject:self->_contextSyncRequest forKey:@"contextSyncRequest"];
  [coderCopy encodeObject:self->_stateSyncRequest forKey:@"stateSyncRequest"];
  [coderCopy encodeObject:self->_medicalIDSyncRequest forKey:@"medicalIDSyncRequest"];
  [coderCopy encodeObject:self->_summarySharingSyncRequest forKey:@"summarySharingSyncRequest"];
  [coderCopy encodeObject:self->_identifier forKey:@"requestIdentifier"];
  [coderCopy encodeBool:self->_allowCellular forKey:@"allowCellular"];
  [coderCopy encodeInteger:self->_qualityOfService forKey:@"qualityOfService"];
}

- (HKCloudSyncRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changesSyncRequest"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextSyncRequest"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateSyncRequest"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"medicalIDSyncRequest"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summarySharingSyncRequest"];
    LOBYTE(v13) = [coderCopy decodeBoolForKey:@"allowCellular"];
    self = -[HKCloudSyncRequest initWithIdentifier:changesSyncRequest:contextSyncRequest:stateSyncRequest:medicalIDSyncRequest:summarySharingSyncRequest:allowCellular:qualityOfService:](self, "initWithIdentifier:changesSyncRequest:contextSyncRequest:stateSyncRequest:medicalIDSyncRequest:summarySharingSyncRequest:allowCellular:qualityOfService:", v5, v6, v7, v8, v9, v10, v13, [coderCopy decodeIntegerForKey:@"qualityOfService"]);

    selfCopy = self;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [coderCopy failWithError:v6];
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v13 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  identifier = [(HKCloudSyncRequest *)self identifier];
  uUIDString = [identifier UUIDString];
  changesSyncRequest = [(HKCloudSyncRequest *)self changesSyncRequest];
  contextSyncRequest = [(HKCloudSyncRequest *)self contextSyncRequest];
  stateSyncRequest = [(HKCloudSyncRequest *)self stateSyncRequest];
  medicalIDSyncRequest = [(HKCloudSyncRequest *)self medicalIDSyncRequest];
  summarySharingSyncRequest = [(HKCloudSyncRequest *)self summarySharingSyncRequest];
  v11 = [v13 stringWithFormat:@"<%@:%p %@\n| Changes Sync Request: %@\n| Context Sync Request: %@\n| State Sync Request: %@\n| Medical ID Sync Request: %@\n| Summary Sharing Sync Request: %@\n| Allow Cellular: %d\n| Quality of Service: %ld\n", v3, self, uUIDString, changesSyncRequest, contextSyncRequest, stateSyncRequest, medicalIDSyncRequest, summarySharingSyncRequest, -[HKCloudSyncRequest allowCellular](self, "allowCellular"), -[HKCloudSyncRequest qualityOfService](self, "qualityOfService")];

  return v11;
}

@end