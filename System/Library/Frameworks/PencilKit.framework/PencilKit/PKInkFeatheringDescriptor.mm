@interface PKInkFeatheringDescriptor
+ (id)descriptorWithStartCapTime:(double)a3 startCapFade:(double)a4 endCapTime:(double)a5 endCapFade:(double)a6;
- (PKInkFeatheringDescriptor)initWithStartCapTime:(double)a3 startCapDistance:(double)a4 startCapFade:(double)a5 startCapShrink:(double)a6 endCapTime:(double)a7 endCapDistance:(double)a8 endCapFade:(double)a9 endCapShrink:(double)a10;
- (id)mutableCopy;
@end

@implementation PKInkFeatheringDescriptor

- (PKInkFeatheringDescriptor)initWithStartCapTime:(double)a3 startCapDistance:(double)a4 startCapFade:(double)a5 startCapShrink:(double)a6 endCapTime:(double)a7 endCapDistance:(double)a8 endCapFade:(double)a9 endCapShrink:(double)a10
{
  v19.receiver = self;
  v19.super_class = PKInkFeatheringDescriptor;
  result = [(PKInkFeatheringDescriptor *)&v19 init];
  if (result)
  {
    result->_startCapTime = a3;
    result->_startCapDistance = a4;
    result->_startCapFade = a5;
    result->_startCapShrink = a6;
    result->_endCapTime = a7;
    result->_endCapDistance = a8;
    result->_endCapFade = a9;
    result->_endCapShrink = a10;
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

+ (id)descriptorWithStartCapTime:(double)a3 startCapFade:(double)a4 endCapTime:(double)a5 endCapFade:(double)a6
{
  v10 = objc_alloc_init(PKInkFeatheringDescriptor);
  [(PKInkFeatheringDescriptor *)v10 setStartCapTime:a3];
  [(PKInkFeatheringDescriptor *)v10 setStartCapFade:a4];
  [(PKInkFeatheringDescriptor *)v10 setEndCapTime:a5];
  [(PKInkFeatheringDescriptor *)v10 setEndCapFade:a6];

  return v10;
}

@end