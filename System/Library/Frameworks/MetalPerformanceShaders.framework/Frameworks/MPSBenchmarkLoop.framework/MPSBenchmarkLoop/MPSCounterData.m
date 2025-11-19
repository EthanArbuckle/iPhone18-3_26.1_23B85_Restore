@interface MPSCounterData
- (MPSCounterData)initWithData:(id)a3 numberOfSamples:(unint64_t)a4;
- (void)dealloc;
@end

@implementation MPSCounterData

- (MPSCounterData)initWithData:(id)a3 numberOfSamples:(unint64_t)a4
{
  self->_numberOfSamples = a4;
  self->_rawData = a3;
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