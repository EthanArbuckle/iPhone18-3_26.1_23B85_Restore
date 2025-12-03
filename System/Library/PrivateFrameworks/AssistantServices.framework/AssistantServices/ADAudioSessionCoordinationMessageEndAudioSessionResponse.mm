@interface ADAudioSessionCoordinationMessageEndAudioSessionResponse
+ (id)newWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessageEndAudioSessionResponse)initWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessageEndAudioSessionResponse)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
@end

@implementation ADAudioSessionCoordinationMessageEndAudioSessionResponse

- (ADAudioSessionCoordinationMessageEndAudioSessionResponse)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    self = [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)self init];
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
  v4.super_class = ADAudioSessionCoordinationMessageEndAudioSessionResponse;
  return [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = ADAudioSessionCoordinationMessageEndAudioSessionResponse;
  return [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)&v3 hash];
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v5.receiver = self;
  v5.super_class = ADAudioSessionCoordinationMessageEndAudioSessionResponse;
  v3 = [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)&v5 description];

  return v3;
}

- (ADAudioSessionCoordinationMessageEndAudioSessionResponse)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = ADAudioSessionCoordinationMessageEndAudioSessionResponse;
  v5 = [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    [(_ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation *)v7 isDirty];
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
    v5 = [[_ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADAudioSessionCoordinationMessageEndAudioSessionResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessageEndAudioSessionResponse);
    }

    else
    {
      v6 = [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)self copy];
    }

    v7 = v6;
  }

  else
  {
    v7 = [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)self copy];
  }

  return v7;
}

@end