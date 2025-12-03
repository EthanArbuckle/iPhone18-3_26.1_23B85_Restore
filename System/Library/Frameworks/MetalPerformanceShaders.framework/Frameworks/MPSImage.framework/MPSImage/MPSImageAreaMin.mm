@interface MPSImageAreaMin
- (MPSImageAreaMin)initWithCoder:(id)coder device:(id)device;
- (MPSImageAreaMin)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height;
- (void)initEncoder;
@end

@implementation MPSImageAreaMin

- (MPSImageAreaMin)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height
{
  v12.receiver = self;
  v12.super_class = MPSImageAreaMin;
  result = [(MPSImageAreaMax *)&v12 initWithDevice:device kernelWidth:width kernelHeight:height];
  if (result)
  {
    result->super.info = 56;
    result->super.info_half = 84;
    v11 = result;
    objc_msgSend_initEncoder(result, v6, v7, v8, v9, v10);
    return v11;
  }

  return result;
}

- (MPSImageAreaMin)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSImageAreaMin;
  result = [(MPSImageAreaMax *)&v11 initWithCoder:coder device:device];
  if (result)
  {
    result->super.info = 56;
    result->super.info_half = 84;
    v10 = result;
    objc_msgSend_initEncoder(result, v5, v6, v7, v8, v9);
    return v10;
  }

  return result;
}

- (void)initEncoder
{
  self->super.super._getPreferredTileSize = sub_23994C3F4;
  self->super.super._encode = sub_23994C584;
  self->super.super._encodeData = self;
}

@end