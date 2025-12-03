@interface AFAudioSessionCoordinationDeviceInfo
+ (id)newWithBuilder:(id)builder;
- (AFAudioSessionCoordinationDeviceInfo)initWithBuilder:(id)builder;
- (AFAudioSessionCoordinationDeviceInfo)initWithCoder:(id)coder;
- (AFAudioSessionCoordinationDeviceInfo)initWithDictionaryRepresentation:(id)representation;
- (AFAudioSessionCoordinationDeviceInfo)initWithPeerInfo:(id)info systemInfo:(id)systemInfo;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFAudioSessionCoordinationDeviceInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  peerInfo = self->_peerInfo;
  if (peerInfo)
  {
    buildDictionaryRepresentation = [(AFPeerInfo *)peerInfo buildDictionaryRepresentation];
    [v3 setObject:buildDictionaryRepresentation forKey:@"peerInfo"];
  }

  systemInfo = self->_systemInfo;
  if (systemInfo)
  {
    buildDictionaryRepresentation2 = [(AFAudioSessionCoordinationSystemInfo *)systemInfo buildDictionaryRepresentation];
    [v3 setObject:buildDictionaryRepresentation2 forKey:@"systemInfo"];
  }

  v8 = [v3 copy];

  return v8;
}

- (AFAudioSessionCoordinationDeviceInfo)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKey:@"peerInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[AFPeerInfo alloc] initWithDictionaryRepresentation:v5];
    }

    else
    {
      v6 = 0;
    }

    v8 = [representationCopy objectForKey:@"systemInfo"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[AFAudioSessionCoordinationSystemInfo alloc] initWithDictionaryRepresentation:v8];
    }

    else
    {
      v9 = 0;
    }

    self = [(AFAudioSessionCoordinationDeviceInfo *)self initWithPeerInfo:v6 systemInfo:v9];
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
  peerInfo = self->_peerInfo;
  coderCopy = coder;
  [coderCopy encodeObject:peerInfo forKey:@"AFAudioSessionCoordinationDeviceInfo::peerInfo"];
  [coderCopy encodeObject:self->_systemInfo forKey:@"AFAudioSessionCoordinationDeviceInfo::systemInfo"];
}

- (AFAudioSessionCoordinationDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationDeviceInfo::peerInfo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationDeviceInfo::systemInfo"];

  v7 = [(AFAudioSessionCoordinationDeviceInfo *)self initWithPeerInfo:v5 systemInfo:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      peerInfo = [(AFAudioSessionCoordinationDeviceInfo *)v5 peerInfo];
      peerInfo = self->_peerInfo;
      if (peerInfo == peerInfo || [(AFPeerInfo *)peerInfo isEqual:peerInfo])
      {
        systemInfo = [(AFAudioSessionCoordinationDeviceInfo *)v5 systemInfo];
        systemInfo = self->_systemInfo;
        v10 = systemInfo == systemInfo || [(AFAudioSessionCoordinationSystemInfo *)systemInfo isEqual:systemInfo];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFAudioSessionCoordinationDeviceInfo;
  v5 = [(AFAudioSessionCoordinationDeviceInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {peerInfo = %@, systemInfo = %@}", v5, self->_peerInfo, self->_systemInfo];

  return v6;
}

- (AFAudioSessionCoordinationDeviceInfo)initWithPeerInfo:(id)info systemInfo:(id)systemInfo
{
  infoCopy = info;
  systemInfoCopy = systemInfo;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__AFAudioSessionCoordinationDeviceInfo_initWithPeerInfo_systemInfo___block_invoke;
  v12[3] = &unk_1E7345758;
  v13 = infoCopy;
  v14 = systemInfoCopy;
  v8 = systemInfoCopy;
  v9 = infoCopy;
  v10 = [(AFAudioSessionCoordinationDeviceInfo *)self initWithBuilder:v12];

  return v10;
}

void __68__AFAudioSessionCoordinationDeviceInfo_initWithPeerInfo_systemInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPeerInfo:v3];
  [v4 setSystemInfo:*(a1 + 40)];
}

- (AFAudioSessionCoordinationDeviceInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFAudioSessionCoordinationDeviceInfo;
  v5 = [(AFAudioSessionCoordinationDeviceInfo *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFAudioSessionCoordinationDeviceInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFAudioSessionCoordinationDeviceInfoMutation *)v7 isDirty])
    {
      getPeerInfo = [(_AFAudioSessionCoordinationDeviceInfoMutation *)v7 getPeerInfo];
      v9 = [getPeerInfo copy];
      peerInfo = v6->_peerInfo;
      v6->_peerInfo = v9;

      getSystemInfo = [(_AFAudioSessionCoordinationDeviceInfoMutation *)v7 getSystemInfo];
      v12 = [getSystemInfo copy];
      systemInfo = v6->_systemInfo;
      v6->_systemInfo = v12;
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
    v5 = [[_AFAudioSessionCoordinationDeviceInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFAudioSessionCoordinationDeviceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioSessionCoordinationDeviceInfo);
      getPeerInfo = [(_AFAudioSessionCoordinationDeviceInfoMutation *)v5 getPeerInfo];
      v8 = [getPeerInfo copy];
      peerInfo = v6->_peerInfo;
      v6->_peerInfo = v8;

      getSystemInfo = [(_AFAudioSessionCoordinationDeviceInfoMutation *)v5 getSystemInfo];
      v11 = [getSystemInfo copy];
      systemInfo = v6->_systemInfo;
      v6->_systemInfo = v11;
    }

    else
    {
      v6 = [(AFAudioSessionCoordinationDeviceInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFAudioSessionCoordinationDeviceInfo *)self copy];
  }

  return v6;
}

@end