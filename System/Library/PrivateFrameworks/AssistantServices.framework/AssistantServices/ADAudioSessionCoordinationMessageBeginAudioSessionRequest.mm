@interface ADAudioSessionCoordinationMessageBeginAudioSessionRequest
+ (id)newWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithCoder:(id)coder;
- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithDictionaryRepresentation:(id)representation;
- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithEffectiveDate:(id)date expirationDuration:(double)duration;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKey:@"effectiveDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [representationCopy objectForKey:@"expirationDuration"];

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
  effectiveDate = self->_effectiveDate;
  coderCopy = coder;
  [coderCopy encodeObject:effectiveDate forKey:@"ADAudioSessionCoordinationMessageBeginAudioSessionRequest::effectiveDate"];
  v6 = [NSNumber numberWithDouble:self->_expirationDuration];
  [coderCopy encodeObject:v6 forKey:@"ADAudioSessionCoordinationMessageBeginAudioSessionRequest::expirationDuration"];
}

- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessageBeginAudioSessionRequest::effectiveDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessageBeginAudioSessionRequest::expirationDuration"];

  [v6 doubleValue];
  v8 = v7;

  v9 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self initWithEffectiveDate:v5 expirationDuration:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      expirationDuration = self->_expirationDuration;
      [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)v5 expirationDuration];
      if (expirationDuration == v7)
      {
        effectiveDate = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)v5 effectiveDate];
        effectiveDate = self->_effectiveDate;
        v8 = effectiveDate == effectiveDate || [(NSDate *)effectiveDate isEqual:effectiveDate];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADAudioSessionCoordinationMessageBeginAudioSessionRequest;
  v5 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {effectiveDate = %@, expirationDuration = %f}", v5, self->_effectiveDate, *&self->_expirationDuration];

  return v6;
}

- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithEffectiveDate:(id)date expirationDuration:(double)duration
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100245008;
  v9[3] = &unk_100517860;
  dateCopy = date;
  durationCopy = duration;
  v6 = dateCopy;
  v7 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self initWithBuilder:v9];

  return v7;
}

- (ADAudioSessionCoordinationMessageBeginAudioSessionRequest)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v13.receiver = self;
  v13.super_class = ADAudioSessionCoordinationMessageBeginAudioSessionRequest;
  v5 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)&v13 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v7 isDirty])
    {
      getEffectiveDate = [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v7 getEffectiveDate];
      v9 = [getEffectiveDate copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v9;

      [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v7 getExpirationDuration];
      v6->_expirationDuration = v11;
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
    v5 = [[_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessageBeginAudioSessionRequest);
      getEffectiveDate = [(_ADAudioSessionCoordinationMessageBeginAudioSessionRequestMutation *)v5 getEffectiveDate];
      v8 = [getEffectiveDate copy];
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