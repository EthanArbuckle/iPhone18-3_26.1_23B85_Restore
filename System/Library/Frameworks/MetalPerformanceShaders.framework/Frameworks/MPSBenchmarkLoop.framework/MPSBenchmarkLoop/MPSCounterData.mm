@interface MPSCounterData
- (MPSCounterData)initWithData:(id)data numberOfSamples:(unint64_t)samples;
- (void)dealloc;
@end

@implementation MPSCounterData

- (MPSCounterData)initWithData:(id)data numberOfSamples:(unint64_t)samples
{
  self->_numberOfSamples = samples;
  self->_rawData = data;
  v6.receiver = self;
  v6.super_class = MPSCounterData;
  return [(MPSCounterData *)&v6 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCounterData;
  [(MPSCounterData *)&v3 dealloc];
}

@end