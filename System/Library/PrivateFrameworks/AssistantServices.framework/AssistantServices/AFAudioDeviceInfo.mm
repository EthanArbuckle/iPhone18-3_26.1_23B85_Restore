@interface AFAudioDeviceInfo
+ (id)newWithBuilder:(id)builder;
- (AFAudioDeviceInfo)initWithBuilder:(id)builder;
- (AFAudioDeviceInfo)initWithCoder:(id)coder;
- (AFAudioDeviceInfo)initWithRoute:(id)route isRemoteDevice:(BOOL)device deviceUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFAudioDeviceInfo

- (void)encodeWithCoder:(id)coder
{
  route = self->_route;
  coderCopy = coder;
  [coderCopy encodeObject:route forKey:@"AFAudioDeviceInfo::route"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRemoteDevice];
  [coderCopy encodeObject:v5 forKey:@"AFAudioDeviceInfo::isRemoteDevice"];

  [coderCopy encodeObject:self->_deviceUID forKey:@"AFAudioDeviceInfo::deviceUID"];
}

- (AFAudioDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioDeviceInfo::route"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioDeviceInfo::isRemoteDevice"];
  bOOLValue = [v6 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioDeviceInfo::deviceUID"];

  v9 = [(AFAudioDeviceInfo *)self initWithRoute:v5 isRemoteDevice:bOOLValue deviceUID:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isRemoteDevice = self->_isRemoteDevice;
      if (isRemoteDevice == [(AFAudioDeviceInfo *)v5 isRemoteDevice])
      {
        route = [(AFAudioDeviceInfo *)v5 route];
        route = self->_route;
        if (route == route || [(NSString *)route isEqual:route])
        {
          deviceUID = [(AFAudioDeviceInfo *)v5 deviceUID];
          deviceUID = self->_deviceUID;
          v11 = deviceUID == deviceUID || [(NSUUID *)deviceUID isEqual:deviceUID];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFAudioDeviceInfo)initWithRoute:(id)route isRemoteDevice:(BOOL)device deviceUID:(id)d
{
  routeCopy = route;
  dCopy = d;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__AFAudioDeviceInfo_initWithRoute_isRemoteDevice_deviceUID___block_invoke;
  v14[3] = &unk_1E7345B20;
  deviceCopy = device;
  v15 = routeCopy;
  v16 = dCopy;
  v10 = dCopy;
  v11 = routeCopy;
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

- (AFAudioDeviceInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFAudioDeviceInfo;
  v5 = [(AFAudioDeviceInfo *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFAudioDeviceInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFAudioDeviceInfoMutation *)v7 isDirty])
    {
      getRoute = [(_AFAudioDeviceInfoMutation *)v7 getRoute];
      v9 = [getRoute copy];
      route = v6->_route;
      v6->_route = v9;

      v6->_isRemoteDevice = [(_AFAudioDeviceInfoMutation *)v7 getIsRemoteDevice];
      getDeviceUID = [(_AFAudioDeviceInfoMutation *)v7 getDeviceUID];
      v12 = [getDeviceUID copy];
      deviceUID = v6->_deviceUID;
      v6->_deviceUID = v12;
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
    v5 = [[_AFAudioDeviceInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFAudioDeviceInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioDeviceInfo);
      getRoute = [(_AFAudioDeviceInfoMutation *)v5 getRoute];
      v8 = [getRoute copy];
      route = v6->_route;
      v6->_route = v8;

      v6->_isRemoteDevice = [(_AFAudioDeviceInfoMutation *)v5 getIsRemoteDevice];
      getDeviceUID = [(_AFAudioDeviceInfoMutation *)v5 getDeviceUID];
      v11 = [getDeviceUID copy];
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