@interface ADAudioSessionCoordinationMessageEndAudioSessionRequest
+ (id)newWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithCoder:(id)coder;
- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithDictionaryRepresentation:(id)representation;
- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithEffectiveDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation ADAudioSessionCoordinationMessageEndAudioSessionRequest

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  effectiveDate = self->_effectiveDate;
  if (effectiveDate)
  {
    [v3 setObject:effectiveDate forKey:@"effectiveDate"];
  }

  v6 = [v4 copy];

  return v6;
}

- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    v4 = [representation objectForKey:@"effectiveDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    self = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self initWithEffectiveDate:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessageEndAudioSessionRequest::effectiveDate"];

  v6 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self initWithEffectiveDate:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      effectiveDate = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)equalCopy effectiveDate];
      effectiveDate = self->_effectiveDate;
      v7 = effectiveDate == effectiveDate || [(NSDate *)effectiveDate isEqual:effectiveDate];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADAudioSessionCoordinationMessageEndAudioSessionRequest;
  v5 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {effectiveDate = %@}", v5, self->_effectiveDate];

  return v6;
}

- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithEffectiveDate:(id)date
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D85C4;
  v7[3] = &unk_100510E28;
  dateCopy = date;
  v4 = dateCopy;
  v5 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self initWithBuilder:v7];

  return v5;
}

- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ADAudioSessionCoordinationMessageEndAudioSessionRequest;
  v5 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)v7 isDirty])
    {
      getEffectiveDate = [(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)v7 getEffectiveDate];
      v9 = [getEffectiveDate copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v9;
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
    v5 = [[_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessageEndAudioSessionRequest);
      getEffectiveDate = [(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)v5 getEffectiveDate];
      v8 = [getEffectiveDate copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v8;
    }

    else
    {
      v6 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self copy];
    }
  }

  else
  {
    v6 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self copy];
  }

  return v6;
}

@end