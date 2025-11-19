@interface KeyPitch
- (KeyPitch)initWithFrequency:(double)a3 volume:(double)a4 timeOffset:(double)a5;
- (id)description;
@end

@implementation KeyPitch

- (KeyPitch)initWithFrequency:(double)a3 volume:(double)a4 timeOffset:(double)a5
{
  v9.receiver = self;
  v9.super_class = KeyPitch;
  result = [(KeyPitch *)&v9 init];
  if (result)
  {
    result->_timeOffsetMS = a5;
    result->_volume = a4;
    result->_frequency = a3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(KeyPitch *)self frequency];
  return [v3 stringWithFormat:@"<%@ %p frequency=%.2f timeOffsetMS=%.2f", v4, self, v5, *&self->_timeOffsetMS];
}

@end