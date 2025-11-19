@interface _HKAuthorizationRecord
+ (id)recordWithStatus:(int64_t)a3 request:(int64_t)a4 mode:(int64_t)a5 anchorLimitModifiedDate:(id)a6;
- (BOOL)deniedReading;
- (BOOL)deniedSharing;
- (BOOL)isCompatibleStatus:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)readingEnabled;
- (BOOL)sharingEnabled;
- (_HKAuthorizationRecord)initWithAuthorizationStatus:(int64_t)a3 authorizationRequest:(int64_t)a4 authorizationMode:(int64_t)a5 anchorLimitModifiedDate:(id)a6;
- (_HKAuthorizationRecord)initWithCoder:(id)a3;
- (_HKAuthorizationRecord)recordWithReadingDisabled;
- (_HKAuthorizationRecord)recordWithSharingDisabled;
- (id)_deepCopy;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKAuthorizationRecord

- (_HKAuthorizationRecord)initWithAuthorizationStatus:(int64_t)a3 authorizationRequest:(int64_t)a4 authorizationMode:(int64_t)a5 anchorLimitModifiedDate:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = _HKAuthorizationRecord;
  v11 = [(_HKAuthorizationRecord *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = a3;
    v11->_request = a4;
    v11->_mode = a5;
    v13 = [v10 copy];
    anchorLimitModifiedDate = v12->_anchorLimitModifiedDate;
    v12->_anchorLimitModifiedDate = v13;
  }

  return v12;
}

+ (id)recordWithStatus:(int64_t)a3 request:(int64_t)a4 mode:(int64_t)a5 anchorLimitModifiedDate:(id)a6
{
  v10 = a6;
  v11 = [[a1 alloc] initWithAuthorizationStatus:a3 authorizationRequest:a4 authorizationMode:a5 anchorLimitModifiedDate:v10];

  return v11;
}

- (id)_deepCopy
{
  v3 = [_HKAuthorizationRecord alloc];
  v4 = [(_HKAuthorizationRecord *)self status];
  v5 = [(_HKAuthorizationRecord *)self request];
  v6 = [(_HKAuthorizationRecord *)self mode];
  v7 = [(_HKAuthorizationRecord *)self anchorLimitModifiedDate];
  v8 = [(_HKAuthorizationRecord *)v3 initWithAuthorizationStatus:v4 authorizationRequest:v5 authorizationMode:v6 anchorLimitModifiedDate:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self->_status != v5[1] || self->_request != v5[2] || self->_mode != v5[3])
    {
      goto LABEL_9;
    }

    anchorLimitModifiedDate = self->_anchorLimitModifiedDate;
    v8 = v6[4];
    if (anchorLimitModifiedDate == v8)
    {
      v9 = 1;
      goto LABEL_10;
    }

    if (v8)
    {
      v9 = [(NSDate *)anchorLimitModifiedDate isEqualToDate:?];
    }

    else
    {
LABEL_9:
      v9 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)deniedSharing
{
  v3 = [(_HKAuthorizationRecord *)self requestedSharing];
  if (v3)
  {
    LOBYTE(v3) = (self->_status - 103) < 2;
  }

  return v3;
}

- (BOOL)deniedReading
{
  v3 = [(_HKAuthorizationRecord *)self requestedReading];
  if (v3)
  {
    status = self->_status;
    LOBYTE(v3) = status == 104 || status == 102;
  }

  return v3;
}

- (BOOL)sharingEnabled
{
  v3 = [(_HKAuthorizationRecord *)self requestedSharing];
  if (v3)
  {
    LOBYTE(v3) = (self->_status - 101) < 2;
  }

  return v3;
}

- (BOOL)readingEnabled
{
  v3 = [(_HKAuthorizationRecord *)self requestedReading];
  if (v3)
  {
    LOBYTE(v3) = ((self->_status - 101) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return v3;
}

- (BOOL)isCompatibleStatus:(int64_t)a3
{
  v5 = [(_HKAuthorizationRecord *)self requestedSharing];
  v6 = [(_HKAuthorizationRecord *)self requestedReading];
  result = 1;
  if (a3 <= 101)
  {
    if (a3 == 100)
    {
      return result;
    }

    if (a3 == 101)
    {
      return v5 && v6;
    }

    return 0;
  }

  if (a3 == 102)
  {
    return v5;
  }

  if (a3 != 104)
  {
    result = v6;
    if (a3 != 103)
    {
      return 0;
    }
  }

  return result;
}

- (_HKAuthorizationRecord)recordWithReadingDisabled
{
  v3 = [(_HKAuthorizationRecord *)self status];
  if ([(_HKAuthorizationRecord *)self status]== 101)
  {
    v3 = 102;
  }

  else if ([(_HKAuthorizationRecord *)self status]== 103)
  {
    v3 = 104;
  }

  v4 = [(_HKAuthorizationRecord *)self _deepCopy];
  [v4 setStatus:v3];

  return v4;
}

- (_HKAuthorizationRecord)recordWithSharingDisabled
{
  v3 = [(_HKAuthorizationRecord *)self status];
  if ([(_HKAuthorizationRecord *)self status]== 101)
  {
    v3 = 103;
  }

  else if ([(_HKAuthorizationRecord *)self status]== 102)
  {
    v3 = 104;
  }

  v4 = [(_HKAuthorizationRecord *)self _deepCopy];
  [v4 setStatus:v3];

  return v4;
}

- (_HKAuthorizationRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKAuthorizationRecord;
  v5 = [(_HKAuthorizationRecord *)&v9 init];
  if (v5)
  {
    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v5->_request = [v4 decodeIntegerForKey:@"request"];
    v5->_mode = [v4 decodeIntegerForKey:@"mode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchor_limit_mod_date"];
    anchorLimitModifiedDate = v5->_anchorLimitModifiedDate;
    v5->_anchorLimitModifiedDate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  status = self->_status;
  v5 = a3;
  [v5 encodeInteger:status forKey:@"status"];
  [v5 encodeInteger:self->_request forKey:@"request"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
  [v5 encodeObject:self->_anchorLimitModifiedDate forKey:@"anchor_limit_mod_date"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = self->_status - 100;
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7384E18[v5];
  }

  v7 = self->_request - 200;
  if (v7 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E7384DF8[v7];
  }

  v9 = @"anchor-limited";
  mode = self->_mode;
  anchorLimitModifiedDate = self->_anchorLimitModifiedDate;
  if (mode != 1)
  {
    v9 = 0;
  }

  if (!mode)
  {
    v9 = @"unlimited";
  }

  if (anchorLimitModifiedDate)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v9;
    v14 = [v12 stringWithFormat:@" anchor-updated:%@", anchorLimitModifiedDate];
    v15 = [v3 stringWithFormat:@"<%@:%p status:%@ request:%@ mode:%@%@>", v4, self, v6, v8, v13, v14, 0];
  }

  else
  {
    v14 = v9;
    v15 = [v3 stringWithFormat:@"<%@:%p status:%@ request:%@ mode:%@%@>", v4, self, v6, v8, v14, &stru_1F05FF230, 0];
  }

  return v15;
}

@end