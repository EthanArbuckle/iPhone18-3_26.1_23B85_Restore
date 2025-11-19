@interface PHASEChannelMixer
- (PHASEChannelMixer)init;
- (PHASEChannelMixer)initWithIdentifier:(id)a3 inputChannelLayout:(id)a4;
@end

@implementation PHASEChannelMixer

- (PHASEChannelMixer)init
{
  v6.receiver = self;
  v6.super_class = PHASEChannelMixer;
  v2 = [(PHASEMixer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (PHASEChannelMixer)initWithIdentifier:(id)a3 inputChannelLayout:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHASEChannelMixer;
  v8 = [(PHASEMixer *)&v12 initWithIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_inputChannelLayout, a4);
    v10 = v9;
  }

  return v9;
}

@end