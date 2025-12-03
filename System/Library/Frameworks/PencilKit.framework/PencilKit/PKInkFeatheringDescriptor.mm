@interface PKInkFeatheringDescriptor
+ (id)descriptorWithStartCapTime:(double)time startCapFade:(double)fade endCapTime:(double)capTime endCapFade:(double)capFade;
- (PKInkFeatheringDescriptor)initWithStartCapTime:(double)time startCapDistance:(double)distance startCapFade:(double)fade startCapShrink:(double)shrink endCapTime:(double)capTime endCapDistance:(double)capDistance endCapFade:(double)capFade endCapShrink:(double)self0;
- (id)mutableCopy;
@end

@implementation PKInkFeatheringDescriptor

- (PKInkFeatheringDescriptor)initWithStartCapTime:(double)time startCapDistance:(double)distance startCapFade:(double)fade startCapShrink:(double)shrink endCapTime:(double)capTime endCapDistance:(double)capDistance endCapFade:(double)capFade endCapShrink:(double)self0
{
  v19.receiver = self;
  v19.super_class = PKInkFeatheringDescriptor;
  result = [(PKInkFeatheringDescriptor *)&v19 init];
  if (result)
  {
    result->_startCapTime = time;
    result->_startCapDistance = distance;
    result->_startCapFade = fade;
    result->_startCapShrink = shrink;
    result->_endCapTime = capTime;
    result->_endCapDistance = capDistance;
    result->_endCapFade = capFade;
    result->_endCapShrink = capShrink;
  }

  return result;
}

- (id)mutableCopy
{
  v3 = [PKInkFeatheringDescriptor alloc];
  startCapTime = self->_startCapTime;
  startCapDistance = self->_startCapDistance;
  startCapFade = self->_startCapFade;
  startCapShrink = self->_startCapShrink;
  endCapTime = self->_endCapTime;
  endCapDistance = self->_endCapDistance;
  endCapFade = self->_endCapFade;
  endCapShrink = self->_endCapShrink;

  return [(PKInkFeatheringDescriptor *)v3 initWithStartCapTime:startCapTime startCapDistance:startCapDistance startCapFade:startCapFade startCapShrink:startCapShrink endCapTime:endCapTime endCapDistance:endCapDistance endCapFade:endCapFade endCapShrink:endCapShrink];
}

+ (id)descriptorWithStartCapTime:(double)time startCapFade:(double)fade endCapTime:(double)capTime endCapFade:(double)capFade
{
  v10 = objc_alloc_init(PKInkFeatheringDescriptor);
  [(PKInkFeatheringDescriptor *)v10 setStartCapTime:time];
  [(PKInkFeatheringDescriptor *)v10 setStartCapFade:fade];
  [(PKInkFeatheringDescriptor *)v10 setEndCapTime:capTime];
  [(PKInkFeatheringDescriptor *)v10 setEndCapFade:capFade];

  return v10;
}

@end