@interface AVAudioMixCinematicAudioEffect
+ (id)cinematicAudioEffectWithData:(id)a3;
- (AVAudioMixCinematicAudioEffect)initWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)data;
- (id)description;
- (void)dealloc;
@end

@implementation AVAudioMixCinematicAudioEffect

- (AVAudioMixCinematicAudioEffect)initWithData:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVAudioMixCinematicAudioEffect;
  v4 = [(AVAudioMixEffect *)&v6 init];
  if (v4)
  {
    v4->_data = [a3 copy];
  }

  return v4;
}

+ (id)cinematicAudioEffectWithData:(id)a3
{
  v3 = [[a1 alloc] initWithData:a3];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAudioMixCinematicAudioEffect;
  [(AVAudioMixCinematicAudioEffect *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVAudioMixCinematicAudioEffect *)self data];
  v6 = [a3 data];

  return [(NSData *)v5 isEqualToData:v6];
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