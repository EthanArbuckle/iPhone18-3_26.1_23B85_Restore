@interface AFAssertionContext
+ (id)newWithBuilder:(id)a3;
- (AFAssertionContext)initWithBuilder:(id)a3;
- (AFAssertionContext)initWithCoder:(id)a3;
- (AFAssertionContext)initWithDictionaryRepresentation:(id)a3;
- (AFAssertionContext)initWithTimestamp:(unint64_t)a3 reason:(id)a4 effectiveDate:(id)a5 expirationDuration:(double)a6 userInfo:(id)a7;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAssertionContext

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
  [v3 setObject:v4 forKey:@"timestamp"];

  reason = self->_reason;
  if (reason)
  {
    [v3 setObject:reason forKey:@"reason"];
  }

  effectiveDate = self->_effectiveDate;
  if (effectiveDate)
  {
    [v3 setObject:effectiveDate forKey:@"effectiveDate"];
  }

  v7 = [NSNumber numberWithDouble:self->_expirationDuration];
  [v3 setObject:v7 forKey:@"expirationDuration"];

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v3 setObject:userInfo forKey:@"userInfo"];
  }

  v9 = [v3 copy];

  return v9;
}

- (AFAssertionContext)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v7 unsignedLongLongValue];
    v10 = [v5 objectForKey:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 objectForKey:@"effectiveDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKey:@"expirationDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    [v15 doubleValue];
    v17 = v16;

    v18 = [v5 objectForKey:@"userInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    self = [(AFAssertionContext *)self initWithTimestamp:v9 reason:v11 effectiveDate:v13 expirationDuration:v19 userInfo:v17];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v7 = a3;
  v5 = [NSNumber numberWithUnsignedLongLong:timestamp];
  [v7 encodeObject:v5 forKey:@"AFAssertionContext::timestamp"];

  [v7 encodeObject:self->_reason forKey:@"AFAssertionContext::reason"];
  [v7 encodeObject:self->_effectiveDate forKey:@"AFAssertionContext::effectiveDate"];
  v6 = [NSNumber numberWithDouble:self->_expirationDuration];
  [v7 encodeObject:v6 forKey:@"AFAssertionContext::expirationDuration"];

  [v7 encodeObject:self->_userInfo forKey:@"AFAssertionContext::userInfo"];
}

- (AFAssertionContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAssertionContext::timestamp"];
  v25 = [v4 unsignedLongLongValue];

  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAssertionContext::reason"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAssertionContext::effectiveDate"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAssertionContext::expirationDuration"];
  [v5 doubleValue];
  v7 = v6;

  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [NSSet setWithObjects:v22, v21, v8, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"AFAssertionContext::userInfo"];

  v19 = [(AFAssertionContext *)self initWithTimestamp:v25 reason:v24 effectiveDate:v23 expirationDuration:v18 userInfo:v7];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      timestamp = self->_timestamp;
      if (timestamp == [(AFAssertionContext *)v5 timestamp]&& (expirationDuration = self->_expirationDuration, [(AFAssertionContext *)v5 expirationDuration], expirationDuration == v8))
      {
        v11 = [(AFAssertionContext *)v5 reason];
        reason = self->_reason;
        if (reason == v11 || [(NSString *)reason isEqual:v11])
        {
          v13 = [(AFAssertionContext *)v5 effectiveDate];
          effectiveDate = self->_effectiveDate;
          if (effectiveDate == v13 || [(NSDate *)effectiveDate isEqual:v13])
          {
            v15 = [(AFAssertionContext *)v5 userInfo];
            userInfo = self->_userInfo;
            v9 = userInfo == v15 || [(NSDictionary *)userInfo isEqual:v15];
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_reason hash];
  v6 = v5 ^ [(NSDate *)self->_effectiveDate hash]^ v4;
  v7 = [NSNumber numberWithDouble:self->_expirationDuration];
  v8 = [v7 hash];
  v9 = v8 ^ [(NSDictionary *)self->_userInfo hash];

  return v6 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = AFAssertionContext;
  v5 = [(AFAssertionContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {timestamp = %llu, reason = %@, effectiveDate = %@, expirationDuration = %f, userInfo = %@}", v5, self->_timestamp, self->_reason, self->_effectiveDate, *&self->_expirationDuration, self->_userInfo];

  return v6;
}

- (AFAssertionContext)initWithTimestamp:(unint64_t)a3 reason:(id)a4 effectiveDate:(id)a5 expirationDuration:(double)a6 userInfo:(id)a7
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10022B048;
  v17[3] = &unk_100517280;
  v18 = a4;
  v19 = a5;
  v22 = a6;
  v20 = a7;
  v21 = a3;
  v12 = v20;
  v13 = v19;
  v14 = v18;
  v15 = [(AFAssertionContext *)self initWithBuilder:v17];

  return v15;
}

- (AFAssertionContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AFAssertionContext;
  v5 = [(AFAssertionContext *)&v19 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFAssertionContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFAssertionContextMutation *)v7 isDirty])
    {
      v6->_timestamp = [(_AFAssertionContextMutation *)v7 getTimestamp];
      v8 = [(_AFAssertionContextMutation *)v7 getReason];
      v9 = [v8 copy];
      reason = v6->_reason;
      v6->_reason = v9;

      v11 = [(_AFAssertionContextMutation *)v7 getEffectiveDate];
      v12 = [v11 copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v12;

      [(_AFAssertionContextMutation *)v7 getExpirationDuration];
      v6->_expirationDuration = v14;
      v15 = [(_AFAssertionContextMutation *)v7 getUserInfo];
      v16 = [v15 copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v16;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFAssertionContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFAssertionContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAssertionContext);
      v6->_timestamp = [(_AFAssertionContextMutation *)v5 getTimestamp];
      v7 = [(_AFAssertionContextMutation *)v5 getReason];
      v8 = [v7 copy];
      reason = v6->_reason;
      v6->_reason = v8;

      v10 = [(_AFAssertionContextMutation *)v5 getEffectiveDate];
      v11 = [v10 copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v11;

      [(_AFAssertionContextMutation *)v5 getExpirationDuration];
      v6->_expirationDuration = v13;
      v14 = [(_AFAssertionContextMutation *)v5 getUserInfo];
      v15 = [v14 copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v15;
    }

    else
    {
      v6 = [(AFAssertionContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFAssertionContext *)self copy];
  }

  return v6;
}

@end