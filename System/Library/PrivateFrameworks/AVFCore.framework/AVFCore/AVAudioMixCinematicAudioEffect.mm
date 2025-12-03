@interface AVAudioMixCinematicAudioEffect
+ (id)cinematicAudioEffectWithData:(id)data;
- (AVAudioMixCinematicAudioEffect)initWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSData)data;
- (id)description;
- (void)dealloc;
@end

@implementation AVAudioMixCinematicAudioEffect

- (AVAudioMixCinematicAudioEffect)initWithData:(id)data
{
  v6.receiver = self;
  v6.super_class = AVAudioMixCinematicAudioEffect;
  v4 = [(AVAudioMixEffect *)&v6 init];
  if (v4)
  {
    v4->_data = [data copy];
  }

  return v4;
}

+ (id)cinematicAudioEffectWithData:(id)data
{
  v3 = [[self alloc] initWithData:data];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAudioMixCinematicAudioEffect;
  [(AVAudioMixCinematicAudioEffect *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  data = [(AVAudioMixCinematicAudioEffect *)self data];
  data2 = [equal data];

  return [(NSData *)data isEqualToData:data2];
}

- (NSData)data
{
  v2 = self->_data;

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> data=%p", NSStringFromClass(v4), self, -[AVAudioMixCinematicAudioEffect data](self, "data")];
}

@end