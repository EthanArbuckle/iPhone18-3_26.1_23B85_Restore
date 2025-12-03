@interface HKObjectAuthorizationRecord
- (BOOL)isEqual:(id)equal;
- (HKObjectAuthorizationRecord)init;
- (HKObjectAuthorizationRecord)initWithCoder:(id)coder;
- (HKObjectAuthorizationRecord)initWithObjectUUID:(id)d sourceUUID:(id)iD sessionUUID:(id)uID status:(int64_t)status modificationDate:(double)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKObjectAuthorizationRecord

- (HKObjectAuthorizationRecord)init
{
  v8.receiver = self;
  v8.super_class = HKObjectAuthorizationRecord;
  v2 = [(HKObjectAuthorizationRecord *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objectUUID = v2->_objectUUID;
    v2->_objectUUID = 0;

    sourceUUID = v3->_sourceUUID;
    v3->_sourceUUID = 0;

    sessionUUID = v3->_sessionUUID;
    v3->_sessionUUID = 0;

    v3->_status = 0;
    v3->_modificationDate = CFAbsoluteTimeGetCurrent();
  }

  return v3;
}

- (HKObjectAuthorizationRecord)initWithObjectUUID:(id)d sourceUUID:(id)iD sessionUUID:(id)uID status:(int64_t)status modificationDate:(double)date
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  v16 = [(HKObjectAuthorizationRecord *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_objectUUID, d);
    objc_storeStrong(&v17->_sourceUUID, iD);
    objc_storeStrong(&v17->_sessionUUID, uID);
    v17->_status = status;
    v17->_modificationDate = date;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_objectUUID UUIDString];
  uUIDString2 = [(NSUUID *)self->_sourceUUID UUIDString];
  uUIDString3 = [(NSUUID *)self->_sessionUUID UUIDString];
  status = self->_status;
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_modificationDate];
  v9 = [v3 stringWithFormat:@"<Object: %@ Source: %@ Session: %@ Status: %ld Mod: %@>", uUIDString, uUIDString2, uUIDString3, status, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sourceUUID hash];
  v4 = [(NSUUID *)self->_objectUUID hash]^ v3;
  return v4 ^ [(NSUUID *)self->_sessionUUID hash]^ self->_status ^ self->_modificationDate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && ((sourceUUID = self->_sourceUUID, v6 = *(equalCopy + 2), sourceUUID == v6) || v6 && [(NSUUID *)sourceUUID isEqual:?]) && ((objectUUID = self->_objectUUID, v8 = *(equalCopy + 1), objectUUID == v8) || v8 && [(NSUUID *)objectUUID isEqual:?]) && ((sessionUUID = self->_sessionUUID, v10 = *(equalCopy + 3), sessionUUID == v10) || v10 && [(NSUUID *)sessionUUID isEqual:?]) && self->_status == *(equalCopy + 4) && self->_modificationDate == equalCopy[5];

  return v11;
}

- (HKObjectAuthorizationRecord)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HKObjectAuthorizationRecord;
  v5 = [(HKObjectAuthorizationRecord *)&v23 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  [coderCopy decodeDoubleForKey:@"mod"];
  v5->_modificationDate = v6;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
  sourceUUID = v5->_sourceUUID;
  v5->_sourceUUID = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oid"];
  objectUUID = v5->_objectUUID;
  v5->_objectUUID = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionid"];
  sessionUUID = v5->_sessionUUID;
  v5->_sessionUUID = v11;

  if (!v5->_sourceUUID || !v5->_objectUUID)
  {
    _HKInitializeLogging();
    v15 = HKLogAuthorization();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v21 = v5->_objectUUID;
      v20 = v5->_sourceUUID;
      *buf = 138543874;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v22 = v19;
      _os_log_error_impl(&dword_19197B000, v15, OS_LOG_TYPE_ERROR, "Decoded %{public}@ has incomplete source and object IDs: %{public}@, %{public}@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v13 = [coderCopy decodeIntegerForKey:@"stat"];
  v5->_status = v13;
  if (v13 >= 3)
  {
    _HKInitializeLogging();
    v16 = HKLogAuthorization();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(HKObjectAuthorizationRecord *)v5 initWithCoder:v16];
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v14 = v5;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  sourceUUID = self->_sourceUUID;
  coderCopy = coder;
  [coderCopy encodeObject:sourceUUID forKey:@"sid"];
  [coderCopy encodeObject:self->_objectUUID forKey:@"oid"];
  [coderCopy encodeObject:self->_sessionUUID forKey:@"sessionid"];
  [coderCopy encodeInteger:self->_status forKey:@"stat"];
  [coderCopy encodeDouble:@"mod" forKey:self->_modificationDate];
}

- (void)initWithCoder:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = *a2;
  v9 = 138543618;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  v7 = v5;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "Decoded %{public}@ has invalid authorization status: %ld", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end