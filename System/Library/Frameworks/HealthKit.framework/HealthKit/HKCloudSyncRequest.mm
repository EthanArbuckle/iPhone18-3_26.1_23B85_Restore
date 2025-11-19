@interface HKCloudSyncRequest
+ (id)emptySyncRequest;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (BOOL)matchesFilter:(unint64_t)a3;
- (HKCloudSyncRequest)init;
- (HKCloudSyncRequest)initWithChangesSyncRequest:(id)a3 contextSyncRequest:(id)a4 stateSyncRequest:(id)a5 medicalIDSyncRequest:(id)a6 summarySharingSyncRequest:(id)a7 allowCellular:(BOOL)a8 qualityOfService:(int64_t)a9;
- (HKCloudSyncRequest)initWithCoder:(id)a3;
- (HKCloudSyncRequest)initWithIdentifier:(id)a3 changesSyncRequest:(id)a4 contextSyncRequest:(id)a5 stateSyncRequest:(id)a6 medicalIDSyncRequest:(id)a7 summarySharingSyncRequest:(id)a8 allowCellular:(BOOL)a9 qualityOfService:(int64_t)a10;
- (id)description;
- (id)requestByMergingRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (HKCloudSyncRequest)initWithIdentifier:(id)a3 changesSyncRequest:(id)a4 contextSyncRequest:(id)a5 stateSyncRequest:(id)a6 medicalIDSyncRequest:(id)a7 summarySharingSyncRequest:(id)a8 allowCellular:(BOOL)a9 qualityOfService:(int64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v36.receiver = self;
  v36.super_class = HKCloudSyncRequest;
  v22 = [(HKCloudSyncRequest *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [v17 copy];
    changesSyncRequest = v22->_changesSyncRequest;
    v22->_changesSyncRequest = v25;

    v27 = [v18 copy];
    contextSyncRequest = v22->_contextSyncRequest;
    v22->_contextSyncRequest = v27;

    v29 = [v19 copy];
    stateSyncRequest = v22->_stateSyncRequest;
    v22->_stateSyncRequest = v29;

    v31 = [v20 copy];
    medicalIDSyncRequest = v22->_medicalIDSyncRequest;
    v22->_medicalIDSyncRequest = v31;

    v33 = [v21 copy];
    summarySharingSyncRequest = v22->_summarySharingSyncRequest;
    v22->_summarySharingSyncRequest = v33;

    v22->_allowCellular = a9;
    v22->_qualityOfService = a10;
  }

  return v22;
}

- (HKCloudSyncRequest)initWithChangesSyncRequest:(id)a3 contextSyncRequest:(id)a4 stateSyncRequest:(id)a5 medicalIDSyncRequest:(id)a6 summarySharingSyncRequest:(id)a7 allowCellular:(BOOL)a8 qualityOfService:(int64_t)a9
{
  v15 = MEMORY[0x1E696AFB0];
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v15 UUID];
  LOBYTE(v24) = a8;
  v22 = [(HKCloudSyncRequest *)self initWithIdentifier:v21 changesSyncRequest:v20 contextSyncRequest:v19 stateSyncRequest:v18 medicalIDSyncRequest:v17 summarySharingSyncRequest:v16 allowCellular:v24 qualityOfService:a9];

  return v22;
}

- (id)requestByMergingRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 changesSyncRequest];
  if (v5)
  {
    v6 = [v4 changesSyncRequest];
    v7 = [(HKCloudSyncRequest *)self changesSyncRequest];
    v8 = [v6 requestByMergingRequest:v7];
  }

  else
  {
    v8 = [(HKCloudSyncRequest *)self changesSyncRequest];
  }

  v9 = [v4 contextSyncRequest];
  if (v9)
  {
    v10 = [v4 contextSyncRequest];
    v11 = [(HKCloudSyncRequest *)self contextSyncRequest];
    v12 = [v10 requestByMergingRequest:v11];
  }

  else
  {
    v12 = [(HKCloudSyncRequest *)self contextSyncRequest];
  }

  v13 = [v4 stateSyncRequest];
  if (v13)
  {
    v14 = [v4 stateSyncRequest];
    v15 = [(HKCloudSyncRequest *)self stateSyncRequest];
    v16 = [v14 requestByMergingRequest:v15];
  }

  else
  {
    v16 = [(HKCloudSyncRequest *)self stateSyncRequest];
  }

  v17 = [v4 medicalIDSyncRequest];
  if (v17)
  {
    v18 = [v4 medicalIDSyncRequest];
    v19 = [(HKCloudSyncRequest *)self medicalIDSyncRequest];
    v20 = [v18 requestByMergingRequest:v19];
  }

  else
  {
    v20 = [(HKCloudSyncRequest *)self medicalIDSyncRequest];
  }

  v21 = [v4 summarySharingSyncRequest];
  if (v21)
  {
    v22 = [v4 summarySharingSyncRequest];
    v23 = [(HKCloudSyncRequest *)self summarySharingSyncRequest];
    v24 = [v22 requestByMergingRequest:v23];
  }

  else
  {
    v24 = [(HKCloudSyncRequest *)self summarySharingSyncRequest];
  }

  v25 = [HKCloudSyncRequest alloc];
  if ([(HKCloudSyncRequest *)self allowCellular])
  {
    v26 = 1;
  }

  else
  {
    v26 = [v4 allowCellular];
  }

  v27 = [(HKCloudSyncRequest *)self qualityOfService];
  v28 = [v4 qualityOfService];
  if (v27 <= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  v30 = [(HKCloudSyncRequest *)v25 initWithChangesSyncRequest:v8 contextSyncRequest:v12 stateSyncRequest:v16 medicalIDSyncRequest:v20 summarySharingSyncRequest:v24 allowCellular:v26 qualityOfService:v29];

  return v30;
}

+ (id)emptySyncRequest
{
  v2 = [[a1 alloc] initWithChangesSyncRequest:0 contextSyncRequest:0 stateSyncRequest:0 medicalIDSyncRequest:0 summarySharingSyncRequest:0 allowCellular:0 qualityOfService:-1];

  return v2;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [v4 changesSyncRequest];
  v6 = v5;
  changesSyncRequest = self->_changesSyncRequest;
  if (v5 == changesSyncRequest)
  {
  }

  else
  {
    if (!changesSyncRequest)
    {
      goto LABEL_26;
    }

    v8 = [v4 changesSyncRequest];
    v9 = [v8 isEqual:self->_changesSyncRequest];

    if (!v9)
    {
      goto LABEL_27;
    }
  }

  v10 = [v4 contextSyncRequest];
  v6 = v10;
  contextSyncRequest = self->_contextSyncRequest;
  if (v10 == contextSyncRequest)
  {
  }

  else
  {
    if (!contextSyncRequest)
    {
      goto LABEL_26;
    }

    v12 = [v4 contextSyncRequest];
    v13 = [v12 isEqual:self->_contextSyncRequest];

    if (!v13)
    {
      goto LABEL_27;
    }
  }

  v14 = [v4 stateSyncRequest];
  v6 = v14;
  stateSyncRequest = self->_stateSyncRequest;
  if (v14 == stateSyncRequest)
  {
  }

  else
  {
    if (!stateSyncRequest)
    {
      goto LABEL_26;
    }

    v16 = [v4 stateSyncRequest];
    v17 = [v16 isEqual:self->_stateSyncRequest];

    if (!v17)
    {
      goto LABEL_27;
    }
  }

  v18 = [v4 summarySharingSyncRequest];
  v6 = v18;
  summarySharingSyncRequest = self->_summarySharingSyncRequest;
  if (v18 == summarySharingSyncRequest)
  {
  }

  else
  {
    if (!summarySharingSyncRequest)
    {
      goto LABEL_26;
    }

    v20 = [v4 summarySharingSyncRequest];
    v21 = [v20 isEqual:self->_summarySharingSyncRequest];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  v22 = [v4 medicalIDSyncRequest];
  v6 = v22;
  medicalIDSyncRequest = self->_medicalIDSyncRequest;
  if (v22 != medicalIDSyncRequest)
  {
    if (medicalIDSyncRequest)
    {
      v24 = [v4 medicalIDSyncRequest];
      v25 = [v24 isEqual:self->_medicalIDSyncRequest];

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
  if (self->_allowCellular == [v4 allowCellular])
  {
    v26 = [v4 qualityOfService] == self->_qualityOfService;
    goto LABEL_28;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![(HKCloudSyncRequest *)self isEquivalent:v4])
  {
    goto LABEL_9;
  }

  v5 = [v4 identifier];
  v6 = v5;
  identifier = self->_identifier;
  if (v5 == identifier)
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

    v8 = [v4 identifier];
    v9 = [v8 isEqual:self->_identifier];

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)matchesFilter:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v14 = [(HKCloudSyncRequest *)self changesSyncRequest];
    v5 = v14 == 0;

    if ((v3 & 2) != 0)
    {
LABEL_3:
      v6 = [(HKCloudSyncRequest *)self contextSyncRequest];
      v7 = v6 == 0;

      if ((v3 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    if ((a3 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v8 = [(HKCloudSyncRequest *)self stateSyncRequest];
    v9 = v8 == 0;

    if ((v3 & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = 1;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v13 = 1;
    return v11 & ~(v5 || v7 || v9) & v13 & 1;
  }

LABEL_9:
  v9 = 0;
  if ((v3 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v10 = [(HKCloudSyncRequest *)self medicalIDSyncRequest];
  v11 = v10 != 0;

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v12 = [(HKCloudSyncRequest *)self summarySharingSyncRequest];
  v13 = v12 != 0;

  return v11 & ~(v5 || v7 || v9) & v13 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  changesSyncRequest = self->_changesSyncRequest;
  v5 = a3;
  [v5 encodeObject:changesSyncRequest forKey:@"changesSyncRequest"];
  [v5 encodeObject:self->_contextSyncRequest forKey:@"contextSyncRequest"];
  [v5 encodeObject:self->_stateSyncRequest forKey:@"stateSyncRequest"];
  [v5 encodeObject:self->_medicalIDSyncRequest forKey:@"medicalIDSyncRequest"];
  [v5 encodeObject:self->_summarySharingSyncRequest forKey:@"summarySharingSyncRequest"];
  [v5 encodeObject:self->_identifier forKey:@"requestIdentifier"];
  [v5 encodeBool:self->_allowCellular forKey:@"allowCellular"];
  [v5 encodeInteger:self->_qualityOfService forKey:@"qualityOfService"];
}

- (HKCloudSyncRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changesSyncRequest"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextSyncRequest"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateSyncRequest"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"medicalIDSyncRequest"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summarySharingSyncRequest"];
    LOBYTE(v13) = [v4 decodeBoolForKey:@"allowCellular"];
    self = -[HKCloudSyncRequest initWithIdentifier:changesSyncRequest:contextSyncRequest:stateSyncRequest:medicalIDSyncRequest:summarySharingSyncRequest:allowCellular:qualityOfService:](self, "initWithIdentifier:changesSyncRequest:contextSyncRequest:stateSyncRequest:medicalIDSyncRequest:summarySharingSyncRequest:allowCellular:qualityOfService:", v5, v6, v7, v8, v9, v10, v13, [v4 decodeIntegerForKey:@"qualityOfService"]);

    v11 = self;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [v4 failWithError:v6];
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v13 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  v4 = [(HKCloudSyncRequest *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(HKCloudSyncRequest *)self changesSyncRequest];
  v7 = [(HKCloudSyncRequest *)self contextSyncRequest];
  v8 = [(HKCloudSyncRequest *)self stateSyncRequest];
  v9 = [(HKCloudSyncRequest *)self medicalIDSyncRequest];
  v10 = [(HKCloudSyncRequest *)self summarySharingSyncRequest];
  v11 = [v13 stringWithFormat:@"<%@:%p %@\n| Changes Sync Request: %@\n| Context Sync Request: %@\n| State Sync Request: %@\n| Medical ID Sync Request: %@\n| Summary Sharing Sync Request: %@\n| Allow Cellular: %d\n| Quality of Service: %ld\n", v3, self, v5, v6, v7, v8, v9, v10, -[HKCloudSyncRequest allowCellular](self, "allowCellular"), -[HKCloudSyncRequest qualityOfService](self, "qualityOfService")];

  return v11;
}

@end