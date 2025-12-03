@interface ASDJobResult
+ (id)resultWithExistingActivity:(int64_t)activity bundleID:(id)d;
+ (id)resultWithInvalidActivity:(int64_t)activity bundleID:(id)d;
+ (id)resultWithPersistentID:(id)d bundleID:(id)iD status:(int64_t)status error:(id)error;
+ (id)resultWithRestrictedActivity:(int64_t)activity bundleID:(id)d;
+ (id)resultWithValidActivity:(int64_t)activity bundleID:(id)d;
- (ASDJobResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDJobResult

+ (id)resultWithExistingActivity:(int64_t)activity bundleID:(id)d
{
  dCopy = d;
  v7 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 506, 0, 0, 0);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:activity];
  v9 = [self resultWithPersistentID:v8 bundleID:dCopy status:0 error:v7];

  return v9;
}

+ (id)resultWithInvalidActivity:(int64_t)activity bundleID:(id)d
{
  dCopy = d;
  v7 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 507, 0, 0, 0);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:activity];
  v9 = [self resultWithPersistentID:v8 bundleID:dCopy status:1 error:v7];

  return v9;
}

+ (id)resultWithRestrictedActivity:(int64_t)activity bundleID:(id)d
{
  dCopy = d;
  v7 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 502, 0, 0, 0);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:activity];
  v9 = [self resultWithPersistentID:v8 bundleID:dCopy status:1 error:v7];

  return v9;
}

+ (id)resultWithValidActivity:(int64_t)activity bundleID:(id)d
{
  v6 = MEMORY[0x1E696AD98];
  dCopy = d;
  v8 = [v6 numberWithLongLong:activity];
  v9 = [self resultWithPersistentID:v8 bundleID:dCopy status:2 error:0];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDJobResult allocWithZone:](ASDJobResult init];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v8 = [(NSError *)self->_error copyWithZone:zone];
  error = v5->_error;
  v5->_error = v8;

  v10 = [(NSNumber *)self->_persistentID copyWithZone:zone];
  persistentID = v5->_persistentID;
  v5->_persistentID = v10;

  v5->_status = self->_status;
  return v5;
}

- (id)description
{
  status = self->_status;
  if (status > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7CDD5E8[status];
  }

  persistentID = self->_persistentID;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v3, persistentID, self->_bundleID];
}

- (ASDJobResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASDJobResult;
  v5 = [(ASDJobResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v10;

    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  error = self->_error;
  if (error)
  {
    v5 = ASDErrorWithSafeUserInfo(error);
    [coderCopy encodeObject:v5 forKey:@"error"];
  }

  [coderCopy encodeObject:self->_persistentID forKey:@"persistentID"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
}

+ (id)resultWithPersistentID:(id)d bundleID:(id)iD status:(int64_t)status error:(id)error
{
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  v12 = objc_opt_new();
  v13 = v12[3];
  v12[3] = dCopy;
  v14 = dCopy;

  v15 = v12[1];
  v12[1] = iDCopy;
  v16 = iDCopy;

  v12[4] = status;
  v17 = v12[2];
  v12[2] = errorCopy;

  return v12;
}

@end