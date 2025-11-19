@interface ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest
+ (id)newWithBuilder:(id)a3;
- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest)initWithBuilder:(id)a3;
- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest)initWithCoder:(id)a3;
- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest)initWithDictionaryRepresentation:(id)a3;
- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest)initWithExpirationDuration:(double)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithDouble:self->_expirationDuration];
  [v3 setObject:v4 forKey:@"expirationDuration"];

  v5 = [v3 copy];

  return v5;
}

- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKey:@"expirationDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    [v5 doubleValue];
    v8 = v7;

    self = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)self initWithExpirationDuration:v8];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  expirationDuration = self->_expirationDuration;
  v4 = a3;
  v5 = [NSNumber numberWithDouble:expirationDuration];
  [v4 encodeObject:v5 forKey:@"ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest::expirationDuration"];
}

- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest::expirationDuration"];

  [v5 doubleValue];
  v7 = v6;

  return [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)self initWithExpirationDuration:v7];
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
      expirationDuration = self->_expirationDuration;
      [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)v4 expirationDuration];
      v7 = expirationDuration == v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [NSNumber numberWithDouble:self->_expirationDuration];
  v3 = [v2 hash];

  return v3;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest;
  v5 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {expirationDuration = %f}", v5, *&self->_expirationDuration];

  return v6;
}

- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest)initWithExpirationDuration:(double)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022B900;
  v4[3] = &unk_1005172A0;
  *&v4[4] = a3;
  return [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)self initWithBuilder:v4];
}

- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest)initWithBuilder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest;
  v5 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)&v10 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation *)v7 isDirty])
    {
      [(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation *)v7 getExpirationDuration];
      v6->_expirationDuration = v8;
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
    v5 = [[_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest);
      [(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequestMutation *)v5 getExpirationDuration];
      v6->_expirationDuration = v7;
    }

    else
    {
      v6 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)self copy];
    }
  }

  else
  {
    v6 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)self copy];
  }

  return v6;
}

@end