@interface ADAudioSessionCoordinationMessageBeginAudioSessionRequest
+ (id)newWithBuilder:(id)a3;
- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithBuilder:(id)a3;
- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithCoder:(id)a3;
- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithDictionaryRepresentation:(id)a3;
- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithEffectiveDate:(id)a3 expirationDuration:(double)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADAudioSessionCoordinationMessageBeginAudioSessionRequest

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  effectiveDate = self->_effectiveDate;
  if (effectiveDate)
  {
    [v3 setObject:effectiveDate forKey:@"effectiveDate"];
  }

  v6 = [NSNumber numberWithDouble:self->_expirationDuration];
  [v4 setObject:v6 forKey:@"expirationDuration"];

  v7 = [v4 copy];

  return v7;
}

- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"effectiveDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKey:@"expirationDuration"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    [v9 doubleValue];
    v11 = v10;

    self = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self initWithEffectiveDate:v6 expirationDuration:v11];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  effectiveDate = self->_effectiveDate;
  v5 = a3;
  [v5 encodeObject:effectiveDate forKey:@"ADAudioSessionCoordinationMessageBeginAudioSessionRequest::effectiveDate"];
  v6 = [NSNumber numberWithDouble:self->_expirationDuration];
  [v5 encodeObject:v6 forKey:@"ADAudioSessionCoordinationMessageBeginAudioSessionRequest::expirationDuration"];
}

- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessageBeginAudioSessionRequest::effectiveDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessageBeginAudioSessionRequest::expirationDuration"];

  [v6 doubleValue];
  v8 = v7;

  v9 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self initWithEffectiveDate:v5 expirationDuration:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      expirationDuration = self->_expirationDuration;
      [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)v5 expirationDuration];
      if (expirationDuration == v7)
      {
        v9 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)v5 effectiveDate];
        effectiveDate = self->_effectiveDate;
        v8 = effectiveDate == v9 || [(NSDate *)effectiveDate isEqual:v9];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_effectiveDate hash];
  v4 = [NSNumber numberWithDouble:self->_expirationDuration];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADAudioSessionCoordinationMessageBeginAudioSessionRequest;
  v5 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {effectiveDate = %@, expirationDuration = %f}", v5, self->_effectiveDate, *&self->_expirationDuration];

  return v6;
}

- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithEffectiveDate:(id)a3 expirationDuration:(double)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100245008;
  v9[3] = &unk_100517860;
  v10 = a3;
  v11 = a4;
  v6 = v10;
  v7 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self initWithBuilder:v9];

  return v7;
}

- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithBuilder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ADAudioSessionCoordinationMessageBeginAudioSessionRequest;
  v5 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)&v13 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v7 isDirty])
    {
      v8 = [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v7 getEffectiveDate];
      v9 = [v8 copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v9;

      [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v7 getExpirationDuration];
      v6->_expirationDuration = v11;
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
    v5 = [[_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessageBeginAudioSessionRequest);
      v7 = [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v5 getEffectiveDate];
      v8 = [v7 copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v8;

      [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v5 getExpirationDuration];
      v6->_expirationDuration = v10;
    }

    else
    {
      v6 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self copy];
    }
  }

  else
  {
    v6 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self copy];
  }

  return v6;
}

@end