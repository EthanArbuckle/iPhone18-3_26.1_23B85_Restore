@interface AVAudioSessionRouteDescription
- (AVAudioSessionRouteDescription)init;
- (AVAudioSessionRouteDescription)initWithRawDescription:(id)a3 owningSession:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoute:(id)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = *v2->_impl;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)outputs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl + 1);
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)siriInputSource
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl + 3);
  objc_sync_exit(v2);

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl + 2);
  objc_sync_exit(v2);

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
  v3 = [(AVAudioSessionRouteDescription *)self inputs];
  v4 = [v3 hash];
  v5 = [(AVAudioSessionRouteDescription *)self outputs];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(AVAudioSessionRouteDescription *)self isEqualToRoute:v5];
  }

  return v6;
}

- (BOOL)isEqualToRoute:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(AVAudioSessionRouteDescription *)self inputs];
    v6 = [(AVAudioSessionRouteDescription *)v4 inputs];
    v7 = [v5 isEqualToArray:v6];

    if (v7)
    {
      v8 = [(AVAudioSessionRouteDescription *)self outputs];
      v9 = [(AVAudioSessionRouteDescription *)v4 outputs];
      v10 = [v8 isEqualToArray:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (AVAudioSessionRouteDescription)initWithRawDescription:(id)a3 owningSession:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl + 33);
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)supportsSoftwareVolume
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl + 32);
  objc_sync_exit(v2);

  return v3;
}

@end