@interface ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse
+ (id)newWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse)initWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
@end

@implementation ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse

- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    self = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)self init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse;
  return [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse;
  return [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)&v3 hash];
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v5.receiver = self;
  v5.super_class = ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse;
  v3 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)&v5 description];

  return v3;
}

- (ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse;
  v5 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    [(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation *)v7 isDirty];
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
    v5 = [[_ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse);
    }

    else
    {
      v6 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)self copy];
    }

    v7 = v6;
  }

  else
  {
    v7 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)self copy];
  }

  return v7;
}

@end