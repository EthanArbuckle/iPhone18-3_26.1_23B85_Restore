@interface HKObjectAuthorizationRecord
- (BOOL)isEqual:(id)a3;
- (HKObjectAuthorizationRecord)init;
- (HKObjectAuthorizationRecord)initWithCoder:(id)a3;
- (HKObjectAuthorizationRecord)initWithObjectUUID:(id)a3 sourceUUID:(id)a4 sessionUUID:(id)a5 status:(int64_t)a6 modificationDate:(double)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKObjectAuthorizationRecord)initWithObjectUUID:(id)a3 sourceUUID:(id)a4 sessionUUID:(id)a5 status:(int64_t)a6 modificationDate:(double)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [(HKObjectAuthorizationRecord *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_objectUUID, a3);
    objc_storeStrong(&v17->_sourceUUID, a4);
    objc_storeStrong(&v17->_sessionUUID, a5);
    v17->_status = a6;
    v17->_modificationDate = a7;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSUUID *)self->_objectUUID UUIDString];
  v5 = [(NSUUID *)self->_sourceUUID UUIDString];
  v6 = [(NSUUID *)self->_sessionUUID UUIDString];
  status = self->_status;
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_modificationDate];
  v9 = [v3 stringWithFormat:@"<Object: %@ Source: %@ Session: %@ Status: %ld Mod: %@>", v4, v5, v6, status, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sourceUUID hash];
  v4 = [(NSUUID *)self->_objectUUID hash]^ v3;
  return v4 ^ [(NSUUID *)self->_sessionUUID hash]^ self->_status ^ self->_modificationDate;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && ((sourceUUID = self->_sourceUUID, v6 = *(v4 + 2), sourceUUID == v6) || v6 && [(NSUUID *)sourceUUID isEqual:?]) && ((objectUUID = self->_objectUUID, v8 = *(v4 + 1), objectUUID == v8) || v8 && [(NSUUID *)objectUUID isEqual:?]) && ((sessionUUID = self->_sessionUUID, v10 = *(v4 + 3), sessionUUID == v10) || v10 && [(NSUUID *)sessionUUID isEqual:?]) && self->_status == *(v4 + 4) && self->_modificationDate == v4[5];

  return v11;
}

- (HKObjectAuthorizationRecord)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HKObjectAuthorizationRecord;
  v5 = [(HKObjectAuthorizationRecord *)&v23 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  [v4 decodeDoubleForKey:@"mod"];
  v5->_modificationDate = v6;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
  sourceUUID = v5->_sourceUUID;
  v5->_sourceUUID = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oid"];
  objectUUID = v5->_objectUUID;
  v5->_objectUUID = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionid"];
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

  v13 = [v4 decodeIntegerForKey:@"stat"];
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

- (void)encodeWithCoder:(id)a3
{
  sourceUUID = self->_sourceUUID;
  v5 = a3;
  [v5 encodeObject:sourceUUID forKey:@"sid"];
  [v5 encodeObject:self->_objectUUID forKey:@"oid"];
  [v5 encodeObject:self->_sessionUUID forKey:@"sessionid"];
  [v5 encodeInteger:self->_status forKey:@"stat"];
  [v5 encodeDouble:@"mod" forKey:self->_modificationDate];
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