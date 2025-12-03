@interface AVAudioSessionRouteDescription
- (AVAudioSessionRouteDescription)init;
- (AVAudioSessionRouteDescription)initWithRawDescription:(id)description owningSession:(id)session;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoute:(id)route;
- (BOOL)supportsDoAP;
- (BOOL)supportsSoftwareVolume;
- (NSArray)inputs;
- (NSArray)outputs;
- (NSString)siriRemoteInputIdentifier;
- (id)description;
- (unint64_t)hash;
- (unint64_t)siriInputSource;
- (void)dealloc;
@end

@implementation AVAudioSessionRouteDescription

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {

    MEMORY[0x1B26ED410](impl, 0x1080C40F59D5452);
  }

  self->_impl = 0;
  v4.receiver = self;
  v4.super_class = AVAudioSessionRouteDescription;
  [(AVAudioSessionRouteDescription *)&v4 dealloc];
}

- (NSArray)inputs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *selfCopy->_impl;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)outputs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_impl + 1);
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)siriInputSource
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_impl + 3);
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)description
{
  impl = self->_impl;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p, \ninputs = %@ \noutputs = %@>", v6, self, *impl, impl[1]];;

  return v7;
}

- (NSString)siriRemoteInputIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_impl + 2);
  objc_sync_exit(selfCopy);

  return v3;
}

- (AVAudioSessionRouteDescription)init
{
  v3.receiver = self;
  v3.super_class = AVAudioSessionRouteDescription;
  if ([(AVAudioSessionRouteDescription *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (unint64_t)hash
{
  inputs = [(AVAudioSessionRouteDescription *)self inputs];
  v4 = [inputs hash];
  outputs = [(AVAudioSessionRouteDescription *)self outputs];
  v6 = [outputs hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(AVAudioSessionRouteDescription *)self isEqualToRoute:v5];
  }

  return v6;
}

- (BOOL)isEqualToRoute:(id)route
{
  routeCopy = route;
  if (self == routeCopy)
  {
    v10 = 1;
  }

  else
  {
    inputs = [(AVAudioSessionRouteDescription *)self inputs];
    inputs2 = [(AVAudioSessionRouteDescription *)routeCopy inputs];
    v7 = [inputs isEqualToArray:inputs2];

    if (v7)
    {
      outputs = [(AVAudioSessionRouteDescription *)self outputs];
      outputs2 = [(AVAudioSessionRouteDescription *)routeCopy outputs];
      v10 = [outputs isEqualToArray:outputs2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (AVAudioSessionRouteDescription)initWithRawDescription:(id)description owningSession:(id)session
{
  descriptionCopy = description;
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = AVAudioSessionRouteDescription;
  if ([(AVAudioSessionRouteDescription *)&v9 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)supportsDoAP
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_impl + 33);
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)supportsSoftwareVolume
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_impl + 32);
  objc_sync_exit(selfCopy);

  return v3;
}

@end