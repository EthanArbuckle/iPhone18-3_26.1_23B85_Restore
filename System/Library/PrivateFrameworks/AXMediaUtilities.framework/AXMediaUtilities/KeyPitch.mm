@interface KeyPitch
- (KeyPitch)initWithFrequency:(double)frequency volume:(double)volume timeOffset:(double)offset;
- (id)description;
@end

@implementation KeyPitch

- (KeyPitch)initWithFrequency:(double)frequency volume:(double)volume timeOffset:(double)offset
{
  v9.receiver = self;
  v9.super_class = KeyPitch;
  result = [(KeyPitch *)&v9 init];
  if (result)
  {
    result->_timeOffsetMS = offset;
    result->_volume = volume;
    result->_frequency = frequency;
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