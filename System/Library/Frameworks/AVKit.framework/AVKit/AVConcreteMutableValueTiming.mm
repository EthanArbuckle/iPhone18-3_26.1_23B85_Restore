@interface AVConcreteMutableValueTiming
- ($F24F406B2B787EFB06265DBA3D28CBD5)_timing;
- (AVConcreteMutableValueTiming)initWithAnchorValue:(double)value anchorTimeStamp:(double)stamp rate:(double)rate;
@end

@implementation AVConcreteMutableValueTiming

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

- (AVConcreteMutableValueTiming)initWithAnchorValue:(double)value anchorTimeStamp:(double)stamp rate:(double)rate
{
  self->_value = value;
  self->_timeStamp = stamp;
  self->_rate = rate;
  return self;
}

@end