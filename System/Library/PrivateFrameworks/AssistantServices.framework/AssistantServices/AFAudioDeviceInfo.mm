@interface AFAudioDeviceInfo
+ (id)newWithBuilder:(id)a3;
- (AFAudioDeviceInfo)initWithBuilder:(id)a3;
- (AFAudioDeviceInfo)initWithCoder:(id)a3;
- (AFAudioDeviceInfo)initWithRoute:(id)a3 isRemoteDevice:(BOOL)a4 deviceUID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAudioDeviceInfo

- (void)encodeWithCoder:(id)a3
{
  route = self->_route;
  v6 = a3;
  [v6 encodeObject:route forKey:@"AFAudioDeviceInfo::route"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRemoteDevice];
  [v6 encodeObject:v5 forKey:@"AFAudioDeviceInfo::isRemoteDevice"];

  [v6 encodeObject:self->_deviceUID forKey:@"AFAudioDeviceInfo::deviceUID"];
}

- (AFAudioDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioDeviceInfo::route"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioDeviceInfo::isRemoteDevice"];
  v7 = [v6 BOOLValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioDeviceInfo::deviceUID"];

  v9 = [(AFAudioDeviceInfo *)self initWithRoute:v5 isRemoteDevice:v7 deviceUID:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isRemoteDevice = self->_isRemoteDevice;
      if (isRemoteDevice == [(AFAudioDeviceInfo *)v5 isRemoteDevice])
      {
        v7 = [(AFAudioDeviceInfo *)v5 route];
        route = self->_route;
        if (route == v7 || [(NSString *)route isEqual:v7])
        {
          v9 = [(AFAudioDeviceInfo *)v5 deviceUID];
          deviceUID = self->_deviceUID;
          v11 = deviceUID == v9 || [(NSUUID *)deviceUID isEqual:v9];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_route hash];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRemoteDevice];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSUUID *)self->_deviceUID hash];

  return v5 ^ v6;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = AFAudioDeviceInfo;
  v5 = [(AFAudioDeviceInfo *)&v10 description];
  v6 = v5;
  if (self->_isRemoteDevice)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 initWithFormat:@"%@ {route = %@, isRemoteDevice = %@, deviceUID = %@}", v5, self->_route, v7, self->_deviceUID];

  return v8;
}

- (AFAudioDeviceInfo)initWithRoute:(id)a3 isRemoteDevice:(BOOL)a4 deviceUID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__AFAudioDeviceInfo_initWithRoute_isRemoteDevice_deviceUID___block_invoke;
  v14[3] = &unk_1E7345B20;
  v17 = a4;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [(AFAudioDeviceInfo *)self initWithBuilder:v14];

  return v12;
}

void __60__AFAudioDeviceInfo_initWithRoute_isRemoteDevice_deviceUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setRoute:v3];
  [v4 setIsRemoteDevice:*(a1 + 48)];
  [v4 setDeviceUID:*(a1 + 40)];
}

- (AFAudioDeviceInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFAudioDeviceInfo;
  v5 = [(AFAudioDeviceInfo *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFAudioDeviceInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFAudioDeviceInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFAudioDeviceInfoMutation *)v7 getRoute];
      v9 = [v8 copy];
      route = v6->_route;
      v6->_route = v9;

      v6->_isRemoteDevice = [(_AFAudioDeviceInfoMutation *)v7 getIsRemoteDevice];
      v11 = [(_AFAudioDeviceInfoMutation *)v7 getDeviceUID];
      v12 = [v11 copy];
      deviceUID = v6->_deviceUID;
      v6->_deviceUID = v12;
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
    v5 = [[_AFAudioDeviceInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFAudioDeviceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioDeviceInfo);
      v7 = [(_AFAudioDeviceInfoMutation *)v5 getRoute];
      v8 = [v7 copy];
      route = v6->_route;
      v6->_route = v8;

      v6->_isRemoteDevice = [(_AFAudioDeviceInfoMutation *)v5 getIsRemoteDevice];
      v10 = [(_AFAudioDeviceInfoMutation *)v5 getDeviceUID];
      v11 = [v10 copy];
      deviceUID = v6->_deviceUID;
      v6->_deviceUID = v11;
    }

    else
    {
      v6 = [(AFAudioDeviceInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFAudioDeviceInfo *)self copy];
  }

  return v6;
}

@end