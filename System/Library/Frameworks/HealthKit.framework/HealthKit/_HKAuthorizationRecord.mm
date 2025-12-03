@interface _HKAuthorizationRecord
+ (id)recordWithStatus:(int64_t)status request:(int64_t)request mode:(int64_t)mode anchorLimitModifiedDate:(id)date;
- (BOOL)deniedReading;
- (BOOL)deniedSharing;
- (BOOL)isCompatibleStatus:(int64_t)status;
- (BOOL)isEqual:(id)equal;
- (BOOL)readingEnabled;
- (BOOL)sharingEnabled;
- (_HKAuthorizationRecord)initWithAuthorizationStatus:(int64_t)status authorizationRequest:(int64_t)request authorizationMode:(int64_t)mode anchorLimitModifiedDate:(id)date;
- (_HKAuthorizationRecord)initWithCoder:(id)coder;
- (_HKAuthorizationRecord)recordWithReadingDisabled;
- (_HKAuthorizationRecord)recordWithSharingDisabled;
- (id)_deepCopy;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKAuthorizationRecord

- (_HKAuthorizationRecord)initWithAuthorizationStatus:(int64_t)status authorizationRequest:(int64_t)request authorizationMode:(int64_t)mode anchorLimitModifiedDate:(id)date
{
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = _HKAuthorizationRecord;
  v11 = [(_HKAuthorizationRecord *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = status;
    v11->_request = request;
    v11->_mode = mode;
    v13 = [dateCopy copy];
    anchorLimitModifiedDate = v12->_anchorLimitModifiedDate;
    v12->_anchorLimitModifiedDate = v13;
  }

  return v12;
}

+ (id)recordWithStatus:(int64_t)status request:(int64_t)request mode:(int64_t)mode anchorLimitModifiedDate:(id)date
{
  dateCopy = date;
  v11 = [[self alloc] initWithAuthorizationStatus:status authorizationRequest:request authorizationMode:mode anchorLimitModifiedDate:dateCopy];

  return v11;
}

- (id)_deepCopy
{
  v3 = [_HKAuthorizationRecord alloc];
  status = [(_HKAuthorizationRecord *)self status];
  request = [(_HKAuthorizationRecord *)self request];
  mode = [(_HKAuthorizationRecord *)self mode];
  anchorLimitModifiedDate = [(_HKAuthorizationRecord *)self anchorLimitModifiedDate];
  v8 = [(_HKAuthorizationRecord *)v3 initWithAuthorizationStatus:status authorizationRequest:request authorizationMode:mode anchorLimitModifiedDate:anchorLimitModifiedDate];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
  requestedSharing = [(_HKAuthorizationRecord *)self requestedSharing];
  if (requestedSharing)
  {
    LOBYTE(requestedSharing) = (self->_status - 103) < 2;
  }

  return requestedSharing;
}

- (BOOL)deniedReading
{
  requestedReading = [(_HKAuthorizationRecord *)self requestedReading];
  if (requestedReading)
  {
    status = self->_status;
    LOBYTE(requestedReading) = status == 104 || status == 102;
  }

  return requestedReading;
}

- (BOOL)sharingEnabled
{
  requestedSharing = [(_HKAuthorizationRecord *)self requestedSharing];
  if (requestedSharing)
  {
    LOBYTE(requestedSharing) = (self->_status - 101) < 2;
  }

  return requestedSharing;
}

- (BOOL)readingEnabled
{
  requestedReading = [(_HKAuthorizationRecord *)self requestedReading];
  if (requestedReading)
  {
    LOBYTE(requestedReading) = ((self->_status - 101) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return requestedReading;
}

- (BOOL)isCompatibleStatus:(int64_t)status
{
  requestedSharing = [(_HKAuthorizationRecord *)self requestedSharing];
  requestedReading = [(_HKAuthorizationRecord *)self requestedReading];
  result = 1;
  if (status <= 101)
  {
    if (status == 100)
    {
      return result;
    }

    if (status == 101)
    {
      return requestedSharing && requestedReading;
    }

    return 0;
  }

  if (status == 102)
  {
    return requestedSharing;
  }

  if (status != 104)
  {
    result = requestedReading;
    if (status != 103)
    {
      return 0;
    }
  }

  return result;
}

- (_HKAuthorizationRecord)recordWithReadingDisabled
{
  status = [(_HKAuthorizationRecord *)self status];
  if ([(_HKAuthorizationRecord *)self status]== 101)
  {
    status = 102;
  }

  else if ([(_HKAuthorizationRecord *)self status]== 103)
  {
    status = 104;
  }

  _deepCopy = [(_HKAuthorizationRecord *)self _deepCopy];
  [_deepCopy setStatus:status];

  return _deepCopy;
}

- (_HKAuthorizationRecord)recordWithSharingDisabled
{
  status = [(_HKAuthorizationRecord *)self status];
  if ([(_HKAuthorizationRecord *)self status]== 101)
  {
    status = 103;
  }

  else if ([(_HKAuthorizationRecord *)self status]== 102)
  {
    status = 104;
  }

  _deepCopy = [(_HKAuthorizationRecord *)self _deepCopy];
  [_deepCopy setStatus:status];

  return _deepCopy;
}

- (_HKAuthorizationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HKAuthorizationRecord;
  v5 = [(_HKAuthorizationRecord *)&v9 init];
  if (v5)
  {
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v5->_request = [coderCopy decodeIntegerForKey:@"request"];
    v5->_mode = [coderCopy decodeIntegerForKey:@"mode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchor_limit_mod_date"];
    anchorLimitModifiedDate = v5->_anchorLimitModifiedDate;
    v5->_anchorLimitModifiedDate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  status = self->_status;
  coderCopy = coder;
  [coderCopy encodeInteger:status forKey:@"status"];
  [coderCopy encodeInteger:self->_request forKey:@"request"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeObject:self->_anchorLimitModifiedDate forKey:@"anchor_limit_mod_date"];
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
    anchorLimitModifiedDate = [v12 stringWithFormat:@" anchor-updated:%@", anchorLimitModifiedDate];
    v15 = [v3 stringWithFormat:@"<%@:%p status:%@ request:%@ mode:%@%@>", v4, self, v6, v8, v13, anchorLimitModifiedDate, 0];
  }

  else
  {
    anchorLimitModifiedDate = v9;
    v15 = [v3 stringWithFormat:@"<%@:%p status:%@ request:%@ mode:%@%@>", v4, self, v6, v8, anchorLimitModifiedDate, &stru_1F05FF230, 0];
  }

  return v15;
}

@end