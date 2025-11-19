@interface ASDJobResult
+ (id)resultWithExistingActivity:(int64_t)a3 bundleID:(id)a4;
+ (id)resultWithInvalidActivity:(int64_t)a3 bundleID:(id)a4;
+ (id)resultWithPersistentID:(id)a3 bundleID:(id)a4 status:(int64_t)a5 error:(id)a6;
+ (id)resultWithRestrictedActivity:(int64_t)a3 bundleID:(id)a4;
+ (id)resultWithValidActivity:(int64_t)a3 bundleID:(id)a4;
- (ASDJobResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDJobResult

+ (id)resultWithExistingActivity:(int64_t)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 506, 0, 0, 0);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [a1 resultWithPersistentID:v8 bundleID:v6 status:0 error:v7];

  return v9;
}

+ (id)resultWithInvalidActivity:(int64_t)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 507, 0, 0, 0);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [a1 resultWithPersistentID:v8 bundleID:v6 status:1 error:v7];

  return v9;
}

+ (id)resultWithRestrictedActivity:(int64_t)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 502, 0, 0, 0);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [a1 resultWithPersistentID:v8 bundleID:v6 status:1 error:v7];

  return v9;
}

+ (id)resultWithValidActivity:(int64_t)a3 bundleID:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  v9 = [a1 resultWithPersistentID:v8 bundleID:v7 status:2 error:0];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDJobResult allocWithZone:](ASDJobResult init];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v8 = [(NSError *)self->_error copyWithZone:a3];
  error = v5->_error;
  v5->_error = v8;

  v10 = [(NSNumber *)self->_persistentID copyWithZone:a3];
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

- (ASDJobResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASDJobResult;
  v5 = [(ASDJobResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v10;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_bundleID forKey:@"bundleID"];
  error = self->_error;
  if (error)
  {
    v5 = ASDErrorWithSafeUserInfo(error);
    [v6 encodeObject:v5 forKey:@"error"];
  }

  [v6 encodeObject:self->_persistentID forKey:@"persistentID"];
  [v6 encodeInteger:self->_status forKey:@"status"];
}

+ (id)resultWithPersistentID:(id)a3 bundleID:(id)a4 status:(int64_t)a5 error:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_opt_new();
  v13 = v12[3];
  v12[3] = v9;
  v14 = v9;

  v15 = v12[1];
  v12[1] = v10;
  v16 = v10;

  v12[4] = a5;
  v17 = v12[2];
  v12[2] = v11;

  return v12;
}

@end