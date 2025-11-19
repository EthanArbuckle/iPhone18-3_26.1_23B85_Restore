@interface AFAudioSessionCoordinationDeviceInfo
+ (id)newWithBuilder:(id)a3;
- (AFAudioSessionCoordinationDeviceInfo)initWithBuilder:(id)a3;
- (AFAudioSessionCoordinationDeviceInfo)initWithCoder:(id)a3;
- (AFAudioSessionCoordinationDeviceInfo)initWithDictionaryRepresentation:(id)a3;
- (AFAudioSessionCoordinationDeviceInfo)initWithPeerInfo:(id)a3 systemInfo:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAudioSessionCoordinationDeviceInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  peerInfo = self->_peerInfo;
  if (peerInfo)
  {
    v5 = [(AFPeerInfo *)peerInfo buildDictionaryRepresentation];
    [v3 setObject:v5 forKey:@"peerInfo"];
  }

  systemInfo = self->_systemInfo;
  if (systemInfo)
  {
    v7 = [(AFAudioSessionCoordinationSystemInfo *)systemInfo buildDictionaryRepresentation];
    [v3 setObject:v7 forKey:@"systemInfo"];
  }

  v8 = [v3 copy];

  return v8;
}

- (AFAudioSessionCoordinationDeviceInfo)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"peerInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[AFPeerInfo alloc] initWithDictionaryRepresentation:v5];
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKey:@"systemInfo"];

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
  peerInfo = self->_peerInfo;
  v5 = a3;
  [v5 encodeObject:peerInfo forKey:@"AFAudioSessionCoordinationDeviceInfo::peerInfo"];
  [v5 encodeObject:self->_systemInfo forKey:@"AFAudioSessionCoordinationDeviceInfo::systemInfo"];
}

- (AFAudioSessionCoordinationDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationDeviceInfo::peerInfo"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationDeviceInfo::systemInfo"];

  v7 = [(AFAudioSessionCoordinationDeviceInfo *)self initWithPeerInfo:v5 systemInfo:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFAudioSessionCoordinationDeviceInfo *)v5 peerInfo];
      peerInfo = self->_peerInfo;
      if (peerInfo == v6 || [(AFPeerInfo *)peerInfo isEqual:v6])
      {
        v8 = [(AFAudioSessionCoordinationDeviceInfo *)v5 systemInfo];
        systemInfo = self->_systemInfo;
        v10 = systemInfo == v8 || [(AFAudioSessionCoordinationSystemInfo *)systemInfo isEqual:v8];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFAudioSessionCoordinationDeviceInfo;
  v5 = [(AFAudioSessionCoordinationDeviceInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {peerInfo = %@, systemInfo = %@}", v5, self->_peerInfo, self->_systemInfo];

  return v6;
}

- (AFAudioSessionCoordinationDeviceInfo)initWithPeerInfo:(id)a3 systemInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__AFAudioSessionCoordinationDeviceInfo_initWithPeerInfo_systemInfo___block_invoke;
  v12[3] = &unk_1E7345758;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
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

- (AFAudioSessionCoordinationDeviceInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFAudioSessionCoordinationDeviceInfo;
  v5 = [(AFAudioSessionCoordinationDeviceInfo *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFAudioSessionCoordinationDeviceInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFAudioSessionCoordinationDeviceInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFAudioSessionCoordinationDeviceInfoMutation *)v7 getPeerInfo];
      v9 = [v8 copy];
      peerInfo = v6->_peerInfo;
      v6->_peerInfo = v9;

      v11 = [(_AFAudioSessionCoordinationDeviceInfoMutation *)v7 getSystemInfo];
      v12 = [v11 copy];
      systemInfo = v6->_systemInfo;
      v6->_systemInfo = v12;
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
    v5 = [[_AFAudioSessionCoordinationDeviceInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFAudioSessionCoordinationDeviceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioSessionCoordinationDeviceInfo);
      v7 = [(_AFAudioSessionCoordinationDeviceInfoMutation *)v5 getPeerInfo];
      v8 = [v7 copy];
      peerInfo = v6->_peerInfo;
      v6->_peerInfo = v8;

      v10 = [(_AFAudioSessionCoordinationDeviceInfoMutation *)v5 getSystemInfo];
      v11 = [v10 copy];
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