@interface AVConcreteValueTiming
- ($F24F406B2B787EFB06265DBA3D28CBD5)_timing;
- (AVConcreteValueTiming)initWithAnchorValue:(double)value anchorTimeStamp:(double)stamp rate:(double)rate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVConcreteValueTiming

- ($F24F406B2B787EFB06265DBA3D28CBD5)_timing
{
  value = self->_value;
  rate = self->_rate;
  v4 = 0.0;
  if (rate != 0.0)
  {
    value = self->_timeStamp - value / rate;
    v4 = self->_rate;
  }

  result.var1 = v4;
  result.var0 = value;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = AVConcreteValueTiming;
  return [(AVValueTiming *)&v4 copyWithZone:zone];
}

- (AVConcreteValueTiming)initWithAnchorValue:(double)value anchorTimeStamp:(double)stamp rate:(double)rate
{
  self->_value = value;
  self->_timeStamp = stamp;
  self->_rate = rate;
  return self;
}

@end