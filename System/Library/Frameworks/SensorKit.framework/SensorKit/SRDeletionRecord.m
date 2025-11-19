@interface SRDeletionRecord
+ (id)tombstoneWithStartTime:(double)a3 endTime:(double)a4 extendedReason:(int64_t)a5 originatingDeviceIdentifier:(id)a6;
+ (id)tombstoneWithStartTime:(double)a3 endTime:(double)a4 reason:(int64_t)a5 originatingDeviceIdentifier:(id)a6;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SRDeletionReason)reason;
- (SRDeletionRecord)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRDeletionRecord)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRDeletionRecord

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogDeletionRecord = os_log_create("com.apple.SensorKit", "DeletionRecord");
  }
}

+ (id)tombstoneWithStartTime:(double)a3 endTime:(double)a4 reason:(int64_t)a5 originatingDeviceIdentifier:(id)a6
{
  v10 = objc_alloc_init(SRDeletionRecord);
  [(SRDeletionRecord *)v10 setStartTime:a3];
  [(SRDeletionRecord *)v10 setEndTime:a4];
  [(SRDeletionRecord *)v10 setReason:a5];
  [(SRDeletionRecord *)v10 set_originatingDeviceIdentifier:a6];

  return v10;
}

+ (id)tombstoneWithStartTime:(double)a3 endTime:(double)a4 extendedReason:(int64_t)a5 originatingDeviceIdentifier:(id)a6
{
  v7 = [SRDeletionRecord tombstoneWithStartTime:4 endTime:a6 reason:a3 originatingDeviceIdentifier:a4];
  [v7 setExtendedReason:a5];
  return v7;
}

- (void)dealloc
{
  [(SRDeletionRecord *)self set_originatingDeviceIdentifier:0];
  v3.receiver = self;
  v3.super_class = SRDeletionRecord;
  [(SRDeletionRecord *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(SRDeletionRecord *)self startTime];
  v6 = v5;
  [a3 startTime];
  if (v6 != v7)
  {
    return 0;
  }

  [(SRDeletionRecord *)self endTime];
  v9 = v8;
  [a3 endTime];
  if (v9 != v10)
  {
    return 0;
  }

  v11 = [(SRDeletionRecord *)self reason];
  if (v11 != [a3 reason])
  {
    return 0;
  }

  v12 = [(SRDeletionRecord *)self extendedReason];
  return v12 == [a3 extendedReason];
}

- (SRDeletionRecord)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = SRDeletionRecord;
  v6 = [(SRDeletionRecord *)&v10 init];
  if (v6)
  {
    [a3 decodeDoubleForKey:@"SRDeletionRecordStartKey"];
    v6->_startTime = v7;
    [a3 decodeDoubleForKey:@"SRDeletionRecordEndKey"];
    v6->_endTime = v8;
    -[SRDeletionRecord setReason:](v6, "setReason:", [a3 decodeIntegerForKey:@"SRDeletionRecordReasonKey"]);
    -[SRDeletionRecord setExtendedReason:](v6, "setExtendedReason:", [a3 decodeIntegerForKey:@"SRDeletionRecordExtendedReasonKey"]);
    -[SRDeletionRecord set_originatingDeviceIdentifier:](v6, "set_originatingDeviceIdentifier:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"SRDeletionRecordOriginatingDeviceIdKey"]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeDouble:@"SRDeletionRecordStartKey" forKey:self->_startTime];
  [a3 encodeDouble:@"SRDeletionRecordEndKey" forKey:self->_endTime];
  [a3 encodeInteger:-[SRDeletionRecord reason](self forKey:{"reason"), @"SRDeletionRecordReasonKey"}];
  [a3 encodeInteger:-[SRDeletionRecord extendedReason](self forKey:{"extendedReason"), @"SRDeletionRecordExtendedReasonKey"}];
  v6 = [(SRDeletionRecord *)self _originatingDeviceIdentifier];

  [a3 encodeObject:v6 forKey:@"SRDeletionRecordOriginatingDeviceIdKey"];
}

- (SRDeletionRecord)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SRDeletionRecord;
  result = [(SRDeletionRecord *)&v14 init:a3];
  if (result)
  {
    v7 = result;
    v13 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v13];
    v9 = v13;
    if (v13)
    {
      v10 = SRLogDeletionRecord;
      if (os_log_type_enabled(SRLogDeletionRecord, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&dword_1C914D000, v10, OS_LOG_TYPE_DEFAULT, "Failed to unarchive data because %{public}@", buf, 0xCu);
      }

      result = 0;
    }

    else
    {
      v11 = v8;

      result = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)sr_dictionaryRepresentation
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"SRDeletionRecordStartKey";
  v3 = MEMORY[0x1E696AD98];
  [(SRDeletionRecord *)self startTime];
  v8[0] = [v3 numberWithDouble:?];
  v7[1] = @"SRDeletionRecordEndKey";
  v4 = MEMORY[0x1E696AD98];
  [(SRDeletionRecord *)self endTime];
  v8[1] = [v4 numberWithDouble:?];
  v7[2] = @"SRDeletionRecordReasonKey";
  v8[2] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRDeletionRecord reason](self, "reason")}];
  v7[3] = @"SRDeletionRecordExtendedReasonKey";
  v8[3] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRDeletionRecord extendedReason](self, "extendedReason")}];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ %@", NSStringFromClass(v4), -[SRDeletionRecord sr_dictionaryRepresentation](self, "sr_dictionaryRepresentation")];
}

- (SRDeletionReason)reason
{
  result = atomic_load(&self->_reason);
  if (result == SRDeletionReasonSystemInitiated)
  {
    if (qword_1EE02AB00 != -1)
    {
      dispatch_once(&qword_1EE02AB00, &__block_literal_global_3);
    }

    if (_MergedGlobals_3 == 1)
    {

      return [(SRDeletionRecord *)self extendedReason];
    }

    else
    {
      return 4;
    }
  }

  return result;
}

@end