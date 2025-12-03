@interface AFAssertionContext
+ (id)newWithBuilder:(id)builder;
- (AFAssertionContext)initWithBuilder:(id)builder;
- (AFAssertionContext)initWithCoder:(id)coder;
- (AFAssertionContext)initWithDictionaryRepresentation:(id)representation;
- (AFAssertionContext)initWithTimestamp:(unint64_t)timestamp reason:(id)reason effectiveDate:(id)date expirationDuration:(double)duration userInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFAssertionContext)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    unsignedLongLongValue = [v7 unsignedLongLongValue];
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

    self = [(AFAssertionContext *)self initWithTimestamp:unsignedLongLongValue reason:v11 effectiveDate:v13 expirationDuration:v19 userInfo:v17];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedLongLong:timestamp];
  [coderCopy encodeObject:v5 forKey:@"AFAssertionContext::timestamp"];

  [coderCopy encodeObject:self->_reason forKey:@"AFAssertionContext::reason"];
  [coderCopy encodeObject:self->_effectiveDate forKey:@"AFAssertionContext::effectiveDate"];
  v6 = [NSNumber numberWithDouble:self->_expirationDuration];
  [coderCopy encodeObject:v6 forKey:@"AFAssertionContext::expirationDuration"];

  [coderCopy encodeObject:self->_userInfo forKey:@"AFAssertionContext::userInfo"];
}

- (AFAssertionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAssertionContext::timestamp"];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAssertionContext::reason"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAssertionContext::effectiveDate"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAssertionContext::expirationDuration"];
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
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"AFAssertionContext::userInfo"];

  v19 = [(AFAssertionContext *)self initWithTimestamp:unsignedLongLongValue reason:v24 effectiveDate:v23 expirationDuration:v18 userInfo:v7];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timestamp = self->_timestamp;
      if (timestamp == [(AFAssertionContext *)v5 timestamp]&& (expirationDuration = self->_expirationDuration, [(AFAssertionContext *)v5 expirationDuration], expirationDuration == v8))
      {
        reason = [(AFAssertionContext *)v5 reason];
        reason = self->_reason;
        if (reason == reason || [(NSString *)reason isEqual:reason])
        {
          effectiveDate = [(AFAssertionContext *)v5 effectiveDate];
          effectiveDate = self->_effectiveDate;
          if (effectiveDate == effectiveDate || [(NSDate *)effectiveDate isEqual:effectiveDate])
          {
            userInfo = [(AFAssertionContext *)v5 userInfo];
            userInfo = self->_userInfo;
            v9 = userInfo == userInfo || [(NSDictionary *)userInfo isEqual:userInfo];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = AFAssertionContext;
  v5 = [(AFAssertionContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {timestamp = %llu, reason = %@, effectiveDate = %@, expirationDuration = %f, userInfo = %@}", v5, self->_timestamp, self->_reason, self->_effectiveDate, *&self->_expirationDuration, self->_userInfo];

  return v6;
}

- (AFAssertionContext)initWithTimestamp:(unint64_t)timestamp reason:(id)reason effectiveDate:(id)date expirationDuration:(double)duration userInfo:(id)info
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10022B048;
  v17[3] = &unk_100517280;
  reasonCopy = reason;
  dateCopy = date;
  durationCopy = duration;
  infoCopy = info;
  timestampCopy = timestamp;
  v12 = infoCopy;
  v13 = dateCopy;
  v14 = reasonCopy;
  v15 = [(AFAssertionContext *)self initWithBuilder:v17];

  return v15;
}

- (AFAssertionContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v19.receiver = self;
  v19.super_class = AFAssertionContext;
  v5 = [(AFAssertionContext *)&v19 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFAssertionContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFAssertionContextMutation *)v7 isDirty])
    {
      v6->_timestamp = [(_AFAssertionContextMutation *)v7 getTimestamp];
      getReason = [(_AFAssertionContextMutation *)v7 getReason];
      v9 = [getReason copy];
      reason = v6->_reason;
      v6->_reason = v9;

      getEffectiveDate = [(_AFAssertionContextMutation *)v7 getEffectiveDate];
      v12 = [getEffectiveDate copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v12;

      [(_AFAssertionContextMutation *)v7 getExpirationDuration];
      v6->_expirationDuration = v14;
      getUserInfo = [(_AFAssertionContextMutation *)v7 getUserInfo];
      v16 = [getUserInfo copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v16;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFAssertionContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFAssertionContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAssertionContext);
      v6->_timestamp = [(_AFAssertionContextMutation *)v5 getTimestamp];
      getReason = [(_AFAssertionContextMutation *)v5 getReason];
      v8 = [getReason copy];
      reason = v6->_reason;
      v6->_reason = v8;

      getEffectiveDate = [(_AFAssertionContextMutation *)v5 getEffectiveDate];
      v11 = [getEffectiveDate copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v11;

      [(_AFAssertionContextMutation *)v5 getExpirationDuration];
      v6->_expirationDuration = v13;
      getUserInfo = [(_AFAssertionContextMutation *)v5 getUserInfo];
      v15 = [getUserInfo copy];
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