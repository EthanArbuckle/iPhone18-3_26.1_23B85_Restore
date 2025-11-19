@interface ADAudioSessionCoordinationMessageEndAudioSessionRequest
+ (id)newWithBuilder:(id)a3;
- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithBuilder:(id)a3;
- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithCoder:(id)a3;
- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithDictionaryRepresentation:(id)a3;
- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithEffectiveDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
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

- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKey:@"effectiveDate"];
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
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessageEndAudioSessionRequest::effectiveDate"];

  v6 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self initWithEffectiveDate:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)v4 effectiveDate];
      effectiveDate = self->_effectiveDate;
      v7 = effectiveDate == v5 || [(NSDate *)effectiveDate isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADAudioSessionCoordinationMessageEndAudioSessionRequest;
  v5 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {effectiveDate = %@}", v5, self->_effectiveDate];

  return v6;
}

- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithEffectiveDate:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D85C4;
  v7[3] = &unk_100510E28;
  v8 = a3;
  v4 = v8;
  v5 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self initWithBuilder:v7];

  return v5;
}

- (ADAudioSessionCoordinationMessageEndAudioSessionRequest)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADAudioSessionCoordinationMessageEndAudioSessionRequest;
  v5 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)v7 isDirty])
    {
      v8 = [(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)v7 getEffectiveDate];
      v9 = [v8 copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v9;
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
    v5 = [[_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessageEndAudioSessionRequest);
      v7 = [(_ADAudioSessionCoordinationMessageEndAudioSessionRequestMutation *)v5 getEffectiveDate];
      v8 = [v7 copy];
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