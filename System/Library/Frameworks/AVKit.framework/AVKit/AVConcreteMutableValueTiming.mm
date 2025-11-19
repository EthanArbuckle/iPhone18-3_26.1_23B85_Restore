@interface AVConcreteMutableValueTiming
- ($F24F406B2B787EFB06265DBA3D28CBD5)_timing;
- (AVConcreteMutableValueTiming)initWithAnchorValue:(double)a3 anchorTimeStamp:(double)a4 rate:(double)a5;
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

- (AVConcreteMutableValueTiming)initWithAnchorValue:(double)a3 anchorTimeStamp:(double)a4 rate:(double)a5
{
  self->_value = a3;
  self->_timeStamp = a4;
  self->_rate = a5;
  return self;
}

@end